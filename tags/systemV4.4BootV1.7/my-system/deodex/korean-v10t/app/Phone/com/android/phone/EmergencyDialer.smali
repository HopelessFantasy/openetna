.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final ACTION_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final BAD_EMERGENCY_NUMBER_DIALOG:I = 0x0

.field private static final DBG:Z = false

.field private static final LAST_NUMBER:Ljava/lang/String; = "lastNumber"

.field private static final LOG_TAG:Ljava/lang/String; = "emergency_dialer"

.field private static final STOP_TONE:I = 0x1

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x32


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDeleteBackground:Landroid/graphics/drawable/Drawable;

.field private mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

.field mDigits:Landroid/widget/EditText;

.field private mDigitsBackground:Landroid/graphics/drawable/Drawable;

.field private mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private mLastNumber:Ljava/lang/String;

.field private mMenuButtonCall:Landroid/widget/Button;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field mToneStopper:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    new-instance v0, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyDialer;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method private displayErrorBadNumber(Ljava/lang/String;)V
    .registers 9
    .parameter "number"

    .prologue
    const/4 v6, 0x1

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 425
    const v3, 0x7f0901d3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, errMsg:Ljava/lang/CharSequence;
    :goto_13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0901d0

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 434
    const v3, 0x7f09003d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 439
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 440
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 441
    return-void

    .line 427
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #errMsg:Ljava/lang/CharSequence;
    :cond_3f
    const v3, 0x7f0901d4

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #errMsg:Ljava/lang/CharSequence;
    goto :goto_13
.end method

.method private keyPressed(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 296
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 297
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 298
    return-void
.end method

.method private setupKeypad()V
    .registers 3

    .prologue
    .line 255
    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v1, 0x7f06003f

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v1, 0x7f060041

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v1, 0x7f060043

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f060045

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v1, 0x7f060046

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .parameter "input"

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 121
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 125
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_46

    .line 126
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDeleteBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_45
    return-void

    .line 135
    :cond_46
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_45
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 111
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .registers 1

    .prologue
    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 314
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 317
    .local v0, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_8a

    .line 395
    :goto_16
    :pswitch_16
    return-void

    .line 319
    :pswitch_17
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 320
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 324
    :pswitch_1f
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 325
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 329
    :pswitch_27
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 330
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 334
    :pswitch_2f
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 335
    invoke-direct {p0, v6}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 339
    :pswitch_37
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 340
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 344
    :pswitch_41
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 345
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 349
    :pswitch_4b
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 350
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 354
    :pswitch_54
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 355
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 359
    :pswitch_5d
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 360
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 364
    :pswitch_66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 365
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 369
    :pswitch_6e
    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 370
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 374
    :pswitch_77
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 375
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 386
    :pswitch_80
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_16

    .line 390
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_16

    .line 317
    :pswitch_data_8a
    .packed-switch 0x7f06003d
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
        :pswitch_37
        :pswitch_41
        :pswitch_4b
        :pswitch_54
        :pswitch_5d
        :pswitch_77
        :pswitch_66
        :pswitch_6e
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_80
        :pswitch_16
        :pswitch_86
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const v6, 0x7f020090

    const v5, 0x7f02008c

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 157
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDeleteBackground:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 164
    const v4, 0x7f06005a

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 165
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 166
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 168
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 172
    const v4, 0x7f06003d

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_5e

    .line 174
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 177
    :cond_5e
    const v4, 0x7f06005b

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 178
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    const v4, 0x7f06005d

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mMenuButtonCall:Landroid/widget/Button;

    .line 182
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mMenuButtonCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    if-eqz p1, :cond_86

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    :cond_86
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 192
    :try_start_89
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_c6

    if-nez v5, :cond_97

    .line 194
    :try_start_8d
    new-instance v5, Landroid/media/ToneGenerator;

    const/4 v6, 0x2

    const/16 v7, 0x32

    invoke-direct {v5, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_c6
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_97} :catch_a8

    .line 201
    :cond_97
    :goto_97
    :try_start_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_c6

    .line 203
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    return-void

    .line 196
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :catch_a8
    move-exception v5

    move-object v0, v5

    .line 197
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_aa
    const-string v5, "emergency_dialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_97

    .line 201
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_c6
    move-exception v5

    monitor-exit v4
    :try_end_c8
    .catchall {:try_start_aa .. :try_end_c8} :catchall_c6

    throw v5
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_6
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_18

    .line 213
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 217
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    .line 218
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void

    .line 217
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 309
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 303
    :pswitch_9
    const/16 v0, 0x42

    if-ne p2, v0, :cond_7

    .line 304
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    .line 305
    const/4 v0, 0x1

    goto :goto_8

    .line 301
    :pswitch_data_12
    .packed-switch 0x7f06005a
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 278
    packed-switch p1, :pswitch_data_22

    .line 292
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 280
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 284
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 289
    :goto_1b
    const/4 v0, 0x1

    goto :goto_7

    .line 287
    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_1b

    .line 278
    nop

    :pswitch_data_22
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 402
    .local v0, id:I
    sparse-switch v0, :sswitch_data_22

    move v1, v3

    .line 414
    :goto_9
    return v1

    .line 404
    :sswitch_a
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 405
    const/4 v1, 0x1

    goto :goto_9

    :sswitch_1f
    move v1, v3

    .line 410
    goto :goto_9

    .line 402
    nop

    :sswitch_data_22
    .sparse-switch
        0x7f060047 -> :sswitch_1f
        0x7f06005b -> :sswitch_a
    .end sparse-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 501
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableKeyguard()V

    .line 502
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 506
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_14
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_26

    .line 508
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 510
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 512
    :cond_26
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 232
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 450
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_5b

    .line 451
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDeleteBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 465
    :goto_2b
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_6f

    move v2, v6

    :goto_38
    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 470
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 471
    :try_start_3d
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_8f

    if-nez v3, :cond_4b

    .line 473
    :try_start_41
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x2

    const/16 v5, 0x32

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_8f
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_4b} :catch_71

    .line 480
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_8f

    .line 485
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 486
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableKeyguard()V

    .line 487
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 488
    return-void

    .line 458
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_5b
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 465
    :cond_6f
    const/4 v2, 0x0

    goto :goto_38

    .line 475
    :catch_71
    move-exception v3

    move-object v1, v3

    .line 476
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_73
    const-string v3, "emergency_dialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_4b

    .line 480
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_8f
    move-exception v3

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_73 .. :try_end_91} :catchall_8f

    throw v3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 115
    return-void
.end method

.method placeCall()V
    .registers 6

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 525
    if-eqz v1, :cond_18

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 527
    :cond_18
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 543
    :goto_1d
    return-void

    .line 530
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 532
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_1d

    .line 539
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3b
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 540
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->displayErrorBadNumber(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method playTone(I)V
    .registers 7
    .parameter "tone"

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_5

    .line 586
    :goto_4
    return-void

    .line 573
    :cond_5
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_8
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_29

    .line 575
    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    monitor-exit v0

    goto :goto_4

    .line 585
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v1

    .line 580
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 584
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 585
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_26

    goto :goto_4
.end method
