.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "NavigationRailView.java"


# static fields
.field private static final DEFAULT_HEADER_GRAVITY:I = 0x31

.field static final DEFAULT_MENU_GRAVITY:I = 0x31

.field static final MAX_ITEM_COUNT:I = 0x7

.field static final NO_ITEM_MINIMUM_HEIGHT:I = -0x1


# instance fields
.field private headerView:Landroid/view/View;

.field private paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

.field private paddingStartSystemWindowInsets:Ljava/lang/Boolean;

.field private paddingTopSystemWindowInsets:Ljava/lang/Boolean;

.field private final topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    sget v0, Lcom/google/android/material/R$attr;->navigationRailStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 128
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_NavigationRailView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 115
    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 116
    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingStartSystemWindowInsets:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 142
    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    sget-object v4, Lcom/google/android/material/R$styleable;->NavigationRailView:[I

    const/4 p1, 0x0

    new-array v7, p1, [I

    .line 143
    move-object v3, p2

    move v5, p3

    move v6, p4

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v5, "defStyleAttr":I
    .local v6, "defStyleRes":I
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 146
    .local p2, "attributes":Landroidx/appcompat/widget/TintTypedArray;
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_headerLayout:I

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 147
    .local p3, "headerLayoutRes":I
    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(I)V

    .line 151
    :cond_0
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_menuGravity:I

    .line 152
    const/16 v1, 0x31

    invoke-virtual {p2, p4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p4

    .line 151
    invoke-virtual {p0, p4}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    .line 154
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 155
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p2, p4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 155
    invoke-virtual {p0, p4}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemMinimumHeight(I)V

    .line 160
    :cond_1
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingTopSystemWindowInsets:I

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 161
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingTopSystemWindowInsets:I

    .line 162
    invoke-virtual {p2, p4, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 164
    :cond_2
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingBottomSystemWindowInsets:I

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 165
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingBottomSystemWindowInsets:I

    .line 166
    invoke-virtual {p2, p4, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 169
    :cond_3
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingStartSystemWindowInsets:I

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 170
    sget p4, Lcom/google/android/material/R$styleable;->NavigationRailView_paddingStartSystemWindowInsets:I

    .line 171
    invoke-virtual {p2, p4, p1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingStartSystemWindowInsets:Ljava/lang/Boolean;

    .line 175
    :cond_4
    nop

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/google/android/material/R$dimen;->m3_navigation_rail_item_padding_top_with_large_font:I

    .line 177
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 178
    .local p1, "largeFontTopPadding":I
    nop

    .line 179
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/google/android/material/R$dimen;->m3_navigation_rail_item_padding_bottom_with_large_font:I

    .line 180
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 182
    .local p4, "largeFontBottomPadding":I
    nop

    .line 183
    invoke-static {v2}, Lcom/google/android/material/resources/MaterialResources;->getFontScale(Landroid/content/Context;)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v7, v4, v8, v4, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    .line 184
    .local v1, "progress":F
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getItemPaddingTop()I

    move-result v4

    invoke-static {v4, p1, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    .line 185
    .local v4, "topPadding":F
    nop

    .line 186
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getItemPaddingBottom()I

    move-result v7

    invoke-static {v7, p4, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v7

    int-to-float v7, v7

    .line 187
    .local v7, "bottomPadding":F
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemPaddingTop(I)V

    .line 188
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemPaddingBottom(I)V

    .line 190
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 192
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->applyWindowInsets()V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/navigationrail/NavigationRailView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingStartSystemWindowInsets:Ljava/lang/Boolean;

    return-object v0
.end method

.method private applyWindowInsets()V
    .locals 1

    .line 196
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigationrail/NavigationRailView$1;-><init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 222
    return-void
.end method

.method private getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    return-object v0
.end method

.method private isHeaderViewVisible()Z
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeMinWidthSpec(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 375
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 376
    .local v0, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 379
    nop

    .line 380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 379
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 383
    :cond_0
    return p1
.end method

.method private shouldApplyWindowInsetPadding(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "paddingInsetFlag"    # Ljava/lang/Boolean;

    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public addHeaderView(I)V
    .locals 2
    .param p1, "layoutRes"    # I

    .line 282
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addHeaderView(Landroid/view/View;)V

    .line 283
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "headerView"    # Landroid/view/View;

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeHeaderView()V

    .line 296
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 298
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 299
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 301
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method

.method protected bridge synthetic createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object p1

    return-object p1
.end method

.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 371
    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method public getItemMinimumHeight()I
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 344
    .local v0, "menuView":Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemMinimumHeight()I

    move-result v1

    return v1
.end method

.method public getMaxItemCount()I
    .locals 1

    .line 359
    const/4 v0, 0x7

    return v0
.end method

.method public getMenuGravity()I
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenuGravity()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 248
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/navigation/NavigationBarView;->onLayout(ZIIII)V

    .line 250
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v1

    .line 251
    .local v1, "menuView":Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    const/4 v2, 0x0

    .line 252
    .local v2, "offsetY":I
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isHeaderViewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p1, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p1, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    add-int/2addr v3, v4

    .line 254
    .local v3, "usedTop":I
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getTop()I

    move-result v4

    .line 255
    .local v4, "menuTop":I
    if-ge v4, v3, :cond_1

    .line 256
    sub-int v2, v3, v4

    goto :goto_0

    .line 258
    .end local v3    # "usedTop":I
    .end local v4    # "menuTop":I
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->isTopGravity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    iget v2, p1, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    nop

    .line 262
    :goto_1
    if-lez v2, :cond_2

    .line 263
    nop

    .line 264
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getLeft()I

    move-result v3

    .line 265
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    .line 266
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getRight()I

    move-result v5

    .line 267
    invoke-virtual {v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getBottom()I

    move-result v6

    add-int/2addr v6, v2

    .line 263
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layout(IIII)V

    .line 269
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->makeMinWidthSpec(I)I

    move-result v0

    .line 237
    .local v0, "minWidthSpec":I
    invoke-super {p0, v0, p2}, Lcom/google/android/material/navigation/NavigationBarView;->onMeasure(II)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->isHeaderViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->topMargin:I

    sub-int/2addr v1, v2

    .line 241
    .local v1, "maxMenuHeight":I
    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 242
    .local v2, "menuHeightSpec":I
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->measureChild(Landroid/view/View;II)V

    .line 244
    .end local v1    # "maxMenuHeight":I
    .end local v2    # "menuHeightSpec":I
    :cond_0
    return-void
.end method

.method public removeHeaderView()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;->removeView(Landroid/view/View;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->headerView:Landroid/view/View;

    .line 329
    :cond_0
    return-void
.end method

.method public setItemMinimumHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I

    .line 353
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    .line 354
    .local v0, "menuView":Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    .line 355
    return-void
.end method

.method public setMenuGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 333
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMenuGravity(I)V

    .line 334
    return-void
.end method
