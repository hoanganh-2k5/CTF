.class public final Lcom/google/android/material/carousel/UncontainedCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "UncontainedCarouselStrategy.java"


# static fields
.field private static final MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD:F = 0.85f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    .line 52
    return-void
.end method

.method private calculateMediumChildSize(FFF)F
    .locals 2
    .param p1, "mediumChildSize"    # F
    .param p2, "largeChildSize"    # F
    .param p3, "remainingSpace"    # F

    .line 131
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 133
    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr v0, p2

    .line 138
    .local v0, "largeItemThreshold":F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 141
    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, p3

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 146
    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 147
    return p1
.end method

.method private createCenterAlignedKeylineState(FFFIFFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 17
    .param p1, "availableSpace"    # F
    .param p2, "childMargins"    # F
    .param p3, "largeSize"    # F
    .param p4, "largeCount"    # I
    .param p5, "mediumSize"    # F
    .param p6, "xSmallSize"    # F
    .param p7, "remainingSpace"    # F

    .line 158
    move/from16 v0, p2

    move/from16 v4, p3

    move/from16 v7, p5

    move/from16 v1, p6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 160
    .end local p6    # "xSmallSize":F
    .local v8, "xSmallSize":F
    invoke-static {v8, v4, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v9

    .line 161
    .local v9, "extraSmallMask":F
    invoke-static {v7, v4, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v10

    .line 162
    .local v10, "mediumMask":F
    const/4 v3, 0x0

    .line 164
    .local v3, "largeMask":F
    const/4 v1, 0x0

    .line 166
    .local v1, "start":F
    add-float v2, v1, p7

    const/high16 v11, 0x40000000    # 2.0f

    div-float v5, v7, v11

    sub-float v12, v2, v5

    .line 167
    .local v12, "firstMediumCenterX":F
    div-float v2, v7, v11

    add-float/2addr v2, v12

    .line 168
    .end local v1    # "start":F
    .local v2, "start":F
    div-float v1, v7, v11

    sub-float v1, v12, v1

    div-float v5, v8, v11

    sub-float v13, v1, v5

    .line 170
    .local v13, "extraSmallHeadCenterX":F
    div-float v1, v4, v11

    add-float/2addr v1, v2

    .line 171
    .local v1, "largeStartCenterX":F
    move/from16 v5, p4

    int-to-float v6, v5

    mul-float/2addr v6, v4

    add-float v14, v2, v6

    .line 173
    .end local v2    # "start":F
    .local v14, "start":F
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Builder;

    move/from16 v15, p1

    invoke-direct {v2, v4, v15}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    .line 175
    invoke-virtual {v2, v13, v9, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v2

    .line 176
    const/4 v6, 0x0

    invoke-virtual {v2, v12, v10, v7, v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v2

    .line 177
    move/from16 v16, v6

    const/4 v6, 0x1

    move-object/from16 p6, v2

    move v2, v1

    move-object/from16 v1, p6

    move/from16 p6, v11

    move/from16 v11, v16

    .end local v1    # "largeStartCenterX":F
    .local v2, "largeStartCenterX":F
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v1

    .line 179
    .local v1, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    div-float v4, v7, p6

    add-float/2addr v4, v14

    .line 180
    .local v4, "secondMediumCenterX":F
    add-float/2addr v14, v7

    .line 181
    invoke-virtual {v1, v4, v10, v7, v11}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 184
    div-float v5, v8, p6

    add-float/2addr v5, v14

    .line 185
    .local v5, "xSmallCenterX":F
    invoke-virtual {v1, v5, v9, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 186
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v6

    return-object v6
.end method

.method private createLeftAlignedKeylineState(Landroid/content/Context;FFFIFIF)Lcom/google/android/material/carousel/KeylineState;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childMargins"    # F
    .param p3, "availableSpace"    # F
    .param p4, "largeSize"    # F
    .param p5, "largeCount"    # I
    .param p6, "mediumSize"    # F
    .param p7, "mediumCount"    # I
    .param p8, "xSmallSize"    # F

    .line 198
    move/from16 v0, p2

    move/from16 v4, p4

    move/from16 v7, p6

    move/from16 v1, p8

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 202
    .end local p8    # "xSmallSize":F
    .local v8, "xSmallSize":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v7

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 203
    .local v9, "leftAnchorSize":F
    invoke-static {v9, v4, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v10

    .line 204
    .local v10, "leftAnchorMask":F
    nop

    .line 205
    invoke-static {v8, v4, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v11

    .line 206
    .local v11, "extraSmallMask":F
    nop

    .line 207
    invoke-static {v7, v4, v0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v12

    .line 208
    .local v12, "mediumMask":F
    const/4 v3, 0x0

    .line 210
    .local v3, "largeMask":F
    const/4 v1, 0x0

    .line 211
    .local v1, "start":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v2, v9, v13

    sub-float v14, v1, v2

    .line 213
    .local v14, "leftAnchorCenterX":F
    div-float v2, v4, v13

    .line 214
    .local v2, "largeStartCenterX":F
    move/from16 v5, p5

    int-to-float v6, v5

    mul-float/2addr v6, v4

    add-float v15, v1, v6

    .line 218
    .end local v1    # "start":F
    .local v15, "start":F
    new-instance v1, Lcom/google/android/material/carousel/KeylineState$Builder;

    move/from16 v6, p3

    invoke-direct {v1, v4, v6}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FF)V

    .line 220
    invoke-virtual {v1, v14, v10, v9}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v1

    .line 221
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v1

    .line 228
    .local v1, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    if-lez p7, :cond_0

    .line 229
    div-float v4, v7, v13

    add-float/2addr v4, v15

    .line 230
    .local v4, "mediumCenterX":F
    add-float/2addr v15, v7

    .line 231
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v12, v7, v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 234
    .end local v4    # "mediumCenterX":F
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v4

    div-float/2addr v4, v13

    add-float/2addr v4, v15

    .line 235
    .local v4, "xSmallCenterX":F
    invoke-virtual {v1, v4, v11, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 236
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method isContained()Z
    .locals 1

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 13
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "child"    # Landroid/view/View;

    .line 58
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    move v2, v0

    .line 60
    .local v2, "availableSpace":F
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 61
    .local v0, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    .line 62
    .local v1, "childMargins":F
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    .line 64
    .local v3, "measuredChildSize":F
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    int-to-float v1, v4

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v3, v4

    move v10, v3

    move v3, v1

    goto :goto_1

    .line 64
    :cond_1
    move v10, v3

    move v3, v1

    .line 69
    .end local v1    # "childMargins":F
    .local v3, "childMargins":F
    .local v10, "measuredChildSize":F
    :goto_1
    add-float v4, v10, v3

    .line 70
    .local v4, "largeChildSize":F
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v1

    add-float/2addr v1, v3

    .line 71
    .local v1, "mediumChildSize":F
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v5

    add-float v7, v5, v3

    .line 74
    .local v7, "xSmallChildSize":F
    div-float v5, v2, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 75
    .local v5, "largeCount":I
    int-to-float v8, v5

    mul-float/2addr v8, v4

    sub-float v11, v2, v8

    .line 76
    .local v11, "remainingSpace":F
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v8

    if-ne v8, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v12, v6

    .line 78
    .local v12, "isCenter":Z
    if-eqz v12, :cond_3

    .line 79
    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v11, v6

    .line 80
    .end local v11    # "remainingSpace":F
    .local v8, "remainingSpace":F
    invoke-virtual {p0}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->getSmallItemSizeMin()F

    move-result v6

    add-float v9, v6, v3

    .line 84
    .local v9, "smallChildSizeMin":F
    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 87
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 91
    .end local v1    # "mediumChildSize":F
    .local v6, "mediumChildSize":F
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->createCenterAlignedKeylineState(FFFIFFF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v11

    move v1, v6

    move v6, v5

    move v5, v4

    move v4, v2

    .end local v2    # "availableSpace":F
    .restart local v1    # "mediumChildSize":F
    .local v4, "availableSpace":F
    .local v5, "largeChildSize":F
    .local v6, "largeCount":I
    return-object v11

    .line 101
    .end local v6    # "largeCount":I
    .end local v8    # "remainingSpace":F
    .end local v9    # "smallChildSizeMin":F
    .restart local v2    # "availableSpace":F
    .local v4, "largeChildSize":F
    .local v5, "largeCount":I
    .restart local v11    # "remainingSpace":F
    :cond_3
    move v6, v5

    move v5, v4

    move v4, v2

    .end local v2    # "availableSpace":F
    .local v4, "availableSpace":F
    .local v5, "largeChildSize":F
    .restart local v6    # "largeCount":I
    const/4 v8, 0x0

    .line 103
    .local v8, "mediumCount":I
    const/4 v9, 0x0

    cmpl-float v9, v11, v9

    if-lez v9, :cond_4

    .line 104
    const/4 v8, 0x1

    .line 108
    :cond_4
    invoke-direct {p0, v1, v5, v11}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->calculateMediumChildSize(FFF)F

    move-result v1

    .line 110
    nop

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    move v9, v7

    move v7, v1

    move-object v1, p0

    .end local v1    # "mediumChildSize":F
    .local v7, "mediumChildSize":F
    .local v9, "xSmallChildSize":F
    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/carousel/UncontainedCarouselStrategy;->createLeftAlignedKeylineState(Landroid/content/Context;FFFIFIF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    move v1, v7

    move v7, v9

    .end local v9    # "xSmallChildSize":F
    .restart local v1    # "mediumChildSize":F
    .local v7, "xSmallChildSize":F
    return-object v2
.end method
