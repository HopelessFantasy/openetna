.class Landroid/net/wifi/WifiStateTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .registers 6
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 2088
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2089
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2090
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2091
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_use_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2093
    const-string v1, "wifi_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2095
    const-string v1, "wifi_static_gateway"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2097
    const-string v1, "wifi_static_netmask"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2099
    const-string v1, "wifi_static_dns1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2101
    const-string v1, "wifi_static_dns2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2103
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .parameter "selfChange"

    .prologue
    .line 2106
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2108
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v6

    .line 2110
    .local v6, wasStaticIp:Z
    const/4 v2, 0x0

    .local v2, oDns2:I
    move v1, v2

    .local v1, oDns1:I
    move v5, v2

    .local v5, oMsk:I
    move v3, v2

    .local v3, oGw:I
    move v4, v2

    .line 2111
    .local v4, oIp:I
    if-eqz v6, :cond_38

    .line 2112
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v4, v7, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2113
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v3, v7, Landroid/net/DhcpInfo;->gateway:I

    .line 2114
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v5, v7, Landroid/net/DhcpInfo;->netmask:I

    .line 2115
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v1, v7, Landroid/net/DhcpInfo;->dns1:I

    .line 2116
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v2, v7, Landroid/net/DhcpInfo;->dns2:I

    .line 2118
    :cond_38
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)V

    .line 2120
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-ne v7, v8, :cond_4c

    .line 2140
    :cond_4b
    :goto_4b
    return-void

    .line 2124
    :cond_4c
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v7

    if-ne v6, v7, :cond_88

    if-eqz v6, :cond_a9

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->ipAddress:I

    if-ne v4, v7, :cond_88

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->gateway:I

    if-ne v3, v7, :cond_88

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->netmask:I

    if-ne v5, v7, :cond_88

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->dns1:I

    if-ne v1, v7, :cond_88

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->dns2:I

    if-eq v2, v7, :cond_a9

    :cond_88
    const/4 v7, 0x1

    move v0, v7

    .line 2133
    .local v0, changed:Z
    :goto_8a
    if-eqz v0, :cond_4b

    .line 2134
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->resetInterface()V

    .line 2135
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$700(Landroid/net/wifi/WifiStateTracker;)V

    .line 2136
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 2137
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4b

    .line 2124
    .end local v0           #changed:Z
    :cond_a9
    const/4 v7, 0x0

    move v0, v7

    goto :goto_8a
.end method
