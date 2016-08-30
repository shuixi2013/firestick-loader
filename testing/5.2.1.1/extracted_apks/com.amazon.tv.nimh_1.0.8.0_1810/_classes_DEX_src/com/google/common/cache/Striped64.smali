.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    :try_start_18
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-class v0, Lcom/google/common/cache/Striped64;

    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    :try_start_6
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 14

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .registers 7

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .registers 8

    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v1, :cond_13

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    if-eqz v3, :cond_10

    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .registers 16

    if-nez p3, :cond_53

    sget-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    new-array p3, v1, [I

    invoke-virtual {v0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :cond_14
    aput v0, p3, v1

    :goto_16
    const/4 v1, 0x0

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_1a
    :goto_1a
    iget-object v3, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v3, :cond_b1

    array-length v2, v3

    if-lez v2, :cond_b1

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v4, v1

    aget-object v4, v3, v4

    if-nez v4, :cond_6a

    iget v2, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v2, :cond_5c

    new-instance v3, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v3, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    iget v2, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v2, :cond_5c

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x0

    :try_start_3c
    iget-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v4, :cond_4d

    array-length v5, v4

    if-lez v5, :cond_4d

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v1

    aget-object v6, v4, v5

    if-nez v6, :cond_4d

    aput-object v3, v4, v5
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_57

    const/4 v2, 0x1

    :cond_4d
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v2, :cond_1a

    :cond_52
    :goto_52
    return-void

    :cond_53
    const/4 v0, 0x0

    aget v0, p3, v0

    goto :goto_16

    :catchall_57
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_5c
    const/4 v0, 0x0

    :cond_5d
    :goto_5d
    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, p3, v2

    goto :goto_1a

    :cond_6a
    if-nez p4, :cond_6e

    const/4 p4, 0x1

    goto :goto_5d

    :cond_6e
    iget-wide v6, v4, Lcom/google/common/cache/Striped64$Cell;->value:J

    invoke-virtual {p0, v6, v7, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v4

    if-nez v4, :cond_52

    sget v4, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v2, v4, :cond_82

    iget-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v4, v3, :cond_84

    :cond_82
    const/4 v0, 0x0

    goto :goto_5d

    :cond_84
    if-nez v0, :cond_88

    const/4 v0, 0x1

    goto :goto_5d

    :cond_88
    iget v4, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v4, :cond_5d

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v4

    if-eqz v4, :cond_5d

    :try_start_92
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v3, :cond_a6

    shl-int/lit8 v0, v2, 0x1

    new-array v4, v0, [Lcom/google/common/cache/Striped64$Cell;

    const/4 v0, 0x0

    :goto_9b
    if-ge v0, v2, :cond_a4

    aget-object v5, v3, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    :cond_a4
    iput-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_a6
    .catchall {:try_start_92 .. :try_end_a6} :catchall_ac

    :cond_a6
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/Striped64;->busy:I

    const/4 v0, 0x0

    goto/16 :goto_1a

    :catchall_ac
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_b1
    iget v2, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v2, :cond_df

    iget-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v2, v3, :cond_df

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v2

    if-eqz v2, :cond_df

    const/4 v2, 0x0

    :try_start_c0
    iget-object v4, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v4, v3, :cond_d3

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/cache/Striped64$Cell;

    and-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v4, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_d2
    .catchall {:try_start_c0 .. :try_end_d2} :catchall_da

    const/4 v2, 0x1

    :cond_d3
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v2, :cond_1a

    goto/16 :goto_52

    :catchall_da
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_df
    iget-wide v2, p0, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_52
.end method
