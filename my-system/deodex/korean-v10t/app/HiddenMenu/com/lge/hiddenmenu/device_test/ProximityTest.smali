.class public Lcom/lge/hiddenmenu/device_test/ProximityTest;
.super Landroid/app/Activity;
.source "ProximityTest.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ProximityTest"

.field private static final i:I = 0x1

.field private static numClose:I

.field private static numOpen:I


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private final fn:Ljava/lang/String;

.field private final mListener:Landroid/hardware/SensorListener;

.field private mNumCloseSwitcher:Landroid/widget/TextSwitcher;

.field private mNumOpenSwitcher:Landroid/widget/TextSwitcher;

.field private mOldBrightness:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSwitcher:Landroid/widget/TextSwitcher;

.field private mValue:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/i2c-gpio.6/i2c-adapter/i2c-6/6-0044/enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->fn:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/lge/hiddenmenu/device_test/ProximityTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/ProximityTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mListener:Landroid/hardware/SensorListener;

    .line 138
    return-void
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/ProximityTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/ProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->showProximityState()V

    return-void
.end method

.method private setBrightness(I)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 301
    :try_start_0
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 303
    .local v0, hardware:Landroid/os/IHardwareService;
    const-string v1, "Hidden Menu - Proximity Test"

    const-string v2, "onConfigurationChanged!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v0, :cond_16

    .line 305
    invoke-interface {v0, p1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 310
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_16
    :goto_16
    return-void

    .line 307
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method private setProximityOnOff(I)V
    .registers 5
    .parameter "aProximityOn"

    .prologue
    .line 120
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->fn:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 122
    .local v0, Proximity_sensor:Ljava/io/BufferedWriter;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 124
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 138
    .end local v0           #Proximity_sensor:Ljava/io/BufferedWriter;
    :goto_1a
    return-void

    .line 130
    .restart local v0       #Proximity_sensor:Ljava/io/BufferedWriter;
    :cond_1b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 131
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_1a

    .line 135
    .end local v0           #Proximity_sensor:Ljava/io/BufferedWriter;
    :catch_27
    move-exception v1

    goto :goto_1a
.end method

.method private showProximityState()V
    .registers 4

    .prologue
    .line 283
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_27

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nProximity : Near "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, str:Ljava/lang/String;
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->setBrightness(I)V

    .line 294
    :goto_21
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void

    .line 288
    .end local v0           #str:Ljava/lang/String;
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nProximity : Away "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .restart local v0       #str:Ljava/lang/String;
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->setBrightness(I)V

    goto :goto_21
.end method


# virtual methods
.method public ReadIntFromFile()I
    .registers 7

    .prologue
    .line 103
    const/4 v3, 0x0

    .line 105
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->fn:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v3

    .line 112
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_15
    return v3

    .line 108
    :catch_16
    move-exception v4

    move-object v0, v4

    .line 110
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 314
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 317
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 318
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 264
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 265
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 266
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->showProximityState()V

    .line 267
    const-string v0, "Hidden Menu - Proximity Test"

    const-string v1, "onConfigurationChanged!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 147
    const v3, 0x7f03002a

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->setContentView(I)V

    .line 149
    const v3, 0x7f070090

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    .line 150
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 151
    const v3, 0x7f070091

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    .line 152
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 153
    const v3, 0x7f070092

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    .line 154
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 156
    const/high16 v3, 0x10a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 157
    .local v1, in:Landroid/view/animation/Animation;
    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 158
    .local v2, out:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 165
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->ReadIntFromFile()I

    move-result v0

    .line 166
    .local v0, ProximityStatus:I
    if-nez v0, :cond_79

    .line 167
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->setProximityOnOff(I)V

    .line 169
    :cond_79
    sput v4, Lcom/lge/hiddenmenu/device_test/ProximityTest;->numClose:I

    sput v4, Lcom/lge/hiddenmenu/device_test/ProximityTest;->numOpen:I

    .line 170
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->showProximityState()V

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 178
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 209
    sparse-switch p1, :sswitch_data_84

    .line 257
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    :goto_9
    return v8

    .line 211
    :sswitch_a
    iget-object v8, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_5

    .line 217
    const-string v8, "Auto All Test is canceled!"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 219
    .local v5, mToast:Landroid/widget/Toast;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->ReadIntFromFile()I

    move-result v2

    .line 220
    .local v2, ProximityStatus_2:I
    if-ne v2, v10, :cond_21

    .line 221
    invoke-direct {p0, v11}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->setProximityOnOff(I)V

    .line 224
    :cond_21
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 225
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->finish()V

    move v8, v10

    .line 226
    goto :goto_9

    .line 230
    .end local v2           #ProximityStatus_2:I
    .end local v5           #mToast:Landroid/widget/Toast;
    :sswitch_29
    iget-object v8, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_5

    .line 232
    const-string v6, "com.lge.hiddenmenu"

    .line 233
    .local v6, packageName:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v4, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 235
    .local v3, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 236
    .local v7, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 237
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 241
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".device_test.alc_test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    const-string v3, "ALCTest"

    .line 244
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->ReadIntFromFile()I

    move-result v2

    .line 245
    .restart local v2       #ProximityStatus_2:I
    if-ne v2, v10, :cond_5e

    .line 246
    invoke-direct {p0, v11}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->setProximityOnOff(I)V

    .line 248
    :cond_5e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->finish()V

    move v8, v10

    .line 252
    goto :goto_9

    .line 209
    nop

    :sswitch_data_84
    .sparse-switch
        0x4 -> :sswitch_a
        0x52 -> :sswitch_29
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->mListener:Landroid/hardware/SensorListener;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 196
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ProximityTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/ProximityTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 199
    return-void
.end method
