.class public final Lkotlin/jdk7/AutoCloseableKt;
.super Ljava/lang/Object;
.source "AutoCloseableJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0001\u001aH\u0010\u0005\u001a\u0002H\u0006\"\n\u0008\u0000\u0010\u0007*\u0004\u0018\u00010\u0002\"\u0004\u0008\u0001\u0010\u0006*\u0002H\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00060\tH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "closeFinally",
        "",
        "Ljava/lang/AutoCloseable;",
        "cause",
        "",
        "use",
        "R",
        "T",
        "block",
        "Lkotlin/Function1;",
        "(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlin-stdlib-jdk7"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    pn = "kotlin"
    xi = 0x30
.end annotation


# direct methods
.method public static final closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "$this$closeFinally"    # Ljava/lang/AutoCloseable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 44
    nop

    .line 45
    if-eqz p0, :cond_1

    .line 46
    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    .line 48
    :cond_0
    nop

    .line 49
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "closeException":Ljava/lang/Throwable;
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 53
    .end local v0    # "closeException":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private static final use(Ljava/lang/AutoCloseable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$use"    # Ljava/lang/AutoCloseable;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/AutoCloseable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "exception":Ljava/lang/Throwable;
    nop

    .line 33
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {p0, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 36
    nop

    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local p0    # "$this$use":Ljava/lang/AutoCloseable;
    .end local p1    # "block":Lkotlin/jvm/functions/Function1;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "exception":Ljava/lang/Throwable;
    .restart local p0    # "$this$use":Ljava/lang/AutoCloseable;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method
