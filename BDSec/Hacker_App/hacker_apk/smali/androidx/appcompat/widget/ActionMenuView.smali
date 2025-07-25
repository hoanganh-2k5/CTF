.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;,
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;,
        Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 87
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 88
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 89
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 90
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 14
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .line 406
    move/from16 v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 408
    .local v1, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int v2, v2, p4

    .line 410
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 411
    .local v3, "childHeightMode":I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 413
    .local v4, "childHeightSpec":I
    instance-of v5, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_0

    .line 414
    move-object v5, p0

    check-cast v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 415
    .local v5, "itemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    .line 417
    .local v8, "hasText":Z
    :goto_1
    const/4 v9, 0x0

    .line 418
    .local v9, "cellsUsed":I
    if-lez v0, :cond_4

    const/4 v10, 0x2

    if-eqz v8, :cond_2

    if-lt v0, v10, :cond_4

    .line 419
    :cond_2
    mul-int v11, p1, v0

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 421
    .local v11, "childWidthSpec":I
    invoke-virtual {p0, v11, v4}, Landroid/view/View;->measure(II)V

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 424
    .local v12, "measuredWidth":I
    div-int v9, v12, p1

    .line 425
    rem-int v13, v12, p1

    if-eqz v13, :cond_3

    add-int/lit8 v9, v9, 0x1

    .line 426
    :cond_3
    if-eqz v8, :cond_4

    if-ge v9, v10, :cond_4

    const/4 v9, 0x2

    .line 429
    .end local v11    # "childWidthSpec":I
    .end local v12    # "measuredWidth":I
    :cond_4
    iget-boolean v10, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_5

    if-eqz v8, :cond_5

    move v6, v7

    .line 430
    .local v6, "expandable":Z
    :cond_5
    iput-boolean v6, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 432
    iput v9, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 433
    mul-int v7, v9, p1

    .line 434
    .local v7, "targetWidth":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v4}, Landroid/view/View;->measure(II)V

    .line 436
    return v9
.end method

.method private onMeasureExactFormat(II)V
    .locals 39
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 180
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 181
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 182
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 184
    .local v3, "heightSize":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 185
    .local v4, "widthPadding":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 187
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 190
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 193
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v8, v2, v8

    .line 194
    .local v8, "cellCount":I
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    rem-int v9, v2, v9

    .line 196
    .local v9, "cellSizeRemaining":I
    const/4 v10, 0x0

    if-nez v8, :cond_0

    .line 198
    invoke-virtual {v0, v2, v10}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 199
    return-void

    .line 202
    :cond_0
    iget v11, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v12, v9, v8

    add-int/2addr v11, v12

    .line 204
    .local v11, "cellSize":I
    move v12, v8

    .line 205
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 206
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 207
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 208
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 209
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 212
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 214
    .local v18, "smallestItemsAt":J
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v10

    .line 215
    .local v10, "childCount":I
    const/16 v21, 0x0

    move/from16 v38, v16

    move/from16 v16, v3

    move/from16 v3, v38

    move/from16 v38, v21

    move/from16 v21, v4

    move/from16 v4, v38

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_0
    if-ge v4, v10, :cond_8

    .line 216
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 217
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v4

    .end local v4    # "i":I
    .local v23, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v24, v8

    .end local v8    # "cellCount":I
    .local v24, "cellCount":I
    const/16 v8, 0x8

    if-ne v4, v8, :cond_1

    goto/16 :goto_4

    .line 219
    :cond_1
    instance-of v4, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 220
    .local v4, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 222
    if-eqz v4, :cond_2

    .line 225
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v26, v4

    const/4 v4, 0x0

    .end local v4    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-virtual {v7, v8, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 222
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .restart local v3    # "visibleItemCount":I
    .restart local v4    # "isGeneratedItem":Z
    :cond_2
    move/from16 v25, v3

    move/from16 v26, v4

    const/4 v4, 0x0

    .line 228
    .end local v3    # "visibleItemCount":I
    .end local v4    # "isGeneratedItem":Z
    .restart local v25    # "visibleItemCount":I
    .restart local v26    # "isGeneratedItem":Z
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 229
    .local v3, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 230
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 231
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 232
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 233
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 234
    iput v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 235
    if-eqz v26, :cond_3

    move-object v4, v7

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 238
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v12

    .line 240
    .local v4, "cellsAvailable":I
    :goto_3
    invoke-static {v7, v11, v4, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v8

    .line 243
    .local v8, "cellsUsed":I
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 244
    move/from16 v27, v4

    .end local v4    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v4, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 245
    :cond_5
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_6

    const/16 v17, 0x1

    .line 247
    :cond_6
    sub-int/2addr v12, v8

    .line 248
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 249
    .end local v13    # "maxChildHeight":I
    .local v4, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7

    shl-int v13, v13, v23

    move-object/from16 v22, v3

    move/from16 v28, v4

    .end local v3    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v4    # "maxChildHeight":I
    .local v22, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .local v28, "maxChildHeight":I
    int-to-long v3, v13

    or-long v3, v18, v3

    move-wide/from16 v18, v3

    move/from16 v3, v25

    move/from16 v13, v28

    .end local v18    # "smallestItemsAt":J
    .local v3, "smallestItemsAt":J
    goto :goto_4

    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v28    # "maxChildHeight":I
    .local v3, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v4    # "maxChildHeight":I
    .restart local v18    # "smallestItemsAt":J
    :cond_7
    move-object/from16 v22, v3

    move/from16 v28, v4

    .end local v3    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v4    # "maxChildHeight":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "maxChildHeight":I
    move/from16 v3, v25

    move/from16 v13, v28

    .line 215
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "cellsUsed":I
    .end local v22    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "maxChildHeight":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_4
    add-int/lit8 v4, v23, 0x1

    move/from16 v7, p2

    move/from16 v8, v24

    .end local v23    # "i":I
    .local v4, "i":I
    goto/16 :goto_0

    .end local v24    # "cellCount":I
    .local v8, "cellCount":I
    :cond_8
    move/from16 v23, v4

    move/from16 v24, v8

    .line 254
    .end local v4    # "i":I
    .end local v8    # "cellCount":I
    .restart local v24    # "cellCount":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v3, v4, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 259
    .local v7, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v8, 0x0

    .line 260
    .local v8, "needsExpansion":Z
    :goto_6
    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x0

    if-lez v15, :cond_13

    if-lez v12, :cond_13

    .line 261
    const v23, 0x7fffffff

    .line 262
    .local v23, "minCells":I
    const-wide/16 v29, 0x0

    .line 263
    .local v29, "minCellsAt":J
    const/16 v31, 0x0

    .line 264
    .local v31, "minCellsItemCount":I
    const/16 v32, 0x0

    move/from16 v33, v4

    move/from16 v4, v23

    move/from16 v23, v5

    move/from16 v5, v31

    move/from16 v31, v7

    move/from16 v7, v32

    .local v4, "minCells":I
    .local v5, "minCellsItemCount":I
    .local v7, "i":I
    .local v23, "heightPadding":I
    .local v31, "centerSingleExpandedItem":Z
    :goto_7
    if-ge v7, v10, :cond_d

    .line 265
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 266
    .local v32, "child":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v7

    .end local v7    # "i":I
    .local v35, "i":I
    move-object/from16 v7, v34

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 269
    .local v7, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v34, v8

    .end local v8    # "needsExpansion":Z
    .local v34, "needsExpansion":Z
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v8, :cond_a

    goto :goto_8

    .line 272
    :cond_a
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v8, v4, :cond_b

    .line 273
    iget v4, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 274
    shl-long v29, v25, v35

    .line 275
    const/4 v5, 0x1

    goto :goto_8

    .line 276
    :cond_b
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v8, v4, :cond_c

    .line 277
    shl-long v36, v25, v35

    or-long v29, v29, v36

    .line 278
    add-int/lit8 v5, v5, 0x1

    .line 264
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v32    # "child":Landroid/view/View;
    :cond_c
    :goto_8
    add-int/lit8 v7, v35, 0x1

    move/from16 v8, v34

    .end local v35    # "i":I
    .local v7, "i":I
    goto :goto_7

    .end local v34    # "needsExpansion":Z
    .restart local v8    # "needsExpansion":Z
    :cond_d
    move/from16 v35, v7

    move/from16 v34, v8

    .line 283
    .end local v7    # "i":I
    .end local v8    # "needsExpansion":Z
    .restart local v34    # "needsExpansion":Z
    or-long v18, v18, v29

    .line 285
    if-le v5, v12, :cond_e

    move/from16 v35, v1

    move/from16 v36, v2

    goto/16 :goto_b

    .line 288
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 290
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    if-ge v7, v10, :cond_12

    .line 291
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 292
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move/from16 v32, v5

    .end local v5    # "minCellsItemCount":I
    .local v32, "minCellsItemCount":I
    move-object/from16 v5, v25

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 293
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    move/from16 v25, v7

    const/16 v22, 0x1

    .end local v7    # "i":I
    .local v25, "i":I
    shl-int v7, v22, v25

    move/from16 v35, v1

    move/from16 v36, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v35, "heightMode":I
    .local v36, "widthSize":I
    int-to-long v1, v7

    and-long v1, v29, v1

    cmp-long v1, v1, v27

    if-nez v1, :cond_f

    .line 295
    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v4, :cond_11

    shl-int v1, v22, v25

    int-to-long v1, v1

    or-long v18, v18, v1

    goto :goto_a

    .line 299
    :cond_f
    if-eqz v31, :cond_10

    iget-boolean v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    if-ne v12, v1, :cond_10

    .line 301
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v1, v11

    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v7, 0x0

    invoke-virtual {v8, v1, v7, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 303
    :cond_10
    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 304
    iput-boolean v2, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 305
    add-int/lit8 v12, v12, -0x1

    .line 290
    .end local v5    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    :cond_11
    :goto_a
    add-int/lit8 v7, v25, 0x1

    move/from16 v5, v32

    move/from16 v1, v35

    move/from16 v2, v36

    .end local v25    # "i":I
    .restart local v7    # "i":I
    goto :goto_9

    .end local v32    # "minCellsItemCount":I
    .end local v35    # "heightMode":I
    .end local v36    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "minCellsItemCount":I
    :cond_12
    move/from16 v35, v1

    move/from16 v36, v2

    move/from16 v32, v5

    move/from16 v25, v7

    .line 308
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "minCellsItemCount":I
    .end local v7    # "i":I
    .restart local v32    # "minCellsItemCount":I
    .restart local v35    # "heightMode":I
    .restart local v36    # "widthSize":I
    const/4 v8, 0x1

    .line 309
    .end local v4    # "minCells":I
    .end local v29    # "minCellsAt":J
    .end local v32    # "minCellsItemCount":I
    .end local v34    # "needsExpansion":Z
    .local v8, "needsExpansion":Z
    move/from16 v5, v23

    move/from16 v7, v31

    move/from16 v4, v33

    goto/16 :goto_6

    .line 260
    .end local v23    # "heightPadding":I
    .end local v31    # "centerSingleExpandedItem":Z
    .end local v35    # "heightMode":I
    .end local v36    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "heightPadding":I
    .local v7, "centerSingleExpandedItem":Z
    :cond_13
    move/from16 v35, v1

    move/from16 v36, v2

    move/from16 v33, v4

    move/from16 v23, v5

    move/from16 v31, v7

    move/from16 v34, v8

    .line 314
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v7    # "centerSingleExpandedItem":Z
    .end local v8    # "needsExpansion":Z
    .restart local v23    # "heightPadding":I
    .restart local v31    # "centerSingleExpandedItem":Z
    .restart local v34    # "needsExpansion":Z
    .restart local v35    # "heightMode":I
    .restart local v36    # "widthSize":I
    :goto_b
    if-nez v17, :cond_14

    const/4 v1, 0x1

    if-ne v3, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 315
    .local v1, "singleItem":Z
    :goto_c
    if-lez v12, :cond_23

    cmp-long v2, v18, v27

    if-eqz v2, :cond_23

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_16

    if-nez v1, :cond_16

    const/4 v2, 0x1

    if-le v14, v2, :cond_15

    goto :goto_d

    :cond_15
    move/from16 v20, v1

    goto/16 :goto_13

    .line 317
    :cond_16
    :goto_d
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 319
    .local v2, "expandCount":F
    if-nez v1, :cond_19

    .line 321
    and-long v4, v18, v25

    cmp-long v4, v4, v27

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_17

    .line 322
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 323
    .local v7, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_18

    sub-float/2addr v2, v5

    goto :goto_e

    .line 321
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/4 v4, 0x0

    .line 325
    :cond_18
    :goto_e
    add-int/lit8 v7, v10, -0x1

    const/16 v22, 0x1

    shl-int v7, v22, v7

    int-to-long v7, v7

    and-long v7, v18, v7

    cmp-long v7, v7, v27

    if-eqz v7, :cond_1a

    .line 326
    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 327
    .restart local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v8, :cond_1a

    sub-float/2addr v2, v5

    goto :goto_f

    .line 319
    .end local v7    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_19
    const/4 v4, 0x0

    .line 331
    :cond_1a
    :goto_f
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1b

    .line 332
    mul-int v4, v12, v11

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_10

    :cond_1b
    nop

    .line 334
    .local v4, "extraPixels":I
    :goto_10
    const/4 v5, 0x0

    move/from16 v8, v34

    .end local v34    # "needsExpansion":Z
    .local v5, "i":I
    .restart local v8    # "needsExpansion":Z
    :goto_11
    if-ge v5, v10, :cond_22

    .line 335
    const/16 v22, 0x1

    shl-int v7, v22, v5

    move/from16 v20, v1

    move/from16 v25, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v20, "singleItem":Z
    .local v25, "expandCount":F
    int-to-long v1, v7

    and-long v1, v18, v1

    cmp-long v1, v1, v27

    if-nez v1, :cond_1c

    goto :goto_12

    .line 337
    :cond_1c
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 338
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 339
    .local v2, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    instance-of v7, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_1e

    .line 341
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 342
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 343
    if-nez v5, :cond_1d

    iget-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v7, :cond_1d

    .line 346
    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 348
    :cond_1d
    const/4 v8, 0x1

    goto :goto_12

    .line 349
    :cond_1e
    iget-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_1f

    .line 350
    iput v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 351
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 352
    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 353
    const/4 v8, 0x1

    goto :goto_12

    .line 358
    :cond_1f
    if-eqz v5, :cond_20

    .line 359
    div-int/lit8 v7, v4, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 361
    :cond_20
    add-int/lit8 v7, v10, -0x1

    if-eq v5, v7, :cond_21

    .line 362
    div-int/lit8 v7, v4, 0x2

    iput v7, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 334
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_21
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    move/from16 v2, v25

    goto :goto_11

    .end local v20    # "singleItem":Z
    .end local v25    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_22
    move/from16 v20, v1

    move/from16 v25, v2

    .line 367
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v20    # "singleItem":Z
    .restart local v25    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_14

    .line 315
    .end local v4    # "extraPixels":I
    .end local v8    # "needsExpansion":Z
    .end local v20    # "singleItem":Z
    .end local v25    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v34    # "needsExpansion":Z
    :cond_23
    move/from16 v20, v1

    .line 371
    .end local v1    # "singleItem":Z
    .restart local v20    # "singleItem":Z
    :goto_13
    move/from16 v8, v34

    .end local v34    # "needsExpansion":Z
    .restart local v8    # "needsExpansion":Z
    :goto_14
    if-eqz v8, :cond_26

    .line 372
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v10, :cond_25

    .line 373
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 374
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 376
    .local v5, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v7, :cond_24

    move/from16 v25, v2

    goto :goto_16

    .line 378
    :cond_24
    iget v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v7, v11

    iget v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v7, v1

    .line 379
    .local v7, "width":I
    move/from16 v25, v2

    const/high16 v1, 0x40000000    # 2.0f

    .end local v2    # "i":I
    .local v25, "i":I
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v2, v6}, Landroid/view/View;->measure(II)V

    .line 372
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v7    # "width":I
    :goto_16
    add-int/lit8 v2, v25, 0x1

    .end local v25    # "i":I
    .restart local v2    # "i":I
    goto :goto_15

    :cond_25
    move/from16 v25, v2

    .line 384
    .end local v2    # "i":I
    :cond_26
    move/from16 v1, v35

    const/high16 v2, 0x40000000    # 2.0f

    .end local v35    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_27

    .line 385
    move v2, v13

    .end local v16    # "heightSize":I
    .local v2, "heightSize":I
    goto :goto_17

    .line 384
    .end local v2    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_27
    move/from16 v2, v16

    .line 388
    .end local v16    # "heightSize":I
    .restart local v2    # "heightSize":I
    :goto_17
    move/from16 v4, v36

    .end local v36    # "widthSize":I
    .local v4, "widthSize":I
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 389
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 607
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 713
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 716
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 580
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 582
    .local v0, "params":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 583
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 588
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 593
    if-eqz p1, :cond_2

    .line 594
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 596
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    nop

    .line 597
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    .line 598
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 600
    :cond_1
    return-object v0

    .line 602
    .end local v0    # "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 612
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 613
    .local v0, "result":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 614
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 644
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 646
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 647
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 648
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 649
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 650
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 651
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    .line 650
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 652
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 653
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 656
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 564
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 565
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 722
    if-nez p1, :cond_0

    .line 723
    const/4 v0, 0x0

    return v0

    .line 725
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 727
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 728
    .local v2, "result":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 729
    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 731
    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 732
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 734
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 632
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 633
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 706
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 701
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 130
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 137
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 140
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 543
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 544
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 545
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 441
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    .line 442
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 443
    return-void

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 447
    .local v1, "childCount":I
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    .line 448
    .local v2, "midVertical":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    .line 449
    .local v3, "dividerWidth":I
    const/4 v4, 0x0

    .line 450
    .local v4, "overflowWidth":I
    const/4 v5, 0x0

    .line 451
    .local v5, "nonOverflowCount":I
    sub-int v6, p4, p2

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    .line 452
    .local v6, "widthRemaining":I
    const/4 v7, 0x0

    .line 453
    .local v7, "hasOverflow":Z
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 454
    .local v8, "isLayoutRtl":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v10, 0x8

    if-ge v9, v1, :cond_5

    .line 455
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 456
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_1

    .line 457
    move/from16 v16, v2

    goto :goto_2

    .line 460
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 461
    .local v10, "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iget-boolean v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_4

    .line 462
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 463
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 464
    add-int/2addr v4, v3

    .line 466
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 469
    .local v12, "height":I
    if-eqz v8, :cond_3

    .line 470
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v13

    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    .line 471
    .local v13, "l":I
    add-int v14, v13, v4

    .local v14, "r":I
    goto :goto_1

    .line 473
    .end local v13    # "l":I
    .end local v14    # "r":I
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v13

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget v14, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v14, v13, v14

    .line 474
    .restart local v14    # "r":I
    sub-int v13, v14, v4

    .line 476
    .restart local v13    # "l":I
    :goto_1
    div-int/lit8 v15, v12, 0x2

    sub-int v15, v2, v15

    .line 477
    .local v15, "t":I
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .local v16, "midVertical":I
    add-int v2, v15, v12

    .line 478
    .local v2, "b":I
    invoke-virtual {v11, v13, v15, v14, v2}, Landroid/view/View;->layout(IIII)V

    .line 480
    sub-int/2addr v6, v4

    .line 481
    const/4 v2, 0x1

    .line 482
    .end local v7    # "hasOverflow":Z
    .end local v12    # "height":I
    .end local v13    # "l":I
    .end local v14    # "r":I
    .end local v15    # "t":I
    .local v2, "hasOverflow":Z
    move v7, v2

    goto :goto_2

    .line 483
    .end local v16    # "midVertical":I
    .local v2, "midVertical":I
    .restart local v7    # "hasOverflow":Z
    :cond_4
    move/from16 v16, v2

    .end local v2    # "midVertical":I
    .restart local v16    # "midVertical":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v12

    iget v12, v10, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v12

    .line 484
    .local v2, "size":I
    sub-int/2addr v6, v2

    .line 485
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 487
    add-int/lit8 v5, v5, 0x1

    .line 454
    .end local v2    # "size":I
    .end local v10    # "p":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v11    # "v":Landroid/view/View;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    goto :goto_0

    .end local v16    # "midVertical":I
    .local v2, "midVertical":I
    :cond_5
    move/from16 v16, v2

    .line 491
    .end local v2    # "midVertical":I
    .end local v9    # "i":I
    .restart local v16    # "midVertical":I
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_6

    if-nez v7, :cond_6

    .line 493
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 494
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 495
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 496
    .local v10, "height":I
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 497
    .local v11, "midHorizontal":I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v11, v12

    .line 498
    .local v12, "l":I
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v16, v13

    .line 499
    .local v13, "t":I
    add-int v14, v12, v9

    add-int v15, v13, v10

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 500
    return-void

    .line 503
    .end local v2    # "v":Landroid/view/View;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "midHorizontal":I
    .end local v12    # "l":I
    .end local v13    # "t":I
    :cond_6
    xor-int/lit8 v9, v7, 0x1

    sub-int v9, v5, v9

    .line 504
    .local v9, "spacerCount":I
    if-lez v9, :cond_7

    div-int v11, v6, v9

    goto :goto_3

    :cond_7
    move v11, v2

    :goto_3
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 506
    .local v2, "spacerSize":I
    if-eqz v8, :cond_b

    .line 507
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 508
    .local v11, "startRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v1, :cond_a

    .line 509
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 510
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 511
    .local v14, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_9

    iget-boolean v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_8

    .line 512
    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_5

    .line 515
    :cond_8
    iget v15, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v11, v15

    .line 516
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 517
    .local v15, "width":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 518
    .local v17, "height":I
    div-int/lit8 v18, v17, 0x2

    sub-int v10, v16, v18

    .line 519
    .local v10, "t":I
    move/from16 v18, v2

    .end local v2    # "spacerSize":I
    .local v18, "spacerSize":I
    sub-int v2, v11, v15

    move/from16 v19, v3

    .end local v3    # "dividerWidth":I
    .local v19, "dividerWidth":I
    add-int v3, v10, v17

    invoke-virtual {v13, v2, v10, v11, v3}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v2, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    add-int v2, v2, v18

    sub-int/2addr v11, v2

    goto :goto_5

    .line 511
    .end local v10    # "t":I
    .end local v15    # "width":I
    .end local v17    # "height":I
    .end local v18    # "spacerSize":I
    .end local v19    # "dividerWidth":I
    .restart local v2    # "spacerSize":I
    .restart local v3    # "dividerWidth":I
    :cond_9
    move/from16 v18, v2

    move/from16 v19, v3

    .line 508
    .end local v2    # "spacerSize":I
    .end local v3    # "dividerWidth":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "spacerSize":I
    .restart local v19    # "dividerWidth":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move/from16 v3, v19

    const/16 v10, 0x8

    goto :goto_4

    .end local v18    # "spacerSize":I
    .end local v19    # "dividerWidth":I
    .restart local v2    # "spacerSize":I
    .restart local v3    # "dividerWidth":I
    :cond_a
    move/from16 v18, v2

    move/from16 v19, v3

    .line 522
    .end local v2    # "spacerSize":I
    .end local v3    # "dividerWidth":I
    .end local v11    # "startRight":I
    .end local v12    # "i":I
    .restart local v18    # "spacerSize":I
    .restart local v19    # "dividerWidth":I
    goto :goto_8

    .line 523
    .end local v18    # "spacerSize":I
    .end local v19    # "dividerWidth":I
    .restart local v2    # "spacerSize":I
    .restart local v3    # "dividerWidth":I
    :cond_b
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "spacerSize":I
    .end local v3    # "dividerWidth":I
    .restart local v18    # "spacerSize":I
    .restart local v19    # "dividerWidth":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    .line 524
    .local v2, "startLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_e

    .line 525
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 526
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 527
    .local v11, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_d

    iget-boolean v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v12, :cond_c

    .line 528
    goto :goto_7

    .line 531
    :cond_c
    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v12

    .line 532
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 533
    .local v12, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 534
    .local v14, "height":I
    div-int/lit8 v15, v14, 0x2

    sub-int v15, v16, v15

    .line 535
    .local v15, "t":I
    add-int v13, v2, v12

    add-int v0, v15, v14

    invoke-virtual {v10, v2, v15, v13, v0}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v0, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    add-int v0, v0, v18

    add-int/2addr v2, v0

    .line 524
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .end local v12    # "width":I
    .end local v14    # "height":I
    .end local v15    # "t":I
    :cond_d
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 539
    .end local v2    # "startLeft":I
    .end local v3    # "i":I
    :cond_e
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 149
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 150
    .local v0, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 152
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    .line 153
    iput v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 158
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 159
    .local v1, "widthSize":I
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v2, :cond_2

    .line 160
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 161
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 164
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 165
    .local v2, "childCount":I
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 166
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    .line 169
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 170
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 171
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 172
    .local v6, "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 169
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v3    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 176
    :goto_2
    return-void
.end method

.method public peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 1

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .line 744
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 745
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 664
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 665
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 666
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 143
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 144
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 554
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .line 575
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 576
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 100
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 101
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 102
    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 124
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 125
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 126
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 682
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
