.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 104
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_be

    .line 168
    :pswitch_5
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local p0
    :goto_1f
    return-void

    .line 106
    .restart local p0
    :pswitch_20
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 107
    .local v2, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 110
    monitor-enter v2

    .line 111
    :try_start_37
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v2

    goto :goto_1f

    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v3

    .line 116
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_3f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 117
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, onCompleted:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_1f

    .line 123
    .end local v1           #onCompleted:Landroid/os/Message;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 124
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 125
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6d

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6d

    .line 126
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 132
    :goto_64
    monitor-enter v2

    .line 133
    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v2

    goto :goto_1f

    :catchall_6a
    move-exception v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    throw v3

    .line 129
    :cond_6d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_64

    .line 138
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_75
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_1f

    .line 142
    :pswitch_7b
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_1f

    .line 146
    :pswitch_81
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 147
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 148
    .restart local v1       #onCompleted:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-interface {v3, p0, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_1f

    .line 152
    .end local v1           #onCompleted:Landroid/os/Message;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 153
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 154
    .restart local v2       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iput-object v0, v2, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 157
    monitor-enter v2

    .line 158
    :try_start_a4
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v2

    goto/16 :goto_1f

    :catchall_aa
    move-exception v3

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_aa

    throw v3

    .line 163
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_ad
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 164
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v3, p0}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_1f

    .line 104
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_20
        :pswitch_3f
        :pswitch_50
        :pswitch_75
        :pswitch_5
        :pswitch_7b
        :pswitch_81
        :pswitch_99
        :pswitch_ad
    .end packed-switch
.end method
