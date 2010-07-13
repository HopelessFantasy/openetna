.class Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpsStartTestSingleFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V
    .registers 2
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 747
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1400(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 766
    :cond_9
    :goto_9
    return-void

    .line 751
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 754
    const-string v2, "enabled"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 757
    .local v1, enabled:Z
    if-nez v1, :cond_9

    .line 758
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1508(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I

    .line 760
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1500(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 761
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 762
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v2, v4}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$1502(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;I)I

    goto :goto_9
.end method
