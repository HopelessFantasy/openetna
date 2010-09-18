.class Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;
.super Landroid/os/Handler;
.source "GpsPhoneTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;-><init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    .line 166
    :cond_5
    :goto_5
    return-void

    .line 151
    :pswitch_6
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrTextLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_29

    .line 152
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrText:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrTextLast:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->access$400(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_29
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeTextLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4c

    .line 156
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeText:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeTextLast:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->access$500(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_4c
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusTextLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusText:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusTextLast:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->access$600(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 149
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
