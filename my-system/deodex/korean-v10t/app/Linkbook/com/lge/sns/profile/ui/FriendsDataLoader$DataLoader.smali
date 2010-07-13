.class Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;
.super Ljava/lang/Thread;
.source "FriendsDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoader"
.end annotation


# instance fields
.field private mFLRunnable:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

.field private mIsDone:Z

.field private mIsPause:Z

.field private mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsDataLoader;


# direct methods
.method public constructor <init>(Lcom/lge/sns/profile/ui/FriendsDataLoader;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "h"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->this$0:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsDone:Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mFLRunnable:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    .line 131
    iput-object p2, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mMainHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method private onSchedule()V
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->this$0:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->access$000(Lcom/lge/sns/profile/ui/FriendsDataLoader;)I

    move-result v1

    if-lez v1, :cond_27

    .line 197
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->this$0:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->access$100(Lcom/lge/sns/profile/ui/FriendsDataLoader;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    .line 199
    .local v0, flr:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;->run()V

    .line 200
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader$1;-><init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->this$0:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->access$010(Lcom/lge/sns/profile/ui/FriendsDataLoader;)I

    .line 210
    .end local v0           #flr:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
    :cond_27
    return-void
.end method


# virtual methods
.method public getRunningRunable()Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mFLRunnable:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    return-object v0
.end method

.method public onDone()V
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsDone:Z

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsPause:Z

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsPause:Z

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 153
    monitor-exit p0

    .line 154
    return-void

    .line 153
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 159
    :goto_0
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsDone:Z

    if-nez v0, :cond_26

    .line 162
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_5} :catch_1c

    .line 163
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->this$0:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->access$000(Lcom/lge/sns/profile/ui/FriendsDataLoader;)I

    move-result v0

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsPause:Z

    if-eqz v0, :cond_1e

    :cond_11
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsDone:Z

    if-nez v0, :cond_1e

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_5

    .line 173
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 175
    :catch_1c
    move-exception v0

    goto :goto_0

    .line 167
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->onSchedule()V

    .line 169
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->mIsDone:Z

    if-eqz v0, :cond_27

    .line 171
    monitor-exit p0

    .line 180
    :cond_26
    return-void

    .line 173
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_19

    goto :goto_0
.end method

.method public start()V
    .registers 1

    .prologue
    .line 185
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method
