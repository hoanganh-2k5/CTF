.class public final Lcom/google/android/material/color/utilities/TonalPalette;
.super Ljava/lang/Object;
.source "TonalPalette.java"


# instance fields
.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chroma:D

.field hue:D

.field keyColor:Lcom/google/android/material/color/utilities/Hct;


# direct methods
.method private constructor <init>(DDLcom/google/android/material/color/utilities/Hct;)V
    .locals 1
    .param p1, "hue"    # D
    .param p3, "chroma"    # D
    .param p5, "keyColor"    # Lcom/google/android/material/color/utilities/Hct;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    .line 71
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    .line 72
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    .line 73
    iput-object p5, p0, Lcom/google/android/material/color/utilities/TonalPalette;->keyColor:Lcom/google/android/material/color/utilities/Hct;

    .line 74
    return-void
.end method

.method private static createKeyColor(DD)Lcom/google/android/material/color/utilities/Hct;
    .locals 16
    .param p0, "hue"    # D
    .param p2, "chroma"    # D

    .line 78
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 79
    .local v4, "startTone":D
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v6

    .line 80
    .local v6, "smallestDeltaHct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v0

    sub-double v0, v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 87
    .local v0, "smallestDelta":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .local v2, "delta":D
    :goto_0
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpg-double v7, v2, v7

    if-gez v7, :cond_3

    .line 92
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 93
    return-object v6

    .line 96
    :cond_0
    add-double v11, v4, v2

    move-wide/from16 v7, p0

    move-wide/from16 v9, p2

    invoke-static/range {v7 .. v12}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v13

    .line 97
    .local v13, "hctAdd":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v13}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v7

    sub-double v7, v7, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 98
    .local v14, "hctAddDelta":D
    cmpg-double v7, v14, v0

    if-gez v7, :cond_1

    .line 99
    move-wide v0, v14

    .line 100
    move-object v6, v13

    .line 103
    :cond_1
    sub-double v11, v4, v2

    move-wide/from16 v7, p0

    move-wide/from16 v9, p2

    invoke-static/range {v7 .. v12}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v11

    .line 104
    .local v11, "hctSubtract":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v11}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v7

    sub-double v7, v7, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 105
    .local v7, "hctSubtractDelta":D
    cmpg-double v9, v7, v0

    if-gez v9, :cond_2

    .line 106
    move-wide v0, v7

    .line 107
    move-object v6, v11

    .line 87
    .end local v7    # "hctSubtractDelta":D
    .end local v11    # "hctSubtract":Lcom/google/android/material/color/utilities/Hct;
    .end local v13    # "hctAdd":Lcom/google/android/material/color/utilities/Hct;
    .end local v14    # "hctAddDelta":D
    :cond_2
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v7

    goto :goto_0

    .line 111
    .end local v2    # "delta":D
    :cond_3
    return-object v6
.end method

.method public static fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 6
    .param p0, "hct"    # Lcom/google/android/material/color/utilities/Hct;

    .line 55
    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    move-object v5, p0

    .end local p0    # "hct":Lcom/google/android/material/color/utilities/Hct;
    .local v5, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DDLcom/google/android/material/color/utilities/Hct;)V

    return-object v0
.end method

.method public static fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 6
    .param p0, "hue"    # D
    .param p2, "chroma"    # D

    .line 66
    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/TonalPalette;->createKeyColor(DD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v5

    move-wide v1, p0

    move-wide v3, p2

    .end local p0    # "hue":D
    .end local p2    # "chroma":D
    .local v1, "hue":D
    .local v3, "chroma":D
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DDLcom/google/android/material/color/utilities/Hct;)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "argb"    # I

    .line 45
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChroma()D
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    return-wide v0
.end method

.method public getHct(D)Lcom/google/android/material/color/utilities/Hct;
    .locals 6
    .param p1, "tone"    # D

    .line 133
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    move-wide v4, p1

    .end local p1    # "tone":D
    .local v4, "tone":D
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    return-object p1
.end method

.method public getHue()D
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    return-wide v0
.end method

.method public getKeyColor()Lcom/google/android/material/color/utilities/Hct;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->keyColor:Lcom/google/android/material/color/utilities/Hct;

    return-object v0
.end method

.method public tone(I)I
    .locals 7
    .param p1, "tone"    # I

    .line 123
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 124
    .local v0, "color":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 125
    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    int-to-double v5, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
