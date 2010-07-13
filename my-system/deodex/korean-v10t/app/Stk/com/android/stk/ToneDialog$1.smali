.class Lcom/android/stk/ToneDialog$1;
.super Landroid/os/Handler;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/ToneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/android/stk/ToneDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 54
    :goto_5
    return-void

    .line 50
    :pswitch_6
    iget-object v0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/android/stk/ToneDialog;->access$000(Lcom/android/stk/ToneDialog;I)V

    .line 51
    iget-object v0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {v0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_5

    .line 48
    nop

    :pswitch_data_14
    .packed-switch 0xda
        :pswitch_6
    .end packed-switch
.end method
