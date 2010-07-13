.class Lcom/android/phone/NotificationMgr$1;
.super Landroid/os/Handler;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enhancedVoicePrivacy:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$1;->enhancedVoicePrivacy:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 74
    :goto_5
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$1;->enhancedVoicePrivacy:Z

    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Z)V

    .line 75
    return-void

    .line 66
    :pswitch_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$1;->enhancedVoicePrivacy:Z

    goto :goto_5

    .line 69
    :pswitch_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$1;->enhancedVoicePrivacy:Z

    goto :goto_5

    .line 64
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method
