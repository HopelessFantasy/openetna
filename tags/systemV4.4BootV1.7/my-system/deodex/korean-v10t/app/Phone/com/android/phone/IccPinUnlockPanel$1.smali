.class Lcom/android/phone/IccPinUnlockPanel$1;
.super Landroid/os/Handler;
.source "IccPinUnlockPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccPinUnlockPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccPinUnlockPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccPinUnlockPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel$1;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10

    .line 78
    :goto_5
    return-void

    .line 74
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 75
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel$1;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v1, v0}, Lcom/android/phone/IccPinUnlockPanel;->handleUnlockResult(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 72
    :pswitch_data_10
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
