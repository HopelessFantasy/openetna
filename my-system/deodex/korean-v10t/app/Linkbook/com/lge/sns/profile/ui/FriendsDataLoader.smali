.class public Lcom/lge/sns/profile/ui/FriendsDataLoader;
.super Ljava/lang/Object;
.source "FriendsDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;,
        Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;,
        Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;
    }
.end annotation


# static fields
.field private static final Tag:Ljava/lang/String; = "FriendsDataLoader"

.field private static volatile mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;


# instance fields
.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

.field private mRegObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalEventCnt:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mEventList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mRegObj:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    .line 22
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;-><init>(Lcom/lge/sns/profile/ui/FriendsDataLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    .line 23
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->start()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/FriendsDataLoader;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    return v0
.end method

.method static synthetic access$010(Lcom/lge/sns/profile/ui/FriendsDataLoader;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/FriendsDataLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFriendsDataLoader(Ljava/lang/Object;)Lcom/lge/sns/profile/ui/FriendsDataLoader;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    sget-object v0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    if-nez v0, :cond_13

    .line 30
    const-class v0, Lcom/lge/sns/profile/ui/FriendsDataLoader;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    if-nez v1, :cond_12

    .line 34
    new-instance v1, Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-direct {v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader;-><init>()V

    sput-object v1, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    .line 36
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    .line 38
    :cond_13
    sget-object v0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->regObj(Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    return-object v0

    .line 36
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private onDestroy()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "FriendsDataLoader"

    .line 96
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->onDone()V

    .line 97
    const/4 v1, 0x1

    .line 98
    .local v1, retry:Z
    :goto_7
    if-eqz v1, :cond_1a

    .line 100
    :try_start_9
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_10

    .line 101
    const/4 v1, 0x0

    goto :goto_7

    .line 102
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "FriendsDataLoader"

    const-string v2, "   ====   Destroy Thread Join Fail   ===  "

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 106
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1a
    const-string v2, "FriendsDataLoader"

    const-string v2, "   ====   Destroy Thread  ===  "

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object v3, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    .line 108
    sput-object v3, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mUniqueInstance:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    .line 109
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 110
    return-void
.end method

.method private onDone()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->onDone()V

    .line 67
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->onResume()V

    .line 68
    return-void
.end method

.method private regObj(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mRegObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    .line 61
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->onResume()V

    .line 62
    return-void
.end method

.method public getEventCnt()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mTotalEventCnt:I

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader$DataLoader;->onResume()V

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, "FriendsDataLoader"

    return-object v0
.end method

.method public unregObj(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mRegObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsDataLoader;->mRegObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    .line 53
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->onDestroy()V

    .line 55
    :cond_10
    return-void
.end method
