.class Lcom/android/stk/StkAppService$1;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .registers 2
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 919
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2e

    .line 929
    :goto_5
    return-void

    .line 921
    :pswitch_6
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v1}, Lcom/android/stk/TonePlayer;->stop()V

    .line 922
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v1}, Lcom/android/stk/TonePlayer;->release()V

    .line 923
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v0, arg:Landroid/os/Bundle;
    const-string v1, "response id"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1, v0}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    goto :goto_5

    .line 919
    nop

    :pswitch_data_2e
    .packed-switch 0x9
        :pswitch_6
    .end packed-switch
.end method
