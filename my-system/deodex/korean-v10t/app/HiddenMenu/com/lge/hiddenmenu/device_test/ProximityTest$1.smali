.class Lcom/lge/hiddenmenu/device_test/ProximityTest$1;
.super Ljava/lang/Object;
.source "ProximityTest.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/ProximityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ProximityTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/ProximityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ProximityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 99
    return-void
.end method

.method public onSensorChanged(I[F)V
    .registers 6
    .parameter "sensor"
    .parameter "value"

    .prologue
    .line 91
    const-string v0, "ProximityTest"

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

    .line 92
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ProximityTest;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->access$002(Lcom/lge/hiddenmenu/device_test/ProximityTest;F)F

    .line 93
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/ProximityTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->access$100(Lcom/lge/hiddenmenu/device_test/ProximityTest;)V

    .line 94
    return-void
.end method
