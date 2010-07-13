.class Lcom/android/server/vpn/MtpdHelper;
.super Ljava/lang/Object;
.source "MtpdHelper.java"


# static fields
.field static final MTPD:Ljava/lang/String; = "mtpd"

.field private static final PPP_ARGS_SEPARATOR:Ljava/lang/String; = ""

.field private static final VPN_LINKNAME:Ljava/lang/String; = "vpn"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .parameter "encryption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "1400"

    .line 54
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "linkname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vpn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "refuse-eap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nodefaultroute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "usepeerdns"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "idle"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1800"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mtu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1400"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v2, "mru"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1400"

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    if-eqz p4, :cond_62

    .line 63
    const-string v0, "+mppe"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_62
    return-void
.end method

.method static sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter "protocol"
    .parameter "serverIp"
    .parameter "port"
    .parameter "secret"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vpn/VpnService",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, vpnService:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<*>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/vpn/MtpdHelper;->sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method static sendCommand(Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter "protocol"
    .parameter "serverIp"
    .parameter "port"
    .parameter "secret"
    .parameter "username"
    .parameter "password"
    .parameter "encryption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vpn/VpnService",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, vpnService:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    if-eqz p4, :cond_1d

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1d
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v0, p2, p5, p6, p7}, Lcom/android/server/vpn/MtpdHelper;->addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    const-string v2, "mtpd"

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v1

    .line 48
    .local v1, mtpd:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #vpnService:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<*>;"
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 49
    return-void
.end method
