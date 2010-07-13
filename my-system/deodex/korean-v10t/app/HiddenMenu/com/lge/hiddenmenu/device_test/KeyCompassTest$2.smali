.class Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;
.super Ljava/lang/Object;
.source "KeyCompassTest.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/KeyCompassTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 179
    return-void
.end method

.method public onSensorChanged(I[F)V
    .registers 7
    .parameter "sensor"
    .parameter "values"

    .prologue
    const-string v3, ", "

    .line 169
    const-string v0, "KeyCompassTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorChanged ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v0, p2}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$002(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;[F)[F

    .line 171
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$100(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 172
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$100(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->invalidate()V

    .line 174
    :cond_53
    return-void
.end method
