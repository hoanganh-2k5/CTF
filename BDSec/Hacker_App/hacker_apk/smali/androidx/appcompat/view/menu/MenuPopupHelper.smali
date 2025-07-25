.class public Landroidx/appcompat/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuHelper;


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Landroidx/appcompat/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 67
    sget v5, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .local v1, "context":Landroid/content/Context;
    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .line 72
    sget v5, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .end local p3    # "anchorView":Landroid/view/View;
    .local v1, "context":Landroid/content/Context;
    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .local v3, "anchorView":Landroid/view/View;
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .line 78
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .end local p3    # "anchorView":Landroid/view/View;
    .end local p4    # "overflowOnly":Z
    .end local p5    # "popupStyleAttr":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .local v3, "anchorView":Landroid/view/View;
    .local v4, "overflowOnly":Z
    .local v5, "popupStyleAttr":I
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const v0, 0x800003

    iput v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 333
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/MenuPopupHelper$1;-><init>(Landroidx/appcompat/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 84
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 86
    iput-object p3, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 87
    iput-boolean p4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 88
    iput p5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 89
    iput p6, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 90
    return-void
.end method

.method private createPopup()Landroidx/appcompat/view/menu/MenuPopup;
    .locals 14

    .line 227
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 229
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 230
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 232
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 234
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 235
    .local v3, "smallestWidth":I
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 237
    .local v4, "minSmallestWidthCascading":I
    if-lt v3, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 240
    .local v5, "enableCascadingSubmenus":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 241
    new-instance v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v9, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v10, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v11, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v6 .. v11}, Landroidx/appcompat/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .local v6, "popup":Landroidx/appcompat/view/menu/MenuPopup;
    goto :goto_1

    .line 244
    .end local v6    # "popup":Landroidx/appcompat/view/menu/MenuPopup;
    :cond_1
    new-instance v7, Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v8, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v10, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v11, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v12, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v13, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v7 .. v13}, Landroidx/appcompat/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    move-object v6, v7

    .line 249
    .restart local v6    # "popup":Landroidx/appcompat/view/menu/MenuPopup;
    :goto_1
    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 250
    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 253
    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 254
    iget-object v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopup;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 255
    iget-boolean v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 256
    iget v7, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/MenuPopup;->setGravity(I)V

    .line 258
    return-object v6
.end method

.method private showPopup(IIZZ)V
    .locals 9
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "useOffsets"    # Z
    .param p4, "showTitle"    # Z

    .line 262
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    .line 263
    .local v0, "popup":Landroidx/appcompat/view/menu/MenuPopup;
    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 265
    if-eqz p3, :cond_1

    .line 269
    iget v1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 270
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .line 269
    invoke-static {v1, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 271
    .local v1, "hgrav":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 272
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p1, v2

    .line 275
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 276
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 282
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 283
    .local v2, "density":F
    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 284
    .local v3, "halfSize":I
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v3

    sub-int v6, p2, v3

    add-int v7, p1, v3

    add-int v8, p2, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 286
    .local v4, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 289
    .end local v1    # "hgrav":I
    .end local v2    # "density":F
    .end local v3    # "halfSize":I
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->show()V

    .line 290
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 297
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->dismiss()V

    .line 300
    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 138
    iget v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Landroidx/appcompat/view/menu/MenuPopup;
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->createPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 319
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDismiss()V
    .locals 1

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 313
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 316
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 104
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 105
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShowIcon"    # Z

    .line 117
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 118
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 131
    iput p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 132
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 93
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 94
    return-void
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 324
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 325
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuPopup;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 328
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 148
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .locals 3

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 172
    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 176
    return v2

    .line 179
    :cond_1
    invoke-direct {p0, v2, v2, v2, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 180
    return v1
.end method

.method public tryShow(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 207
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 208
    return v1

    .line 211
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 212
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 216
    return v1
.end method
