.class Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "received connectivity: "

    const-string v6, ": connected? "

    .line 1039
    const-string v3, "profile_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, profileName:Ljava/lang/String;
    if-nez v1, :cond_d

    .line 1065
    :goto_c
    return-void

    .line 1043
    :cond_d
    const-string v3, "connection_state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnState;

    .line 1046
    .local v2, s:Landroid/net/vpn/VpnState;
    if-nez v2, :cond_21

    .line 1047
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "received null connectivity state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1051
    :cond_21
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    const-string v4, "err"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/vpn/VpnSettings;->access$1502(Lcom/android/settings/vpn/VpnSettings;I)I

    .line 1054
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 1055
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    if-eqz v0, :cond_77

    .line 1056
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received connectivity: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": connected? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v5}, Lcom/android/settings/vpn/VpnSettings;->access$1500(Lcom/android/settings/vpn/VpnSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v4, v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-static {v3, v4, v2}, Lcom/android/settings/vpn/VpnSettings;->access$1600(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_c

    .line 1061
    :cond_77
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received connectivity: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": connected? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but profile does not exist;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " just ignore it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
