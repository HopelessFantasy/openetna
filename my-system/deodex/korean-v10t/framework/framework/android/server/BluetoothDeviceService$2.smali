.class Landroid/server/BluetoothDeviceService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothDeviceService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothDeviceService;)V
    .registers 2
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "BluetoothDeviceService"

    .line 1794
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1795
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1796
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1799
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1700(Landroid/server/BluetoothDeviceService;)Z

    move-result v5

    if-nez v5, :cond_36

    move v1, v9

    .line 1801
    .local v1, enabled:Z
    :goto_1f
    const-string v5, "bluetooth_on"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_35

    .line 1802
    if-eqz v1, :cond_38

    .line 1803
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v5, v7}, Landroid/server/BluetoothDeviceService;->enable(Z)Z

    move-result v5

    if-nez v5, :cond_35

    .line 1804
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    iput v9, v5, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    .line 1848
    .end local v1           #enabled:Z
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_35
    :goto_35
    return-void

    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_36
    move v1, v7

    .line 1799
    goto :goto_1f

    .line 1807
    .restart local v1       #enabled:Z
    :cond_38
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-virtual {v5, v7}, Landroid/server/BluetoothDeviceService;->disable(Z)Z

    move-result v5

    if-nez v5, :cond_35

    .line 1808
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    iput v10, v5, Landroid/server/BluetoothDeviceService;->mFinalBTState:I

    goto :goto_35

    .line 1813
    .end local v1           #enabled:Z
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_45
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1816
    const-string v5, "BluetoothDeviceService"

    const-string v5, "***************************************"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v5, "BluetoothDeviceService"

    const-string v5, " Receive BOOT_COMPLETED message"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const-string v5, "BluetoothDeviceService"

    const-string v5, "***************************************"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v6}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_35

    .line 1821
    :cond_79
    const-string v5, "android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 1822
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1823
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "android.bluetooth.intent.CALL_STATE"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1824
    .local v4, state:I
    const-string v5, "BluetoothDeviceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got Call State change - new call state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const-string v5, "service.brcm.bt.call_active"

    if-ne v4, v9, :cond_d5

    const-string v6, "1"

    :goto_a9
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1829
    const-string v5, "service.brcm.bt.avrcp_pass_thru"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v6}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    if-ne v4, v9, :cond_d8

    const-wide/16 v7, 0x1388

    :goto_d0
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_35

    .line 1826
    :cond_d5
    const-string v6, "0"

    goto :goto_a9

    .line 1830
    :cond_d8
    const-wide/16 v7, 0x1388

    goto :goto_d0

    .line 1833
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #state:I
    :cond_db
    const-string v5, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 1834
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$2008(Landroid/server/BluetoothDeviceService;)I

    .line 1835
    const-string v5, "BluetoothDeviceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACL connected, mAclLinkCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v6}, Landroid/server/BluetoothDeviceService;->access$2000(Landroid/server/BluetoothDeviceService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 1836
    :cond_108
    const-string v5, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1837
    const-string v5, "BluetoothDeviceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACL disconnected, mAclLinkCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v6}, Landroid/server/BluetoothDeviceService;->access$2000(Landroid/server/BluetoothDeviceService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaitingForAclDisconnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v6}, Landroid/server/BluetoothDeviceService;->access$2100(Landroid/server/BluetoothDeviceService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1800(Landroid/server/BluetoothDeviceService;)I

    move-result v5

    if-eqz v5, :cond_35

    .line 1839
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$2010(Landroid/server/BluetoothDeviceService;)I

    .line 1840
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$2100(Landroid/server/BluetoothDeviceService;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$2000(Landroid/server/BluetoothDeviceService;)I

    move-result v5

    if-nez v5, :cond_35

    .line 1841
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1842
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5, v7}, Landroid/server/BluetoothDeviceService;->access$2102(Landroid/server/BluetoothDeviceService;Z)Z

    .line 1843
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothDeviceService$2;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v6}, Landroid/server/BluetoothDeviceService;->access$1100(Landroid/server/BluetoothDeviceService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_35
.end method
