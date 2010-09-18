.class public Landroid/net/vpn/VpnManager;
.super Ljava/lang/Object;
.source "VpnManager.java"


# static fields
.field private static final ACTION_VPN_CONNECTIVITY:Ljava/lang/String; = "vpn.connectivity"

.field private static final ACTION_VPN_SERVICE:Ljava/lang/String; = null

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = null

.field public static final BROADCAST_CONNECTION_STATE:Ljava/lang/String; = "connection_state"

.field public static final BROADCAST_ERROR_CODE:Ljava/lang/String; = "err"

.field public static final BROADCAST_PROFILE_NAME:Ljava/lang/String; = "profile_name"

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = null

.field public static final PROFILES_PATH:Ljava/lang/String; = "/data/misc/vpn/profiles"

.field private static final TAG:Ljava/lang/String; = null

.field public static final VPN_ERROR_AUTH:I = 0x1

.field public static final VPN_ERROR_CHALLENGE:I = 0x4

.field public static final VPN_ERROR_CONNECTION_FAILED:I = 0x2

.field public static final VPN_ERROR_CONNECTION_LOST:I = 0x6

.field private static final VPN_ERROR_NO_ERROR:I = 0x0

.field public static final VPN_ERROR_REMOTE_HUNG_UP:I = 0x5

.field public static final VPN_ERROR_UNKNOWN_SERVER:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v2, Landroid/net/vpn/VpnManager;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/vpn/VpnManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    .line 73
    const-class v0, Landroid/net/vpn/VpnManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public static getSupportedVpnTypes()[Landroid/net/vpn/VpnType;
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Landroid/net/vpn/VpnType;->values()[Landroid/net/vpn/VpnType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindVpnService(Landroid/content/ServiceConnection;)Z
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 139
    sget-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to connect to VPN service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 143
    :goto_18
    return v0

    .line 142
    :cond_19
    sget-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v1, "succeeded to connect to VPN service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    .registers 4
    .parameter "profileName"
    .parameter "s"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 150
    return-void
.end method

.method public broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V
    .registers 6
    .parameter "profileName"
    .parameter "s"
    .parameter "error"

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vpn.connectivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "profile_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "connection_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    if-eqz p3, :cond_18

    .line 159
    const-string v1, "err"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :cond_18
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public createSettingsActivityIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method public createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;
    .registers 3
    .parameter "type"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;
    .registers 7
    .parameter "type"
    .parameter "customized"

    .prologue
    const/4 v3, 0x0

    .line 110
    :try_start_1
    invoke-virtual {p1}, Landroid/net/vpn/VpnType;->getProfileClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 111
    .local v1, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1, p2}, Landroid/net/vpn/VpnProfile;->setCustomized(Z)V
    :try_end_e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_14

    move-object v2, v1

    .line 116
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :goto_f
    return-object v2

    .line 113
    :catch_10
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InstantiationException;
    move-object v2, v3

    .line 114
    goto :goto_f

    .line 115
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_14
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalAccessException;
    move-object v2, v3

    .line 116
    goto :goto_f
.end method

.method public registerConnectivityReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method public startSettingsActivity()V
    .registers 3

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public startVpnService()V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    return-void
.end method

.method public stopVpnService()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/net/vpn/VpnManager;->ACTION_VPN_SERVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 132
    return-void
.end method

.method public unregisterConnectivityReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    return-void
.end method
