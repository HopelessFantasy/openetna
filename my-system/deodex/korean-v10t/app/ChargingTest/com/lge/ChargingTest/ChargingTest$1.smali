.class Lcom/lge/ChargingTest/ChargingTest$1;
.super Landroid/os/Handler;
.source "ChargingTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ChargingTest/ChargingTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ChargingTest/ChargingTest;


# direct methods
.method constructor <init>(Lcom/lge/ChargingTest/ChargingTest;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/ChargingTest/ChargingTest$1;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 82
    :goto_5
    return-void

    .line 78
    :pswitch_6
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest$1;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    invoke-static {v0}, Lcom/lge/ChargingTest/ChargingTest;->access$100(Lcom/lge/ChargingTest/ChargingTest;)V

    .line 79
    const/4 v0, 0x1

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/ChargingTest/ChargingTest$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 76
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
