.class public Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    .line 109
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 111
    .local v1, "depth":I
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_c

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_c

    .line 114
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 120
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 124
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 126
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 128
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 129
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 130
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    const-string v5, "cycleInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 131
    new-instance v5, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 132
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 133
    new-instance v5, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 134
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_7
    const-string v5, "overshootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 135
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 136
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_8
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 137
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 138
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_9
    const-string v5, "bounceInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 139
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 140
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_a
    const-string v5, "pathInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 141
    new-instance v5, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;

    invoke-direct {v5, p0, v2, p3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v5

    .line 145
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 143
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    return-object v0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 67
    nop

    .line 68
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
