.class Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;
.super Ljava/lang/Object;
.source "ApacheHttpRequestAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/ApacheHttpRequestAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Buffer"
.end annotation


# instance fields
.field private mEmpty:Z

.field private mPacket:Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;

.field final synthetic this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;


# direct methods
.method constructor <init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mEmpty:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;
    .registers 2

    .prologue
    .line 248
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mEmpty:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_b

    .line 250
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 251
    :catch_9
    move-exception v0

    goto :goto_1

    .line 258
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mEmpty:Z

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 260
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mPacket:Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 248
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 233
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mEmpty:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_b

    .line 235
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 236
    :catch_9
    move-exception v0

    goto :goto_1

    .line 243
    :cond_b
    :try_start_b
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mPacket:Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->mEmpty:Z

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    .line 246
    monitor-exit p0

    return-void

    .line 233
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
