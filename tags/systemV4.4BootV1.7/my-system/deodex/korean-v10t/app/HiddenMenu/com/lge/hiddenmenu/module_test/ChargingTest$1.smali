.class Lcom/lge/hiddenmenu/module_test/ChargingTest$1;
.super Landroid/os/Handler;
.source "ChargingTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/module_test/ChargingTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/module_test/ChargingTest;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$1;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 83
    :goto_5
    return-void

    .line 79
    :pswitch_6
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$1;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$000(Lcom/lge/hiddenmenu/module_test/ChargingTest;)V

    .line 80
    const/4 v0, 0x1

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/hiddenmenu/module_test/ChargingTest$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 77
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
