.class public Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnectMediaScanner()V
    .registers 6

    .prologue
    const-string v1, "DownloadManager"

    .line 158
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 159
    :try_start_5
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 160
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 161
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1e

    .line 162
    const-string v2, "DownloadManager"

    const-string v3, "Disconnecting from Media Scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_44

    .line 165
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2, p0}, Lcom/android/providers/downloads/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_25

    .line 172
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v1

    .line 173
    return-void

    .line 166
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 167
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_23

    .line 168
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService threw up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 172
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_b

    .line 146
    const-string v0, "DownloadManager"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v0

    .line 150
    :try_start_14
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 151
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 152
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V

    .line 154
    :cond_2a
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_b

    .line 177
    const-string v0, "DownloadManager"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v0

    .line 180
    :try_start_e
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method
