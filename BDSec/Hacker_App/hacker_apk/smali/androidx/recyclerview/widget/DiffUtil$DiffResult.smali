.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Landroidx/recyclerview/widget/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 567
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$Snake;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 569
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 570
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 571
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 572
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 573
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 574
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 575
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 576
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 577
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addRootSnake()V

    .line 578
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    .line 579
    return-void
.end method

.method private addRootSnake()V
    .locals 4

    .line 586
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 587
    .local v0, "firstSnake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_2

    .line 588
    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 589
    .local v2, "root":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iput v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 590
    iput v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 591
    iput-boolean v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    .line 592
    iput v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 593
    iput-boolean v1, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 594
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    .end local v2    # "root":Landroidx/recyclerview/widget/DiffUtil$Snake;
    :cond_2
    return-void
.end method

.method private dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .locals 7
    .param p2, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 873
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_0

    .line 874
    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 875
    return-void

    .line 877
    :cond_0
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 878
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 879
    .local v1, "status":I
    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 904
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    .line 906
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 901
    :sswitch_0
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    add-int v3, p5, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p3, v4}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    goto :goto_2

    .line 888
    :sswitch_1
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v4, p5, v0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x5

    .line 889
    .local v3, "pos":I
    invoke-static {p1, v3, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v4

    .line 893
    .local v4, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v5, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 894
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    .line 896
    iget-object v5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    add-int v6, p5, v0

    .line 897
    invoke-virtual {v5, v3, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    .line 896
    invoke-interface {p2, p3, v2, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    .line 881
    .end local v3    # "pos":I
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :sswitch_2
    invoke-interface {p2, p3, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 882
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 883
    .restart local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/2addr v5, v2

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 884
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    goto :goto_1

    .line 885
    :cond_1
    nop

    .line 877
    .end local v1    # "status":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 909
    .end local v0    # "i":I
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V
    .locals 8
    .param p2, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 913
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_0

    .line 914
    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 915
    return-void

    .line 917
    :cond_0
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 918
    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 919
    .local v1, "status":I
    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 945
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    .line 947
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    :sswitch_0
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    add-int v4, p5, v0

    add-int v5, p3, v0

    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    goto :goto_2

    .line 928
    :sswitch_1
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v4, p5, v0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x5

    .line 929
    .local v3, "pos":I
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v4

    .line 934
    .local v4, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    add-int v5, p3, v0

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v6, v2

    invoke-interface {p2, v5, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 935
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    .line 937
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    add-int v7, p5, v0

    .line 938
    invoke-virtual {v6, v7, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 937
    invoke-interface {p2, v5, v2, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_2

    .line 921
    .end local v3    # "pos":I
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :sswitch_2
    add-int v3, p3, v0

    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 923
    .restart local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 924
    .end local v4    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    goto :goto_1

    .line 925
    :cond_1
    nop

    .line 917
    .end local v1    # "status":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 950
    .end local v0    # "i":I
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private findAddition(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 646
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 647
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 650
    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .line 723
    if-eqz p4, :cond_0

    .line 724
    add-int/lit8 v0, p2, -0x1

    .line 725
    .local v0, "myItemPos":I
    move v1, p1

    .line 726
    .local v1, "curX":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "curY":I
    goto :goto_0

    .line 728
    .end local v0    # "myItemPos":I
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 729
    .restart local v0    # "myItemPos":I
    add-int/lit8 v1, p1, -0x1

    .line 730
    .restart local v1    # "curX":I
    move/from16 v2, p2

    .line 732
    .restart local v2    # "curY":I
    :goto_0
    move/from16 v3, p3

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_8

    .line 733
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 734
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 735
    .local v5, "endX":I
    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 736
    .local v6, "endY":I
    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p4, :cond_4

    .line 738
    add-int/lit8 v10, v1, -0x1

    .local v10, "pos":I
    :goto_2
    if-lt v10, v5, :cond_3

    .line 739
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v10, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 741
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v10, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v11

    .line 742
    .local v11, "theSame":Z
    if-eqz v11, :cond_1

    goto :goto_3

    :cond_1
    move v7, v8

    .line 744
    .local v7, "changeFlag":I
    :goto_3
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v12, v10, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v8, v0

    .line 745
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v12, v0, 0x5

    or-int/2addr v12, v7

    aput v12, v8, v10

    .line 746
    return v9

    .line 738
    .end local v7    # "changeFlag":I
    .end local v11    # "theSame":Z
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .end local v10    # "pos":I
    :cond_3
    goto :goto_6

    .line 751
    :cond_4
    add-int/lit8 v10, v2, -0x1

    .restart local v10    # "pos":I
    :goto_4
    if-lt v10, v6, :cond_7

    .line 752
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v0, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 754
    iget-object v11, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v11, v0, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v11

    .line 755
    .restart local v11    # "theSame":Z
    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v7, v8

    .line 757
    .restart local v7    # "changeFlag":I
    :goto_5
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v12, p1, -0x1

    shl-int/lit8 v13, v10, 0x5

    or-int/lit8 v13, v13, 0x10

    aput v13, v8, v12

    .line 758
    iget-object v8, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v12, p1, -0x1

    shl-int/lit8 v12, v12, 0x5

    or-int/2addr v12, v7

    aput v12, v8, v10

    .line 759
    return v9

    .line 751
    .end local v7    # "changeFlag":I
    .end local v11    # "theSame":Z
    :cond_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 763
    .end local v10    # "pos":I
    :cond_7
    :goto_6
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 764
    iget v2, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 732
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 766
    .end local v3    # "i":I
    :cond_8
    const/4 v3, 0x0

    return v3
.end method

.method private findMatchingItems()V
    .locals 14

    .line 610
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 611
    .local v0, "posOld":I
    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 613
    .local v1, "posNew":I
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 614
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 615
    .local v4, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 616
    .local v5, "endX":I
    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 617
    .local v6, "endY":I
    iget-boolean v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v7, :cond_1

    .line 618
    :goto_1
    if-le v0, v5, :cond_0

    .line 620
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findAddition(III)V

    .line 621
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 623
    :cond_0
    :goto_2
    if-le v1, v6, :cond_1

    .line 626
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findRemoval(III)V

    .line 627
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 630
    :cond_1
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-ge v7, v8, :cond_3

    .line 632
    iget v8, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v8, v7

    .line 633
    .local v8, "oldItemPos":I
    iget v9, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v9, v7

    .line 634
    .local v9, "newItemPos":I
    iget-object v10, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 635
    invoke-virtual {v10, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .line 636
    .local v10, "theSame":Z
    if-eqz v10, :cond_2

    move v11, v3

    goto :goto_4

    :cond_2
    const/4 v11, 0x2

    .line 637
    .local v11, "changeFlag":I
    :goto_4
    iget-object v12, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v13, v9, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v8

    .line 638
    iget-object v12, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v13, v8, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v9

    .line 630
    .end local v8    # "oldItemPos":I
    .end local v9    # "newItemPos":I
    .end local v10    # "theSame":Z
    .end local v11    # "changeFlag":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 640
    .end local v7    # "j":I
    :cond_3
    iget v0, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 641
    iget v1, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 613
    .end local v4    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 643
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 653
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 657
    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 857
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 858
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 859
    .local v2, "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_2

    iget-boolean v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_2

    .line 860
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 861
    move v3, v0

    .local v3, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 863
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_0

    move v6, v1

    goto :goto_2

    :cond_0
    const/4 v6, -0x1

    :goto_2
    add-int/2addr v5, v6

    iput v5, v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 865
    .end local v3    # "j":I
    :cond_1
    return-object v2

    .line 857
    .end local v2    # "update":Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 868
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 3
    .param p1, "newListPosition"    # I

    .line 695
    if-ltz p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    if-ge p1, v0, :cond_1

    .line 699
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v0, p1

    .line 700
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_0

    .line 701
    const/4 v1, -0x1

    return v1

    .line 703
    :cond_0
    shr-int/lit8 v1, v0, 0x5

    return v1

    .line 696
    .end local v0    # "status":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .locals 3
    .param p1, "oldListPosition"    # I

    .line 671
    if-ltz p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    if-ge p1, v0, :cond_1

    .line 675
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v0, p1

    .line 676
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_0

    .line 677
    const/4 v1, -0x1

    return v1

    .line 679
    :cond_0
    shr-int/lit8 v1, v0, 0x5

    return v1

    .line 672
    .end local v0    # "status":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 16
    .param p1, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v2, :cond_0

    .line 817
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    move-object v6, v1

    .local v2, "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    goto :goto_0

    .line 819
    .end local v2    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 823
    .restart local v2    # "batchingCallback":Landroidx/recyclerview/widget/BatchingListUpdateCallback;
    move-object v1, v2

    move-object v6, v1

    .line 827
    .end local p1    # "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    .local v6, "updateCallback":Landroidx/recyclerview/widget/ListUpdateCallback;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;>;"
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 829
    .local v3, "posOld":I
    iget v4, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 830
    .local v4, "posNew":I
    iget-object v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move v8, v3

    move v9, v4

    move v10, v5

    .end local v3    # "posOld":I
    .end local v4    # "posNew":I
    .local v8, "posOld":I
    .local v9, "posNew":I
    .local v10, "snakeIndex":I
    :goto_1
    if-ltz v10, :cond_5

    .line 831
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 832
    .local v11, "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    iget v12, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 833
    .local v12, "snakeSize":I
    iget v3, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v3, v12

    .line 834
    .local v3, "endX":I
    iget v4, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int v13, v4, v12

    .line 835
    .local v13, "endY":I
    if-ge v3, v8, :cond_1

    .line 836
    sub-int v4, v8, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    .line 839
    :cond_1
    if-ge v13, v9, :cond_2

    .line 840
    sub-int v4, v9, v13

    move-object/from16 v0, p0

    move v5, v13

    .end local v13    # "endY":I
    .local v5, "endY":I
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;III)V

    goto :goto_2

    .line 839
    .end local v5    # "endY":I
    .restart local v13    # "endY":I
    :cond_2
    move-object/from16 v0, p0

    move v5, v13

    .line 843
    .end local v13    # "endY":I
    .restart local v5    # "endY":I
    :goto_2
    add-int/lit8 v4, v12, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_4

    .line 844
    iget-object v13, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v14, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v14, v4

    aget v13, v13, v14

    and-int/lit8 v13, v13, 0x1f

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 845
    iget v13, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v13, v4

    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    iget v15, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/2addr v15, v4

    iget v7, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/2addr v7, v4

    .line 846
    invoke-virtual {v14, v15, v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v7

    .line 845
    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_4

    .line 844
    :cond_3
    move v14, v7

    .line 843
    :goto_4
    add-int/lit8 v4, v4, -0x1

    move v7, v14

    goto :goto_3

    :cond_4
    move v14, v7

    .line 849
    .end local v4    # "i":I
    iget v8, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 850
    iget v9, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 830
    .end local v3    # "endX":I
    .end local v5    # "endY":I
    .end local v11    # "snake":Landroidx/recyclerview/widget/DiffUtil$Snake;
    .end local v12    # "snakeSize":I
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 852
    .end local v10    # "snakeIndex":I
    :cond_5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 853
    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 802
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 803
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method
