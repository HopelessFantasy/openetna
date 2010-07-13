.class public Lcom/android/server/vpn/VpnServiceBinder;
.super Landroid/app/Service;
.source "VpnServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/VpnServiceBinder$4;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final STATES_FILE_PATH:Ljava/lang/String; = "/data/misc/vpn/.states"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mService:Lcom/android/server/vpn/VpnService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vpn/VpnServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Lcom/android/server/vpn/VpnServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/vpn/VpnServiceBinder$1;-><init>(Lcom/android/server/vpn/VpnServiceBinder;)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vpn/VpnServiceBinder;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/vpn/VpnServiceBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/vpn/VpnServiceBinder;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnServiceBinder;->checkStatus(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method private broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    .registers 4
    .parameter "name"
    .parameter "s"

    .prologue
    .line 176
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p0}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V

    .line 177
    return-void
.end method

.method private checkSavedStates()V
    .registers 6

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/misc/vpn/.states"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vpn/VpnService;

    iput-object v2, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 138
    iget-object v2, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v2, p0}, Lcom/android/server/vpn/VpnService;->recover(Lcom/android/server/vpn/VpnServiceBinder;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1c} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 146
    .end local v1           #ois:Ljava/io/ObjectInputStream;
    :goto_1c
    return-void

    .line 142
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 143
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "VpnServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recovery error, remove states: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnServiceBinder;->removeStates()V

    goto :goto_1c

    .line 140
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v2

    goto :goto_1c
.end method

.method private declared-synchronized checkStatus(Landroid/net/vpn/VpnProfile;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 127
    :cond_17
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_30

    .line 131
    :goto_20
    monitor-exit p0

    return-void

    .line 129
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService;->getState()Landroid/net/vpn/VpnState;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_30

    goto :goto_20

    .line 125
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "p"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 110
    :goto_6
    monitor-exit p0

    return v1

    .line 103
    :cond_8
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnServiceBinder;->createService(Landroid/net/vpn/VpnProfile;)Lcom/android/server/vpn/VpnService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 105
    .local v0, s:Lcom/android/server/vpn/VpnService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/vpn/VpnServiceBinder$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/vpn/VpnServiceBinder$2;-><init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1d

    .line 110
    const/4 v1, 0x1

    goto :goto_6

    .line 102
    .end local v0           #s:Lcom/android/server/vpn/VpnService;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private createService(Landroid/net/vpn/VpnProfile;)Lcom/android/server/vpn/VpnService;
    .registers 8
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/vpn/VpnProfile;",
            ")",
            "Lcom/android/server/vpn/VpnService",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v4, Lcom/android/server/vpn/VpnServiceBinder$4;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_42

    .line 171
    const/4 v4, 0x0

    .end local p1
    :goto_10
    return-object v4

    .line 151
    .restart local p1
    :pswitch_11
    new-instance v0, Lcom/android/server/vpn/L2tpService;

    invoke-direct {v0}, Lcom/android/server/vpn/L2tpService;-><init>()V

    .line 152
    .local v0, l2tp:Lcom/android/server/vpn/L2tpService;
    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-virtual {v0, p0, p1}, Lcom/android/server/vpn/L2tpService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v0

    .line 153
    goto :goto_10

    .line 156
    .end local v0           #l2tp:Lcom/android/server/vpn/L2tpService;
    .restart local p1
    :pswitch_1d
    new-instance v2, Lcom/android/server/vpn/PptpService;

    invoke-direct {v2}, Lcom/android/server/vpn/PptpService;-><init>()V

    .line 157
    .local v2, pptp:Lcom/android/server/vpn/PptpService;
    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-virtual {v2, p0, p1}, Lcom/android/server/vpn/PptpService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v2

    .line 158
    goto :goto_10

    .line 161
    .end local v2           #pptp:Lcom/android/server/vpn/PptpService;
    .restart local p1
    :pswitch_29
    new-instance v3, Lcom/android/server/vpn/L2tpIpsecPskService;

    invoke-direct {v3}, Lcom/android/server/vpn/L2tpIpsecPskService;-><init>()V

    .line 162
    .local v3, psk:Lcom/android/server/vpn/L2tpIpsecPskService;
    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-virtual {v3, p0, p1}, Lcom/android/server/vpn/L2tpIpsecPskService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v3

    .line 163
    goto :goto_10

    .line 166
    .end local v3           #psk:Lcom/android/server/vpn/L2tpIpsecPskService;
    .restart local p1
    :pswitch_35
    new-instance v1, Lcom/android/server/vpn/L2tpIpsecService;

    invoke-direct {v1}, Lcom/android/server/vpn/L2tpIpsecService;-><init>()V

    .line 167
    .local v1, l2tpIpsec:Lcom/android/server/vpn/L2tpIpsecService;
    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-virtual {v1, p0, p1}, Lcom/android/server/vpn/L2tpIpsecService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v4, v1

    .line 168
    goto :goto_10

    .line 149
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
        :pswitch_29
        :pswitch_35
    .end packed-switch
.end method

.method private declared-synchronized disconnect()V
    .registers 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v1, :cond_7

    .line 122
    :goto_5
    monitor-exit p0

    return-void

    .line 115
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 117
    .local v0, s:Lcom/android/server/vpn/VpnService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/vpn/VpnServiceBinder$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/vpn/VpnServiceBinder$3;-><init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 114
    .end local v0           #s:Lcom/android/server/vpn/VpnService;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/vpn/VpnServiceBinder;->checkSavedStates()V

    .line 71
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 77
    return-void
.end method

.method removeStates()V
    .registers 5

    .prologue
    .line 94
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/vpn/.states"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 98
    :goto_a
    return-void

    .line 95
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "VpnServiceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     remove states: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method saveStates()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v1, "VpnServiceBinder"

    const-string v2, "     saving states"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/misc/vpn/.states"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v0, oos:Ljava/io/ObjectOutputStream;
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 90
    return-void
.end method
