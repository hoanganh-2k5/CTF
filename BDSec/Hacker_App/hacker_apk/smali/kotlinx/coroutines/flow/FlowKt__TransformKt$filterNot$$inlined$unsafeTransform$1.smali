.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__TransformKt;->filterNot(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 109
    move-object v0, p1

    .local v0, "$this$unsafeTransform_u24lambda_u240":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p2

    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-unsafeFlow-FlowKt__EmittersKt$unsafeTransform$1":I
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    invoke-direct {v4, v0, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v3, v4, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    return-object v3

    .line 118
    :cond_0
    nop

    .line 109
    .end local v0    # "$this$unsafeTransform_u24lambda_u240":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$unsafeTransform$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    return-object v0
.end method

.method public collect$$forInline(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;Lkotlin/coroutines/Continuation;)V

    .line 109
    move-object v0, p1

    .local v0, "$this$unsafeTransform_u24lambda_u240":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p2

    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-unsafeFlow-FlowKt__EmittersKt$unsafeTransform$1":I
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    invoke-direct {v4, v0, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v3, v4, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 118
    nop

    .line 109
    .end local v0    # "$this$unsafeTransform_u24lambda_u240":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$unsafeTransform$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    return-object v0
.end method
