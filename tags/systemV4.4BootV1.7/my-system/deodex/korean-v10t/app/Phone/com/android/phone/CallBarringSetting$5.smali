.class Lcom/android/phone/CallBarringSetting$5;
.super Landroid/os/Handler;
.source "CallBarringSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallBarringSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/phone/CallBarringSetting$5;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 311
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 312
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v4, 0x44c

    .line 314
    .local v4, status:I
    const/4 v3, 0x0

    .line 316
    .local v3, para:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_72

    .line 389
    :goto_d
    return-void

    .line 318
    :pswitch_e
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v0, v6}, Lcom/android/phone/CallBarringSetting;->access$1100(Lcom/android/phone/CallBarringSetting;Landroid/os/AsyncResult;I)I

    move-result v4

    .line 320
    const/4 v2, -0x1

    .line 321
    .local v2, nextReason:I
    const-string v1, "OI"

    .line 323
    .local v1, nextFacility:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_78

    .line 360
    :goto_20
    :pswitch_20
    const/16 v5, 0x44c

    if-eq v4, v5, :cond_46

    .line 361
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-static {v5, v6, v4}, Lcom/android/phone/CallBarringSetting;->access$100(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;I)V

    goto :goto_d

    .line 325
    :pswitch_2e
    const/4 v2, 0x1

    .line 326
    const-string v1, "OI"

    .line 327
    const-string v3, "331"

    .line 329
    goto :goto_20

    .line 332
    :pswitch_34
    const/4 v2, 0x2

    .line 333
    const-string v1, "OX"

    .line 334
    const-string v3, "332"

    .line 336
    goto :goto_20

    .line 339
    :pswitch_3a
    const/4 v2, 0x3

    .line 340
    const-string v1, "AI"

    .line 341
    const-string v3, "35"

    .line 343
    goto :goto_20

    .line 346
    :pswitch_40
    const/4 v2, 0x4

    .line 347
    const-string v1, "IR"

    .line 348
    const-string v3, "351"

    .line 350
    goto :goto_20

    .line 363
    :cond_46
    const/4 v5, -0x1

    if-eq v2, v5, :cond_61

    .line 373
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallBarringSetting;->access$800(Lcom/android/phone/CallBarringSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallBarringSetting$5;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v6}, Lcom/android/phone/CallBarringSetting;->access$1200(Lcom/android/phone/CallBarringSetting;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x4b0

    invoke-static {v6, v7, v2, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_d

    .line 377
    :cond_61
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    invoke-static {v8}, Lcom/android/phone/CallBarringSetting;->access$1302(Z)Z

    .line 378
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-static {v5, v6}, Lcom/android/phone/CallBarringSetting;->access$300(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;)V

    goto :goto_d

    .line 316
    nop

    :pswitch_data_72
    .packed-switch 0x4b0
        :pswitch_e
    .end packed-switch

    .line 323
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_20
    .end packed-switch
.end method
