.class Lcom/android/settings/wifi/WifiLayer$MyHandler;
.super Landroid/os/Handler;
.source "WifiLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiLayer;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/android/settings/wifi/WifiLayer$MyHandler;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiLayer;Lcom/android/settings/wifi/WifiLayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1648
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer$MyHandler;-><init>(Lcom/android/settings/wifi/WifiLayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const-string v1, "SettingsWifiLayer"

    .line 1652
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3a

    .line 1678
    :cond_7
    :goto_7
    return-void

    .line 1656
    :sswitch_8
    const-string v0, "SettingsWifiLayer"

    const-string v0, "MESSAGE_ATTEMPT_SCAN"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer$MyHandler;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiLayer;->attemptScan()V

    goto :goto_7

    .line 1664
    :sswitch_15
    const-string v0, "SettingsWifiLayer"

    const-string v0, "MESSAGE_ATTEMPT_SCAN_FIRST"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer$MyHandler;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiLayer;->attemptScan()V

    goto :goto_7

    .line 1670
    :sswitch_22
    const-string v0, "SettingsWifiLayer"

    const-string v0, "MESSAGE_CHECK_AP_REENABLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer$MyHandler;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiLayer;->access$800(Lcom/android/settings/wifi/WifiLayer;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_7

    .line 1672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer$MyHandler;->this$0:Lcom/android/settings/wifi/WifiLayer;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiLayer;->access$900(Lcom/android/settings/wifi/WifiLayer;)V

    goto :goto_7

    .line 1652
    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_8
        0x58 -> :sswitch_22
        0x63 -> :sswitch_15
    .end sparse-switch
.end method
