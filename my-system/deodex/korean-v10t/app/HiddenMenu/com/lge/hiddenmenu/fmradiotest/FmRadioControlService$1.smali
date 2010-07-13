.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;
.super Landroid/os/Handler;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 307
    const-class v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 317
    sget-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :pswitch_f
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    .line 319
    :cond_14
    :goto_14
    return-void

    .line 310
    :pswitch_15
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$100(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 311
    :pswitch_1b
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$200(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 312
    :pswitch_21
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$300(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 313
    :pswitch_27
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$400(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 314
    :pswitch_2d
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$500(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 315
    :pswitch_33
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$600(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 316
    :pswitch_39
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-static {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$700(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 308
    nop

    :pswitch_data_40
    .packed-switch 0x65
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
    .end packed-switch
.end method
