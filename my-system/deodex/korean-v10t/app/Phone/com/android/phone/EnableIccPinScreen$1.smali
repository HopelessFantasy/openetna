.class Lcom/android/phone/EnableIccPinScreen$1;
.super Landroid/os/Handler;
.source "EnableIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnableIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableIccPinScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/EnableIccPinScreen$1;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10

    .line 60
    :goto_5
    return-void

    .line 55
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 56
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen$1;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-static {v1, v0}, Lcom/android/phone/EnableIccPinScreen;->access$000(Lcom/android/phone/EnableIccPinScreen;Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 53
    :pswitch_data_10
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method