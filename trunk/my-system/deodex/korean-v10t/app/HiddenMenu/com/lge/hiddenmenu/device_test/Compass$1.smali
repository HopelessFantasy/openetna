.class Lcom/lge/hiddenmenu/device_test/Compass$1;
.super Ljava/lang/Object;
.source "Compass.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/Compass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/Compass;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/Compass;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/Compass$1;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 66
    return-void
.end method

.method public onSensorChanged(I[F)V
    .registers 7
    .parameter "sensor"
    .parameter "values"

    .prologue
    const-string v3, ", "

    .line 56
    const-string v0, "Compass"

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

    .line 57
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$1;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v0, p2}, Lcom/lge/hiddenmenu/device_test/Compass;->access$002(Lcom/lge/hiddenmenu/device_test/Compass;[F)[F

    .line 58
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$1;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/Compass;->access$100(Lcom/lge/hiddenmenu/device_test/Compass;)Lcom/lge/hiddenmenu/device_test/Compass$SampleView;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 59
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$1;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/Compass;->access$100(Lcom/lge/hiddenmenu/device_test/Compass;)Lcom/lge/hiddenmenu/device_test/Compass$SampleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->invalidate()V

    .line 61
    :cond_53
    return-void
.end method
