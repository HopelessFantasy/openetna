.class Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;
.super Ljava/lang/Object;
.source "ALCProximityTest.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/ALCProximityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 109
    return-void
.end method

.method public onSensorChanged(I[F)V
    .registers 6
    .parameter "sensor"
    .parameter "value"

    .prologue
    .line 101
    const-string v0, "ALCProximityTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorChanged ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->access$102(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;F)F

    .line 103
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->access$200(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V

    .line 104
    return-void
.end method
