.class abstract Lcom/android/server/vpn/VpnService;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/VpnService$NotificationHelper;,
        Lcom/android/server/vpn/VpnService$DaemonHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Landroid/net/vpn/VpnProfile;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final AUTH_ERROR_CODE:I = 0x33

.field private static final CHALLENGE_ERROR_CODE:I = 0x5

.field private static final DBG:Z = true

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final REMOTE_HUNG_UP_ERROR_CODE:I = 0x7

.field private static final REMOTE_IP:Ljava/lang/String; = "net.ipremote"

.field private static final VPN_DNS1:Ljava/lang/String; = "vpn.dns1"

.field private static final VPN_DNS2:Ljava/lang/String; = "vpn.dns2"

.field private static final VPN_IS_DOWN:Ljava/lang/String; = "down"

.field private static final VPN_IS_UP:Ljava/lang/String; = "ok"

.field private static final VPN_STATUS:Ljava/lang/String; = "vpn.status"

.field protected static final serialVersionUID:J = 0x1L


# instance fields
.field private final TAG:Ljava/lang/String;

.field transient mContext:Lcom/android/server/vpn/VpnServiceBinder;

.field private mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<TE;>.DaemonHelper;"
        }
    .end annotation
.end field

.field private mError:Ljava/lang/Throwable;

.field private mLocalIf:Ljava/lang/String;

.field private mLocalIp:Ljava/lang/String;

.field private transient mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<TE;>.NotificationHelper;"
        }
    .end annotation
.end field

.field private mOriginalDns1:Ljava/lang/String;

.field private mOriginalDns2:Ljava/lang/String;

.field private mOriginalDomainSuffices:Ljava/lang/String;

.field mProfile:Landroid/net/vpn/VpnProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mState:Landroid/net/vpn/VpnState;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 43
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v0, Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    .line 70
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    .line 83
    new-instance v0, Lcom/android/server/vpn/VpnService$DaemonHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vpn/VpnService$DaemonHelper;-><init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;

    .line 489
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vpn/VpnService;)Landroid/net/vpn/VpnState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vpn/VpnService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->checkConnectivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/vpn/VpnService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->checkDns()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vpn/VpnService;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/vpn/VpnService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/server/vpn/VpnService;->mStartTime:J

    return-wide v0
.end method

.method private anyError()Z
    .registers 2

    .prologue
    .line 270
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private broadcastConnectivity(Landroid/net/vpn/VpnState;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 322
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v1, Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {v1, v2}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    .line 323
    .local v1, m:Landroid/net/vpn/VpnManager;
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    .line 324
    .local v0, err:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne p1, v2, :cond_56

    if-eqz v0, :cond_56

    .line 325
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1e

    .line 326
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 341
    .end local v0           #err:Ljava/lang/Throwable;
    :goto_1d
    return-void

    .line 328
    .restart local v0       #err:Ljava/lang/Throwable;
    :cond_1e
    instance-of v2, v0, Lcom/android/server/vpn/VpnConnectingError;

    if-eqz v2, :cond_32

    .line 329
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/server/vpn/VpnConnectingError;

    .end local v0           #err:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/server/vpn/VpnConnectingError;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_1d

    .line 331
    .restart local v0       #err:Ljava/lang/Throwable;
    :cond_32
    const-string v2, "ok"

    const-string v3, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 332
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_1d

    .line 335
    :cond_4b
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_1d

    .line 339
    :cond_56
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V

    goto :goto_1d
.end method

.method private checkConnectivity()Z
    .registers 3

    .prologue
    .line 385
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$DaemonHelper;->anyDaemonStopped()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->isLocalIpChanged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 386
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connectivity lost"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private checkDns()V
    .registers 4

    .prologue
    .line 394
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v2, "net.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, dns1:Ljava/lang/String;
    const-string v2, "vpn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, vpnDns1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 398
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->setVpnDns()V

    .line 400
    :cond_1d
    return-void
.end method

.method private isLocalIpChanged()Z
    .registers 8

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/4 v6, 0x1

    .line 404
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 405
    .local v2, localIp:Ljava/net/InetAddress;
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 407
    .local v1, localIf:Ljava/net/NetworkInterface;
    if-eqz v1, :cond_19

    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 408
    :cond_19
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       local If changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3d} :catch_41

    move v3, v6

    .line 416
    .end local v1           #localIf:Ljava/net/NetworkInterface;
    .end local v2           #localIp:Ljava/net/InetAddress;
    :goto_3e
    return v3

    .line 412
    .restart local v1       #localIf:Ljava/net/NetworkInterface;
    .restart local v2       #localIp:Ljava/net/InetAddress;
    :cond_3f
    const/4 v3, 0x0

    goto :goto_3e

    .line 414
    .end local v1           #localIf:Ljava/net/NetworkInterface;
    .end local v2           #localIp:Ljava/net/InetAddress;
    :catch_41
    move-exception v3

    move-object v0, v3

    .line 415
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v4, "isLocalIpChanged()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v6

    .line 416
    goto :goto_3e
.end method

.method private onBeforeConnect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v3, "vpn.status"

    const-string v2, ""

    .line 193
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 195
    const-string v0, "vpn.dns1"

    const-string v1, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "vpn.dns2"

    const-string v1, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "vpn.status"

    const-string v0, "down"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       VPN UP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method private declared-synchronized onConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$DaemonHelper;->closeSockets()V

    .line 231
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveOriginalDns()V

    .line 232
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveAndSetDomainSuffices()V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vpn/VpnService;->mStartTime:J

    .line 240
    sget-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveSelf()V

    .line 242
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->setVpnDns()V

    .line 244
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 245
    monitor-exit p0

    return-void

    .line 228
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onError(I)V
    .registers 3
    .parameter "errorCode"

    .prologue
    .line 188
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Lcom/android/server/vpn/VpnConnectingError;

    invoke-direct {v0, p1}, Lcom/android/server/vpn/VpnConnectingError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method private onError(Ljava/lang/Throwable;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 178
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_1c

    .line 179
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   multiple errors occur, record the last one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1c
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onError()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->onDisconnect()V

    .line 185
    return-void
.end method

.method private declared-synchronized onFinalCleanUp()V
    .registers 3

    .prologue
    .line 252
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onFinalCleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_38

    if-ne v0, v1, :cond_10

    .line 267
    :goto_e
    monitor-exit p0

    return-void

    .line 257
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->anyError()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 259
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->restoreOriginalDns()V

    .line 260
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->restoreOriginalDomainSuffices()V

    .line 261
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 264
    const-string v0, "vpn.status"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnServiceBinder;->removeStates()V

    .line 266
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnServiceBinder;->stopSelf()V
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_38

    goto :goto_e

    .line 252
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreOriginalDns()V
    .registers 11

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "net.dns2"

    const-string v5, "net.dns1"

    .line 275
    const-string v1, "vpn.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, vpnDns1:Ljava/lang/String;
    const-string v1, "net.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 277
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "restore original dns prop: %s --> %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "net.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "restore original dns prop: %s --> %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "net.dns2"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "net.dns1"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "net.dns2"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_59
    return-void
.end method

.method private restoreOriginalDomainSuffices()V
    .registers 4

    .prologue
    .line 312
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore original suffices --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "net.dns.search"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private saveAndSetDomainSuffices()V
    .registers 6

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v4, "net.dns.search"

    .line 303
    const-string v1, "net.dns.search"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save original suffices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, list:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 307
    const-string v1, "net.dns.search"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_35
    return-void
.end method

.method private saveLocalIpAndInterface(Ljava/lang/String;)V
    .registers 9
    .parameter "serverIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    .line 369
    .local v3, s:Ljava/net/DatagramSocket;
    const/16 v2, 0x50

    .line 370
    .local v2, port:I
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 371
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 372
    .local v1, localIp:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    .line 373
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 374
    .local v0, localIf:Ljava/net/NetworkInterface;
    if-nez v0, :cond_31

    const/4 v4, 0x0

    :goto_1f
    iput-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    .line 375
    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 376
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Local interface is empty!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 374
    :cond_31
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    .line 379
    :cond_36
    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Local IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", if: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method private saveOriginalDns()V
    .registers 6

    .prologue
    .line 287
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v0, "net.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    .line 288
    const-string v0, "net.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "save original dns prop: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private saveSelf()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnServiceBinder;->saveStates()V

    .line 249
    return-void
.end method

.method private setState(Landroid/net/vpn/VpnState;)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 317
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService;->broadcastConnectivity(Landroid/net/vpn/VpnState;)V

    .line 319
    return-void
.end method

.method private setVpnDns()V
    .registers 7

    .prologue
    .line 294
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v2, "vpn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, vpnDns1:Ljava/lang/String;
    const-string v2, "vpn.dns2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, vpnDns2:Ljava/lang/String;
    const-string v2, "net.dns1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "net.dns2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v3, "set vpn dns prop: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private startConnectivityMonitor()V
    .registers 3

    .prologue
    .line 344
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/vpn/VpnService$1;

    invoke-direct {v1, p0}, Lcom/android/server/vpn/VpnService$1;-><init>(Lcom/android/server/vpn/VpnService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 365
    return-void
.end method

.method private waitUntilConnectedOrTimedout()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->sleep(I)V

    .line 205
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_10

    .line 206
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    if-eq v2, v3, :cond_21

    .line 222
    :cond_10
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    if-ne v2, v3, :cond_20

    .line 223
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connecting timed out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 225
    :cond_20
    :goto_20
    return-void

    .line 208
    :cond_21
    const-string v2, "ok"

    const-string v3, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 210
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onConnected()V

    goto :goto_20

    .line 213
    :cond_33
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;

    invoke-virtual {v2}, Lcom/android/server/vpn/VpnService$DaemonHelper;->getSocketError()I

    move-result v0

    .line 214
    .local v0, err:I
    if-eqz v0, :cond_3f

    .line 215
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(I)V

    goto :goto_20

    .line 219
    :cond_3f
    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->sleep(I)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method


# virtual methods
.method protected abstract connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProfile()Landroid/net/vpn/VpnProfile;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method getState()Landroid/net/vpn/VpnState;
    .registers 2

    .prologue
    .line 141
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    return-object v0
.end method

.method declared-synchronized onConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 146
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    sget-object v2, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->stopPreviouslyRunDaemons()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, serverIp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService;->saveLocalIpAndInterface(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onBeforeConnect()V

    .line 152
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/vpn/VpnService;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->waitUntilConnectedOrTimedout()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_24

    .line 154
    const/4 v2, 0x1

    .line 157
    .end local v1           #serverIp:Ljava/lang/String;
    :goto_22
    monitor-exit p0

    return v2

    .line 155
    :catch_24
    move-exception v2

    move-object v0, v2

    .line 156
    .local v0, e:Ljava/lang/Throwable;
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    .line 157
    const/4 v2, 0x0

    goto :goto_22

    .line 146
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onDisconnect()V
    .registers 4

    .prologue
    .line 163
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "disconnecting VPN..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;->showDisconnect()V

    .line 167
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService$DaemonHelper;->stopAll()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_1c

    .line 171
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_29

    .line 173
    :goto_1a
    monitor-exit p0

    return-void

    .line 168
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 169
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "onDisconnect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2c

    .line 171
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 163
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1

    .line 171
    :catchall_2c
    move-exception v1

    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V

    throw v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_29
.end method

.method recover(Lcom/android/server/vpn/VpnServiceBinder;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 131
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    .line 132
    new-instance v0, Lcom/android/server/vpn/VpnService$NotificationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;-><init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    .line 134
    sget-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 135
    const-string v0, "VpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     recovered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V

    .line 138
    :cond_35
    return-void
.end method

.method setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vpn/VpnServiceBinder;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    .local p2, profile:Landroid/net/vpn/VpnProfile;,"TE;"
    iput-object p2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/vpn/VpnService;->recover(Lcom/android/server/vpn/VpnServiceBinder;)V

    .line 128
    return-void
.end method

.method protected sleep(I)V
    .registers 4
    .parameter "ms"

    .prologue
    .line 422
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    .line 425
    :goto_7
    return-void

    .line 423
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method protected startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;
    .registers 3
    .parameter "daemonName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemonHelper:Lcom/android/server/vpn/VpnService$DaemonHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/vpn/VpnService$DaemonHelper;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v0

    return-object v0
.end method

.method protected stopDaemon(Ljava/lang/String;)V
    .registers 3
    .parameter "daemonName"

    .prologue
    .line 108
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Lcom/android/server/vpn/DaemonProxy;

    invoke-direct {v0, p1}, Lcom/android/server/vpn/DaemonProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/vpn/DaemonProxy;->stop()V

    .line 109
    return-void
.end method

.method protected abstract stopPreviouslyRunDaemons()V
.end method
