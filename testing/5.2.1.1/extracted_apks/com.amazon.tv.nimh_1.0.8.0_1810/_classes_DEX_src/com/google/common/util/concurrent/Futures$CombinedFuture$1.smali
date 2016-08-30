.class Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_11

    :cond_27
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iput-object v3, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iput-object v3, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    iput-object v3, v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    return-void
.end method
