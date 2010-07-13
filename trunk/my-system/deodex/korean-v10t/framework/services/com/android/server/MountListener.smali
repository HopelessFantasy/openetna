.class final Lcom/android/server/MountListener;
.super Ljava/lang/Object;
.source "MountListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MountListener"

.field private static final VOLD_CMD_DISABLE_UMS:Ljava/lang/String; = "disable_ums"

.field private static final VOLD_CMD_EJECT_MEDIA:Ljava/lang/String; = "eject_media:"

.field private static final VOLD_CMD_ENABLE_UMS:Ljava/lang/String; = "enable_ums"

.field private static final VOLD_CMD_FORMAT_MEDIA:Ljava/lang/String; = "format_media:"

.field private static final VOLD_CMD_MOUNTED_VOLUMES:Ljava/lang/String; = "mounted_volumes:"

.field private static final VOLD_CMD_MOUNT_VOLUME:Ljava/lang/String; = "mount_volume:"

.field private static final VOLD_CMD_SEND_UMS_STATUS:Ljava/lang/String; = "send_ums_status"

.field private static final VOLD_EVT_BAD_REMOVAL:Ljava/lang/String; = "volume_badremoval:"

.field private static final VOLD_EVT_CHECKING:Ljava/lang/String; = "volume_checking:"

.field private static final VOLD_EVT_DAMAGED:Ljava/lang/String; = "volume_damaged:"

.field private static final VOLD_EVT_EJECTING:Ljava/lang/String; = "volume_ejecting:"

.field private static final VOLD_EVT_MOUNTED:Ljava/lang/String; = "volume_mounted:"

.field private static final VOLD_EVT_MOUNTED_RO:Ljava/lang/String; = "volume_mounted_ro:"

.field private static final VOLD_EVT_NOFS:Ljava/lang/String; = "volume_nofs:"

.field private static final VOLD_EVT_NOMEDIA:Ljava/lang/String; = "volume_nomedia:"

.field private static final VOLD_EVT_SPEED_MISMATCH:Ljava/lang/String; = "speed_mismatch:"

.field private static final VOLD_EVT_UMS:Ljava/lang/String; = "volume_ums"

.field private static final VOLD_EVT_UMS_CONNECTED:Ljava/lang/String; = "ums_connected"

.field private static final VOLD_EVT_UMS_DISABLED:Ljava/lang/String; = "ums_disabled"

.field private static final VOLD_EVT_UMS_DISCONNECTED:Ljava/lang/String; = "ums_disconnected"

.field private static final VOLD_EVT_UMS_ENABLED:Ljava/lang/String; = "ums_enabled"

.field private static final VOLD_EVT_UNMOUNTED:Ljava/lang/String; = "volume_unmounted:"

.field private static final VOLD_SOCKET:Ljava/lang/String; = "vold"


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;

.field private mService:Lcom/android/server/MountService;

.field private mUmsConnected:Z

.field private mUmsEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    .line 101
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    const-string v2, "MountListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 112
    .local v0, colonIndex:I
    if-lez v0, :cond_34

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 114
    .local v1, path:Ljava/lang/String;
    :goto_29
    const-string v2, "ums_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 115
    iput-boolean v6, p0, Lcom/android/server/MountListener;->mUmsEnabled:Z

    .line 150
    :cond_33
    :goto_33
    return-void

    .line 112
    .end local v1           #path:Ljava/lang/String;
    :cond_34
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_29

    .line 116
    .restart local v1       #path:Ljava/lang/String;
    :cond_37
    const-string v2, "ums_disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 117
    iput-boolean v5, p0, Lcom/android/server/MountListener;->mUmsEnabled:Z

    goto :goto_33

    .line 118
    :cond_42
    const-string v2, "ums_connected"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 119
    iput-boolean v6, p0, Lcom/android/server/MountListener;->mUmsConnected:Z

    .line 120
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2}, Lcom/android/server/MountService;->notifyUmsConnected()V

    goto :goto_33

    .line 121
    :cond_52
    const-string v2, "ums_disconnected"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 122
    iput-boolean v5, p0, Lcom/android/server/MountListener;->mUmsConnected:Z

    .line 123
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2}, Lcom/android/server/MountService;->notifyUmsDisconnected()V

    goto :goto_33

    .line 124
    :cond_62
    const-string v2, "volume_nomedia:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 125
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaRemoved(Ljava/lang/String;)V

    goto :goto_33

    .line 126
    :cond_70
    const-string v2, "volume_unmounted:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 127
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaUnmounted(Ljava/lang/String;)V

    goto :goto_33

    .line 128
    :cond_7e
    const-string v2, "volume_checking:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 129
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaChecking(Ljava/lang/String;)V

    goto :goto_33

    .line 130
    :cond_8c
    const-string v2, "volume_nofs:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 131
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaNoFs(Ljava/lang/String;)V

    goto :goto_33

    .line 132
    :cond_9a
    const-string v2, "volume_mounted:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 133
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/MountService;->notifyMediaMounted(Ljava/lang/String;Z)V

    goto :goto_33

    .line 134
    :cond_a8
    const-string v2, "volume_mounted_ro:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 135
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1, v6}, Lcom/android/server/MountService;->notifyMediaMounted(Ljava/lang/String;Z)V

    goto/16 :goto_33

    .line 136
    :cond_b7
    const-string v2, "volume_ums"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 137
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaShared(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 138
    :cond_c6
    const-string v2, "volume_badremoval:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 139
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaBadRemoval(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaEject(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 143
    :cond_da
    const-string v2, "volume_damaged:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 144
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaUnmountable(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 145
    :cond_e9
    const-string v2, "volume_ejecting:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 146
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifyMediaEject(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 147
    :cond_f8
    const-string v2, "speed_mismatch:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 148
    iget-object v2, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->notifySpeedMismatch(Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private listenToSocket()V
    .registers 15

    .prologue
    const-string v13, "MountListener"

    .line 194
    const/4 v8, 0x0

    .line 197
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_3
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_8b

    .line 198
    .end local v8           #socket:Landroid/net/LocalSocket;
    .local v9, socket:Landroid/net/LocalSocket;
    :try_start_8
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "vold"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 201
    .local v0, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 203
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 204
    .local v7, inputStream:Ljava/io/InputStream;
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountListener;->mOutputStream:Ljava/io/OutputStream;

    .line 213
    const/16 v11, 0x200

    new-array v1, v11, [B

    .line 215
    .local v1, buffer:[B
    const-string v11, "send_ums_status"

    invoke-direct {p0, v11}, Lcom/android/server/MountListener;->writeCommand(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/MountListener;->mountMedia(Ljava/lang/String;)V

    .line 219
    :cond_32
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_35} :catch_8d

    move-result v2

    .line 220
    .local v2, count:I
    if-gez v2, :cond_5e

    move-object v8, v9

    .line 238
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :goto_39
    monitor-enter p0

    .line 239
    :try_start_3a
    iget-object v11, p0, Lcom/android/server/MountListener;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_7f

    if-eqz v11, :cond_46

    .line 241
    :try_start_3e
    iget-object v11, p0, Lcom/android/server/MountListener;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_75

    .line 246
    :goto_43
    const/4 v11, 0x0

    :try_start_44
    iput-object v11, p0, Lcom/android/server/MountListener;->mOutputStream:Ljava/io/OutputStream;

    .line 248
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_7f

    .line 251
    if-eqz v8, :cond_4c

    .line 252
    :try_start_49
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_82

    .line 265
    :cond_4c
    :goto_4c
    const-string v11, "MountListener"

    const-string v11, "Failed to connect to vold"

    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-direct {v12}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v13, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const-wide/16 v11, 0x7d0

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 267
    return-void

    .line 222
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :cond_5e
    const/4 v10, 0x0

    .line 223
    .local v10, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_60
    if-ge v6, v2, :cond_32

    .line 224
    :try_start_62
    aget-byte v11, v1, v6

    if-nez v11, :cond_72

    .line 225
    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 226
    .local v4, event:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/MountListener;->handleEvent(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_70} :catch_8d

    .line 227
    add-int/lit8 v10, v6, 0x1

    .line 223
    .end local v4           #event:Ljava/lang/String;
    :cond_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 242
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #i:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .end local v10           #start:I
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_75
    move-exception v11

    move-object v3, v11

    .line 243
    .local v3, e:Ljava/io/IOException;
    :try_start_77
    const-string v11, "MountListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 248
    .end local v3           #e:Ljava/io/IOException;
    :catchall_7f
    move-exception v11

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7f

    throw v11

    .line 254
    :catch_82
    move-exception v5

    .line 255
    .local v5, ex:Ljava/io/IOException;
    const-string v11, "MountListener"

    const-string v11, "IOException closing socket"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 231
    .end local v5           #ex:Ljava/io/IOException;
    :catch_8b
    move-exception v11

    goto :goto_39

    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :catch_8d
    move-exception v11

    move-object v8, v9

    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    goto :goto_39
.end method

.method private writeCommand(Ljava/lang/String;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountListener;->writeCommand2(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private writeCommand2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "command"
    .parameter "argument"

    .prologue
    const-string v2, "MountListener"

    .line 169
    monitor-enter p0

    .line 170
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountListener;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_15

    .line 171
    const-string v2, "MountListener"

    const-string v3, "No connection to vold"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :goto_13
    monitor-exit p0

    .line 186
    return-void

    .line 173
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1f

    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1f
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3b

    .line 180
    :try_start_23
    iget-object v2, p0, Lcom/android/server/MountListener;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_31

    goto :goto_13

    .line 181
    :catch_31
    move-exception v2

    move-object v1, v2

    .line 182
    .local v1, ex:Ljava/io/IOException;
    :try_start_33
    const-string v2, "MountListener"

    const-string v3, "IOException in writeCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 185
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_3b
    move-exception v2

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw v2
.end method


# virtual methods
.method public ejectMedia(Ljava/lang/String;)V
    .registers 3
    .parameter "mountPoint"

    .prologue
    .line 327
    const-string v0, "eject_media:"

    invoke-direct {p0, v0, p1}, Lcom/android/server/MountListener;->writeCommand2(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public formatMedia(Ljava/lang/String;)V
    .registers 3
    .parameter "mountPoint"

    .prologue
    .line 334
    const-string v0, "format_media:"

    invoke-direct {p0, v0, p1}, Lcom/android/server/MountListener;->writeCommand2(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method getMassStorageConnected()Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/server/MountListener;->mUmsConnected:Z

    return v0
.end method

.method getMassStorageEnabled()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/MountListener;->mUmsEnabled:Z

    return v0
.end method

.method public mountMedia(Ljava/lang/String;)V
    .registers 3
    .parameter "mountPoint"

    .prologue
    .line 320
    const-string v0, "mount_volume:"

    invoke-direct {p0, v0, p1}, Lcom/android/server/MountListener;->writeCommand2(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 274
    const-string v1, "simulator"

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 275
    const-string v1, "EXTERNAL_STORAGE_STATE"

    const-string v2, "mounted"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/server/MountListener;->mService:Lcom/android/server/MountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/MountService;->notifyMediaMounted(Ljava/lang/String;Z)V

    .line 291
    :goto_23
    return-void

    .line 285
    :cond_24
    :goto_24
    :try_start_24
    invoke-direct {p0}, Lcom/android/server/MountListener;->listenToSocket()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_24

    .line 287
    :catch_28
    move-exception v0

    .line 289
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MountListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in MountListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method setMassStorageEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 306
    if-eqz p1, :cond_8

    const-string v0, "enable_ums"

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/server/MountListener;->writeCommand(Ljava/lang/String;)V

    .line 307
    return-void

    .line 306
    :cond_8
    const-string v0, "disable_ums"

    goto :goto_4
.end method
