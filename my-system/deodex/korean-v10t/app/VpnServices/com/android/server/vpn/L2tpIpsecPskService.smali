.class Lcom/android/server/vpn/L2tpIpsecPskService;
.super Lcom/android/server/vpn/VpnService;
.source "L2tpIpsecPskService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/L2tpIpsecPskProfile;",
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

    .line 33
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecPskService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v8

    check-cast v8, Landroid/net/vpn/L2tpIpsecPskProfile;

    .line 36
    .local v8, p:Landroid/net/vpn/L2tpIpsecPskProfile;
    const-string v0, "racoon"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecPskService;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v7

    .line 37
    .local v7, ipsec:Lcom/android/server/vpn/DaemonProxy;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    const-string v2, "1701"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-virtual {v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 38
    invoke-virtual {v7}, Lcom/android/server/vpn/DaemonProxy;->closeControlSocket()V

    .line 40
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecPskService;->sleep(I)V

    .line 43
    const-string v1, "l2tp"

    const-string v0, "1701"

    invoke-virtual {v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->isSecretEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->getSecretString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3a
    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/vpn/MtpdHelper;->sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 43
    :cond_42
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_3a
.end method

.method protected stopPreviouslyRunDaemons()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "racoon"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecPskService;->stopDaemon(Ljava/lang/String;)V

    .line 52
    const-string v0, "mtpd"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpIpsecPskService;->stopDaemon(Ljava/lang/String;)V

    .line 53
    return-void
.end method
