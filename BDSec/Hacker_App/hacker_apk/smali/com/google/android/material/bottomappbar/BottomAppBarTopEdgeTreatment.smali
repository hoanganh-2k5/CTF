.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a

.field private static final ROUNDED_CORNER_FAB_OFFSET:F = 1.75f


# instance fields
.field private cradleVerticalOffset:F

.field private fabCornerSize:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "fabMargin"    # F
    .param p2, "roundedCornerRadius"    # F
    .param p3, "cradleVerticalOffset"    # F

    .line 64
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 65
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 66
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 69
    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .locals 1

    .line 223
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 29
    .param p1, "length"    # F
    .param p2, "center"    # F
    .param p3, "interpolation"    # F
    .param p4, "shapePath"    # Lcom/google/android/material/shape/ShapePath;

    .line 74
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v9, 0x0

    cmpl-float v3, v3, v9

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 77
    return-void

    .line 80
    :cond_0
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    add-float v11, v3, v4

    .line 81
    .local v11, "cradleDiameter":F
    div-float v12, v11, v10

    .line 82
    .local v12, "cradleRadius":F
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v13, p3, v3

    .line 83
    .local v13, "roundedCornerOffset":F
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v14, p2, v3

    .line 87
    .local v14, "middle":F
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v3, v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p3

    mul-float/2addr v5, v12

    add-float/2addr v3, v5

    .line 89
    .local v3, "verticalOffset":F
    div-float v15, v3, v12

    .line 90
    .local v15, "verticalOffsetRatio":F
    cmpl-float v4, v15, v4

    if-ltz v4, :cond_1

    .line 93
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 94
    return-void

    .line 103
    :cond_1
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    mul-float v16, v4, p3

    .line 104
    .local v16, "cornerSize":F
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    mul-float/2addr v4, v10

    iget v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move/from16 v17, v4

    .line 105
    .local v17, "useCircleCutout":Z
    const/4 v4, 0x0

    .line 106
    .local v4, "arcOffset":F
    if-nez v17, :cond_4

    .line 107
    const/4 v3, 0x0

    .line 108
    const/high16 v4, 0x3fe00000    # 1.75f

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_2

    .line 106
    :cond_4
    move/from16 v18, v3

    move/from16 v19, v4

    .line 111
    .end local v3    # "verticalOffset":F
    .end local v4    # "arcOffset":F
    .local v18, "verticalOffset":F
    .local v19, "arcOffset":F
    :goto_2
    add-float v20, v12, v13

    .line 112
    .local v20, "distanceBetweenCenters":F
    mul-float v21, v20, v20

    .line 113
    .local v21, "distanceBetweenCentersSquared":F
    add-float v22, v18, v13

    .line 114
    .local v22, "distanceY":F
    mul-float v3, v22, v22

    sub-float v3, v21, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 117
    .local v3, "distanceX":F
    sub-float v4, v14, v3

    .line 118
    .local v4, "leftRoundedCornerCircleX":F
    add-float v23, v14, v3

    .line 121
    .local v23, "rightRoundedCornerCircleX":F
    div-float v5, v3, v22

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v8, v5

    .line 122
    .local v8, "cornerRadiusArcLength":F
    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v5, v8

    add-float v24, v5, v19

    .line 125
    .local v24, "cutoutArcOffset":F
    invoke-virtual {v2, v4, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 129
    move v5, v3

    .end local v3    # "distanceX":F
    .local v5, "distanceX":F
    sub-float v3, v4, v13

    move v6, v5

    .end local v5    # "distanceX":F
    .local v6, "distanceX":F
    add-float v5, v4, v13

    move v7, v6

    .end local v6    # "distanceX":F
    .local v7, "distanceX":F
    mul-float v6, v13, v10

    move/from16 v25, v7

    .end local v7    # "distanceX":F
    .local v25, "distanceX":F
    const/high16 v7, 0x43870000    # 270.0f

    move/from16 v26, v4

    .end local v4    # "leftRoundedCornerCircleX":F
    .local v26, "leftRoundedCornerCircleX":F
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 137
    move/from16 v27, v8

    .end local v8    # "cornerRadiusArcLength":F
    .local v27, "cornerRadiusArcLength":F
    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v17, :cond_5

    .line 139
    sub-float v3, v14, v12

    neg-float v4, v12

    sub-float v4, v4, v18

    add-float v5, v14, v12

    sub-float v6, v12, v18

    sub-float v7, v2, v24

    mul-float v8, v24, v10

    sub-float/2addr v8, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    goto :goto_3

    .line 147
    :cond_5
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    mul-float v4, v16, v10

    add-float v28, v3, v4

    .line 148
    .local v28, "cutoutDiameter":F
    sub-float v3, v14, v12

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v4, v16, v4

    neg-float v4, v4

    sub-float v5, v14, v12

    add-float v5, v5, v28

    iget v6, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v6, v6, v16

    sub-float v7, v2, v24

    mul-float v8, v24, v10

    sub-float/2addr v8, v2

    div-float/2addr v8, v10

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 156
    add-float v3, v14, v12

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    div-float/2addr v4, v10

    add-float v4, v16, v4

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v4, v16, v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 159
    add-float v3, v14, v12

    mul-float v4, v16, v10

    iget v5, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v4, v16, v4

    neg-float v4, v4

    add-float v5, v14, v12

    iget v6, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v6, v6, v16

    const/high16 v7, -0x3d4c0000    # -90.0f

    add-float v8, v24, v7

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 170
    .end local v28    # "cutoutDiameter":F
    :goto_3
    sub-float v3, v23, v13

    add-float v5, v23, v13

    mul-float v6, v13, v10

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v27

    const/4 v4, 0x0

    move-object/from16 v2, p4

    move/from16 v8, v27

    .end local v27    # "cornerRadiusArcLength":F
    .restart local v8    # "cornerRadiusArcLength":F
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 179
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 180
    return-void
.end method

.method public getFabCornerRadius()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    return v0
.end method

.method getFabCradleMargin()F
    .locals 1

    .line 239
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 247
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method public getFabDiameter()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method public getHorizontalOffset()F
    .locals 1

    .line 214
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 2
    .param p1, "cradleVerticalOffset"    # F

    .line 232
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 235
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 236
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cradleVerticalOffset must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFabCornerSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 259
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:F

    .line 260
    return-void
.end method

.method setFabCradleMargin(F)V
    .locals 0
    .param p1, "fabMargin"    # F

    .line 243
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 244
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 0
    .param p1, "roundedCornerRadius"    # F

    .line 251
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 252
    return-void
.end method

.method public setFabDiameter(F)V
    .locals 0
    .param p1, "fabDiameter"    # F

    .line 199
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 200
    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 0
    .param p1, "horizontalOffset"    # F

    .line 204
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 205
    return-void
.end method
