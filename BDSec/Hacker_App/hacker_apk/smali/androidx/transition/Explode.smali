.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 52
    new-instance v0, Landroidx/transition/CircularPropagation;

    invoke-direct {v0}, Landroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/transition/Explode;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 57
    new-instance v0, Landroidx/transition/CircularPropagation;

    invoke-direct {v0}, Landroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/transition/Explode;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 58
    return-void
.end method

.method private static calculateDistance(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 181
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)F
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 176
    .local v0, "maxX":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 177
    .local v1, "maxY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v2, v3}, Landroidx/transition/Explode;->calculateDistance(FF)F

    move-result v2

    return v2
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 20
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outVector"    # [I

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/transition/Explode;->mTempLoc:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 137
    iget-object v2, v0, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 138
    .local v2, "sceneRootX":I
    iget-object v4, v0, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 142
    .local v4, "sceneRootY":I
    invoke-virtual {v0}, Landroidx/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v6

    .line 143
    .local v6, "epicenter":Landroid/graphics/Rect;
    if-nez v6, :cond_0

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 146
    .local v7, "focalX":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    .local v8, "focalY":I
    goto :goto_0

    .line 149
    .end local v7    # "focalX":I
    .end local v8    # "focalY":I
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 150
    .restart local v7    # "focalX":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 153
    .restart local v8    # "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 154
    .local v9, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 155
    .local v10, "centerY":I
    sub-int v11, v9, v7

    int-to-float v11, v11

    .line 156
    .local v11, "xVector":F
    sub-int v12, v10, v8

    int-to-float v12, v12

    .line 158
    .local v12, "yVector":F
    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-nez v14, :cond_1

    cmpl-float v13, v12, v13

    if-nez v13, :cond_1

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    double-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v11, v13, v14

    .line 161
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    move v13, v3

    move/from16 v19, v4

    .end local v4    # "sceneRootY":I
    .local v19, "sceneRootY":I
    mul-double v3, v17, v15

    double-to-float v3, v3

    sub-float v12, v3, v14

    goto :goto_1

    .line 158
    .end local v19    # "sceneRootY":I
    .restart local v4    # "sceneRootY":I
    :cond_1
    move v13, v3

    move/from16 v19, v4

    .line 163
    .end local v4    # "sceneRootY":I
    .restart local v19    # "sceneRootY":I
    :goto_1
    invoke-static {v11, v12}, Landroidx/transition/Explode;->calculateDistance(FF)F

    move-result v3

    .line 164
    .local v3, "vectorSize":F
    div-float/2addr v11, v3

    .line 165
    div-float/2addr v12, v3

    .line 167
    sub-int v4, v7, v2

    sub-int v14, v8, v19

    .line 168
    invoke-static {v1, v4, v14}, Landroidx/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)F

    move-result v4

    .line 170
    .local v4, "maxDistance":F
    mul-float v14, v4, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    aput v14, p3, v13

    .line 171
    mul-float v13, v4, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    aput v13, p3, v5

    .line 172
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 61
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 62
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 64
    .local v1, "left":I
    iget-object v2, p0, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 65
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 66
    .local v3, "right":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 67
    .local v4, "bottom":I
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v7, "android:explode:screenBounds"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 78
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 79
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 80
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 72
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 73
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 74
    return-void
.end method

.method public isSeekingSupported()Z
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 91
    if-nez p4, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:explode:screenBounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 95
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 96
    .local v7, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 97
    .local v8, "endY":F
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, v0, v1}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 98
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float v5, v7, v1

    .line 99
    .local v5, "startX":F
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    add-float v6, v8, v1

    .line 101
    .local v6, "startY":F
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sget-object v9, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v10, p0

    move-object v1, p2

    move-object v2, p4

    .end local p2    # "view":Landroid/view/View;
    .end local p4    # "endValues":Landroidx/transition/TransitionValues;
    .local v1, "view":Landroid/view/View;
    .local v2, "endValues":Landroidx/transition/TransitionValues;
    invoke-static/range {v1 .. v10}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    move-result-object p2

    return-object p2
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 109
    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-object v0, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:explode:screenBounds"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Rect;

    .line 113
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 114
    .local v2, "viewPosX":I
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 115
    .local v3, "viewPosY":I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 116
    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 117
    .local v5, "startY":F
    move v0, v4

    .line 118
    .local v0, "endX":F
    move v6, v5

    .line 119
    .local v6, "endY":F
    iget-object v7, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v8, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, [I

    .line 120
    .local v11, "interruptedPosition":[I
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v11, :cond_1

    .line 123
    aget v9, v11, v8

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    add-float/2addr v0, v9

    .line 124
    aget v9, v11, v7

    iget v12, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 125
    aget v9, v11, v8

    aget v12, v11, v7

    invoke-virtual {v10, v9, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 127
    :cond_1
    iget-object v9, p0, Landroidx/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, v10, v9}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 128
    iget-object v9, p0, Landroidx/transition/Explode;->mTempLoc:[I

    aget v8, v9, v8

    int-to-float v8, v8

    add-float/2addr v0, v8

    .line 129
    iget-object v8, p0, Landroidx/transition/Explode;->mTempLoc:[I

    aget v7, v8, v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 131
    .end local v6    # "endY":F
    .local v7, "endY":F
    sget-object v8, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v9, p0

    move v6, v0

    move-object v0, p2

    .end local v0    # "endX":F
    .local v6, "endX":F
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    move-result-object v8

    return-object v8
.end method
