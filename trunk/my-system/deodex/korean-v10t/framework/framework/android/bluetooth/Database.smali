.class public final Landroid/bluetooth/Database;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field private static mInstance:Landroid/bluetooth/Database; = null

.field private static final sLogName:Ljava/lang/String; = "android.bluetooth.Database"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 50
    invoke-static {}, Landroid/bluetooth/Database;->classInitNative()V

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Landroid/bluetooth/Database;->initializeNativeDataNative()V

    .line 59
    return-void
.end method

.method private native addServiceRecordFromXmlNative(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native addServiceRecordNative([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method public static declared-synchronized getInstance()Landroid/bluetooth/Database;
    .registers 2

    .prologue
    .line 76
    const-class v0, Landroid/bluetooth/Database;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/bluetooth/Database;->mInstance:Landroid/bluetooth/Database;

    if-nez v1, :cond_e

    .line 77
    new-instance v1, Landroid/bluetooth/Database;

    invoke-direct {v1}, Landroid/bluetooth/Database;-><init>()V

    sput-object v1, Landroid/bluetooth/Database;->mInstance:Landroid/bluetooth/Database;

    .line 79
    :cond_e
    sget-object v1, Landroid/bluetooth/Database;->mInstance:Landroid/bluetooth/Database;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native removeServiceRecordNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native updateServiceRecordFromXmlNative(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native updateServiceRecordNative(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized addServiceRecord([B)I
    .registers 6
    .parameter "record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/bluetooth/Database;->addServiceRecordNative([B)I

    move-result v0

    .line 137
    .local v0, handle:I
    const-string v1, "android.bluetooth.Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added SDP record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 138
    monitor-exit p0

    return v0

    .line 136
    .end local v0           #handle:I
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addServiceRecordFromXml(Ljava/lang/String;)I
    .registers 6
    .parameter "record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/bluetooth/Database;->addServiceRecordFromXmlNative(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, handle:I
    const-string v1, "android.bluetooth.Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added SDP record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 151
    monitor-exit p0

    return v0

    .line 149
    .end local v0           #handle:I
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public advertiseRfcommService(Landroid/bluetooth/RfcommSocket;Ljava/lang/String;Ljava/util/UUID;)I
    .registers 12
    .parameter "socket"
    .parameter "serviceName"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "\"/>\n"

    const-string v6, "    </sequence>\n"

    const-string v5, "      <sequence>\n"

    const-string v4, "      </sequence>\n"

    const-string v3, "  </attribute>\n"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<record>\n  <attribute id=\"0x0001\">\n    <sequence>\n      <uuid value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    </sequence>\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  </attribute>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <attribute id=\"0x0004\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    <sequence>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      <sequence>\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        <uuid value=\"0x0100\"/>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      </sequence>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      <sequence>\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        <uuid value=\"0x0003\"/>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        <uint8 value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/RfcommSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" name=\"channel\"/>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      </sequence>\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    </sequence>\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  </attribute>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <attribute id=\"0x0100\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    <text value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  </attribute>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</record>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, xmlRecord:Ljava/lang/String;
    const-string v1, "android.bluetooth.Database"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, v0}, Landroid/bluetooth/Database;->addServiceRecordFromXml(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/Database;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    return-void

    .line 66
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized removeServiceRecord(I)V
    .registers 5
    .parameter "handle"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/bluetooth/Database;->removeServiceRecordNative(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 198
    :goto_4
    monitor-exit p0

    return-void

    .line 195
    :catch_6
    move-exception v0

    .line 196
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_4

    .line 194
    .end local v0           #e:Ljava/io/IOException;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateServiceRecord(I[B)V
    .registers 6
    .parameter "handle"
    .parameter "record"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/Database;->updateServiceRecordNative(I[B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 167
    :goto_4
    monitor-exit p0

    return-void

    .line 164
    :catch_6
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_4

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateServiceRecordFromXml(ILjava/lang/String;)V
    .registers 6
    .parameter "handle"
    .parameter "record"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/Database;->updateServiceRecordFromXmlNative(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 182
    :goto_4
    monitor-exit p0

    return-void

    .line 179
    :catch_6
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_4

    .line 178
    .end local v0           #e:Ljava/io/IOException;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method
