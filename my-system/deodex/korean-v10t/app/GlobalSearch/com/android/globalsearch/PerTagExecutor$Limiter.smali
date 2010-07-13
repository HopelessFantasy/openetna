.class Lcom/android/globalsearch/PerTagExecutor$Limiter;
.super Ljava/lang/Object;
.source "PerTagExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/PerTagExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Limiter"
.end annotation


# instance fields
.field private final mLimit:I

.field private mPending:Ljava/lang/Runnable;

.field private mRunning:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "tag"
    .parameter "limit"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    .line 84
    iput-object p1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mTag:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mLimit:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/PerTagExecutor$Limiter;Ljava/util/concurrent/Executor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/globalsearch/PerTagExecutor$Limiter;->doneRunning(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private declared-synchronized doneRunning(Ljava/util/concurrent/Executor;)V
    .registers 6
    .parameter "executor"

    .prologue
    const/4 v3, 0x1

    .line 116
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    if-gtz v1, :cond_10

    .line 117
    const-string v1, "GlobalSearch"

    const-string v2, "PerTagExecutor: how can i be done running if I\'m not running already :-/"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    .line 123
    :cond_10
    iget v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    .line 124
    iget-object v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mPending:Ljava/lang/Runnable;

    if-eqz v1, :cond_21

    .line 126
    iget-object v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mPending:Ljava/lang/Runnable;

    .line 127
    .local v0, toRun:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mPending:Ljava/lang/Runnable;

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/android/globalsearch/PerTagExecutor$Limiter;->run(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 130
    .end local v0           #toRun:Ljava/lang/Runnable;
    :cond_21
    monitor-exit p0

    return-void

    .line 116
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized run(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .registers 7
    .parameter "executor"
    .parameter "command"

    .prologue
    const/4 v3, 0x1

    .line 90
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    iget v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mLimit:I

    if-ne v0, v1, :cond_d

    .line 92
    iput-object p2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mPending:Ljava/lang/Runnable;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_5d

    move v0, v3

    .line 112
    :goto_b
    monitor-exit p0

    return v0

    .line 94
    :cond_d
    :try_start_d
    iget v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    iget v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mLimit:I

    if-le v0, v1, :cond_4d

    .line 95
    const-string v0, "GlobalSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "somehow have a running count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "the limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mLimit:I

    iput v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    .line 98
    iput-object p2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mPending:Ljava/lang/Runnable;

    move v0, v3

    .line 99
    goto :goto_b

    .line 102
    :cond_4d
    iget v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter;->mRunning:I

    .line 103
    new-instance v0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;-><init>(Lcom/android/globalsearch/PerTagExecutor$Limiter;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5b
    .catchall {:try_start_d .. :try_end_5b} :catchall_5d

    .line 112
    const/4 v0, 0x0

    goto :goto_b

    .line 90
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
