.class Lcom/android/settings/wifi/WifiLayer$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiLayer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v5, "supplicantError"

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 210
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    const-string v2, "bssid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/settings/wifi/WifiLayer;->access$100(Lcom/android/settings/wifi/WifiLayer;Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 231
    :cond_22
    :goto_22
    return-void

    .line 213
    .restart local p0
    :cond_23
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 214
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiLayer;->access$200(Lcom/android/settings/wifi/WifiLayer;)V

    goto :goto_22

    .line 215
    :cond_31
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 216
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    const-string v2, "connected"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiLayer;->access$300(Lcom/android/settings/wifi/WifiLayer;Z)V

    goto :goto_22

    .line 218
    :cond_45
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 219
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    const-string v2, "newState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/SupplicantState;

    const-string v2, "supplicantError"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supplicantError"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, p0, v2, v3}, Lcom/android/settings/wifi/WifiLayer;->access$400(Lcom/android/settings/wifi/WifiLayer;Landroid/net/wifi/SupplicantState;ZI)V

    goto :goto_22

    .line 223
    .restart local p0
    :cond_67
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 224
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiLayer;->access$500(Lcom/android/settings/wifi/WifiLayer;I)V

    goto :goto_22

    .line 226
    :cond_7c
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 227
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    const-string v2, "newRssi"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiLayer;->access$600(Lcom/android/settings/wifi/WifiLayer;I)V

    goto :goto_22

    .line 228
    :cond_90
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 229
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer$1;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiLayer;->access$700(Lcom/android/settings/wifi/WifiLayer;)V

    goto :goto_22
.end method
