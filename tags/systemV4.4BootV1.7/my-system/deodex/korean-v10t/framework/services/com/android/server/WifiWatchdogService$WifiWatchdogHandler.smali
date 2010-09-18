.class Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiWatchdogHandler"
.end annotation


# static fields
.field static final ACTION_BACKGROUND_CHECK_AP:I = 0x3

.field static final ACTION_CHECK_AP:I = 0x1

.field static final ACTION_IDLE:I = 0x2

.field static final MESSAGE_DISABLE_WATCHDOG:I = 0x66

.field static final MESSAGE_DISCONNECTED:I = 0x68

.field static final MESSAGE_NETWORK_CHANGED:I = 0x67

.field static final MESSAGE_RESET:I = 0x69

.field static final MESSAGE_SLEEP:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .registers 2
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;-><init>(Lcom/android/server/WifiWatchdogService;)V

    return-void
.end method

.method private removeAllActions()V
    .registers 2

    .prologue
    .line 1059
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    .line 1060
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    .line 1061
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    .line 1062
    return-void
.end method


# virtual methods
.method backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 5
    .parameter "ap"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$500(Lcom/android/server/WifiWatchdogService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1026
    :goto_8
    return-void

    .line 1023
    :cond_9
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1024
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-static {v1}, Lcom/android/server/WifiWatchdogService;->access$600(Lcom/android/server/WifiWatchdogService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method

.method checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 3
    .parameter "ap"

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1017
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1018
    return-void
.end method

.method disableWatchdog()V
    .registers 2

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1040
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    return-void
.end method

.method dispatchDisconnected()V
    .registers 2

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1050
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    return-void
.end method

.method dispatchNetworkChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1045
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1066
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_46

    .line 1092
    .end local p0
    :goto_5
    return-void

    .line 1068
    .restart local p0
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$700(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V

    goto :goto_5

    .line 1071
    .restart local p0
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$800(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_5

    .line 1074
    .restart local p0
    :sswitch_1a
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$900(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_5

    .line 1077
    .restart local p0
    :sswitch_24
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1000(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V

    goto :goto_5

    .line 1080
    .restart local p0
    :sswitch_2e
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1100(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1083
    :sswitch_34
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1100(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1086
    :sswitch_3a
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1200(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1089
    :sswitch_40
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1300(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1066
    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_1a
        0x65 -> :sswitch_24
        0x66 -> :sswitch_34
        0x67 -> :sswitch_6
        0x68 -> :sswitch_3a
        0x69 -> :sswitch_40
    .end sparse-switch
.end method

.method idle()V
    .registers 2

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1030
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1031
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1055
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1056
    return-void
.end method

.method sleep(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1035
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    return-void
.end method
