.class public Lkotlinx/coroutines/selects/SelectImplementation;
.super Lkotlinx/coroutines/CancelHandler;
.source "Select.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectBuilder;
.implements Lkotlinx/coroutines/selects/SelectInstanceInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/CancelHandler;",
        "Lkotlinx/coroutines/selects/SelectBuilder<",
        "TR;>;",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,873:1\n1#2:874\n2624#3,3:875\n1855#3,2:888\n1855#3,2:896\n1855#3,2:898\n314#4,9:878\n323#4,2:890\n19#5:887\n153#6,4:892\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n505#1:875,3\n569#1:888,2\n726#1:896,2\n751#1:898,2\n545#1:878,9\n545#1:890,2\n561#1:887\n711#1:892,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0011\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004:\u0001HB\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u001a\u0010\u001d\u001a\u00020\u001b2\u0010\u0010\u001e\u001a\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0002J\u0011\u0010\u001f\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0016J\u0011\u0010$\u001a\u00028\u0000H\u0091@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u0011\u0010%\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J\u001c\u0010&\u001a\u000e\u0018\u00010\nR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0013\u0010\'\u001a\u00020\u001b2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0096\u0002J\u001c\u0010*\u001a\u00020\u001b2\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030,2\u0006\u0010-\u001a\u00020\u0014H\u0016J-\u0010.\u001a\u00028\u00002\u0010\u0010/\u001a\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J\u0010\u00101\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002J\u0012\u00102\u001a\u00020\u001b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u00103\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u00105\u001a\u0002062\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u00104\u001a\u0004\u0018\u00010\u000eJ\u001a\u00107\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0002J\u0011\u00108\u001a\u00020\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010 J3\u0010\'\u001a\u00020\u001b*\u0002092\u001c\u0010:\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000<\u0012\u0006\u0012\u0004\u0018\u00010\u000e0;H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=JE\u0010\'\u001a\u00020\u001b\"\u0004\u0008\u0001\u0010>*\u0008\u0012\u0004\u0012\u0002H>0?2\"\u0010:\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000<\u0012\u0006\u0012\u0004\u0018\u00010\u000e0@H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJY\u0010\'\u001a\u00020\u001b\"\u0004\u0008\u0001\u0010B\"\u0004\u0008\u0002\u0010>*\u000e\u0012\u0004\u0012\u0002HB\u0012\u0004\u0012\u0002H>0C2\u0006\u0010D\u001a\u0002HB2\"\u0010:\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000<\u0012\u0006\u0012\u0004\u0018\u00010\u000e0@H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010EJ \u0010F\u001a\u00020\u001b*\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010G\u001a\u00020\u0010H\u0001R \u0010\u0008\u001a\u0014\u0012\u000e\u0012\u000c0\nR\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0012R\u000f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0019X\u0082\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006I"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectImplementation;",
        "R",
        "Lkotlinx/coroutines/CancelHandler;",
        "Lkotlinx/coroutines/selects/SelectBuilder;",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/CoroutineContext;)V",
        "clauses",
        "",
        "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "disposableHandleOrSegment",
        "",
        "inRegistrationPhase",
        "",
        "getInRegistrationPhase",
        "()Z",
        "indexInSegment",
        "",
        "internalResult",
        "isCancelled",
        "isSelected",
        "state",
        "Lkotlinx/atomicfu/AtomicRef;",
        "checkClauseObject",
        "",
        "clauseObject",
        "cleanup",
        "selectedClause",
        "complete",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disposeOnCompletion",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "doSelect",
        "doSelectSuspend",
        "findClause",
        "invoke",
        "cause",
        "",
        "invokeOnCancellation",
        "segment",
        "Lkotlinx/coroutines/internal/Segment;",
        "index",
        "processResultAndInvokeBlockRecoveringException",
        "clause",
        "(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reregisterClause",
        "selectInRegistrationPhase",
        "trySelect",
        "result",
        "trySelectDetailed",
        "Lkotlinx/coroutines/selects/TrySelectDetailedResult;",
        "trySelectInternal",
        "waitUntilSelected",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V",
        "Q",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "Lkotlin/Function2;",
        "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V",
        "P",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "param",
        "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "register",
        "reregister",
        "ClauseData",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private clauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;>;"
        }
    .end annotation
.end field

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private disposableHandleOrSegment:Ljava/lang/Object;

.field private indexInSegment:I

.field private internalResult:Ljava/lang/Object;

.field private volatile state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v1, "state"

    const-class v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 2
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 246
    invoke-direct {p0}, Lkotlinx/coroutines/CancelHandler;-><init>()V

    .line 245
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    .line 352
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state:Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    .line 411
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public static final synthetic access$complete(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 243
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$doSelectSuspend(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 243
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInRegistrationPhase(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;

    .line 243
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->getInRegistrationPhase()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;

    .line 243
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getState$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 243
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$isCancelled(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;

    .line 243
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;
    .param p1, "clause"    # Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .param p2, "internalResult"    # Ljava/lang/Object;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/selects/SelectImplementation;->processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$reregisterClause(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;
    .param p1, "clauseObject"    # Ljava/lang/Object;

    .line 243
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->reregisterClause(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$waitUntilSelected(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 243
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final checkClauseObject(Ljava/lang/Object;)V
    .locals 10
    .param p1, "clauseObject"    # Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 505
    .local v0, "clauses":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 875
    .local v2, "$i$f$none":I
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 876
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .local v6, "it":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    const/4 v7, 0x0

    .line 505
    .local v7, "$i$a$-none-SelectImplementation$checkClauseObject$1":I
    iget-object v8, v6, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    const/4 v9, 0x0

    if-ne v8, p1, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v9

    .line 876
    .end local v6    # "it":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .end local v7    # "$i$a$-none-SelectImplementation$checkClauseObject$1":I
    :goto_0
    if-eqz v6, :cond_1

    move v4, v9

    goto :goto_1

    .line 877
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 505
    .end local v1    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$none":I
    :goto_1
    if-eqz v4, :cond_4

    .line 508
    return-void

    .line 505
    :cond_4
    const/4 v1, 0x0

    .line 506
    .local v1, "$i$a$-check-SelectImplementation$checkClauseObject$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot use select clauses on the same object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .end local v1    # "$i$a$-check-SelectImplementation$checkClauseObject$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final cleanup(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;)V
    .locals 7
    .param p1, "selectedClause"    # Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;)V"
        }
    .end annotation

    .line 720
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    const/4 v0, 0x0

    .local v0, "$i$a$-assert-SelectImplementation$cleanup$1":I
    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 720
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "$i$a$-assert-SelectImplementation$cleanup$1":I
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    if-nez v0, :cond_2

    return-void

    .line 726
    .local v0, "clauses":Ljava/util/List;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 896
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .local v5, "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    const/4 v6, 0x0

    .line 727
    .local v6, "$i$a$-forEach-SelectImplementation$cleanup$2":I
    if-eq v5, p1, :cond_3

    invoke-virtual {v5}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    .line 728
    :cond_3
    nop

    .line 896
    .end local v5    # "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .end local v6    # "$i$a$-forEach-SelectImplementation$cleanup$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 897
    :cond_4
    nop

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 730
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 731
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 732
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    .line 733
    return-void
.end method

.method private final complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 678
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    const/4 v0, 0x0

    .line 678
    .local v0, "$i$a$-assert-SelectImplementation$complete$2":I
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isSelected()Z

    move-result v0

    .end local v0    # "$i$a$-assert-SelectImplementation$complete$2":I
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 681
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 685
    .local v0, "selectedClause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 686
    .local v1, "internalResult":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->cleanup(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;)V

    .line 688
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v2

    if-nez v2, :cond_2

    .line 691
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 692
    .local v2, "blockArgument":Ljava/lang/Object;
    invoke-virtual {v0, v2, p1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 701
    return-object v3

    .line 699
    .end local v2    # "blockArgument":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 701
    return-object v2
.end method

.method static synthetic doSelect$suspendImpl(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/selects/SelectImplementation;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 422
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 428
    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_2

    :pswitch_1
    iget-object v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation;

    .local v2, "this":Lkotlinx/coroutines/selects/SelectImplementation;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lkotlinx/coroutines/selects/SelectImplementation;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 431
    .restart local v2    # "this":Lkotlinx/coroutines/selects/SelectImplementation;
    iput-object v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-direct {v2, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 428
    return-object v1

    .line 434
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-object v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-direct {v2, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lkotlinx/coroutines/selects/SelectImplementation;
    if-ne v2, v1, :cond_2

    .line 428
    return-object v1

    .line 434
    :cond_2
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .locals 7
    .param p1, "clauseObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 658
    .local v0, "clauses":Ljava/util/List;
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 874
    .local v4, "it":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    const/4 v5, 0x0

    .line 658
    .local v5, "$i$a$-find-SelectImplementation$findClause$1":I
    iget-object v6, v4, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    if-ne v6, p1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .end local v4    # "it":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .end local v5    # "$i$a$-find-SelectImplementation$findClause$1":I
    :goto_0
    if-eqz v6, :cond_1

    move-object v1, v3

    :cond_3
    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clause with object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getInRegistrationPhase()Z
    .locals 3

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 358
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 359
    .local v1, "$i$a$-let-SelectImplementation$inRegistrationPhase$1":I
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v0, v2, :cond_1

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 358
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-SelectImplementation$inRegistrationPhase$1":I
    :goto_1
    nop

    .line 360
    return v2
.end method

.method private final isCancelled()Z
    .locals 2

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 371
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSelected()Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 366
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    return v0
.end method

.method private final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final processResultAndInvokeBlockRecoveringException(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 703
    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p3

    goto :goto_1

    .line 707
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 703
    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 704
    .local p1, "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .local p2, "internalResult":Ljava/lang/Object;
    nop

    .line 705
    :try_start_1
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 706
    .end local p2    # "internalResult":Ljava/lang/Object;
    .local v2, "blockArgument":Ljava/lang/Object;
    const/4 p2, 0x1

    iput p2, v0, Lkotlinx/coroutines/selects/SelectImplementation$processResultAndInvokeBlockRecoveringException$1;->label:I

    invoke-virtual {p1, v2, v0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "blockArgument":Ljava/lang/Object;
    .end local p1    # "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    if-ne p2, v1, :cond_1

    .line 703
    return-object v1

    .line 706
    :cond_1
    :goto_1
    nop

    .line 712
    return-object p2

    .line 711
    .local p1, "e":Ljava/lang/Throwable;
    :goto_2
    const/4 p2, 0x0

    .line 892
    .local p2, "$i$f$recoverAndThrow":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 893
    move-object v1, v0

    .local v1, "it$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 894
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2$iv":I
    instance-of v3, v1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v3, :cond_2

    throw p1

    .line 895
    :cond_2
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    .line 892
    .end local v1    # "it$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-StackTraceRecoveryKt$recoverAndThrow$2$iv":I
    :cond_3
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V
    .locals 0

    .line 464
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: register"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reregisterClause(Ljava/lang/Object;)V
    .locals 2
    .param p1, "clauseObject"    # Ljava/lang/Object;

    .line 589
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 590
    .local v0, "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    const/4 v1, 0x0

    iput-object v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 591
    const/4 v1, -0x1

    iput v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    .line 592
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    .line 593
    return-void
.end method

.method private final trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "clauseObject"    # Ljava/lang/Object;
    .param p2, "internalResult"    # Ljava/lang/Object;

    .line 611
    nop

    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 612
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 614
    .local v0, "curState":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 615
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 616
    .local v1, "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    :cond_1
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-virtual {v1, v3, p2}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 617
    .local v3, "onCancellation":Lkotlin/jvm/functions/Function1;
    sget-object v4, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .line 622
    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 623
    invoke-static {v4, v3}, Lkotlinx/coroutines/selects/SelectKt;->access$tryResume(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function1;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    return v2

    .line 626
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 627
    return v2

    .line 631
    .end local v1    # "clause":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .end local v3    # "onCancellation":Lkotlin/jvm/functions/Function1;
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    :goto_1
    if-eqz v1, :cond_5

    const/4 v1, 0x3

    return v1

    .line 633
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 637
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 641
    :cond_7
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_8

    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final update$atomicfu(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p3, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private final waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 545
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 878
    .local v1, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v2, p1

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 879
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 885
    .local v4, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 886
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/CancellableContinuation;

    .local v5, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .local v6, "$i$a$-suspendCancellableCoroutine-SelectImplementation$waitUntilSelected$2":I
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    .local v7, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    const/4 v9, 0x0

    .local v9, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "curState":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 548
    .local v11, "$i$a$-loop$atomicfu-SelectImplementation$waitUntilSelected$2$1":I
    nop

    .line 551
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v12

    if-ne v10, v12, :cond_1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v12

    invoke-static {v12, v0, v10, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 561
    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/CancelHandlerBase;

    .local v12, "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    const/4 v13, 0x0

    .line 887
    .local v13, "$i$f$getAsHandler":I
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 561
    .end local v12    # "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    .end local v13    # "$i$f$getAsHandler":I
    invoke-interface {v5, v12}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 562
    move/from16 v18, v1

    goto :goto_3

    .line 551
    :cond_0
    move/from16 v18, v1

    goto :goto_2

    .line 566
    :cond_1
    instance-of v12, v10, Ljava/util/List;

    if-eqz v12, :cond_4

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v12

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v13

    invoke-static {v12, v0, v10, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 568
    move-object v12, v10

    check-cast v12, Ljava/util/List;

    .line 569
    move-object v12, v10

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 888
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 569
    .local v17, "$i$a$-forEach-SelectImplementation$waitUntilSelected$2$1$1":I
    move/from16 v18, v1

    move-object/from16 v1, v16

    .end local v16    # "it":Ljava/lang/Object;
    .local v1, "it":Ljava/lang/Object;
    .local v18, "$i$f$suspendCancellableCoroutine":I
    invoke-static {v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->access$reregisterClause(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V

    .line 888
    .end local v1    # "it":Ljava/lang/Object;
    .end local v17    # "$i$a$-forEach-SelectImplementation$waitUntilSelected$2$1$1":I
    move/from16 v1, v18

    .end local v15    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 889
    .end local v18    # "$i$f$suspendCancellableCoroutine":I
    .local v1, "$i$f$suspendCancellableCoroutine":I
    :cond_2
    move/from16 v18, v1

    .end local v1    # "$i$f$suspendCancellableCoroutine":I
    .end local v12    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v18    # "$i$f$suspendCancellableCoroutine":I
    goto :goto_2

    .line 566
    .end local v18    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "$i$f$suspendCancellableCoroutine":I
    :cond_3
    move/from16 v18, v1

    .line 579
    .end local v1    # "$i$f$suspendCancellableCoroutine":I
    .restart local v18    # "$i$f$suspendCancellableCoroutine":I
    :goto_2
    move/from16 v1, v18

    .end local v10    # "curState":Ljava/lang/Object;
    .end local v11    # "$i$a$-loop$atomicfu-SelectImplementation$waitUntilSelected$2$1":I
    goto :goto_0

    .line 572
    .end local v18    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "$i$f$suspendCancellableCoroutine":I
    .restart local v10    # "curState":Ljava/lang/Object;
    .restart local v11    # "$i$a$-loop$atomicfu-SelectImplementation$waitUntilSelected$2$1":I
    :cond_4
    move/from16 v18, v1

    .end local v1    # "$i$f$suspendCancellableCoroutine":I
    .restart local v18    # "$i$f$suspendCancellableCoroutine":I
    instance-of v1, v10, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v1, :cond_7

    .line 573
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v12, v10

    check-cast v12, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-object v13, v0

    check-cast v13, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-static {v0}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v12

    invoke-interface {v5, v1, v12}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 574
    nop

    .line 886
    .end local v5    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendCancellableCoroutine-SelectImplementation$waitUntilSelected$2":I
    .end local v7    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v8    # "this_$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    .end local v9    # "$i$f$loop$atomicfu":I
    .end local v10    # "curState":Ljava/lang/Object;
    .end local v11    # "$i$a$-loop$atomicfu-SelectImplementation$waitUntilSelected$2$1":I
    :goto_3
    nop

    .line 890
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 878
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6

    return-object v1

    .line 891
    :cond_6
    nop

    .end local v18    # "$i$f$suspendCancellableCoroutine":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 580
    return-object v1

    .line 574
    .restart local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v5    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v6    # "$i$a$-suspendCancellableCoroutine-SelectImplementation$waitUntilSelected$2":I
    .restart local v7    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .restart local v8    # "this_$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    .restart local v9    # "$i$f$loop$atomicfu":I
    .restart local v10    # "curState":Ljava/lang/Object;
    .restart local v11    # "$i$a$-loop$atomicfu-SelectImplementation$waitUntilSelected$2$1":I
    .restart local v18    # "$i$f$suspendCancellableCoroutine":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 577
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unexpected state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0
    .param p1, "disposableHandle"    # Lkotlinx/coroutines/DisposableHandle;

    .line 511
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 512
    return-void
.end method

.method public doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect$suspendImpl(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 245
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    const/4 v2, 0x0

    .local v2, "$i$f$update$atomicfu":I
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "cur":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 744
    .local v5, "$i$a$-update$atomicfu-SelectImplementation$invoke$1":I
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v4, v6, :cond_1

    return-void

    .line 745
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    .end local v4    # "cur":Ljava/lang/Object;
    .end local v5    # "$i$a$-update$atomicfu-SelectImplementation$invoke$1":I
    invoke-static {v0, p0, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    .end local v0    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v1    # "this_$iv":Lkotlinx/coroutines/selects/SelectImplementation;
    .end local v2    # "$i$f$update$atomicfu":I
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    if-nez v0, :cond_2

    return-void

    .line 751
    .local v0, "clauses":Ljava/util/List;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 898
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .local v5, "it":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    const/4 v6, 0x0

    .line 751
    .local v6, "$i$a$-forEach-SelectImplementation$invoke$2":I
    invoke-virtual {v5}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    .line 898
    .end local v5    # "it":Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .end local v6    # "$i$a$-forEach-SelectImplementation$invoke$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 899
    :cond_3
    nop

    .line 753
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 754
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    .line 755
    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause0;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectClause0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 442
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getPARAM_CLAUSE_0()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause0;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v6, p2

    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    .local v6, "block":Lkotlin/jvm/functions/Function1;
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, p2, v2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause1;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 444
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause1;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v6, p2

    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    .local v6, "block":Lkotlin/jvm/functions/Function2;
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, p2, v2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause2;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "-TP;+TQ;>;TP;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 446
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause2;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .end local p2    # "param":Ljava/lang/Object;
    .end local p3    # "block":Lkotlin/jvm/functions/Function2;
    .local v5, "param":Ljava/lang/Object;
    .local v6, "block":Lkotlin/jvm/functions/Function2;
    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p2, p3}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "$this$invoke"    # Lkotlinx/coroutines/selects/SelectClause2;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "-TP;+TQ;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TQ;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectBuilder$DefaultImpls;->invoke(Lkotlinx/coroutines/selects/SelectBuilder;Lkotlinx/coroutines/selects/SelectClause2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0
    .param p1, "segment"    # Lkotlinx/coroutines/internal/Segment;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 527
    iput p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    .line 528
    return-void
.end method

.method public onTimeout(JLkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "timeMillis"    # J
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Replaced with the same extension function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "onTimeout"
            imports = {
                "kotlinx.coroutines.selects.onTimeout"
            }
        .end subannotation
    .end annotation

    .line 243
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/selects/SelectBuilder$DefaultImpls;->onTimeout(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V
    .locals 3
    .param p1, "$this$register"    # Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .param p2, "reregister"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectImplementation<",
            "TR;>.ClauseData;Z)V"
        }
    .end annotation

    .line 465
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    const/4 v0, 0x0

    .local v0, "$i$a$-assert-SelectImplementation$register$1":I
    sget-object v1, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 465
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-SelectImplementation$register$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 467
    :cond_2
    :goto_1
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 874
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 467
    .local v1, "$i$a$-let-SelectImplementation$register$2":I
    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-SelectImplementation$register$2":I
    if-eqz v0, :cond_3

    return-void

    .line 470
    :cond_3
    if-nez p2, :cond_4

    iget-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->checkClauseObject(Ljava/lang/Object;)V

    .line 472
    :cond_4
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->tryRegisterAsWaiter(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    if-nez p2, :cond_5

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_5
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    iput-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 486
    iget v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    iput v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    goto :goto_2

    :cond_6
    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 492
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    :goto_2
    return-void
.end method

.method public selectInRegistrationPhase(Ljava/lang/Object;)V
    .locals 0
    .param p1, "internalResult"    # Ljava/lang/Object;

    .line 531
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 532
    return-void
.end method

.method public trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "clauseObject"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .line 600
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final trySelectDetailed(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 1
    .param p1, "clauseObject"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .line 608
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lkotlinx/coroutines/selects/SelectKt;->access$TrySelectDetailedResult(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object v0

    return-object v0
.end method
