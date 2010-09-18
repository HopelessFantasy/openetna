.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$2;
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


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$2;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6

    .line 352
    :pswitch_5
    return-void

    .line 325
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
