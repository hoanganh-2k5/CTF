.class Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroidx/appcompat/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 733
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 734
    const/4 v4, 0x0

    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    .end local p4    # "anchorView":Landroid/view/View;
    .local v1, "context":Landroid/content/Context;
    .local v2, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    .local v3, "anchorView":Landroid/view/View;
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 736
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 737
    .local p2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p3

    if-nez p3, :cond_1

    .line 739
    iget-object p3, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez p3, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$200(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p3, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    :goto_0
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 742
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 743
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 747
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 748
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 750
    invoke-super {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->onDismiss()V

    .line 751
    return-void
.end method
