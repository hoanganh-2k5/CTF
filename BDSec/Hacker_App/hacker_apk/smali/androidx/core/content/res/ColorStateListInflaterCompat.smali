.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# static fields
.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 94
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    if-ne v2, v3, :cond_1

    .line 103
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 100
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "name":Ljava/lang/String;
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 120
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .line 223
    sget-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 224
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 225
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 226
    sget-object v1, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-object v0
.end method

.method public static inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 71
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 72
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CSLCompat"

    const-string v2, "Failed to inflate ColorStateList."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 20
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v4, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 137
    .local v5, "innerDepth":I
    const/16 v0, 0x14

    new-array v0, v0, [[I

    .line 138
    .local v0, "stateSpecList":[[I
    array-length v6, v0

    new-array v6, v6, [I

    .line 139
    .local v6, "colorList":[I
    const/4 v7, 0x0

    move v8, v7

    move-object v7, v6

    move-object v6, v0

    .line 141
    .end local v0    # "stateSpecList":[[I
    .local v6, "stateSpecList":[[I
    .local v7, "colorList":[I
    .local v8, "listSize":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v9, v0

    .local v9, "type":I
    if-eq v0, v4, :cond_b

    .line 142
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v11, v0

    .local v11, "depth":I
    if-ge v0, v5, :cond_1

    const/4 v0, 0x3

    if-eq v9, v0, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v16, v5

    move/from16 v17, v9

    goto/16 :goto_9

    .line 143
    :cond_1
    :goto_1
    const/4 v0, 0x2

    if-ne v9, v0, :cond_a

    if-gt v11, v5, :cond_a

    .line 144
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "item"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    move/from16 v16, v5

    goto/16 :goto_8

    .line 148
    :cond_2
    sget-object v0, Landroidx/core/R$styleable;->ColorStateListItem:[I

    invoke-static {v1, v3, v2, v0}, Landroidx/core/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 149
    .local v12, "a":Landroid/content/res/TypedArray;
    sget v0, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const/4 v13, -0x1

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 151
    .local v14, "resourceId":I
    const v15, -0xff01

    if-eq v14, v13, :cond_3

    invoke-static {v1, v14}, Landroidx/core/content/res/ColorStateListInflaterCompat;->isColorInt(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    :try_start_0
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "baseColor":I
    goto :goto_2

    .line 154
    .end local v0    # "baseColor":I
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    sget v13, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 157
    .local v0, "baseColor":I
    :goto_2
    goto :goto_3

    .line 159
    .end local v0    # "baseColor":I
    :cond_3
    sget v0, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    invoke-virtual {v12, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 162
    .restart local v0    # "baseColor":I
    :goto_3
    const/high16 v13, 0x3f800000    # 1.0f

    .line 163
    .local v13, "alphaMod":F
    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 164
    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_4

    .line 165
    :cond_4
    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 166
    sget v15, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 170
    :cond_5
    :goto_4
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    const/high16 v10, -0x40800000    # -1.0f

    if-lt v15, v4, :cond_6

    sget v4, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    .line 171
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    sget v4, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    invoke-virtual {v12, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .local v4, "lStar":F
    goto :goto_5

    .line 174
    .end local v4    # "lStar":F
    :cond_6
    sget v4, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    invoke-virtual {v12, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 177
    .restart local v4    # "lStar":F
    :goto_5
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    const/4 v10, 0x0

    .line 181
    .local v10, "j":I
    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v15

    .line 182
    .local v15, "numAttrs":I
    new-array v1, v15, [I

    .line 183
    .local v1, "stateSpec":[I
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "i":I
    :goto_6
    if-ge v3, v15, :cond_9

    .line 184
    move/from16 v16, v5

    .end local v5    # "innerDepth":I
    .local v16, "innerDepth":I
    invoke-interface {v2, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    .line 185
    .local v5, "stateResId":I
    move/from16 v17, v9

    .end local v9    # "type":I
    .local v17, "type":I
    const v9, 0x10101a5

    if-eq v5, v9, :cond_8

    const v9, 0x101031f

    if-eq v5, v9, :cond_8

    sget v9, Landroidx/core/R$attr;->alpha:I

    if-eq v5, v9, :cond_8

    sget v9, Landroidx/core/R$attr;->lStar:I

    if-eq v5, v9, :cond_8

    .line 190
    add-int/lit8 v9, v10, 0x1

    move/from16 v18, v9

    const/4 v9, 0x0

    .end local v10    # "j":I
    .local v18, "j":I
    invoke-interface {v2, v3, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 191
    move v9, v5

    goto :goto_7

    :cond_7
    neg-int v9, v5

    :goto_7
    aput v9, v1, v10

    move/from16 v10, v18

    .line 183
    .end local v5    # "stateResId":I
    .end local v18    # "j":I
    .restart local v10    # "j":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v16

    move/from16 v9, v17

    goto :goto_6

    .end local v16    # "innerDepth":I
    .end local v17    # "type":I
    .local v5, "innerDepth":I
    .restart local v9    # "type":I
    :cond_9
    move/from16 v16, v5

    move/from16 v17, v9

    .line 194
    .end local v3    # "i":I
    .end local v5    # "innerDepth":I
    .end local v9    # "type":I
    .restart local v16    # "innerDepth":I
    .restart local v17    # "type":I
    invoke-static {v1, v10}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    .line 199
    invoke-static {v0, v13, v4}, Landroidx/core/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IFF)I

    move-result v3

    .line 201
    .local v3, "color":I
    invoke-static {v7, v8, v3}, Landroidx/core/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v7

    .line 202
    invoke-static {v6, v8, v1}, Landroidx/core/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, [[I

    .line 203
    nop

    .end local v0    # "baseColor":I
    .end local v1    # "stateSpec":[I
    .end local v3    # "color":I
    .end local v4    # "lStar":F
    .end local v10    # "j":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "alphaMod":F
    .end local v14    # "resourceId":I
    .end local v15    # "numAttrs":I
    add-int/lit8 v8, v8, 0x1

    .line 204
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v5, v16

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 143
    .end local v16    # "innerDepth":I
    .end local v17    # "type":I
    .restart local v5    # "innerDepth":I
    .restart local v9    # "type":I
    :cond_a
    move/from16 v16, v5

    move/from16 v17, v9

    .line 141
    .end local v5    # "innerDepth":I
    .end local v9    # "type":I
    .end local v11    # "depth":I
    .restart local v16    # "innerDepth":I
    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v5, v16

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v16    # "innerDepth":I
    .restart local v5    # "innerDepth":I
    .restart local v9    # "type":I
    :cond_b
    move/from16 v16, v5

    move/from16 v17, v9

    .line 206
    .end local v5    # "innerDepth":I
    .end local v9    # "type":I
    .restart local v16    # "innerDepth":I
    .restart local v17    # "type":I
    :goto_9
    new-array v0, v8, [I

    .line 207
    .local v0, "colors":[I
    new-array v1, v8, [[I

    .line 208
    .local v1, "stateSpecs":[[I
    const/4 v9, 0x0

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    invoke-static {v6, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private static isColorInt(Landroid/content/res/Resources;I)Z
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 215
    invoke-static {}, Landroidx/core/content/res/ColorStateListInflaterCompat;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 216
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 217
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static modulateColorAlpha(IFF)I
    .locals 6
    .param p0, "color"    # I
    .param p1, "alphaMod"    # F
    .param p2, "lStar"    # F

    .line 241
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 242
    .local v0, "validLStar":Z
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 243
    return p0

    .line 246
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 247
    .local v2, "baseAlpha":I
    int-to-float v3, v2

    mul-float/2addr v3, p1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xff

    invoke-static {v3, v1, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    .line 249
    .local v1, "alpha":I
    if-eqz v0, :cond_2

    .line 250
    invoke-static {p0}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v3

    .line 251
    .local v3, "baseCam":Landroidx/core/content/res/CamColor;
    invoke-virtual {v3}, Landroidx/core/content/res/CamColor;->getHue()F

    move-result v4

    invoke-virtual {v3}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v5

    invoke-static {v4, v5, p2}, Landroidx/core/content/res/CamColor;->toColor(FFF)I

    move-result p0

    .line 254
    .end local v3    # "baseCam":Landroidx/core/content/res/CamColor;
    :cond_2
    const v3, 0xffffff

    and-int/2addr v3, p0

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    return v3
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 233
    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0
.end method
