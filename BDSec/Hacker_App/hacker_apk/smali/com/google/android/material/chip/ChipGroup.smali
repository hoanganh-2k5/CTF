.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private final checkableGroup:Lcom/google/android/material/internal/CheckableGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/internal/CheckableGroup<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private chipSpacingHorizontal:I

.field private chipSpacingVertical:I

.field private final defaultCheckedId:I

.field private onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

.field private final passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    sput v0, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 137
    sget v0, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 141
    sget v0, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance v0, Lcom/google/android/material/internal/CheckableGroup;

    invoke-direct {v0}, Lcom/google/android/material/internal/CheckableGroup;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    .line 128
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    sget-object v4, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    sget v6, Lcom/google/android/material/chip/ChipGroup;->DEF_STYLE_RES:I

    const/4 p1, 0x0

    new-array v7, p1, [I

    .line 146
    move-object v3, p2

    move v5, p3

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v5, "defStyleAttr":I
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 149
    .local p2, "a":Landroid/content/res/TypedArray;
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 150
    .local p3, "chipSpacing":I
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 151
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 152
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 153
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 154
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 155
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 156
    sget v0, Lcom/google/android/material/R$styleable;->ChipGroup_selectionRequired:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    .line 157
    sget p1, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->defaultCheckedId:I

    .line 159
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/ChipGroup$1;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;)V

    .line 172
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 174
    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 175
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 65
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/CheckableGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 65
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    return-object v0
.end method

.method private getVisibleChipCount()I
    .locals 3

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 365
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 364
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private isChildVisible(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 396
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public check(I)V
    .locals 1
    .param p1, "id"    # I

    .line 280
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->check(I)V

    .line 281
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 213
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearCheck()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->clearCheck()V

    .line 324
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 208
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 196
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 202
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->getSingleCheckedId()I

    move-result v0

    return v0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method getIndexOfChip(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 378
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 379
    return v1

    .line 381
    :cond_0
    const/4 v0, 0x0

    .line 382
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 383
    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, "current":Landroid/view/View;
    instance-of v4, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/ChipGroup;->isChildVisible(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    move-object v4, v3

    check-cast v4, Lcom/google/android/material/chip/Chip;

    .line 386
    .local v4, "chip":Lcom/google/android/material/chip/Chip;
    if-ne v4, p1, :cond_1

    .line 387
    return v0

    .line 389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 382
    .end local v3    # "current":Landroid/view/View;
    .end local v4    # "chip":Lcom/google/android/material/chip/Chip;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public isSelectionRequired()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->isSelectionRequired()Z

    move-result v0

    return v0
.end method

.method public isSingleLine()Z
    .locals 1

    .line 454
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v0

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->isSingleSelection()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->onFinishInflate()V

    .line 227
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->defaultCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->defaultCheckedId:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->check(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 179
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 180
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 182
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipGroup;->getVisibleChipCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 183
    .local v1, "columnCount":I
    :goto_0
    nop

    .line 185
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getRowCount()I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    const/4 v3, 0x1

    goto :goto_1

    .line 190
    :cond_1
    const/4 v3, 0x2

    .line 184
    :goto_1
    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0
    .param p1, "chipSpacing"    # I

    .line 401
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 403
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1
    .param p1, "chipSpacingHorizontal"    # I

    .line 418
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_0

    .line 419
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 420
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 423
    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 428
    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 407
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    .line 408
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1
    .param p1, "chipSpacingVertical"    # I

    .line 438
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_0

    .line 439
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 440
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 443
    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 448
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlexWrap(I)V
    .locals 2
    .param p1, "flexWrap"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    if-nez p1, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 337
    return-void

    .line 339
    :cond_0
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$2;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 350
    return-void
.end method

.method public setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    .line 359
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedStateChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;

    .line 360
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 219
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$302(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 220
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 1
    .param p1, "selectionRequired"    # Z

    .line 499
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->setSelectionRequired(Z)V

    .line 500
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 2
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowDividerVertical(I)V
    .locals 2
    .param p1, "dividerMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleLine(I)V
    .locals 1
    .param p1, "id"    # I

    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 467
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "singleLine"    # Z

    .line 461
    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setSingleLine(Z)V

    .line 462
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1, "id"    # I

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 490
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z

    .line 480
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->setSingleSelection(Z)V

    .line 481
    return-void
.end method
