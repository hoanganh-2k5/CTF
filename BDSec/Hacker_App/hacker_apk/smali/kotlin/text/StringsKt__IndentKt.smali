.class Lkotlin/text/StringsKt__IndentKt;
.super Lkotlin/text/StringsKt__AppendableKt;
.source "Indent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,123:1\n113#1,2:125\n115#1,4:140\n120#1,2:153\n113#1,2:162\n115#1,4:177\n120#1,2:184\n1#2:124\n1#2:150\n1#2:181\n1#2:205\n1569#3,11:127\n1864#3,2:138\n1866#3:151\n1580#3:152\n766#3:155\n857#3,2:156\n1549#3:158\n1620#3,3:159\n1569#3,11:164\n1864#3,2:175\n1866#3:182\n1580#3:183\n1569#3,11:192\n1864#3,2:203\n1866#3:206\n1580#3:207\n151#4,6:144\n151#4,6:186\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n38#1:125,2\n38#1:140,4\n38#1:153,2\n78#1:162,2\n78#1:177,4\n78#1:184,2\n38#1:150\n78#1:181\n114#1:205\n38#1:127,11\n38#1:138,2\n38#1:151\n38#1:152\n74#1:155\n74#1:156,2\n75#1:158\n75#1:159,3\n78#1:164,11\n78#1:175,2\n78#1:182\n78#1:183\n114#1:192,11\n114#1:203,2\n114#1:206\n114#1:207\n39#1:144,6\n101#1:186,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\u000c\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0016\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002H\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x31
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__AppendableKt;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    nop

    .line 104
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    .line 105
    :cond_1
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 106
    :goto_1
    return-object v0
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 8
    .param p0, "$this$indentWidth"    # Ljava/lang/String;

    .line 101
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 186
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 187
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .local v5, "it":C
    const/4 v6, 0x0

    .line 101
    .local v6, "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    invoke-static {v5}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    .line 187
    .end local v5    # "it":C
    .end local v6    # "$i$a$-indexOfFirst-StringsKt__IndentKt$indentWidth$1":I
    if-nez v7, :cond_0

    .line 188
    goto :goto_1

    .line 186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "index$iv":I
    :cond_1
    move v2, v4

    .line 101
    .end local v0    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_1
    nop

    .line 124
    .local v2, "it":I
    const/4 v0, 0x0

    .line 101
    .local v0, "$i$a$-let-StringsKt__IndentKt$indentWidth$2":I
    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .end local v0    # "$i$a$-let-StringsKt__IndentKt$indentWidth$2":I
    .end local v2    # "it":I
    :cond_2
    return v2
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "$this$prependIndent"    # Ljava/lang/String;
    .param p1, "indent"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 88
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    invoke-direct {v1, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 99
    const-string v0, "\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 86
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "    "

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 20
    .param p0, "$this$reindent"    # Ljava/util/List;
    .param p1, "resultSizeEstimate"    # I
    .param p2, "indentAddFunction"    # Lkotlin/jvm/functions/Function1;
    .param p3, "indentCutFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    .local v0, "$i$f$reindent":I
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 114
    .local v1, "lastIndex":I
    move-object/from16 v2, p0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 192
    .local v3, "$i$f$mapIndexedNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapIndexedNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 202
    .local v6, "$i$f$mapIndexedNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 203
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .line 204
    .local v9, "index$iv$iv$iv":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "index$iv$iv$iv":I
    .local v12, "index$iv$iv$iv":I
    if-gez v9, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v9, "index$iv$iv":I
    :cond_0
    move-object v13, v11

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 202
    .local v14, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .local v15, "value":Ljava/lang/String;
    move/from16 v16, v9

    .local v16, "index":I
    move/from16 v17, v16

    .end local v16    # "index":I
    .local v17, "index":I
    const/16 v16, 0x0

    .line 115
    .local v16, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    if-eqz v17, :cond_1

    move/from16 v18, v0

    move/from16 v0, v17

    .end local v17    # "index":I
    .local v0, "index":I
    .local v18, "$i$f$reindent":I
    if-ne v0, v1, :cond_2

    goto :goto_1

    .end local v18    # "$i$f$reindent":I
    .local v0, "$i$f$reindent":I
    .restart local v17    # "index":I
    :cond_1
    move/from16 v18, v0

    move/from16 v0, v17

    .end local v17    # "index":I
    .local v0, "index":I
    .restart local v18    # "$i$f$reindent":I
    :goto_1
    move-object/from16 v17, v15

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 116
    const/16 v17, 0x0

    move-object/from16 v19, v17

    move/from16 v17, v0

    move-object/from16 v0, v19

    move/from16 v19, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 118
    :cond_2
    move/from16 v17, v0

    move-object/from16 v0, p3

    .end local v0    # "index":I
    .restart local v17    # "index":I
    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    move/from16 v19, v1

    move-object/from16 v1, p2

    .end local v1    # "lastIndex":I
    .local v19, "lastIndex":I
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    .end local v19    # "lastIndex":I
    .restart local v1    # "lastIndex":I
    :cond_3
    move/from16 v19, v1

    move-object/from16 v1, p2

    .end local v1    # "lastIndex":I
    .restart local v19    # "lastIndex":I
    :goto_2
    move-object v0, v15

    .line 115
    :cond_4
    :goto_3
    nop

    .line 202
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1":I
    .end local v17    # "index":I
    if-eqz v0, :cond_5

    .line 205
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 202
    .local v15, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v9    # "index$iv$iv":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv":I
    .end local v15    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv":I
    :cond_5
    move v9, v12

    move/from16 v0, v18

    move/from16 v1, v19

    .end local v11    # "item$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 206
    .end local v12    # "index$iv$iv$iv":I
    .end local v18    # "$i$f$reindent":I
    .end local v19    # "lastIndex":I
    .local v0, "$i$f$reindent":I
    .restart local v1    # "lastIndex":I
    .local v9, "index$iv$iv$iv":I
    :cond_6
    move/from16 v18, v0

    .line 207
    .end local v0    # "$i$f$reindent":I
    .end local v7    # "$this$forEachIndexed$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v9    # "index$iv$iv$iv":I
    .restart local v18    # "$i$f$reindent":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapIndexedNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 192
    nop

    .end local v2    # "$this$mapIndexedNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapIndexedNotNull":I
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v0

    check-cast v5, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v12, 0x7c

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p0, "$this$replaceIndent"    # Ljava/lang/String;
    .param p1, "newIndent"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "lines":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 74
    nop

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 155
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 156
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "p0":Ljava/lang/String;
    const/4 v11, 0x0

    .line 74
    .local v11, "$i$a$-filter-StringsKt__IndentKt$replaceIndent$minCommonIndent$1":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 156
    .end local v10    # "p0":Ljava/lang/String;
    .end local v11    # "$i$a$-filter-StringsKt__IndentKt$replaceIndent$minCommonIndent$1":I
    if-nez v12, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 155
    nop

    .line 74
    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 75
    nop

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v5

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 159
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 160
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "p0":Ljava/lang/String;
    const/4 v11, 0x0

    .line 75
    .local v11, "$i$a$-map-StringsKt__IndentKt$replaceIndent$minCommonIndent$2":I
    invoke-static {v10}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v10

    .end local v10    # "p0":Ljava/lang/String;
    .end local v11    # "$i$a$-map-StringsKt__IndentKt$replaceIndent$minCommonIndent$2":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 160
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 158
    nop

    .line 75
    .end local v3    # "$i$f$map":I
    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    check-cast v4, Ljava/lang/Iterable;

    .line 76
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 73
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 73
    :goto_2
    nop

    .line 78
    .local v3, "minCommonIndent":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .local v4, "resultSizeEstimate$iv":I
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .local v5, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v6, v1

    .local v6, "$this$reindent$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 162
    .local v7, "$i$f$reindent":I
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    .line 163
    .local v8, "lastIndex$iv":I
    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 164
    .local v10, "$i$f$mapIndexedNotNull":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v12, v9

    .local v12, "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 174
    .local v13, "$i$f$mapIndexedNotNullTo":I
    move-object v14, v12

    .local v14, "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 175
    .local v15, "$i$f$forEachIndexed":I
    const/16 v16, 0x0

    .line 176
    .local v16, "index$iv$iv$iv$iv":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v19, v16, 0x1

    .end local v16    # "index$iv$iv$iv$iv":I
    .local v19, "index$iv$iv$iv$iv":I
    if-gez v16, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v16, "index$iv$iv$iv":I
    :cond_4
    move-object/from16 v20, v18

    .local v20, "element$iv$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 174
    .local v21, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    move-object/from16 v22, v20

    check-cast v22, Ljava/lang/String;

    .local v22, "value$iv":Ljava/lang/String;
    move/from16 v23, v16

    .local v23, "index$iv":I
    const/16 v24, 0x0

    .line 177
    .local v24, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    if-eqz v23, :cond_5

    move/from16 v0, v23

    .end local v23    # "index$iv":I
    .local v0, "index$iv":I
    if-ne v0, v8, :cond_6

    goto :goto_4

    .end local v0    # "index$iv":I
    .restart local v23    # "index$iv":I
    :cond_5
    move/from16 v0, v23

    .end local v23    # "index$iv":I
    .restart local v0    # "index$iv":I
    :goto_4
    move-object/from16 v23, v22

    check-cast v23, Ljava/lang/CharSequence;

    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 178
    const/16 v23, 0x0

    move/from16 v26, v0

    goto :goto_5

    .line 180
    :cond_6
    move-object/from16 v23, v22

    .local v23, "line":Ljava/lang/String;
    const/16 v25, 0x0

    .line 78
    .local v25, "$i$a$-reindent-StringsKt__IndentKt$replaceIndent$1":I
    move/from16 v26, v0

    move-object/from16 v0, v23

    .end local v23    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .local v26, "index$iv":I
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .end local v0    # "line":Ljava/lang/String;
    .end local v25    # "$i$a$-reindent-StringsKt__IndentKt$replaceIndent$1":I
    if-eqz v0, :cond_7

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    if-nez v23, :cond_8

    :cond_7
    move-object/from16 v23, v22

    .line 177
    :cond_8
    :goto_5
    nop

    .line 174
    .end local v22    # "value$iv":Ljava/lang/String;
    .end local v24    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v26    # "index$iv":I
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    .line 181
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 174
    .local v22, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "index$iv$iv$iv":I
    .end local v20    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    .end local v22    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v16, v19

    .end local v18    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 182
    .end local v19    # "index$iv$iv$iv$iv":I
    .local v16, "index$iv$iv$iv$iv":I
    :cond_a
    nop

    .line 183
    .end local v14    # "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEachIndexed":I
    .end local v16    # "index$iv$iv$iv$iv":I
    nop

    .end local v11    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 164
    nop

    .end local v9    # "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapIndexedNotNull":I
    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v12, v0

    check-cast v12, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    const/16 v19, 0x7c

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v20}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    nop

    .line 78
    .end local v4    # "resultSizeEstimate$iv":I
    .end local v5    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "$this$reindent$iv":Ljava/util/List;
    .end local v7    # "$i$f$reindent":I
    .end local v8    # "lastIndex$iv":I
    return-object v0
.end method

.method public static synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 70
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 34
    .param p0, "$this$replaceIndentByMargin"    # Ljava/lang/String;
    .param p1, "newIndent"    # Ljava/lang/String;
    .param p2, "marginPrefix"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marginPrefix"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 36
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v8

    .line 38
    .local v8, "lines":Ljava/util/List;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v9, v1, v3

    .local v9, "resultSizeEstimate$iv":I
    invoke-static {v7}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v10

    .local v10, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v11, v8

    .local v11, "$this$reindent$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 125
    .local v12, "$i$f$reindent":I
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v13

    .line 126
    .local v13, "lastIndex$iv":I
    move-object v14, v11

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 127
    .local v15, "$i$f$mapIndexedNotNull":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v16, v14

    .local v16, "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 137
    .local v17, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v18, v16

    .local v18, "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 138
    .local v19, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 139
    .local v3, "index$iv$iv$iv$iv":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v22, v3, 0x1

    .end local v3    # "index$iv$iv$iv$iv":I
    .local v22, "index$iv$iv$iv$iv":I
    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v3, "index$iv$iv$iv":I
    :cond_0
    move-object/from16 v23, v21

    .local v23, "element$iv$iv$iv":Ljava/lang/Object;
    move/from16 v24, v3

    .end local v3    # "index$iv$iv$iv":I
    .local v24, "index$iv$iv$iv":I
    const/16 v25, 0x0

    .line 137
    .local v25, "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    move-object/from16 v26, v23

    check-cast v26, Ljava/lang/String;

    .local v3, "index$iv":I
    .local v26, "value$iv":Ljava/lang/String;
    const/16 v27, 0x0

    .line 140
    .local v27, "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    const/16 v28, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v13, :cond_2

    :cond_1
    move-object/from16 v4, v26

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    move-object v0, v1

    move/from16 v30, v3

    goto/16 :goto_4

    .line 143
    :cond_2
    move-object v4, v1

    .end local v1    # "destination$iv$iv$iv":Ljava/util/Collection;
    .local v4, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v1, v26

    .local v1, "line":Ljava/lang/String;
    const/16 v29, 0x0

    .line 39
    .local v29, "$i$a$-reindent-StringsKt__IndentKt$replaceIndentByMargin$2":I
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    .local v5, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 144
    .local v6, "$i$f$indexOfFirst":I
    const/16 v30, 0x0

    .local v30, "index$iv":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object/from16 v31, v1

    move/from16 v1, v30

    .end local v30    # "index$iv":I
    .local v1, "index$iv":I
    .local v31, "line":Ljava/lang/String;
    :goto_1
    const/4 v2, -0x1

    if-ge v1, v0, :cond_4

    .line 145
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v30

    .local v30, "it":C
    const/16 v32, 0x0

    .line 39
    .local v32, "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    invoke-static/range {v30 .. v30}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v33

    .line 145
    .end local v30    # "it":C
    .end local v32    # "$i$a$-indexOfFirst-StringsKt__IndentKt$replaceIndentByMargin$2$firstNonWhitespaceIndex$1":I
    if-nez v33, :cond_3

    .line 146
    goto :goto_2

    .line 144
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    goto :goto_1

    .line 149
    .end local v1    # "index$iv":I
    :cond_4
    move v1, v2

    .line 39
    .end local v5    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v6    # "$i$f$indexOfFirst":I
    :goto_2
    nop

    .line 41
    .local v1, "firstNonWhitespaceIndex":I
    nop

    .line 42
    if-ne v1, v2, :cond_5

    move/from16 v30, v3

    move-object v0, v4

    move-object/from16 v2, v28

    move v3, v1

    move-object/from16 v1, v31

    goto :goto_3

    .line 43
    :cond_5
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v4

    .end local v4    # "destination$iv$iv$iv":Ljava/util/Collection;
    .local v0, "destination$iv$iv$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    move-object/from16 v2, p2

    move/from16 v30, v3

    move v3, v1

    move-object/from16 v1, v31

    .end local v31    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    .local v3, "firstNonWhitespaceIndex":I
    .local v30, "index$iv":I
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_6
    move-object/from16 v2, v28

    .line 41
    :goto_3
    nop

    .line 143
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "firstNonWhitespaceIndex":I
    .end local v29    # "$i$a$-reindent-StringsKt__IndentKt$replaceIndentByMargin$2":I
    if-eqz v2, :cond_7

    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/String;

    if-nez v28, :cond_8

    :cond_7
    move-object/from16 v28, v26

    .line 140
    :cond_8
    :goto_4
    nop

    .line 137
    .end local v26    # "value$iv":Ljava/lang/String;
    .end local v27    # "$i$a$-mapIndexedNotNull-StringsKt__IndentKt$reindent$1$iv":I
    .end local v30    # "index$iv":I
    if-eqz v28, :cond_9

    move-object/from16 v1, v28

    .line 150
    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 137
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v1    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$1$iv$iv$iv":I
    .end local v23    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "index$iv$iv$iv":I
    .end local v25    # "$i$a$-forEachIndexed-CollectionsKt___CollectionsKt$mapIndexedNotNullTo$1$iv$iv$iv":I
    :cond_9
    move-object/from16 v2, p2

    move-object v1, v0

    move/from16 v3, v22

    move-object/from16 v0, p0

    .end local v21    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 151
    .end local v0    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v22    # "index$iv$iv$iv$iv":I
    .local v1, "destination$iv$iv$iv":Ljava/util/Collection;
    .local v3, "index$iv$iv$iv$iv":I
    :cond_a
    move-object v0, v1

    .line 152
    .end local v1    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v3    # "index$iv$iv$iv$iv":I
    .end local v18    # "$this$forEachIndexed$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEachIndexed":I
    .restart local v0    # "destination$iv$iv$iv":Ljava/util/Collection;
    nop

    .end local v0    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v16    # "$this$mapIndexedNotNullTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapIndexedNotNullTo":I
    check-cast v0, Ljava/util/List;

    .line 127
    nop

    .end local v14    # "$this$mapIndexedNotNull$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapIndexedNotNull":I
    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Iterable;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v24, 0x7c

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v16 .. v25}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    nop

    .line 38
    .end local v9    # "resultSizeEstimate$iv":I
    .end local v10    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$this$reindent$iv":Ljava/util/List;
    .end local v12    # "$i$f$reindent":I
    .end local v13    # "lastIndex$iv":I
    return-object v0

    .line 124
    .end local v8    # "lines":Ljava/util/List;
    :cond_b
    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-require-StringsKt__IndentKt$replaceIndentByMargin$1":I
    nop

    .end local v0    # "$i$a$-require-StringsKt__IndentKt$replaceIndentByMargin$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "marginPrefix must be non-blank string."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 34
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string/jumbo p2, "|"

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$trimIndent"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$trimMargin"    # Ljava/lang/String;
    .param p1, "marginPrefix"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 26
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string/jumbo p1, "|"

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
