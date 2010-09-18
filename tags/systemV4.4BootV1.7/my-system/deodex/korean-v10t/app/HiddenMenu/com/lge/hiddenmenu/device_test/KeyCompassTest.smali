.class public Lcom/lge/hiddenmenu/device_test/KeyCompassTest;
.super Landroid/app/Activity;
.source "KeyCompassTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCompassTest"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private checkCompassFactoryOnOff:I

.field private final fn:Ljava/lang/String;

.field private final fnFactoryOnOff:Ljava/lang/String;

.field mBackButton:Landroid/widget/Button;

.field private final mListener:Landroid/hardware/SensorListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mText:Landroid/widget/EditText;

.field private mText1Listener:Landroid/view/View$OnKeyListener;

.field private mValues:[F

.field private mView:Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->checkCompassFactoryOnOff:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/i2c-gpio.7/i2c-adapter/i2c-7/7-001c/checkresult"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->fn:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/i2c-gpio.7/i2c-adapter/i2c-7/7-001c/checkopmode"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->fnFactoryOnOff:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mListener:Landroid/hardware/SensorListener;

    .line 264
    new-instance v0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$3;-><init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText1Listener:Landroid/view/View$OnKeyListener;

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mValues:[F

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mValues:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mView:Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private setCompassFactoryOnOff(I)V
    .registers 5
    .parameter "aCompass_FactoryMode"

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->fnFactoryOnOff:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    .local v0, Compass_FactoryMode:Ljava/io/BufferedWriter;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 91
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 92
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 106
    .end local v0           #Compass_FactoryMode:Ljava/io/BufferedWriter;
    :goto_1a
    return-void

    .line 98
    .restart local v0       #Compass_FactoryMode:Ljava/io/BufferedWriter;
    :cond_1b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 99
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_1a

    .line 103
    .end local v0           #Compass_FactoryMode:Ljava/io/BufferedWriter;
    :catch_27
    move-exception v1

    goto :goto_1a
.end method


# virtual methods
.method public ReadIntFromFile()I
    .registers 7

    .prologue
    .line 72
    const/4 v3, 0x0

    .line 74
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->fn:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v3

    .line 81
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_15
    return v3

    .line 77
    :catch_16
    move-exception v4

    move-object v0, v4

    .line 79
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 341
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 343
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 344
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 13
    .parameter "newConfig"

    .prologue
    const/4 v10, 0x1

    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 350
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->queryKeyboardOpen()Z

    move-result v4

    .line 351
    .local v4, keyboardOpen:Z
    const-string v7, "KeyCompassTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged keyboardOpen is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v4, :cond_71

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_71

    .line 354
    const-string v5, "com.lge.hiddenmenu"

    .line 355
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 357
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 358
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 359
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 361
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

    .line 362
    const-string v2, "QwertyTest"

    .line 364
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->finish()V

    .line 365
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

    .line 366
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->startActivity(Landroid/content/Intent;)V

    .line 369
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageName2:Ljava/lang/String;
    :cond_71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x5

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v3, mlinearLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v2, lp3:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mBackButton:Landroid/widget/Button;

    .line 126
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mBackButton:Landroid/widget/Button;

    const-string v5, "EXIT"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mBackButton:Landroid/widget/Button;

    new-instance v5, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    .line 141
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 142
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 143
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText1Listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 144
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 145
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 152
    new-instance v4, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;

    invoke-direct {v4, p0, p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;-><init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mView:Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;

    .line 153
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mView:Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->setContentView(Landroid/view/View;)V

    .line 162
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    sparse-switch p1, :sswitch_data_28

    move v1, v2

    .line 261
    :goto_6
    return v1

    .line 244
    :sswitch_7
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1a

    .line 246
    const-string v0, "Unknown"

    .line 247
    .local v0, str:Ljava/lang/String;
    const-string v0, "BACK"

    .line 248
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 249
    goto :goto_6

    .line 252
    .end local v0           #str:Ljava/lang/String;
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_6

    .line 255
    :sswitch_1f
    const-string v0, "MUSIC"

    .line 256
    .restart local v0       #str:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 257
    goto :goto_6

    .line 242
    :sswitch_data_28
    .sparse-switch
        0x4 -> :sswitch_7
        0xca -> :sswitch_1f
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 206
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mListener:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mSensor:Landroid/hardware/Sensor;

    .line 186
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->mListener:Landroid/hardware/SensorListener;

    invoke-virtual {v1, v2, v3, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 195
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 198
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_38

    .line 199
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 201
    :cond_38
    return-void
.end method

.method queryKeyboardOpen()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 377
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_f

    move v1, v2

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method
