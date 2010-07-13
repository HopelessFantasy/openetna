.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, "CLARO"

    const-string v6, "BR"

    .line 271
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 273
    .local v2, opcode:I
    packed-switch v2, :pswitch_data_23a

    .line 382
    .end local p0
    :cond_c
    :goto_c
    return-void

    .line 275
    .restart local p0
    :pswitch_d
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-result-object v4

    if-nez v4, :cond_b1

    .line 278
    invoke-static {}, Lcom/android/stk/StkAppService;->access$200()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_63

    .line 280
    :cond_21
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BR VIVO&TIM] countrycode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/stk/StkAppService;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BR VIVO&TIM] operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    :cond_63
    invoke-static {}, Lcom/android/stk/StkAppService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CLARO"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    .line 287
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Lcom/android/stk/StkAppService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 288
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 289
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 294
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_b1
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v10}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/Menu;)V

    goto/16 :goto_c

    .line 297
    :pswitch_b8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 306
    .local v1, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 307
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    goto/16 :goto_c

    .line 309
    :cond_cb
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-nez v4, :cond_e3

    .line 310
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v8}, Lcom/android/stk/StkAppService;->access$802(Lcom/android/stk/StkAppService;Z)Z

    .line 311
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-static {v4, p0}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    goto/16 :goto_c

    .line 313
    .restart local p0
    :cond_e3
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    new-instance v5, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v5, v6, v8, p0}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 319
    .end local v1           #cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    .restart local p0
    :pswitch_f9
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 320
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v5, v4}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    .line 323
    :cond_10a
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_122

    .line 324
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;)V

    .line 329
    :goto_11b
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v8}, Lcom/android/stk/StkAppService;->access$1002(Lcom/android/stk/StkAppService;Z)Z

    goto/16 :goto_c

    .line 326
    :cond_122
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v9}, Lcom/android/stk/StkAppService;->access$802(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_11b

    .line 332
    :pswitch_128
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-nez v4, :cond_13c

    .line 333
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v8}, Lcom/android/stk/StkAppService;->access$802(Lcom/android/stk/StkAppService;Z)Z

    .line 334
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_c

    .line 336
    :cond_13c
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    new-instance v5, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v10}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 340
    :pswitch_14f
    const-string v4, "OP_BOOT_COMPLETED"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/android/stk/StkAppService;->access$200()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_160

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a2

    .line 344
    :cond_160
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BR VIVO&TIM] countrycode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/stk/StkAppService;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BR VIVO&TIM] operator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    :cond_1a2
    invoke-static {}, Lcom/android/stk/StkAppService;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {}, Lcom/android/stk/StkAppService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CLARO"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_1da

    .line 353
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/AppInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface;->STKInitCompleted()V

    goto/16 :goto_c

    .line 357
    :cond_1da
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-result-object v4

    if-nez v4, :cond_1eb

    .line 358
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 361
    :cond_1eb
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/AppInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface;->STKInitCompleted()V

    goto/16 :goto_c

    .line 365
    :pswitch_1f6
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_c

    .line 368
    :pswitch_1fd
    const-string v4, "USER indication to terminate browser"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1600(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 370
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1700(Lcom/android/stk/StkAppService;)V

    .line 371
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v9}, Lcom/android/stk/StkAppService;->access$1602(Lcom/android/stk/StkAppService;Z)Z

    goto/16 :goto_c

    .line 375
    :pswitch_216
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 376
    .local v0, args:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const-string v5, "screen status"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/stk/StkAppService;->access$1802(Lcom/android/stk/StkAppService;Z)Z

    .line 377
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->access$1900(Lcom/android/stk/StkAppService;)Z

    move-result v4

    if-ne v4, v8, :cond_c

    .line 378
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v5}, Lcom/android/stk/StkAppService;->access$1800(Lcom/android/stk/StkAppService;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/stk/StkAppService;->access$2000(Lcom/android/stk/StkAppService;Z)V

    goto/16 :goto_c

    .line 273
    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_f9
        :pswitch_d
        :pswitch_128
        :pswitch_14f
        :pswitch_1f6
        :pswitch_1fd
        :pswitch_216
    .end packed-switch
.end method
