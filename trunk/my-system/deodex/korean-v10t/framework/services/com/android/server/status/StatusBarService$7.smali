.class Lcom/android/server/status/StatusBarService$7;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .registers 2
    .parameter

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v9, "BluetoothIntent: Enable BT image button"

    const-string v5, "StatusBar"

    .line 1961
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1963
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarService;->deactivate()V

    .line 2063
    :cond_18
    :goto_18
    return-void

    .line 1965
    :cond_19
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1966
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    const-string v4, "showSpn"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "showPlmn"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "plmn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_18

    .line 1971
    :cond_3f
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1972
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarService;->updateResources()V

    goto :goto_18

    .line 1976
    :cond_4d
    const-string v3, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1977
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent.BLUETOOTH_STATE_CHANGED_ACTION"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const-string v3, "android.bluetooth.intent.BLUETOOTH_STATE"

    const/16 v4, -0x3e8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1980
    .local v2, state:I
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothIntent: State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eq v3, v6, :cond_de

    .line 1982
    packed-switch v2, :pswitch_data_22c

    :pswitch_8d
    goto :goto_18

    .line 1992
    :pswitch_8e
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent: BLUETOOTH_STATE_OFF"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1500()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1996
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent: Enable BT image button"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v4}, Lcom/android/server/status/StatusBarService;->access$1400(Lcom/android/server/status/StatusBarService;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 1984
    :pswitch_b6
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent: BLUETOOTH_STATE_ON"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1300()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1988
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent: Enable BT image button"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v4}, Lcom/android/server/status/StatusBarService;->access$1400(Lcom/android/server/status/StatusBarService;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 2003
    :cond_de
    const-string v3, "StatusBar"

    const-string v3, "BLUETOOTH_STATE_CHANGED_ACTION:: AirPlane Mode!!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1500()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2005
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 2008
    .end local v2           #state:I
    :cond_f9
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18d

    .line 2009
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2010
    .restart local v2       #state:I
    const-string v3, "StatusBar"

    const-string v3, "WifiManager.WIFI_STATE_CHANGED_ACTION"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eq v3, v6, :cond_172

    .line 2013
    const/4 v3, 0x3

    if-ne v2, v3, :cond_148

    .line 2014
    const-string v3, "StatusBar"

    const-string v3, "WifiManager.WIFI_STATE_ENABLED"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1600()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2018
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent: Enable WiFi image button"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v4}, Lcom/android/server/status/StatusBarService;->access$1700(Lcom/android/server/status/StatusBarService;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 2020
    :cond_148
    if-ne v2, v6, :cond_18

    .line 2021
    const-string v3, "StatusBar"

    const-string v3, "WifiManager.WIFI_STATE_DISABLED"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1800()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2025
    const-string v3, "StatusBar"

    const-string v3, "BluetoothIntent: Enable WiFi image button"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v4}, Lcom/android/server/status/StatusBarService;->access$1700(Lcom/android/server/status/StatusBarService;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 2031
    :cond_172
    const-string v3, "StatusBar"

    const-string v3, "WIFI_STATE_DISABLED:: AirPlane Mode!!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1800()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2033
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 2036
    .end local v2           #state:I
    :cond_18d
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_211

    .line 2037
    const-string v3, "StatusBar"

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED IN..."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1e2

    move v1, v6

    .line 2039
    .local v1, enabled:Z
    :goto_1ab
    if-ne v1, v6, :cond_1e4

    .line 2040
    const-string v3, "StatusBar"

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED:: AirPlane Mode Off!!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v4}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/status/StatusBarService;->access$2002(Lcom/android/server/status/StatusBarService;I)I

    .line 2044
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->access$2100(Lcom/android/server/status/StatusBarService;)V

    .line 2047
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v4}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/status/StatusBarService;->access$2202(Lcom/android/server/status/StatusBarService;I)I

    .line 2048
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->access$2300(Lcom/android/server/status/StatusBarService;)V

    goto/16 :goto_18

    .end local v1           #enabled:Z
    :cond_1e2
    move v1, v7

    .line 2038
    goto :goto_1ab

    .line 2052
    .restart local v1       #enabled:Z
    :cond_1e4
    const-string v3, "StatusBar"

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED:: AirPlane Mode On!!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1800()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2054
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$300()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2056
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$1500()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2057
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_18

    .line 2061
    .end local v1           #enabled:Z
    :cond_211
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1982
    nop

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8d
        :pswitch_b6
    .end packed-switch
.end method
