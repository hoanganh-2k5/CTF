.class public Lcom/google/android/material/animation/ArgbEvaluatorCompat;
.super Ljava/lang/Object;
.source "ArgbEvaluatorCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    invoke-direct {v0}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 19
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Integer;
    .param p3, "endValue"    # Ljava/lang/Integer;

    .line 58
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "startInt":I
    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 60
    .local v1, "startA":F
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 61
    .local v3, "startR":F
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 62
    .local v4, "startG":F
    and-int/lit16 v5, v0, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 64
    .local v5, "startB":F
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 65
    .local v6, "endInt":I
    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v2

    .line 66
    .local v7, "endA":F
    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v2

    .line 67
    .local v8, "endR":F
    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    div-float/2addr v9, v2

    .line 68
    .local v9, "endG":F
    and-int/lit16 v10, v6, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v2

    .line 71
    .local v10, "endB":F
    float-to-double v11, v3

    const-wide v13, 0x400199999999999aL    # 2.2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v3, v11

    .line 72
    float-to-double v11, v4

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v4, v11

    .line 73
    float-to-double v11, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v5, v11

    .line 75
    float-to-double v11, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v8, v11

    .line 76
    float-to-double v11, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v9, v11

    .line 77
    float-to-double v11, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v10, v11

    .line 80
    sub-float v11, v7, v1

    mul-float v11, v11, p1

    add-float/2addr v11, v1

    .line 81
    .local v11, "a":F
    sub-float v12, v8, v3

    mul-float v12, v12, p1

    add-float/2addr v12, v3

    .line 82
    .local v12, "r":F
    sub-float v13, v9, v4

    mul-float v13, v13, p1

    add-float/2addr v13, v4

    .line 83
    .local v13, "g":F
    sub-float v14, v10, v5

    mul-float v14, v14, p1

    add-float/2addr v14, v5

    .line 86
    .local v14, "b":F
    mul-float/2addr v11, v2

    .line 87
    move v15, v2

    move/from16 v16, v3

    .end local v3    # "startR":F
    .local v16, "startR":F
    float-to-double v2, v12

    move/from16 v17, v0

    move/from16 v18, v1

    .end local v0    # "startInt":I
    .end local v1    # "startA":F
    .local v17, "startInt":I
    .local v18, "startA":F
    const-wide v0, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v15

    .line 88
    .end local v12    # "r":F
    .local v2, "r":F
    move v12, v2

    .end local v2    # "r":F
    .restart local v12    # "r":F
    float-to-double v2, v13

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v15

    .line 89
    .end local v13    # "g":F
    .local v2, "g":F
    move v13, v2

    .end local v2    # "g":F
    .restart local v13    # "g":F
    float-to-double v2, v14

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v15

    .line 91
    .end local v14    # "b":F
    .local v0, "b":F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
