.class Lcom/android/phone/InCallScreen$14;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 3361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 3368
    :cond_5
    :goto_5
    return-void

    .line 3363
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    .line 3364
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3365
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2202(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_5

    .line 3361
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
