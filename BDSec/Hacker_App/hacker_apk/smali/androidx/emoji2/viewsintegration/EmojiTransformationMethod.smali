.class Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;
.super Ljava/lang/Object;
.source "EmojiTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# instance fields
.field private final mTransformationMethod:Landroid/text/method/TransformationMethod;


# direct methods
.method constructor <init>(Landroid/text/method/TransformationMethod;)V
    .locals 0
    .param p1, "transformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 41
    return-void
.end method


# virtual methods
.method public getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    .line 54
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 70
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "sourceText":Ljava/lang/CharSequence;
    .end local p3    # "focused":Z
    .end local p4    # "direction":I
    .end local p5    # "previouslyFocusedRect":Landroid/graphics/Rect;
    .local v2, "view":Landroid/view/View;
    .local v3, "sourceText":Ljava/lang/CharSequence;
    .local v4, "focused":Z
    .local v5, "direction":I
    .local v6, "previouslyFocusedRect":Landroid/graphics/Rect;
    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    goto :goto_0

    .line 70
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "sourceText":Ljava/lang/CharSequence;
    .end local v4    # "focused":Z
    .end local v5    # "direction":I
    .end local v6    # "previouslyFocusedRect":Landroid/graphics/Rect;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "sourceText":Ljava/lang/CharSequence;
    .restart local p3    # "focused":Z
    .restart local p4    # "direction":I
    .restart local p5    # "previouslyFocusedRect":Landroid/graphics/Rect;
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 74
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "sourceText":Ljava/lang/CharSequence;
    .end local p3    # "focused":Z
    .end local p4    # "direction":I
    .end local p5    # "previouslyFocusedRect":Landroid/graphics/Rect;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "sourceText":Ljava/lang/CharSequence;
    .restart local v4    # "focused":Z
    .restart local v5    # "direction":I
    .restart local v6    # "previouslyFocusedRect":Landroid/graphics/Rect;
    :goto_0
    return-void
.end method
