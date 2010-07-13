.class public final Lcom/android/server/LGESystemService;
.super Landroid/os/ILGESystemService$Stub;
.source "LGESystemService.java"


# static fields
.field private static COMMAND_DIR:Ljava/io/File; = null

.field private static final EVENT_SET_NV_GCFFLAG_COMPLETED:I = 0x64

.field private static final GCF_Off:I = 0x0

.field static final TAG:Ljava/lang/String; = "LGESystemService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mLGESystemBridge:Lcom/android/server/LGESystemBridge;

.field private mMasterClearReceiver:Lcom/android/server/MasterClearReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/nv"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/LGESystemService;->COMMAND_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/ILGESystemService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/LGESystemService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Lcom/android/server/MasterClearReceiver;

    invoke-direct {v1, p1}, Lcom/android/server/MasterClearReceiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/LGESystemService;->mMasterClearReceiver:Lcom/android/server/MasterClearReceiver;

    .line 55
    new-instance v0, Lcom/android/server/LGESystemBridge;

    invoke-direct {v0}, Lcom/android/server/LGESystemBridge;-><init>()V

    .line 57
    .local v0, tempLGESystemBridge:Lcom/android/server/LGESystemBridge;
    invoke-virtual {v0}, Lcom/android/server/LGESystemBridge;->ping()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 58
    iput-object v0, p0, Lcom/android/server/LGESystemService;->mLGESystemBridge:Lcom/android/server/LGESystemBridge;

    .line 63
    :goto_1f
    return-void

    .line 60
    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LGESystemService;->mLGESystemBridge:Lcom/android/server/LGESystemBridge;

    goto :goto_1f
.end method

.method private write2CommandFile(Ljava/lang/String;)Z
    .registers 4
    .parameter "arg"

    .prologue
    .line 171
    const-string v0, "command"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LGESystemService;->write2CommandFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private write2CommandFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .parameter "file_name"
    .parameter "arg"
    .parameter "create_option"

    .prologue
    const/4 v8, 0x0

    const-string v7, "LGESystemService"

    .line 180
    sget-object v5, Lcom/android/server/LGESystemService;->COMMAND_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 181
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/LGESystemService;->COMMAND_DIR:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v4, file:Ljava/io/File;
    if-nez p3, :cond_31

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_31

    .line 184
    const-string v5, "LGESystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write2CommandFile() the file does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 206
    :goto_30
    return v5

    .line 187
    :cond_31
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 188
    const/4 v0, 0x0

    .line 191
    .local v0, command:Ljava/io/FileWriter;
    :try_start_35
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_47

    .line 193
    .end local v0           #command:Ljava/io/FileWriter;
    .local v1, command:Ljava/io/FileWriter;
    :try_start_3a
    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 194
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_8a

    .line 206
    const/4 v5, 0x1

    goto :goto_30

    .line 196
    .end local v1           #command:Ljava/io/FileWriter;
    .restart local v0       #command:Ljava/io/FileWriter;
    :catch_47
    move-exception v5

    move-object v2, v5

    .line 197
    .local v2, e1:Ljava/lang/Exception;
    :goto_49
    const-string v5, "LGESystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write2CommandFile() write failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v0, :cond_6a

    .line 200
    :try_start_67
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6c

    :cond_6a
    :goto_6a
    move v5, v8

    .line 204
    goto :goto_30

    .line 201
    :catch_6c
    move-exception v3

    .line 202
    .local v3, e2:Ljava/lang/Exception;
    const-string v5, "LGESystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write2CommandFile() close failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 196
    .end local v0           #command:Ljava/io/FileWriter;
    .end local v2           #e1:Ljava/lang/Exception;
    .end local v3           #e2:Ljava/lang/Exception;
    .restart local v1       #command:Ljava/io/FileWriter;
    :catch_8a
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .end local v1           #command:Ljava/io/FileWriter;
    .restart local v0       #command:Ljava/io/FileWriter;
    goto :goto_49
.end method


# virtual methods
.method public clearUserData()V
    .registers 5

    .prologue
    const-string v3, "LGESystemService"

    .line 66
    iget-object v1, p0, Lcom/android/server/LGESystemService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 68
    const-string v1, "LGESystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t invoke masterClear from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_3c
    :goto_3c
    return-void

    .line 75
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/LGESystemService;->resetRTC()V

    .line 78
    const-string v1, "wipedata"

    invoke-direct {p0, v1}, Lcom/android/server/LGESystemService;->write2CommandFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 79
    const-string v1, "LGESystemService"

    const-string v1, "clearUserData() Wipe userdata..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    .line 82
    .local v0, pm:Lcom/android/server/PowerManagerService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleep(J)V

    .line 83
    const-string v1, "Erase User Data"

    invoke-virtual {v0, v1}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public completeFactoryReset()V
    .registers 6

    .prologue
    const-string v4, "LGESystemService"

    .line 128
    iget-object v1, p0, Lcom/android/server/LGESystemService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 130
    const-string v1, "LGESystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t invoke masterClear from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_3c
    return-void

    .line 136
    :cond_3d
    const-string v1, "frst_flag"

    const-string v2, "ok"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/LGESystemService;->write2CommandFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 138
    .local v0, bResult:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    .line 139
    const-string v1, "LGESystemService"

    const-string v1, "completeFactoryReset()"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 141
    :cond_51
    const-string v1, "LGESystemService"

    const-string v1, "completeFactoryReset() failed"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public factoryReset()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const-string v4, "LGESystemService"

    .line 88
    iget-object v2, p0, Lcom/android/server/LGESystemService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3e

    .line 90
    const-string v2, "LGESystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t invoke masterClear from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_3d
    return-void

    .line 98
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/LGESystemService;->resetRTC()V

    .line 101
    const/4 v1, 0x1

    .line 102
    .local v1, result:I
    const-string v2, "factoryreset"

    invoke-direct {p0, v2}, Lcom/android/server/LGESystemService;->write2CommandFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 104
    const-string v2, "frst_flag"

    const-string v3, "nok"

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/LGESystemService;->write2CommandFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    const-string v2, "LGESystemService"

    const-string v2, "factoryReset() Delete all data..."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/server/LGESystemService;->mLGESystemBridge:Lcom/android/server/LGESystemBridge;

    invoke-virtual {v2}, Lcom/android/server/LGESystemBridge;->factoryReset()I

    move-result v1

    .line 111
    if-ne v1, v5, :cond_88

    .line 112
    const-string v2, "LGESystemService"

    const-string v2, "RunFactoryReset() Delete all data... completed."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v2, "complete_frst"

    invoke-direct {p0, v2}, Lcom/android/server/LGESystemService;->write2CommandFile(Ljava/lang/String;)Z

    .line 119
    :goto_6c
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    .line 120
    .local v0, pm:Lcom/android/server/PowerManagerService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/PowerManagerService;->goToSleep(J)V

    .line 121
    const-string v2, "Factory Reset"

    invoke-virtual {v0, v2}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    .line 124
    .end local v0           #pm:Lcom/android/server/PowerManagerService;
    :cond_80
    const-string v2, "LGESystemService"

    const-string v2, "factoryReset() failed"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 115
    :cond_88
    const-string v2, "LGESystemService"

    const-string v2, "RunFactoryReset() Delete all data... failed. It\'ll be recovered in boot time."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method public resetRTC()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0x7d9

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 153
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 154
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 155
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 156
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 158
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 160
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_34

    .line 161
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 163
    :cond_34
    return-void
.end method
