.class Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;
.super Landroid/os/Handler;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 990
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "l"

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 993
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 994
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const-string v6, "CDMA"

    .line 1001
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_13c

    .line 1102
    :pswitch_7
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message received : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "unexpected event not handled"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1003
    :pswitch_2b
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1005
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x14

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1106
    .end local p0
    :cond_44
    :goto_44
    return-void

    .line 1010
    .restart local p0
    :pswitch_45
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1012
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_44

    .line 1016
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Baseband version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v5, "gsm.version.baseband"

    iget-object p0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 1022
    .end local v1           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_73
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1024
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_44

    .line 1027
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 1028
    .local v3, respId:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$002(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 1029
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$102(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_44

    .line 1034
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #respId:[Ljava/lang/String;
    :pswitch_94
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$200(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/os/Message;)V

    goto :goto_44

    .line 1039
    :pswitch_9a
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$300(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/os/Message;)V

    goto :goto_44

    .line 1044
    :pswitch_a0
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1049
    :pswitch_a8
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1054
    :pswitch_b0
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_RADIO_ON Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1059
    :pswitch_b8
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_SSN Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1064
    :pswitch_c0
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_CALL_RING Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1069
    :pswitch_c9
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1074
    :pswitch_d2
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_NV_READY Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 1077
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$400(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/os/RegistrantList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1078
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 1080
    const-string v4, "CDMA"

    const-string v4, "ERI read, notify registrants"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$500(Lcom/android/internal/telephony/cdma/CDMAPhone;)Landroid/os/RegistrantList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1083
    :cond_103
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v5, "ril.cdma.inecmmode"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1088
    :pswitch_10e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1089
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-class v4, Lcom/android/internal/telephony/IccException;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1090
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$600(Lcom/android/internal/telephony/cdma/CDMAPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$700(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)V

    .line 1091
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1093
    :cond_12a
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1094
    .local v2, onComplete:Landroid/os/Message;
    if-eqz v2, :cond_44

    .line 1095
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1096
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_44

    .line 1001
    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_b8
        :pswitch_7
        :pswitch_7
        :pswitch_b0
        :pswitch_45
        :pswitch_7
        :pswitch_a8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_c0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_c9
        :pswitch_10e
        :pswitch_73
        :pswitch_a0
        :pswitch_d2
        :pswitch_7
        :pswitch_94
        :pswitch_9a
    .end packed-switch
.end method
