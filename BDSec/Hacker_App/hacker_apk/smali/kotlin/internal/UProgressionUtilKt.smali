.class public final Lkotlin/internal/UProgressionUtilKt;
.super Ljava/lang/Object;
.source "UProgressionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a*\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a*\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0006\u001a*\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "differenceModulo",
        "Lkotlin/UInt;",
        "a",
        "b",
        "c",
        "differenceModulo-WZ9TVnA",
        "(III)I",
        "Lkotlin/ULong;",
        "differenceModulo-sambcqE",
        "(JJJ)J",
        "getProgressionLastElement",
        "start",
        "end",
        "step",
        "",
        "getProgressionLastElement-Nkh28Cs",
        "",
        "getProgressionLastElement-7ftBX0g",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final differenceModulo-WZ9TVnA(III)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 10
    invoke-static {p0, p2}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v0

    .line 11
    .local v0, "ac":I
    invoke-static {p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport1;->m(II)I

    move-result v1

    .line 12
    .local v1, "bc":I
    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport5;->m(II)I

    move-result v2

    if-ltz v2, :cond_0

    sub-int v2, v0, v1

    goto :goto_0

    :cond_0
    sub-int v2, v0, v1

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    add-int/2addr v2, p2

    :goto_0
    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    return v2
.end method

.method private static final differenceModulo-sambcqE(JJJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 16
    invoke-static {p0, p1, p4, p5}, Lkotlin/UByte$$ExternalSyntheticBackport2;->m(JJ)J

    move-result-wide v0

    .line 17
    .local v0, "ac":J
    invoke-static {p2, p3, p4, p5}, Lkotlin/UByte$$ExternalSyntheticBackport2;->m(JJ)J

    move-result-wide v2

    .line 18
    .local v2, "bc":J
    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport4;->m(JJ)I

    move-result v4

    if-ltz v4, :cond_0

    sub-long v4, v0, v2

    goto :goto_0

    :cond_0
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    add-long/2addr v4, p4

    :goto_0
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final getProgressionLastElement-7ftBX0g(JJJ)J
    .locals 7
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "step"    # J

    .line 63
    nop

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lkotlin/UByte$$ExternalSyntheticBackport4;->m(JJ)I

    move-result v0

    if-ltz v0, :cond_0

    move-wide v3, p0

    goto :goto_0

    :cond_0
    invoke-static {p4, p5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    move-wide v3, p0

    move-wide v1, p2

    .end local p0    # "start":J
    .end local p2    # "end":J
    .local v1, "end":J
    .local v3, "start":J
    invoke-static/range {v1 .. v6}, Lkotlin/internal/UProgressionUtilKt;->differenceModulo-sambcqE(JJJ)J

    move-result-wide p0

    .end local v1    # "end":J
    .restart local p2    # "end":J
    sub-long p0, p2, p0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    goto :goto_1

    .line 65
    .end local v3    # "start":J
    .restart local p0    # "start":J
    :cond_1
    move-wide v3, p0

    .end local p0    # "start":J
    .restart local v3    # "start":J
    cmp-long p0, p4, v0

    if-gez p0, :cond_3

    invoke-static {v3, v4, p2, p3}, Lkotlin/UByte$$ExternalSyntheticBackport4;->m(JJ)I

    move-result p0

    if-gtz p0, :cond_2

    .line 67
    .end local v3    # "start":J
    .restart local p0    # "start":J
    :goto_0
    move-wide p0, p2

    .end local p0    # "start":J
    .restart local v3    # "start":J
    goto :goto_1

    .line 65
    :cond_2
    neg-long p0, p4

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    move-wide v0, v3

    move-wide v4, p0

    move-wide v2, p2

    .end local v3    # "start":J
    .end local p2    # "end":J
    .local v0, "start":J
    .local v2, "end":J
    invoke-static/range {v0 .. v5}, Lkotlin/internal/UProgressionUtilKt;->differenceModulo-sambcqE(JJJ)J

    move-result-wide p0

    move-wide v3, v0

    .end local v0    # "start":J
    .end local v2    # "end":J
    .restart local v3    # "start":J
    .restart local p2    # "end":J
    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    .line 67
    :goto_1
    return-wide p0

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getProgressionLastElement-Nkh28Cs(III)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "step"    # I

    .line 39
    nop

    .line 40
    if-lez p2, :cond_1

    invoke-static {p0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport5;->m(II)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p1, p0, v0}, Lkotlin/internal/UProgressionUtilKt;->differenceModulo-WZ9TVnA(III)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    goto :goto_1

    .line 41
    :cond_1
    if-gez p2, :cond_3

    invoke-static {p0, p1}, Lkotlin/UByte$$ExternalSyntheticBackport5;->m(II)I

    move-result v0

    if-gtz v0, :cond_2

    .line 43
    :goto_0
    move v0, p1

    goto :goto_1

    .line 41
    :cond_2
    neg-int v0, p2

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lkotlin/internal/UProgressionUtilKt;->differenceModulo-WZ9TVnA(III)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 43
    :goto_1
    return v0

    .line 42
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step is zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
