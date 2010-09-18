.class public Lcom/android/contacts/TwelveKeyDialer;
.super Landroid/app/Activity;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/TwelveKeyDialer$AutoSearchAdapter;,
        Lcom/android/contacts/TwelveKeyDialer$AutoSearchEntryAdapter;,
        Lcom/android/contacts/TwelveKeyDialer$AutoSearchItemCache;,
        Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;,
        Lcom/android/contacts/TwelveKeyDialer$SearchMode;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final CLOSE_SILENT_POPUP:I = 0x2

.field private static final CLOSE_SILENT_POPUP_TIMEOUT:I = 0x7d0

.field private static final DIGIT_FONT_SIZE_BIG:I = 0x20

.field private static final DIGIT_FONT_SIZE_SMALL:I = 0x1b

.field private static final MAX_DIGITS_ON_LANDSCAPE:I = 0x13

.field private static final MAX_DIGITS_ON_PORTRAIT:I = 0xb

.field private static final MAX_LINES_ON_BIG_FONT:I = 0x1

.field private static final MAX_LINES_ON_SMALL_FONT:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION2:[Ljava/lang/String; = null

.field private static final START_AUTO_SEARCH:I = 0x3

.field private static final START_AUTO_SEARCH_TIMEOUT:I = 0x1f4

.field private static final STOP_TONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwelveKeyDialer"

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x1e

.field public static final mOpCode:Ljava/lang/String;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private isActionDial:Z

.field private lastCharacter:I

.field private lastStarPressedTime:J

.field private mAdapter:Lcom/android/contacts/TwelveKeyDialer$AutoSearchAdapter;

.field private mAddToContactMenuItem:Landroid/view/MenuItem;

.field private mAltKeyPressed:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoSearchEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mAutoSearchHandler:Landroid/os/Handler;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDeleteBackground:Landroid/graphics/drawable/Drawable;

.field private mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private mDialpad:Landroid/view/View;

.field private mDialpadAndPlaceCall:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsAndBackspace:Landroid/view/View;

.field private mDigitsBackground:Landroid/graphics/drawable/Drawable;

.field private mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private mHint:Ljava/lang/String;

.field private mIsAddCallMode:Z

.field private mMenuButtonCall:Landroid/widget/Button;

.field private mPeople:Landroid/database/Cursor;

.field private mPeople2:Landroid/database/Cursor;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfileChangeFlag:Z

.field private mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

.field mSilentDialogStopper:Landroid/os/Handler;

.field private mSilentModeDialog:Landroid/app/AlertDialog;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field mToneStopper:Landroid/os/Handler;

.field private starPressed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "number"

    const-string v5, "name"

    .line 151
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v5, v0, v2

    const-string v1, "number"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer;->PROJECTION:[Ljava/lang/String;

    .line 156
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v5, v0, v2

    const-string v1, "number"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer;->PROJECTION2:[Ljava/lang/String;

    .line 223
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer;->mOpCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 181
    iput-boolean v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mProfileChangeFlag:Z

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 217
    iput-boolean v1, p0, Lcom/android/contacts/TwelveKeyDialer;->starPressed:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/contacts/TwelveKeyDialer;->isActionDial:Z

    .line 237
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$1;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    .line 1046
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$3;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentDialogStopper:Landroid/os/Handler;

    .line 1268
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$4;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchHandler:Landroid/os/Handler;

    .line 1549
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$5;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneStopper:Landroid/os/Handler;

    .line 1863
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/TwelveKeyDialer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/TwelveKeyDialer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/TwelveKeyDialer;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/TwelveKeyDialer;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->alert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/TwelveKeyDialer;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/TwelveKeyDialer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/TwelveKeyDialer;->matchDialNumber(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/TwelveKeyDialer;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/TwelveKeyDialer;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/TwelveKeyDialer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method private autoSearch()V
    .registers 12

    .prologue
    const-string v10, "number"

    const-string v9, "name"

    .line 342
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    sget-object v7, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    if-ne v6, v7, :cond_e2

    .line 345
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    .line 346
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 349
    :cond_17
    const-string v5, ""

    .line 351
    .local v5, usedNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, cnt:I
    :goto_1a
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_6a

    .line 353
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    const-string v8, "name"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, hisName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, hisNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    if-eqz v2, :cond_62

    if-eqz v3, :cond_62

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, tempvalue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v4           #tempvalue:Ljava/lang/String;
    :cond_62
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 367
    .end local v2           #hisName:Ljava/lang/String;
    .end local v3           #hisNumber:Ljava/lang/String;
    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_c8

    .line 369
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    const-string v8, "name"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .restart local v2       #hisName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    .restart local v3       #hisNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    if-eqz v2, :cond_ad

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ad

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    :cond_ad
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b9

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c0

    .line 380
    :cond_b9
    move-object v5, v3

    .line 381
    move-object v4, v3

    .line 383
    .restart local v4       #tempvalue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v4           #tempvalue:Ljava/lang/String;
    :cond_c0
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 390
    .end local v2           #hisName:Ljava/lang/String;
    .end local v3           #hisNumber:Ljava/lang/String;
    :cond_c8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/TwelveKeyDialer$AutoSearchAdapter;

    new-instance v7, Lcom/android/contacts/TwelveKeyDialer$2;

    invoke-direct {v7, p0}, Lcom/android/contacts/TwelveKeyDialer$2;-><init>(Lcom/android/contacts/TwelveKeyDialer;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->alert:Landroid/app/AlertDialog;

    .line 421
    iget-object v6, p0, Lcom/android/contacts/TwelveKeyDialer;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 423
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #cnt:I
    .end local v5           #usedNumber:Ljava/lang/String;
    :cond_e2
    return-void
.end method

.method private dialpadChooserVisible()Z
    .registers 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private dismissAutoSearch()V
    .registers 3

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    return-void
.end method

.method private getComparableNumberFromDialer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, hint:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1d

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1f

    .line 267
    :cond_1d
    const/4 v1, 0x0

    .line 270
    :goto_1e
    return-object v1

    :cond_1f
    move-object v1, v0

    goto :goto_1e
.end method

.method private keyChanged(I)V
    .registers 7
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    .line 1242
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1243
    .local v0, event:Landroid/view/KeyEvent;
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_c

    .line 1244
    iput-boolean v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    .line 1245
    :cond_c
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1254
    :goto_1c
    return-void

    .line 1249
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1250
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1253
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1c
.end method

.method private keyPressed(I)V
    .registers 5
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 1152
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1154
    .local v0, event:Landroid/view/KeyEvent;
    iget-boolean v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v1, :cond_c

    .line 1155
    iput-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    .line 1157
    :cond_c
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1160
    const/16 v1, 0x43

    if-ne p1, v1, :cond_2c

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1162
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1165
    :cond_2c
    return-void
.end method

.method private matchCallLogNumber(Ljava/lang/String;)Z
    .registers 8
    .parameter "hint"

    .prologue
    .line 287
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/TwelveKeyDialer;->PROJECTION2:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace(number,\'-\',\'\') LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "number"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/TwelveKeyDialer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    .line 289
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method private matchContactNumber(Ljava/lang/String;)Z
    .registers 8
    .parameter "hint"

    .prologue
    .line 275
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/TwelveKeyDialer;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace(number,\'-\',\'\') LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "number"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/TwelveKeyDialer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    .line 278
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method private matchDialNumber(Z)V
    .registers 9
    .parameter "fullSearch"

    .prologue
    const/4 v6, 0x0

    .line 297
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->getComparableNumberFromDialer()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, hint:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 333
    :goto_7
    return-void

    .line 304
    :cond_8
    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mHint:Ljava/lang/String;

    .line 307
    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->matchCallLogNumber(Ljava/lang/String;)Z

    move-result v1

    .line 308
    .local v1, matchPart1:Z
    if-nez p1, :cond_3d

    .line 309
    if-eqz v1, :cond_2d

    .line 310
    sget-object v3, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    .line 326
    :goto_16
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    sget-object v4, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    if-ne v3, v4, :cond_4f

    .line 327
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02011a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 312
    :cond_2d
    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->matchContactNumber(Ljava/lang/String;)Z

    move-result v2

    .line 313
    .local v2, matchPart2:Z
    if-eqz v2, :cond_38

    .line 314
    sget-object v3, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    goto :goto_16

    .line 316
    :cond_38
    sget-object v3, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    goto :goto_16

    .line 319
    .end local v2           #matchPart2:Z
    :cond_3d
    invoke-direct {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->matchContactNumber(Ljava/lang/String;)Z

    move-result v2

    .line 320
    .restart local v2       #matchPart2:Z
    if-nez v1, :cond_45

    if-eqz v2, :cond_4a

    .line 321
    :cond_45
    sget-object v3, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    goto :goto_16

    .line 323
    :cond_4a
    sget-object v3, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    goto :goto_16

    .line 330
    .end local v2           #matchPart2:Z
    :cond_4f
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020119

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method private phoneIsInUse()Z
    .registers 6

    .prologue
    .line 1811
    const/4 v2, 0x0

    .line 1813
    .local v2, phoneInUse:Z
    :try_start_1
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1814
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_19

    move-result v3

    if-nez v3, :cond_16

    const/4 v3, 0x1

    move v2, v3

    .line 1818
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_15
    :goto_15
    return v2

    .line 1814
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    const/4 v3, 0x0

    move v2, v3

    goto :goto_15

    .line 1815
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 1816
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TwelveKeyDialer"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private phoneNumberRestore()V
    .registers 5

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 518
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_f

    .line 520
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 521
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .end local v2           #s:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method private playSystemAlert()V
    .registers 7

    .prologue
    .line 979
    :try_start_0
    const-string v2, "/system/media/audio/notifications/F1_New_Call.ogg"

    .line 981
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_c

    .line 983
    const-string v3, "nodebug"

    const-string v4, "Error!! set Default Notification  /system/notification_sound"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v2           #path:Ljava/lang/String;
    :goto_b
    return-void

    .line 985
    .restart local v2       #path:Ljava/lang/String;
    :cond_c
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 986
    .local v1, mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 988
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_b

    .line 990
    .end local v1           #mMediaPlayer:Landroid/media/MediaPlayer;
    .end local v2           #path:Ljava/lang/String;
    :catch_1b
    move-exception v3

    move-object v0, v3

    .line 991
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private prepareAutoSearch()V
    .registers 5

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1262
    return-void
.end method

.method private resolveIntent()Z
    .registers 16

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 693
    const/4 v9, 0x0

    .line 697
    .local v9, ignoreState:Z
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->isChild()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 698
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 699
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "ignore-state"

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 706
    :goto_18
    iput-boolean v14, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 709
    const/4 v11, 0x0

    .line 712
    .local v11, needToShowDialpadChooser:Z
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 713
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 715
    :cond_2f
    const-string v0, "add_call_mode"

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 716
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 717
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_52

    .line 719
    const-string v0, "tel"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 721
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 722
    .local v8, data:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/contacts/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;)V

    .line 723
    iput-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->isActionDial:Z

    .line 760
    .end local v8           #data:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_52
    :goto_52
    invoke-direct {p0, v11}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    .line 762
    return v9

    .line 701
    .end local v6           #action:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #needToShowDialpadChooser:Z
    :cond_56
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .restart local v10       #intent:Landroid/content/Intent;
    goto :goto_18

    .line 726
    .restart local v6       #action:Ljava/lang/String;
    .restart local v11       #needToShowDialpadChooser:Z
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_5b
    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 727
    .local v12, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 730
    :cond_6f
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v14

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 732
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_52

    .line 733
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 735
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;)V

    .line 737
    :cond_92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_52

    .line 742
    .end local v7           #c:Landroid/database/Cursor;
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_96
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 752
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 754
    const/4 v11, 0x1

    goto :goto_52
.end method

.method private returnToInCallScreen(Z)V
    .registers 6
    .parameter "showDialpad"

    .prologue
    .line 1789
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1790
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_13

    .line 1803
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1804
    return-void

    .line 1791
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 1792
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TwelveKeyDialer"

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private setupKeypad()V
    .registers 3

    .prologue
    .line 797
    const v1, 0x7f05001f

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 798
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 801
    const v1, 0x7f050020

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    const v1, 0x7f050021

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    const v1, 0x7f050022

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    const v1, 0x7f050026

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    const v1, 0x7f050027

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    const v1, 0x7f050029

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 814
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 819
    const v1, 0x7f05002a

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 820
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 825
    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 826
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 829
    return-void
.end method

.method private showDialpadChooser(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1619
    if-eqz p1, :cond_2b

    .line 1621
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsAndBackspace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadAndPlaceCall:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadAndPlaceCall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    :cond_13
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    if-nez v0, :cond_2a

    .line 1631
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    .line 1632
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooserAdapter:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1643
    :cond_2a
    :goto_2a
    return-void

    .line 1636
    :cond_2b
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsAndBackspace:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1638
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadAndPlaceCall:Landroid/view/View;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadAndPlaceCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    :cond_39
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2a
.end method

.method private showSilentModeDialog(I)V
    .registers 8
    .parameter "resid"

    .prologue
    const/4 v4, 0x2

    .line 1026
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1028
    .local v1, msg:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1030
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1034
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentModeDialog:Landroid/app/AlertDialog;

    .line 1038
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1041
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1042
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentDialogStopper:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentDialogStopper:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1044
    return-void
.end method

.method private toggleCurrentLine()V
    .registers 6

    .prologue
    .line 1063
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->toggleCurrentLine()I

    move-result v0

    .line 1065
    .local v0, newLine:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    .line 1079
    :goto_b
    return-void

    .line 1068
    :cond_c
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1069
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_26

    .line 1071
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->playSystemAlert()V

    .line 1074
    :cond_26
    if-nez v0, :cond_30

    const v3, 0x7f060126

    move v1, v3

    .line 1075
    .local v1, strId:I
    :goto_2c
    invoke-direct {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->showSilentModeDialog(I)V

    goto :goto_b

    .line 1074
    .end local v1           #strId:I
    :cond_30
    const v3, 0x7f060127

    move v1, v3

    goto :goto_2c
.end method

.method private toggleSilentMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 999
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v3, :cond_2f

    .line 1001
    const v2, 0x7f060122

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->showSilentModeDialog(I)V

    .line 1002
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1003
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 1004
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1018
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1020
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v3, 0x41d8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1021
    return-void

    .line 1005
    :cond_2f
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v3, :cond_1e

    .line 1006
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1008
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_48

    .line 1010
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->playSystemAlert()V

    .line 1014
    :cond_48
    const v2, 0x7f060123

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->showSilentModeDialog(I)V

    .line 1015
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1e
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .parameter "input"

    .prologue
    const/4 v4, 0x0

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {p0, v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 449
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 451
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v2, 0x41d8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 455
    :cond_1d
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->getComparableNumberFromDialer()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, hint:Ljava/lang/String;
    if-nez v0, :cond_27

    .line 458
    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    .line 464
    :cond_27
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_68

    .line 465
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    sget-object v2, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    if-ne v1, v2, :cond_57

    .line 471
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 484
    :goto_53
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->setDialFont()V

    .line 486
    return-void

    .line 474
    :cond_57
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_53

    .line 478
    :cond_68
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_53
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 438
    return-void
.end method

.method callVoicemail()V
    .registers 6

    .prologue
    .line 1522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1524
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1525
    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1526
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1528
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v2, 0x41d8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1529
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    .line 1530
    return-void
.end method

.method protected getContentViewResource()I
    .registers 2

    .prologue
    .line 688
    const v0, 0x7f03002f

    return v0
.end method

.method public isLandscape()Z
    .registers 3

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 512
    .local v0, sOrientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method protected maybeAddNumberFormatting()V
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 673
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f050028

    if-eq v4, v5, :cond_11

    .line 1284
    iput-boolean v7, p0, Lcom/android/contacts/TwelveKeyDialer;->starPressed:Z

    .line 1287
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_166

    .line 1456
    :cond_18
    :goto_18
    return-void

    .line 1289
    :sswitch_19
    invoke-virtual {p0, v6}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1290
    invoke-direct {p0, v10}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1292
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1293
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1295
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1299
    :sswitch_29
    invoke-virtual {p0, v8}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1300
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1302
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1303
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1305
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1309
    :sswitch_3b
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1310
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1312
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1313
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1315
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1319
    :sswitch_4e
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1320
    const/16 v4, 0xb

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1322
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1323
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1325
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1329
    :sswitch_61
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1330
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1332
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1333
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1335
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1339
    :sswitch_74
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1340
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1342
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1343
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1345
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1349
    :sswitch_87
    invoke-virtual {p0, v9}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1350
    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1352
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1353
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1355
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto :goto_18

    .line 1359
    :sswitch_99
    invoke-virtual {p0, v10}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1360
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1362
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1363
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1365
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto/16 :goto_18

    .line 1369
    :sswitch_ac
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1370
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1372
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1373
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1375
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto/16 :goto_18

    .line 1379
    :sswitch_c1
    invoke-virtual {p0, v7}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1380
    invoke-direct {p0, v9}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1382
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1383
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1385
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto/16 :goto_18

    .line 1389
    :sswitch_d2
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1390
    const/16 v4, 0x12

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1392
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1393
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1395
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto/16 :goto_18

    .line 1399
    :sswitch_e7
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1403
    .local v2, realTime:J
    iget-wide v4, p0, Lcom/android/contacts/TwelveKeyDialer;->lastStarPressedTime:J

    sub-long v0, v2, v4

    .line 1404
    .local v0, keyPressDiff:J
    iget-boolean v4, p0, Lcom/android/contacts/TwelveKeyDialer;->starPressed:Z

    if-eqz v4, :cond_12c

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_12c

    .line 1405
    iget v4, p0, Lcom/android/contacts/TwelveKeyDialer;->lastCharacter:I

    if-nez v4, :cond_118

    .line 1406
    const/16 v4, 0x37

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyChanged(I)V

    .line 1407
    iput v6, p0, Lcom/android/contacts/TwelveKeyDialer;->lastCharacter:I

    .line 1420
    :goto_109
    iput-boolean v6, p0, Lcom/android/contacts/TwelveKeyDialer;->starPressed:Z

    .line 1421
    iput-wide v2, p0, Lcom/android/contacts/TwelveKeyDialer;->lastStarPressedTime:J

    .line 1424
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1425
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    .line 1427
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    goto/16 :goto_18

    .line 1408
    :cond_118
    iget v4, p0, Lcom/android/contacts/TwelveKeyDialer;->lastCharacter:I

    if-ne v4, v6, :cond_124

    .line 1409
    const/16 v4, 0x4a

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyChanged(I)V

    .line 1410
    iput v8, p0, Lcom/android/contacts/TwelveKeyDialer;->lastCharacter:I

    goto :goto_109

    .line 1412
    :cond_124
    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyChanged(I)V

    .line 1413
    iput v7, p0, Lcom/android/contacts/TwelveKeyDialer;->lastCharacter:I

    goto :goto_109

    .line 1416
    :cond_12c
    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1417
    iput v7, p0, Lcom/android/contacts/TwelveKeyDialer;->lastCharacter:I

    goto :goto_109

    .line 1431
    .end local v0           #keyPressDiff:J
    .end local v2           #realTime:J
    :sswitch_134
    const/16 v4, 0x43

    invoke-direct {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1433
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1434
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    goto/16 :goto_18

    .line 1441
    :sswitch_141
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1442
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 1443
    invoke-direct {p0, v6}, Lcom/android/contacts/TwelveKeyDialer;->matchDialNumber(Z)V

    .line 1444
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    sget-object v5, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->FOUND:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    if-ne v4, v5, :cond_18

    .line 1445
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->autoSearch()V

    goto/16 :goto_18

    .line 1451
    :sswitch_161
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->placeCall()V

    goto/16 :goto_18

    .line 1287
    :sswitch_data_166
    .sparse-switch
        0x7f05001f -> :sswitch_19
        0x7f050020 -> :sswitch_29
        0x7f050021 -> :sswitch_3b
        0x7f050022 -> :sswitch_4e
        0x7f050023 -> :sswitch_61
        0x7f050024 -> :sswitch_74
        0x7f050025 -> :sswitch_87
        0x7f050026 -> :sswitch_99
        0x7f050027 -> :sswitch_ac
        0x7f050028 -> :sswitch_e7
        0x7f050029 -> :sswitch_c1
        0x7f05002a -> :sswitch_d2
        0x7f05004d -> :sswitch_141
        0x7f05004e -> :sswitch_134
        0x7f050050 -> :sswitch_161
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const v5, 0x7f02011b

    const v4, 0x7f020116

    const/4 v7, 0x0

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentViewResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->setContentView(I)V

    .line 534
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 546
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    .line 547
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 548
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteBackground:Landroid/graphics/drawable/Drawable;

    .line 549
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDeleteEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 552
    const v3, 0x7f05004d

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    .line 554
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 556
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/LGEDialerKeyListener;->getInstance()Landroid/text/method/LGEDialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 568
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->maybeAddNumberFormatting()V

    .line 573
    const v3, 0x7f05001f

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_64

    .line 575
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->setupKeypad()V

    .line 578
    :cond_64
    const v3, 0x7f05004e

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 579
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 581
    iput-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDelete:Landroid/view/View;

    .line 583
    const v3, 0x7f05004c

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigitsAndBackspace:Landroid/view/View;

    .line 585
    const v3, 0x7f05004f

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadAndPlaceCall:Landroid/view/View;

    .line 587
    const v3, 0x7f05001e

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpad:Landroid/view/View;

    .line 590
    const v3, 0x7f050051

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    .line 591
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 594
    const v3, 0x7f050050

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuButtonCall:Landroid/widget/Button;

    .line 595
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mMenuButtonCall:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    sget-object v3, Lcom/android/contacts/TwelveKeyDialer$SearchMode;->IDLE:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mSearchMode:Lcom/android/contacts/TwelveKeyDialer$SearchMode;

    .line 599
    new-instance v3, Lcom/android/contacts/TwelveKeyDialer$AutoSearchAdapter;

    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mAutoSearchEntries:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4}, Lcom/android/contacts/TwelveKeyDialer$AutoSearchAdapter;-><init>(Lcom/android/contacts/TwelveKeyDialer;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/TwelveKeyDialer$AutoSearchAdapter;

    .line 603
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    move-result v3

    if-nez v3, :cond_c6

    if-eqz p1, :cond_c6

    .line 604
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 612
    :cond_c6
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_d4

    .line 614
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    .line 620
    :cond_d4
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 621
    :try_start_d7
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_d9
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_10a

    if-nez v4, :cond_e5

    .line 623
    :try_start_db
    new-instance v4, Landroid/media/ToneGenerator;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-direct {v4, v5, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_10a
    .catch Ljava/lang/RuntimeException; {:try_start_db .. :try_end_e5} :catch_ec

    .line 630
    :cond_e5
    :goto_e5
    :try_start_e5
    monitor-exit v3
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_10a

    .line 632
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneNumberRestore()V

    .line 635
    iput-boolean v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    .line 637
    return-void

    .line 625
    :catch_ec
    move-exception v4

    move-object v0, v4

    .line 626
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_ee
    const-string v4, "TwelveKeyDialer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while creating local tone generator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_e5

    .line 630
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_10a
    move-exception v4

    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_ee .. :try_end_10c} :catchall_10a

    throw v4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 948
    const v0, 0x7f060069

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    .line 951
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 644
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 645
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 646
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    if-eqz v0, :cond_15

    .line 647
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mPeople2:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 651
    :cond_15
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24

    .line 652
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentDialogStopper:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mSilentModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 657
    :cond_24
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_27
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_39

    .line 659
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 663
    :cond_39
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1751
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;

    .line 1753
    .local v0, item:Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;
    iget v1, v0, Lcom/android/contacts/TwelveKeyDialer$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1754
    .local v1, itemId:I
    packed-switch v1, :pswitch_data_32

    .line 1777
    const-string v2, "TwelveKeyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :goto_24
    return-void

    .line 1759
    :pswitch_25
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->returnToInCallScreen(Z)V

    goto :goto_24

    .line 1766
    :pswitch_2a
    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->returnToInCallScreen(Z)V

    goto :goto_24

    .line 1773
    :pswitch_2e
    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    goto :goto_24

    .line 1754
    :pswitch_data_32
    .packed-switch 0x65
        :pswitch_25
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_84

    .line 1177
    :cond_9
    sparse-switch p2, :sswitch_data_8a

    .line 1226
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_12

    .line 1227
    iput-boolean v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    .line 1233
    :cond_12
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dismissAutoSearch()V

    .line 1234
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->prepareAutoSearch()V

    move v2, v7

    .line 1237
    :goto_19
    return v2

    .line 1170
    :pswitch_1a
    const/16 v2, 0x42

    if-ne p2, v2, :cond_9

    .line 1171
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->placeCall()V

    move v2, v6

    .line 1172
    goto :goto_19

    .line 1180
    :sswitch_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1181
    .local v0, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    .line 1183
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1185
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    move v2, v6

    .line 1187
    goto :goto_19

    .line 1193
    .end local v0           #timeDiff:J
    :sswitch_48
    iput-boolean v6, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    move v2, v6

    .line 1194
    goto :goto_19

    .line 1196
    :sswitch_4c
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_12

    .line 1197
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v6

    .line 1198
    goto :goto_19

    .line 1202
    :sswitch_57
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_12

    .line 1203
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v6

    .line 1204
    goto :goto_19

    .line 1208
    :sswitch_62
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_12

    .line 1209
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v6

    .line 1210
    goto :goto_19

    .line 1214
    :sswitch_6d
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_12

    .line 1215
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v6

    .line 1216
    goto :goto_19

    .line 1220
    :sswitch_78
    iget-boolean v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAltKeyPressed:Z

    if-eqz v2, :cond_12

    .line 1221
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    move v2, v6

    .line 1222
    goto :goto_19

    .line 1168
    nop

    :pswitch_data_84
    .packed-switch 0x7f05004d
        :pswitch_1a
    .end packed-switch

    .line 1177
    :sswitch_data_8a
    .sparse-switch
        0xa -> :sswitch_6d
        0xf -> :sswitch_62
        0x1e -> :sswitch_57
        0x2c -> :sswitch_4c
        0x31 -> :sswitch_78
        0x39 -> :sswitch_48
        0x43 -> :sswitch_23
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 1084
    sparse-switch p1, :sswitch_data_66

    .line 1121
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_8
    return v7

    .line 1086
    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 1087
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v0, v7

    if-ltz v7, :cond_2b

    .line 1089
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v4, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    :try_start_28
    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2b} :catch_63

    .end local v4           #intent:Landroid/content/Intent;
    :cond_2b
    :goto_2b
    move v7, v11

    .line 1096
    goto :goto_8

    .line 1099
    .end local v0           #callPressDiff:J
    :sswitch_2d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    sub-long v5, v7, v9

    .line 1100
    .local v5, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-ltz v7, :cond_43

    .line 1102
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    :cond_43
    move v7, v11

    .line 1104
    goto :goto_8

    .line 1109
    .end local v5           #timeDiff:J
    :sswitch_45
    iget-boolean v7, p0, Lcom/android/contacts/TwelveKeyDialer;->mProfileChangeFlag:Z

    if-nez v7, :cond_61

    .line 1110
    iput-boolean v11, p0, Lcom/android/contacts/TwelveKeyDialer;->mProfileChangeFlag:Z

    .line 1111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    sub-long v2, v7, v9

    .line 1112
    .local v2, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-ltz v7, :cond_61

    .line 1113
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->toggleSilentMode()V

    .end local v2           #duration:J
    :cond_61
    move v7, v11

    .line 1116
    goto :goto_8

    .line 1093
    .restart local v0       #callPressDiff:J
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_63
    move-exception v7

    goto :goto_2b

    .line 1084
    nop

    :sswitch_data_66
    .sparse-switch
        0x5 -> :sswitch_9
        0x8 -> :sswitch_2d
        0x38 -> :sswitch_45
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1126
    sparse-switch p1, :sswitch_data_30

    .line 1148
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 1128
    :sswitch_9
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mIsAddCallMode:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1132
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    :goto_20
    move v0, v1

    .line 1137
    goto :goto_8

    .line 1135
    :cond_22
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->placeCall()V

    goto :goto_20

    .line 1141
    :sswitch_26
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mProfileChangeFlag:Z

    if-ne v0, v1, :cond_2d

    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mProfileChangeFlag:Z

    :cond_2d
    move v0, v1

    .line 1144
    goto :goto_8

    .line 1126
    nop

    :sswitch_data_30
    .sparse-switch
        0x5 -> :sswitch_9
        0x38 -> :sswitch_26
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1466
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1467
    .local v0, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1468
    .local v1, id:I
    sparse-switch v1, :sswitch_data_58

    move v2, v4

    .line 1518
    :goto_10
    return v2

    .line 1470
    :sswitch_11
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1472
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    move v2, v5

    .line 1474
    goto :goto_10

    .line 1477
    :sswitch_1d
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_2b

    .line 1478
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->callVoicemail()V

    .line 1479
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    move v2, v5

    .line 1480
    goto :goto_10

    :cond_2b
    move v2, v4

    .line 1482
    goto :goto_10

    .line 1485
    :sswitch_2d
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->keyPressed(I)V

    .line 1486
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->vibratorOn()V

    move v2, v5

    .line 1487
    goto :goto_10

    .line 1491
    :sswitch_37
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_42

    .line 1492
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->toggleSilentMode()V

    move v2, v5

    .line 1493
    goto :goto_10

    :cond_42
    move v2, v4

    .line 1495
    goto :goto_10

    :sswitch_44
    move v2, v4

    .line 1507
    goto :goto_10

    .line 1513
    :sswitch_46
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    move v2, v4

    .line 1514
    goto :goto_10

    .line 1468
    nop

    :sswitch_data_58
    .sparse-switch
        0x7f05001f -> :sswitch_1d
        0x7f050028 -> :sswitch_44
        0x7f050029 -> :sswitch_2d
        0x7f05002a -> :sswitch_37
        0x7f05004d -> :sswitch_46
        0x7f05004e -> :sswitch_11
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "newIntent"

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/android/contacts/TwelveKeyDialer;->setIntent(Landroid/content/Intent;)V

    .line 781
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    .line 782
    return-void
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 918
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 920
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 921
    .local v1, number:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/contacts/TwelveKeyDialer;->isActionDial:Z

    if-eqz v3, :cond_32

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 923
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->isChild()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 924
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 928
    .local v0, intent:Landroid/content/Intent;
    :goto_27
    const-string v3, "tel"

    invoke-static {v3, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 929
    iput-boolean v4, p0, Lcom/android/contacts/TwelveKeyDialer;->isActionDial:Z

    .line 934
    .end local v0           #intent:Landroid/content/Intent;
    :cond_32
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 935
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 937
    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 938
    :try_start_42
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v4, :cond_54

    .line 939
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4}, Landroid/media/ToneGenerator;->release()V

    .line 941
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 943
    :cond_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_5b

    .line 944
    return-void

    .line 926
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_56
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_27

    .line 943
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v2       #telephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_5b
    move-exception v4

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v4
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 786
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 792
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 793
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 957
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->dialpadChooserVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    .line 972
    :goto_9
    return v2

    .line 961
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 962
    .local v0, digits:Ljava/lang/CharSequence;
    if-eqz v0, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 963
    :cond_18
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1d
    move v2, v4

    .line 972
    goto :goto_9

    .line 966
    :cond_1f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "phone"

    iget-object v3, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 968
    const-string v2, "vnd.android.cursor.item/person"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 970
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mAddToContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1d
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 669
    return-void
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 833
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 838
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 839
    :try_start_8
    iget-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_9c

    if-nez v5, :cond_16

    .line 841
    :try_start_c
    new-instance v5, Landroid/media/ToneGenerator;

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-direct {v5, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_9c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_16} :catch_7d

    .line 848
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_9c

    .line 849
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 852
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_2c

    instance-of v4, v2, Lcom/android/contacts/DialtactsActivity;

    if-eqz v4, :cond_2c

    .line 853
    check-cast v2, Lcom/android/contacts/DialtactsActivity;

    .end local v2           #parent:Landroid/app/Activity;
    invoke-virtual {v2}, Lcom/android/contacts/DialtactsActivity;->getAndClearDialUri()Landroid/net/Uri;

    move-result-object v0

    .line 854
    .local v0, dialUri:Landroid/net/Uri;
    if-eqz v0, :cond_2c

    .line 855
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->resolveIntent()Z

    .line 862
    .end local v0           #dialUri:Landroid/net/Uri;
    :cond_2c
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 863
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 878
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 879
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const v5, 0x7f060072

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 880
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 882
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v5, 0x4200

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 890
    :cond_60
    :goto_60
    invoke-direct {p0}, Lcom/android/contacts/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_69

    .line 893
    invoke-direct {p0, v8}, Lcom/android/contacts/TwelveKeyDialer;->showDialpadChooser(Z)V

    .line 898
    :cond_69
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 899
    invoke-direct {p0, v8}, Lcom/android/contacts/TwelveKeyDialer;->matchDialNumber(Z)V

    .line 901
    :cond_7c
    return-void

    .line 843
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_7d
    move-exception v5

    move-object v1, v5

    .line 844
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_7f
    const-string v5, "TwelveKeyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_16

    .line 848
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_9c
    move-exception v5

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_7f .. :try_end_9e} :catchall_9c

    throw v5

    .line 886
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_9f
    iget-object v4, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_60
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 444
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    if-ne v0, p1, :cond_a

    .line 429
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 431
    :cond_a
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 905
    if-eqz p1, :cond_14

    .line 910
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 912
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 914
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_14
    return-void
.end method

.method placeCall()V
    .registers 6

    .prologue
    .line 1533
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, number:Ljava/lang/String;
    if-eqz v1, :cond_12

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1536
    :cond_12
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/contacts/TwelveKeyDialer;->playTone(I)V

    .line 1547
    :goto_17
    return-void

    .line 1539
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1541
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1542
    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1543
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1545
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v3, 0x41d8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1546
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->finish()V

    goto :goto_17
.end method

.method playTone(I)V
    .registers 7
    .parameter "tone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1574
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 1576
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/contacts/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    .line 1578
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-le v0, v2, :cond_53

    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 1579
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_2e

    .line 1581
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_55

    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 1584
    :cond_2e
    iget-boolean v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_52

    .line 1585
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_35
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_57

    .line 1587
    const-string v1, "TwelveKeyDialer"

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

    .line 1588
    monitor-exit v0

    .line 1600
    :cond_52
    :goto_52
    return-void

    :cond_53
    move v0, v3

    .line 1578
    goto :goto_19

    :cond_55
    move v0, v3

    .line 1581
    goto :goto_2c

    .line 1592
    :cond_57
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1596
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1597
    monitor-exit v0

    goto :goto_52

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_35 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public setDialFont()V
    .registers 4

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 494
    const/16 v0, 0x13

    .line 498
    .local v0, max_digits_on_big_font:I
    :goto_8
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-le v1, v0, :cond_21

    .line 499
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 500
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v2, 0x41d8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 505
    :goto_1d
    return-void

    .line 496
    .end local v0           #max_digits_on_big_font:I
    :cond_1e
    const/16 v0, 0xb

    .restart local v0       #max_digits_on_big_font:I
    goto :goto_8

    .line 502
    :cond_21
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 503
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_1d
.end method

.method protected setFormattedDigits(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 767
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, dialString:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 770
    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 771
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 774
    invoke-virtual {p0, v1}, Lcom/android/contacts/TwelveKeyDialer;->afterTextChanged(Landroid/text/Editable;)V

    .line 776
    .end local v1           #digits:Landroid/text/Editable;
    :cond_1f
    return-void
.end method

.method public vibratorOn()V
    .registers 4

    .prologue
    .line 1460
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 1461
    .local v0, mVibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1462
    return-void
.end method
