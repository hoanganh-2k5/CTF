.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedVector"
.end annotation


# static fields
.field private static final EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;


# instance fields
.field private final elemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 986
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V
    .locals 0
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I
    .param p4, "elemType"    # I

    .line 991
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 992
    iput p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->elemType:I

    .line 993
    return-void
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;
    .locals 1

    .line 996
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 9
    .param p1, "pos"    # I

    .line 1025
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->size()I

    move-result v0

    .line 1026
    .local v0, "len":I
    if-lt p1, v0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_0
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    mul-int/2addr v2, p1

    add-int v5, v1, v2

    .line 1028
    .local v5, "childPos":I
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->byteWidth:I

    const/4 v7, 0x1

    iget v8, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->elemType:I

    invoke-direct/range {v3 .. v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;IIII)V

    return-object v3
.end method

.method public getElemType()I
    .locals 1

    .line 1014
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->elemType:I

    return v0
.end method

.method public isEmptyVector()Z
    .locals 1

    .line 1005
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;->EMPTY_VECTOR:Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
