.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 448
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 449
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 459
    :goto_a
    return-void

    .line 451
    :pswitch_b
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SUPPLY_PUK_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    monitor-enter v1

    .line 453
    :try_start_15
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2f

    move v3, v4

    :goto_1c
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->access$302(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;Z)Z

    .line 454
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;->access$402(Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;Z)Z

    .line 455
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPuk;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit v1

    goto :goto_a

    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw v2

    .line 453
    :cond_2f
    const/4 v3, 0x0

    goto :goto_1c

    .line 449
    nop

    :pswitch_data_32
    .packed-switch 0xc8
        :pswitch_b
    .end packed-switch
.end method
