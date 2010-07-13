.class Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;
.super Landroid/content/BroadcastReceiver;
.source "GpsPhoneTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    const-string v2, "GPS Test is operating"

    iput-object v2, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusText:Ljava/lang/String;

    .line 138
    const-string v1, "Snr"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, snr:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    const-string v2, "Time"

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-wide v3, v3, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStartTime:J

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFtStartTime:J

    .line 140
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->access$200(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V

    .line 141
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->access$300(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V

    .line 142
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    const-string v2, "%.1f"

    new-array v3, v9, [Ljava/lang/Object;

    int-to-double v4, v0

    const-wide/high16 v6, 0x4024

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrText:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    const-string v2, ""

    iput-object v2, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrTextLast:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;->this$0:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mHandle:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;

    invoke-virtual {v1, v9}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method
