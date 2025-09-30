import cv2
import numpy as np
from pyzbar.pyzbar import decode

# Load ảnh
img = cv2.imread("byte_dropfirst_3_481x481.png", cv2.IMREAD_GRAYSCALE)

# Canny edge detection
edges = cv2.Canny(img, 100, 200)

# Tìm contours lớn nhất (QR thường là hình vuông lớn)
contours, _ = cv2.findContours(edges, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
contours = sorted(contours, key=cv2.contourArea, reverse=True)
cnt = contours[0]

# Lấy bounding rect vuông
rect = cv2.minAreaRect(cnt)
box = cv2.boxPoints(rect)
box = box.astype(np.intp)

# Xoay ảnh
width = int(rect[1][0])
height = int(rect[1][1])
src_pts = box.astype("float32")
dst_pts = np.array([[0, height-1],
                    [0, 0],
                    [width-1, 0],
                    [width-1, height-1]], dtype="float32")
M = cv2.getPerspectiveTransform(src_pts, dst_pts)
warped = cv2.warpPerspective(img, M, (width, height))

# Decode QR
decoded = decode(warped)
for d in decoded:
    print(d.data.decode())
