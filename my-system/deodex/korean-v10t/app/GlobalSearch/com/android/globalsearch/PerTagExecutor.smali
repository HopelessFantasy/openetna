.class public Lcom/android/globalsearch/PerTagExecutor;
.super Ljava/lang/Object;
.source "PerTagExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/PerTagExecutor$Limiter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLimit:I

.field private final mTagInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/globalsearch/PerTagExecutor$Limiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .registers 4
    .parameter "executor"
    .parameter "maxConcurrentPerTag"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/PerTagExecutor;->mTagInfos:Ljava/util/HashMap;

    .line 46
    iput-object p1, p0, Lcom/android/globalsearch/PerTagExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 47
    iput p2, p0, Lcom/android/globalsearch/PerTagExecutor;->mLimit:I

    .line 48
    return-void
.end method

.method private declared-synchronized getLimiter(Ljava/lang/String;)Lcom/android/globalsearch/PerTagExecutor$Limiter;
    .registers 4
    .parameter "tag"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/globalsearch/PerTagExecutor;->mTagInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/globalsearch/PerTagExecutor$Limiter;

    .line 67
    .local v0, ti:Lcom/android/globalsearch/PerTagExecutor$Limiter;
    if-nez v0, :cond_17

    .line 68
    new-instance v0, Lcom/android/globalsearch/PerTagExecutor$Limiter;

    .end local v0           #ti:Lcom/android/globalsearch/PerTagExecutor$Limiter;
    iget v1, p0, Lcom/android/globalsearch/PerTagExecutor;->mLimit:I

    invoke-direct {v0, p1, v1}, Lcom/android/globalsearch/PerTagExecutor$Limiter;-><init>(Ljava/lang/String;I)V

    .line 69
    .restart local v0       #ti:Lcom/android/globalsearch/PerTagExecutor$Limiter;
    iget-object v1, p0, Lcom/android/globalsearch/PerTagExecutor;->mTagInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 71
    :cond_17
    monitor-exit p0

    return-object v0

    .line 66
    .end local v0           #ti:Lcom/android/globalsearch/PerTagExecutor$Limiter;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .registers 5
    .parameter "tag"
    .parameter "command"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/globalsearch/PerTagExecutor;->getLimiter(Ljava/lang/String;)Lcom/android/globalsearch/PerTagExecutor$Limiter;

    move-result-object v0

    .line 62
    .local v0, limiter:Lcom/android/globalsearch/PerTagExecutor$Limiter;
    iget-object v1, p0, Lcom/android/globalsearch/PerTagExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p2}, Lcom/android/globalsearch/PerTagExecutor$Limiter;->run(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method
