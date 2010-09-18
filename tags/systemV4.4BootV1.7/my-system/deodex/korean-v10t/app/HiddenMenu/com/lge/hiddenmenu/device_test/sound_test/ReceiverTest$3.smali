.class Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3;
.super Ljava/lang/Thread;
.source "ReceiverTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 124
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_14

    .line 127
    :goto_5
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->access$200(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void

    .line 125
    :catch_14
    move-exception v0

    goto :goto_5
.end method
