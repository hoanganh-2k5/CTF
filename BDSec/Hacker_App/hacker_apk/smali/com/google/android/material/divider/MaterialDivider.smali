.class public Lcom/google/android/material/divider/MaterialDivider;
.super Landroid/view/View;
.source "MaterialDivider.java"


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private color:I

.field private final dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private insetEnd:I

.field private insetStart:I

.field private thickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    sput v0, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/divider/MaterialDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/divider/MaterialDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    sget v0, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 75
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 77
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    sget v5, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    const/4 p1, 0x0

    new-array v6, p1, [I

    .line 78
    move-object v2, p2

    move v4, p3

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .local v2, "attrs":Landroid/util/AttributeSet;
    .local v4, "defStyleAttr":I
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 80
    .local p2, "attributes":Landroid/content/res/TypedArray;
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 81
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    .line 84
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    .line 85
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    .line 86
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    .line 87
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    .line 88
    invoke-static {v1, p2, p1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerColor(I)V

    .line 92
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    return v0
.end method

.method public getDividerThickness()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 114
    .local v2, "isRtl":Z
    :goto_0
    if-eqz v2, :cond_1

    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    .line 115
    .local v0, "left":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getWidth()I

    move-result v3

    if-eqz v2, :cond_2

    iget v4, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    :goto_2
    sub-int/2addr v3, v4

    .line 116
    .local v3, "right":I
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v0, v1, v3, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 117
    iget-object v1, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 100
    .local v0, "heightMode":I
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getMeasuredHeight()I

    move-result v1

    .line 101
    .local v1, "newThickness":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 102
    :cond_0
    iget v2, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    if-eq v1, v2, :cond_1

    .line 103
    iget v1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/divider/MaterialDivider;->setMeasuredDimension(II)V

    .line 107
    :cond_2
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 231
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    if-eq v0, p1, :cond_0

    .line 232
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    .line 233
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->invalidate()V

    .line 236
    :cond_0
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "colorId"    # I

    .line 246
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerColor(I)V

    .line 247
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .locals 0
    .param p1, "insetEnd"    # I

    .line 198
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    .line 199
    return-void
.end method

.method public setDividerInsetEndResource(I)V
    .locals 1
    .param p1, "insetEndId"    # I

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerInsetEnd(I)V

    .line 210
    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0
    .param p1, "insetStart"    # I

    .line 165
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    .line 166
    return-void
.end method

.method public setDividerInsetStartResource(I)V
    .locals 1
    .param p1, "insetStartId"    # I

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerInsetStart(I)V

    .line 177
    return-void
.end method

.method public setDividerThickness(I)V
    .locals 1
    .param p1, "thickness"    # I

    .line 129
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    if-eq v0, p1, :cond_0

    .line 130
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->requestLayout()V

    .line 133
    :cond_0
    return-void
.end method

.method public setDividerThicknessResource(I)V
    .locals 1
    .param p1, "thicknessId"    # I

    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerThickness(I)V

    .line 145
    return-void
.end method
