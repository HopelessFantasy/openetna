.class Lcom/android/server/vpn/PptpService;
.super Lcom/android/server/vpn/VpnService;
.source "PptpService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/PptpProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final PPTP_DAEMON:Ljava/lang/String; = "pptp"

.field static final PPTP_PORT:Ljava/lang/String; = "1723"


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
    .line 33
    invoke-virtual {p0}, Lcom/android/server/vpn/PptpService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v8

    check-cast v8, Landroid/net/vpn/PptpProfile;

    .line 34
    .local v8, p:Landroid/net/vpn/PptpProfile;
    const-string v1, "pptp"

    const-string v3, "1723"

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/net/vpn/PptpProfile;->isEncryptionEnabled()Z

    move-result v7

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/server/vpn/MtpdHelper;->sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method protected stopPreviouslyRunDaemons()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "mtpd"

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/PptpService;->stopDaemon(Ljava/lang/String;)V

    .line 41
    return-void
.end method
