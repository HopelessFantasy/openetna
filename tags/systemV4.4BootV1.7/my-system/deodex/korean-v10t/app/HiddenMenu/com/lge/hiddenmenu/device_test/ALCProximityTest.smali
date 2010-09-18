.class public Lcom/lge/hiddenmenu/device_test/ALCProximityTest;
.super Landroid/app/Activity;
.source "ALCProximityTest.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ALCProximityTest"

.field private static final i:I = 0x1

.field private static numClose:I

.field private static numOpen:I


# instance fields
.field ProximityStatus_2:Ljava/lang/Integer;

.field bAutoAllTest:Ljava/lang/Integer;

.field private final fn:Ljava/lang/String;

.field private mALCSetting:I

.field private final mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

.field mALCValue:Ljava/lang/Integer;

.field private mBackButton:Landroid/widget/Button;

.field private final mListener:Landroid/hardware/SensorListener;

.field private mNumCloseSwitcher:Landroid/widget/TextSwitcher;

.field private mNumOpenSwitcher:Landroid/widget/TextSwitcher;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSwitcher:Landroid/widget/TextSwitcher;

.field private mValue:F

.field private tNow:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/i2c-gpio.6/i2c-adapter/i2c-6/6-0044/enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->fn:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$ApplicationsIntentReceiver;-><init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mListener:Landroid/hardware/SensorListener;

    .line 396
    return-void
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->showProximityState()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->setProximityOnOff(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->tNow:Landroid/widget/TextView;

    return-object v0
.end method

.method private setProximityOnOff(I)V
    .registers 5
    .parameter "aProximityOn"

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->fn:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 131
    .local v0, Proximity_sensor:Ljava/io/BufferedWriter;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 133
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 147
    .end local v0           #Proximity_sensor:Ljava/io/BufferedWriter;
    :goto_1a
    return-void

    .line 139
    .restart local v0       #Proximity_sensor:Ljava/io/BufferedWriter;
    :cond_1b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 140
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_1a

    .line 144
    .end local v0           #Proximity_sensor:Ljava/io/BufferedWriter;
    :catch_27
    move-exception v1

    goto :goto_1a
.end method

.method private showProximityState()V
    .registers 4

    .prologue
    .line 365
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_22

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nProximity : Near "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, str:Ljava/lang/String;
    :goto_1c
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void

    .line 370
    .end local v0           #str:Ljava/lang/String;
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nProximity : Away "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_1c
.end method


# virtual methods
.method public ReadIntFromFile()I
    .registers 7

    .prologue
    .line 113
    const/4 v3, 0x0

    .line 115
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->fn:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v3

    .line 122
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_15
    return v3

    .line 118
    :catch_16
    move-exception v4

    move-object v0, v4

    .line 120
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 438
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 442
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 354
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 355
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 356
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 357
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->showProximityState()V

    .line 358
    const-string v0, "Hidden Menu - Proximity Test"

    const-string v1, "onConfigurationChanged!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mPowerManager:Landroid/os/PowerManager;

    .line 156
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 158
    const v5, 0x7f03002a

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->setContentView(I)V

    .line 160
    const v5, 0x7f07008f

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mBackButton:Landroid/widget/Button;

    .line 161
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mBackButton:Landroid/widget/Button;

    new-instance v6, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;

    invoke-direct {v6, p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/ALCProximityTest;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v5, 0x7f070090

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextSwitcher;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    .line 184
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 185
    const v5, 0x7f070091

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextSwitcher;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    .line 186
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 187
    const v5, 0x7f070092

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextSwitcher;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    .line 188
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 190
    const/high16 v5, 0x10a

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 191
    .local v3, in:Landroid/view/animation/Animation;
    const v5, 0x10a0001

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 192
    .local v4, out:Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v4}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v4}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v4}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 199
    const v5, 0x7f070008

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->tNow:Landroid/widget/TextView;

    .line 201
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ReadIntFromFile()I

    move-result v0

    .line 202
    .local v0, ProximityStatus:I
    if-nez v0, :cond_a3

    .line 203
    invoke-direct {p0, v8}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->setProximityOnOff(I)V

    .line 205
    :cond_a3
    sput v7, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->numClose:I

    sput v7, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->numOpen:I

    .line 206
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->showProximityState()V

    .line 208
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sensor_illumination"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCSetting:I

    .line 211
    :try_start_b6
    const-string v5, "hardware"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v2

    .line 212
    .local v2, hardware:Landroid/os/IHardwareService;
    if-eqz v2, :cond_c6

    .line 213
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/os/IHardwareService;->setALCMode(Z)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c6} :catch_e6

    .line 219
    .end local v2           #hardware:Landroid/os/IHardwareService;
    :cond_c6
    :goto_c6
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "ALC_STATUS_TEST"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 231
    return-void

    .line 216
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_e6
    move-exception v5

    goto :goto_c6
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "."

    .line 264
    sparse-switch p1, :sswitch_data_e8

    .line 348
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_b
    return v7

    .line 266
    :sswitch_c
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_23

    .line 269
    const-string v7, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 270
    .local v4, mToast1:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v4           #mToast1:Landroid/widget/Toast;
    :goto_21
    move v7, v9

    .line 293
    goto :goto_b

    .line 274
    :cond_23
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ReadIntFromFile()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ProximityStatus_2:Ljava/lang/Integer;

    .line 275
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ProximityStatus_2:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_38

    .line 276
    invoke-direct {p0, v8}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->setProximityOnOff(I)V

    .line 277
    :cond_38
    const-string v5, "com.lge.hiddenmenu"

    .line 278
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 280
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 281
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 282
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 284
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

    .line 285
    const-string v2, "DeviceTest"

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->startActivity(Landroid/content/Intent;)V

    .line 291
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->finish()V

    goto :goto_21

    .line 322
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageName2:Ljava/lang/String;
    :sswitch_80
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 324
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ReadIntFromFile()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ProximityStatus_2:Ljava/lang/Integer;

    .line 325
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->ProximityStatus_2:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_9d

    .line 326
    invoke-direct {p0, v8}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->setProximityOnOff(I)V

    .line 328
    :cond_9d
    const-string v5, "com.lge.hiddenmenu"

    .line 329
    .restart local v5       #packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 330
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 331
    .restart local v2       #className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 332
    .restart local v6       #packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 333
    .restart local v1       #ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 335
    .restart local v0       #AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test.sound_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 336
    const-string v2, "Loopback_Auto"

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->startActivity(Landroid/content/Intent;)V

    .line 341
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->finish()V

    move v7, v9

    .line 342
    goto/16 :goto_b

    .line 264
    nop

    :sswitch_data_e8
    .sparse-switch
        0x4 -> :sswitch_c
        0x52 -> :sswitch_80
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 425
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_e

    .line 426
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mListener:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 428
    :cond_e
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_18

    .line 429
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 432
    :cond_18
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 434
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mListener:Landroid/hardware/SensorListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 243
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 250
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 252
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_34

    .line 253
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 255
    :cond_34
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 408
    :try_start_0
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 409
    .local v0, hardware:Landroid/os/IHardwareService;
    if-eqz v0, :cond_14

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->mALCSetting:I

    if-nez v1, :cond_14

    .line 410
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setALCMode(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_22

    .line 416
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_14
    :goto_14
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;->stopService(Landroid/content/Intent;)Z

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 419
    return-void

    .line 413
    :catch_22
    move-exception v1

    goto :goto_14
.end method
