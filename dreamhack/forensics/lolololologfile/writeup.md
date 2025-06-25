# Write-up: Phân tích file `.E01` và khôi phục PDF đã bị xóa bằng Autopsy

## Mục tiêu

- Phân tích ảnh đĩa định dạng `.E01`.
- Xem các file đã bị xóa.
- Tìm và khôi phục file PDF có khả năng chứa **flag**.

---

## Công cụ sử dụng

- [Autopsy](https://www.autopsy.com/) (miễn phí, GUI, hỗ trợ Windows/Linux)

---

## Bước 1: Mở file `.E01` trong Autopsy

1. Mở **Autopsy**.
2. Tạo **New Case**:

   - Nhập tên case → nhấn **Next**.

3. Chọn **"Add Data Source"**:

   - Chọn **Disk Image or VM File**.
   - Nhấn **Next**, chọn file `.E01` cần phân tích.
   - Bấm **Next**.

4. Giữ nguyên các module mặc định (File Analysis, Deleted Files, etc.) → bấm **Finish**.

---

## Bước 2: Xem các file đã bị xóa

1. Sau khi Autopsy hoàn tất phân tích, ở khung trái chọn:

   ```
   Views → Deleted Files
   ```

2. Tại đây, Autopsy sẽ hiển thị tất cả các **file đã bị xóa** nhưng vẫn còn có thể khôi phục.

---

## Bước 3: Tìm file PDF trong danh sách đã xóa

1. Trong khung **"Deleted Files"**, nhấn vào cột **Name** để sắp xếp theo đuôi file.
2. Hoặc dùng thanh **Search** (góc trên):

   - Gõ: `*.pdf`
   - Hoặc tìm từ khóa như: `flag`, `doc`, `secret`...

3. Click vào file nghi ngờ để xem nhanh preview nội dung (nếu hỗ trợ).

---

## Bước 4: Khôi phục (export) file PDF (hoặc cũng có thể xem flag trực tiếp luôn)

1. Chuột phải vào file PDF muốn khôi phục.
2. Chọn **"Extract File(s)"**.
3. Chọn thư mục đích → nhấn OK.

---

## Flag DH{1_lov3_For3NSiCS_Not_FOur_AND_six}
