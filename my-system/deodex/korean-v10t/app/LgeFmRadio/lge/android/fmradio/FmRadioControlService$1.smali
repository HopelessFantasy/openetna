.class Llge/android/fmradio/FmRadioControlService$1;
.super Landroid/os/Handler;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 433
    const-class v0, Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Llge/android/fmradio/FmRadioControlService$1;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Llge/android/fmradio/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 443
    sget-boolean v0, Llge/android/fmradio/FmRadioControlService$1;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 435
    :pswitch_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$000(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    .line 445
    :cond_14
    :goto_14
    return-void

    .line 436
    :pswitch_15
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$100(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 437
    :pswitch_1b
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$200(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 438
    :pswitch_21
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$300(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 439
    :pswitch_27
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$400(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 440
    :pswitch_2d
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$500(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 441
    :pswitch_33
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$600(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 442
    :pswitch_39
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$1;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioControlService;->access$700(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V

    goto :goto_14

    .line 434
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
