.class Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting$1;
.super Landroid/os/Handler;
.source "GCFFlagSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 129
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 140
    :goto_5
    return-void

    .line 131
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 133
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 137
    iget-object v1, p0, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting$1;->this$0:Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;->access$000(Lcom/lge/hiddenmenu/modem_setting/GCFFlagSetting;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 129
    nop

    :pswitch_data_1e
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
