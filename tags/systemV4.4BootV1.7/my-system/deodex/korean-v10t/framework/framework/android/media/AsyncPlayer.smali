.class public Landroid/media/AsyncPlayer;
.super Ljava/lang/Object;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AsyncPlayer$1;,
        Landroid/media/AsyncPlayer$Thread;,
        Landroid/media/AsyncPlayer$Command;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2


# instance fields
.field private mHead:Landroid/media/AsyncPlayer$Command;

.field private mLock:Ljava/lang/Object;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mTail:Landroid/media/AsyncPlayer$Command;

.field private mThread:Landroid/media/AsyncPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mLock:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 135
    if-eqz p1, :cond_12

    .line 136
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    .line 140
    :goto_11
    return-void

    .line 138
    :cond_12
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    goto :goto_11
.end method

.method static synthetic access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AsyncPlayer;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AsyncPlayer;)Landroid/media/AsyncPlayer$Command;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mHead:Landroid/media/AsyncPlayer$Command;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)Landroid/media/AsyncPlayer$Command;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mHead:Landroid/media/AsyncPlayer$Command;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/AsyncPlayer;)Landroid/media/AsyncPlayer$Command;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTail:Landroid/media/AsyncPlayer$Command;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)Landroid/media/AsyncPlayer$Command;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTail:Landroid/media/AsyncPlayer$Command;

    return-object p1
.end method

.method static synthetic access$400(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$502(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/AsyncPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 227
    :cond_9
    return-void
.end method

.method private enqueueLocked(Landroid/media/AsyncPlayer$Command;)V
    .registers 3
    .parameter "cmd"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTail:Landroid/media/AsyncPlayer$Command;

    if-nez v0, :cond_1c

    .line 187
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mHead:Landroid/media/AsyncPlayer$Command;

    .line 191
    :goto_6
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTail:Landroid/media/AsyncPlayer$Command;

    .line 192
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-nez v0, :cond_1b

    .line 193
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->acquireWakeLock()V

    .line 194
    new-instance v0, Landroid/media/AsyncPlayer$Thread;

    invoke-direct {v0, p0}, Landroid/media/AsyncPlayer$Thread;-><init>(Landroid/media/AsyncPlayer;)V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    .line 195
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer$Thread;->start()V

    .line 197
    :cond_1b
    return-void

    .line 189
    :cond_1c
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTail:Landroid/media/AsyncPlayer$Command;

    iput-object p1, v0, Landroid/media/AsyncPlayer$Command;->next:Landroid/media/AsyncPlayer$Command;

    goto :goto_6
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 233
    :cond_9
    return-void
.end method


# virtual methods
.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .registers 8
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    .line 156
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$1;)V

    .line 157
    .local v0, cmd:Landroid/media/AsyncPlayer$Command;
    iput v2, v0, Landroid/media/AsyncPlayer$Command;->code:I

    .line 158
    iput-object p1, v0, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    .line 159
    iput-object p2, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    .line 160
    iput-boolean p3, v0, Landroid/media/AsyncPlayer$Command;->looping:Z

    .line 161
    iput p4, v0, Landroid/media/AsyncPlayer$Command;->stream:I

    .line 162
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_14
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    .line 164
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 213
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_8

    iget-object v1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-eqz v1, :cond_2f

    .line 216
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_2f
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 220
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 221
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 173
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_4
    iget v2, p0, Landroid/media/AsyncPlayer;->mState:I

    if-eq v2, v3, :cond_17

    .line 177
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$1;)V

    .line 178
    .local v0, cmd:Landroid/media/AsyncPlayer$Command;
    const/4 v2, 0x2

    iput v2, v0, Landroid/media/AsyncPlayer$Command;->code:I

    .line 179
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    .line 180
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 182
    .end local v0           #cmd:Landroid/media/AsyncPlayer$Command;
    :cond_17
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v2
.end method
