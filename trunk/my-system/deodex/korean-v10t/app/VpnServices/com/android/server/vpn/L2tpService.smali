.class Lcom/android/server/vpn/L2tpService;
.super Lcom/android/server/vpn/VpnService;
.source "L2tpService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/L2tpProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final L2TP_DAEMON:Ljava/lang/String; = "l2tp"

.field static final L2TP_PORT:Ljava/lang/String; = "1701"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;-><init>()V

    return-void
.end method


# virtual methods
.method protected connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v7

    check-cast v7, Landroid/net/vpn/L2tpProfile;

    .line 34
    .local v7, p:Landroid/net/vpn/L2tpProfile;
    const-string v1, "l2tp"

    const-string v3, "1701"

    invoke-virtual {v7}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v7}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_15
    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/vpn/MtpdHelper;->sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 34
    :cond_1d
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_15
.end method

.method protected stopPreviouslyRunDaemons()V
    .registers 2

    .prologue
    .line 41
    const-string v0, "mtpd"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/L2tpService;->stopDaemon(Ljava/lang/String;)V

    .line 42
    return-void
.end method
