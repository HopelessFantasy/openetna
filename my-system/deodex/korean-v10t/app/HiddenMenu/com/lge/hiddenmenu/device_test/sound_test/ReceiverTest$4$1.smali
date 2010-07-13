.class Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4$1;
.super Ljava/lang/Object;
.source "ReceiverTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4$1;->this$1:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4$1;->this$1:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->access$100(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V

    .line 185
    return-void
.end method
