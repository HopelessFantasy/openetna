.class public Lcom/lge/hiddenmenu/device_test/Compass;
.super Lcom/lge/hiddenmenu/device_test/GraphicsActivity;
.source "Compass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/Compass$SampleView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Compass"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private final mListener:Landroid/hardware/SensorListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValues:[F

.field private mView:Lcom/lge/hiddenmenu/device_test/Compass$SampleView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GraphicsActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Lcom/lge/hiddenmenu/device_test/Compass$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/Compass$1;-><init>(Lcom/lge/hiddenmenu/device_test/Compass;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mListener:Landroid/hardware/SensorListener;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mValues:[F

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/Compass;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mValues:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/Compass;)Lcom/lge/hiddenmenu/device_test/Compass$SampleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mView:Lcom/lge/hiddenmenu/device_test/Compass$SampleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/Compass;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/Compass;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    new-instance v0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;

    invoke-direct {v0, p0, p0}, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;-><init>(Lcom/lge/hiddenmenu/device_test/Compass;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mView:Lcom/lge/hiddenmenu/device_test/Compass$SampleView;

    .line 76
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mView:Lcom/lge/hiddenmenu/device_test/Compass$SampleView;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/Compass;->setContentView(Landroid/view/View;)V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->bAutoAllTest:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 112
    sparse-switch p1, :sswitch_data_70

    .line 149
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/lge/hiddenmenu/device_test/GraphicsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_8
    return v7

    .line 114
    :sswitch_9
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/Compass;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 120
    const-string v7, "Auto All Test is canceled!"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 121
    .local v4, mToast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 123
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/Compass;->finish()V

    move v7, v9

    .line 124
    goto :goto_8

    .line 128
    .end local v4           #mToast:Landroid/widget/Toast;
    :sswitch_1f
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/Compass;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 130
    const-string v5, "com.lge.hiddenmenu"

    .line 131
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 133
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 134
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 135
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 137
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    const-string v2, "ProximityTest"

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/Compass;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/Compass;->finish()V

    move v7, v9

    .line 144
    goto :goto_8

    .line 112
    :sswitch_data_70
    .sparse-switch
        0x4 -> :sswitch_9
        0x52 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 89
    const-string v1, "Compass"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lcom/lge/hiddenmenu/device_test/GraphicsActivity;->onResume()V

    .line 91
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mSensor:Landroid/hardware/Sensor;

    .line 92
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mListener:Landroid/hardware/SensorListener;

    invoke-virtual {v1, v2, v3, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 101
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/Compass;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/Compass;->bAutoAllTest:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 155
    const-string v0, "Compass"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Compass;->mListener:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 157
    invoke-super {p0}, Lcom/lge/hiddenmenu/device_test/GraphicsActivity;->onStop()V

    .line 158
    return-void
.end method
