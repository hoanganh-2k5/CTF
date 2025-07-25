.class Landroidx/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 433
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 439
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    .line 448
    instance-of v0, p1, Landroidx/transition/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 449
    return v1

    .line 451
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/transition/ChangeTransform$Transforms;

    .line 452
    .local v0, "thatTransform":Landroidx/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 464
    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 465
    .local v0, "code":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 466
    .end local v0    # "code":I
    .local v3, "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    add-int/2addr v0, v4

    .line 467
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_3

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    add-int/2addr v3, v4

    .line 468
    .end local v0    # "code":I
    .restart local v3    # "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_4

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    add-int/2addr v0, v4

    .line 469
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    add-int/2addr v3, v4

    .line 470
    .end local v0    # "code":I
    .restart local v3    # "code":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_6

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    add-int/2addr v0, v4

    .line 471
    .end local v3    # "code":I
    .restart local v0    # "code":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_7
    add-int/2addr v3, v2

    .line 472
    .end local v0    # "code":I
    .restart local v3    # "code":I
    return v3
.end method

.method public restore(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 442
    iget v1, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    .end local p1    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    .line 444
    return-void
.end method
