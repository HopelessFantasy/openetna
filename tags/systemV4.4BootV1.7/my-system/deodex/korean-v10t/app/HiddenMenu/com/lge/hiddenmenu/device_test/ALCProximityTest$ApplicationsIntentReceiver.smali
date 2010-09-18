.class Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ALCProximityTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/ALCProximityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;-><init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    const-string v0, "ALCValue"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v1, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCValue:Ljava/lang/Integer;

    .line 400
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->access$400(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      ALC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCValue:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method
