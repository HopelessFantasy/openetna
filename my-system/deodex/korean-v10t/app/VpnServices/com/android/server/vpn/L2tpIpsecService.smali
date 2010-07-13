.class Lcom/android/server/vpn/L2tpIpsecService;
.super Lcom/android/server/vpn/VpnService;
.source "L2tpIpsecService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/L2tpIpsecProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final IPSEC:Ljava/lang/String; = "racoon"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;-><init>()V

    return-void
.end method

.method private getCaCertPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {p0}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/CertTool;->getCaCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserCertPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {p0}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/CertTool;->getUserCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserkeyPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/L2tpIpsecProfile;

    invoke-virtual {p0}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/CertTool;->getUserPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "1701"

    .line 34
    const-string v0, "racoon"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecService;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v7

    .line 35
    .local v7, ipsec:Lcom/android/server/vpn/DaemonProxy;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    const-string v2, "1701"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getUserkeyPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getUserCertPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getCaCertPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 37
    invoke-virtual {v7}, Lcom/android/server/vpn/DaemonProxy;->closeControlSocket()V

    .line 39
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecService;->sleep(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v8

    check-cast v8, Landroid/net/vpn/L2tpIpsecProfile;

    .line 43
    .local v8, p:Landroid/net/vpn/L2tpIpsecProfile;
    const-string v1, "l2tp"

    const-string v0, "1701"

    invoke-virtual {v8}, Landroid/net/vpn/L2tpIpsecProfile;->isSecretEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v8}, Landroid/net/vpn/L2tpIpsecProfile;->getSecretString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_48
    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/vpn/MtpdHelper;->sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 43
    :cond_50
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_48
.end method

.method protected stopPreviouslyRunDaemons()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "racoon"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecService;->stopDaemon(Ljava/lang/String;)V

    .line 52
    const-string v0, "mtpd"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecService;->stopDaemon(Ljava/lang/String;)V

    .line 53
    return-void
.end method
