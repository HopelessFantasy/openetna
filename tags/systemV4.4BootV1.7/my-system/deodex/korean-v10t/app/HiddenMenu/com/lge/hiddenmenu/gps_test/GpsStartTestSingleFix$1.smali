.class Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;
.super Landroid/os/Handler;
.source "GpsStartTestSingleFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 136
    :goto_d
    return-void

    .line 124
    :pswitch_e
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$208(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I

    goto :goto_d

    .line 130
    :pswitch_1f
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->coldStart()V

    .line 131
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$400(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    .line 132
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0, v3}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$202(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;I)I

    goto :goto_d

    .line 122
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1f
    .end packed-switch
.end method
