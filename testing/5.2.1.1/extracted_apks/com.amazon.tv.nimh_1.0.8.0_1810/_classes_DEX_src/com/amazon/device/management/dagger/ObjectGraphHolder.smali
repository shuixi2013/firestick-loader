.class public final Lcom/amazon/device/management/dagger/ObjectGraphHolder;
.super Ljava/lang/Object;
.source "ObjectGraphHolder.java"


# static fields
.field private static sObjectGraph:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ldagger/ObjectGraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->sObjectGraph:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot instantiate a utility class"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearObjectGraph()V
    .registers 1

    .prologue
    .line 72
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->sObjectGraph:Lcom/google/common/util/concurrent/SettableFuture;

    .line 73
    return-void
.end method

.method public static getObjectGraph()Ldagger/ObjectGraph;
    .registers 4

    .prologue
    .line 46
    :try_start_0
    sget-object v2, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->sObjectGraph:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/ObjectGraph;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_8} :catch_19

    return-object v2

    .line 47
    :catch_9
    move-exception v1

    .line 48
    .local v1, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 49
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load object graph"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 50
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catch_19
    move-exception v0

    .line 51
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load object graph"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setObjectGraph(Ldagger/ObjectGraph;)V
    .registers 2
    .param p0, "objectGraph"    # Ldagger/ObjectGraph;

    .prologue
    .line 62
    sget-object v0, Lcom/amazon/device/management/dagger/ObjectGraphHolder;->sObjectGraph:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
