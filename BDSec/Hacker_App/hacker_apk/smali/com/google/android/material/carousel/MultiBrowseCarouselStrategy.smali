.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private keylineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 52
    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z
    .locals 4
    .param p1, "arrangement"    # Lcom/google/android/material/carousel/Arrangement;
    .param p2, "carouselItemCount"    # I

    .line 161
    invoke-virtual {p1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    .line 162
    .local v0, "keylineSurplus":I
    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-gtz v2, :cond_0

    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v2, v1, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 165
    .local v2, "changed":Z
    :goto_0
    if-lez v0, :cond_4

    .line 166
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v3, :cond_2

    .line 167
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    sub-int/2addr v3, v1

    iput v3, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    goto :goto_1

    .line 168
    :cond_2
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v3, v1, :cond_3

    .line 170
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    sub-int/2addr v3, v1

    iput v3, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 174
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
    :cond_4
    return v2
.end method

.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 21
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "child"    # Landroid/view/View;

    .line 61
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    int-to-float v1, v1

    .line 62
    .local v1, "availableSpace":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v2

    int-to-float v1, v2

    move v2, v1

    goto :goto_0

    .line 62
    :cond_0
    move v2, v1

    .line 66
    .end local v1    # "availableSpace":F
    .local v2, "availableSpace":F
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 67
    .local v1, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 68
    .local v3, "childMargins":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 70
    .local v4, "measuredChildSize":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v6, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    int-to-float v3, v5

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    move v11, v3

    move v12, v4

    goto :goto_1

    .line 70
    :cond_1
    move v11, v3

    move v12, v4

    .line 75
    .end local v3    # "childMargins":F
    .end local v4    # "measuredChildSize":F
    .local v11, "childMargins":F
    .local v12, "measuredChildSize":F
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMin()F

    move-result v3

    add-float v4, v3, v11

    .line 76
    .local v4, "smallChildSizeMin":F
    invoke-virtual {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMax()F

    move-result v3

    add-float/2addr v3, v11

    .line 77
    .local v3, "smallChildSizeMax":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 79
    .end local v3    # "smallChildSizeMax":F
    .local v5, "smallChildSizeMax":F
    add-float v3, v12, v11

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 84
    .local v9, "targetLargeChildSize":F
    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v12, v3

    add-float/2addr v3, v11

    add-float v6, v4, v11

    add-float v7, v5, v11

    .line 85
    invoke-static {v3, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 89
    .local v3, "targetSmallChildSize":F
    add-float v6, v9, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 96
    .local v6, "targetMediumChildSize":F
    sget-object v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 97
    .local v8, "smallCounts":[I
    mul-float/2addr v7, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_2

    .line 101
    const/4 v7, 0x0

    filled-new-array {v7}, [I

    move-result-object v7

    move-object v8, v7

    .line 104
    :cond_2
    sget-object v7, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 105
    .local v7, "mediumCounts":[I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_3

    .line 106
    invoke-static {v8}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v8

    .line 107
    invoke-static {v7}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v7

    move-object/from16 v20, v7

    move v7, v6

    move-object v6, v8

    move-object/from16 v8, v20

    goto :goto_2

    .line 105
    :cond_3
    move-object/from16 v20, v7

    move v7, v6

    move-object v6, v8

    move-object/from16 v8, v20

    .line 112
    .local v6, "smallCounts":[I
    .local v7, "targetMediumChildSize":F
    .local v8, "mediumCounts":[I
    :goto_2
    nop

    .line 114
    invoke-static {v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float v10, v2, v10

    .line 115
    invoke-static {v6}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v5

    sub-float v14, v10, v14

    .line 116
    .local v14, "minAvailableLargeSpace":F
    div-float v10, v14, v9

    move v15, v13

    move/from16 v16, v14

    .end local v14    # "minAvailableLargeSpace":F
    .local v16, "minAvailableLargeSpace":F
    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    move-object/from16 v17, v1

    move v10, v2

    .end local v1    # "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v2    # "availableSpace":F
    .local v10, "availableSpace":F
    .local v17, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    .line 117
    .local v1, "largeCountMin":I
    div-float v2, v10, v9

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 118
    .local v13, "largeCountMax":I
    sub-int v2, v13, v1

    add-int/2addr v2, v15

    new-array v2, v2, [I

    .line 119
    .local v2, "largeCounts":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v15, v2

    if-ge v14, v15, :cond_4

    .line 120
    sub-int v15, v13, v14

    aput v15, v2, v14

    .line 119
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 123
    .end local v14    # "i":I
    :cond_4
    move/from16 v20, v10

    move-object v10, v2

    move/from16 v2, v20

    .local v2, "availableSpace":F
    .local v10, "largeCounts":[I
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v14

    .line 134
    move-object/from16 v18, v6

    move-object v15, v8

    move-object/from16 v19, v10

    .end local v6    # "smallCounts":[I
    .end local v8    # "mediumCounts":[I
    .end local v10    # "largeCounts":[I
    .local v14, "arrangement":Lcom/google/android/material/carousel/Arrangement;
    .local v15, "mediumCounts":[I
    .local v18, "smallCounts":[I
    .local v19, "largeCounts":[I
    invoke-virtual {v14}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v6

    iput v6, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    .line 136
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v6

    invoke-virtual {v0, v14, v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    iget v6, v14, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    filled-new-array {v6}, [I

    move-result-object v6

    iget v8, v14, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    filled-new-array {v8}, [I

    move-result-object v8

    iget v10, v14, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    filled-new-array {v10}, [I

    move-result-object v10

    .line 140
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v14

    .line 152
    :cond_5
    nop

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 157
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v8

    .line 152
    invoke-static {v6, v11, v2, v14, v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v6

    return-object v6
.end method

.method shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 2
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "oldItemCount"    # I

    .line 182
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_2

    .line 183
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0
.end method
