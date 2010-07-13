.class Lcom/lge/hiddenmenu/device_test/RtcTest$5;
.super Landroid/content/BroadcastReceiver;
.source "RtcTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/RtcTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$5;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest$5;->this$0:Lcom/lge/hiddenmenu/device_test/RtcTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->access$700(Lcom/lge/hiddenmenu/device_test/RtcTest;)V

    .line 306
    return-void
.end method
