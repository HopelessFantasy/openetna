.class Lcom/android/stk/StkDialogActivity$1;
.super Landroid/os/Handler;
.source "StkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 50
    :goto_5
    return-void

    .line 46
    :pswitch_6
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/stk/StkDialogActivity;->access$000(Lcom/android/stk/StkDialogActivity;I)V

    .line 47
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_5

    .line 44
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
