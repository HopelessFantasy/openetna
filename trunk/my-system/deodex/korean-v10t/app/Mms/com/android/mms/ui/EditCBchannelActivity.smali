.class public Lcom/android/mms/ui/EditCBchannelActivity;
.super Landroid/app/Activity;
.source "EditCBchannelActivity.java"


# static fields
.field private static final CBMI_LENGTH_IN_BYTES:I = 0x2

.field private static final CBSETTING_PROJECTION:[Ljava/lang/String; = null

.field private static final DIALOG_TEXT_CATEGORY:Ljava/lang/String; = "dialogTextCategory"

.field private static final DIALOG_TEXT_CBMI_DUPLICATED:I = 0x1

.field private static final DIALOG_TEXT_CBMI_EMPTY:I = 0x0

.field private static final DIALOG_TEXT_CBMI_OVERFLOW:I = 0x2

.field private static final DIALOG_TEXT_CBMI_UNACCEPTABLE:I = 0x3

.field private static final MENU_DISCARDCHANGES:I = 0x2

.field private static final MENU_SAVE:I = 0x1

.field private static final ORIGINAL_CONTENT:Ljava/lang/String; = "origContent"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION_SIMIO:[Ljava/lang/String; = null

.field private static final STATE_EDIT:I = 0x0

.field private static final STATE_INSERT:I = 0x1

.field static final TAG:Ljava/lang/String; = "EditCBchannelActivity"

.field private static cbNoInSimIndex:I

.field private static cbNumberInSim:I


# instance fields
.field private bIsRevert:Z

.field private countryCode:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mChannelField:Landroid/widget/EditText;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mComments:Ljava/lang/String;

.field private mCommentsField:Landroid/widget/EditText;

.field private mCursor:Landroid/database/Cursor;

.field private mCursor_SimIO:Landroid/database/Cursor;

.field private mCursor_SimIO_ForEdit:Landroid/database/Cursor;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mOriginalContent:Ljava/lang/String;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mState:I

.field private mUri:Landroid/net/Uri;

.field private operatorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "channelid"

    const-string v5, "_id"

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "channelid"

    aput-object v6, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "simindex"

    aput-object v1, v0, v3

    const-string v1, "channelid"

    aput-object v6, v0, v4

    sput-object v0, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION_SIMIO:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "cbmitotalnoinsim"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/EditCBchannelActivity;->CBSETTING_PROJECTION:[Ljava/lang/String;

    .line 55
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    .line 56
    sput v2, Lcom/android/mms/ui/EditCBchannelActivity;->cbNoInSimIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->operatorCode:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->countryCode:Ljava/lang/String;

    .line 665
    new-instance v0, Lcom/android/mms/ui/EditCBchannelActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditCBchannelActivity$2;-><init>(Lcom/android/mms/ui/EditCBchannelActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 675
    new-instance v0, Lcom/android/mms/ui/EditCBchannelActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditCBchannelActivity$3;-><init>(Lcom/android/mms/ui/EditCBchannelActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mPinFieldContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/EditCBchannelActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    return-object v0
.end method

.method private final deleteCbmi()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 657
    const-string v0, "EditCBchannelActivity"

    const-string v1, "[ deleteCbmi] START "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 660
    iput-object v2, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 661
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    :cond_1c
    return-void
.end method

.method private doRevertAction()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 526
    iput-boolean v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->bIsRevert:Z

    .line 527
    iget v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-nez v0, :cond_17

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 535
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    .line 536
    return-void

    .line 532
    :cond_17
    iget v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-ne v0, v1, :cond_13

    .line 533
    const-string v0, "EditCBchannelActivity"

    const-string v1, "[doRevertAction] STATE_INSERT So Nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private doSaveAction()V
    .registers 35

    .prologue
    .line 213
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]Intro()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, channel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 220
    .local v23, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->operatorCode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->countryCode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 221
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4e

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 227
    :cond_4e
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    .line 228
    .local v22, channel_length:I
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 230
    .local v21, channel_integer:I
    if-nez v22, :cond_67

    .line 232
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]channel length is 0 so error pop up"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/EditCBchannelActivity;->launchDialogActivity(I)V

    .line 523
    :cond_66
    :goto_66
    return-void

    .line 234
    :cond_67
    const/4 v5, 0x4

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_771

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->isCbmiDuplicated()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15f

    .line 236
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doSaveAction]channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is duplicated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a9

    .line 238
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]STATE_INSERT "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/EditCBchannelActivity;->launchDialogActivity(I)V

    goto :goto_66

    .line 241
    :cond_a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    move v5, v0

    if-nez v5, :cond_66

    .line 242
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]STATE_EDIT "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannel:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_128

    .line 246
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v33, values:Landroid/content/ContentValues;
    const-string v5, "title"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v33

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doSaveAction]channel:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is equal mChannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannel:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const v5, 0x7f07011d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 251
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]launch the cbmi saved toast"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    goto/16 :goto_66

    .line 254
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_128
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doSaveAction]channel:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is not equal mChannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannel:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]launch the cbmi duplicated Dialog popup"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/EditCBchannelActivity;->launchDialogActivity(I)V

    goto/16 :goto_66

    .line 260
    :cond_15f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_42b

    .line 263
    const/16 v27, 0x0

    .line 264
    .local v27, rowsNumber_SimIO:I
    const/16 v24, 0x0

    .line 268
    .local v24, entrySize:I
    const/16 v32, 0x0

    .line 269
    .local v32, updateCbmi_result:Z
    const/16 v28, 0x0

    .line 270
    .local v28, setBcConfig_result:Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v31

    .line 272
    .local v31, smsManager:Landroid/telephony/SmsManager;
    sget-object v6, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION_SIMIO:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "created ASC"

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/ui/EditCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_196

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v27

    .line 276
    :cond_196
    add-int/lit8 v24, v27, 0x1

    .line 278
    sget v5, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    mul-int/lit8 v5, v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 280
    .local v19, channel_byte:[B
    sget v5, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 283
    .local v20, channel_int:[I
    const/16 v26, 0x0

    .local v26, k:I
    :goto_1aa
    sget v5, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    move/from16 v0, v26

    move v1, v5

    if-ge v0, v1, :cond_1c3

    .line 284
    mul-int/lit8 v5, v26, 0x2

    const/4 v6, -0x1

    aput-byte v6, v19, v5

    .line 285
    mul-int/lit8 v5, v26, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, -0x1

    aput-byte v6, v19, v5

    .line 287
    const/4 v5, -0x1

    aput v5, v20, v26

    .line 283
    add-int/lit8 v26, v26, 0x1

    goto :goto_1aa

    .line 290
    :cond_1c3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 292
    .local v18, channelNew_int:I
    const-string v5, "EditCBchannelActivity"

    const-string v6, "doSaveAction() STATE_INSERT "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() New channel ID to add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() rowsNumber_SimIO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_28e

    .line 297
    const/16 v25, 0x0

    .local v25, i:I
    :goto_20e
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_286

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "channelid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 299
    .local v16, channelIdIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 300
    .local v17, channelInSim:I
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() i: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() channel in SIM previously: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    mul-int/lit8 v5, v25, 0x2

    const v6, 0xff00

    and-int v6, v6, v17

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 303
    mul-int/lit8 v5, v25, 0x2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 305
    aput v17, v20, v25

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 297
    add-int/lit8 v25, v25, 0x1

    goto :goto_20e

    .line 309
    .end local v16           #channelIdIndex:I
    .end local v17           #channelInSim:I
    :cond_286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 312
    .end local v25           #i:I
    :cond_28e
    mul-int/lit8 v5, v27, 0x2

    const v6, 0xff00

    and-int v6, v6, v18

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 313
    mul-int/lit8 v5, v27, 0x2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 315
    aput v18, v20, v27

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->operatorCode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->countryCode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36b

    .line 319
    move-object/from16 v0, v31

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v28

    .line 321
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_359

    .line 322
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v5, "selected"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v5, "simindex"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v5, "channelid"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "title"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v5, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 329
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction][VIVO]Success to set BC Config to WMS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const v5, 0x7f07011d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_354

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 335
    :cond_354
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    goto/16 :goto_66

    .line 337
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_359
    if-nez v28, :cond_362

    .line 338
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction][VIVO]Fail to set a CB channel to WMS, so Do not store it to SQLite DB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_362
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/EditCBchannelActivity;->launchDialogActivity(I)V

    goto/16 :goto_66

    .line 344
    :cond_36b
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->updateCBMIToSim([B)Z

    move-result v32

    .line 346
    move-object/from16 v0, v31

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v28

    .line 349
    const/4 v5, 0x1

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_410

    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_410

    .line 350
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v5, "selected"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v5, "simindex"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v5, "channelid"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v5, "title"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v5, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 358
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]Success to updateCBMI to sim and Success to set BC Config to WMS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const v5, 0x7f07011d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_40b

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 363
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 365
    :cond_40b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    goto/16 :goto_66

    .line 369
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_410
    if-nez v32, :cond_419

    .line 370
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]Fail to store a CB channel to SIM, so Do not store it to SQLite DB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_419
    if-nez v28, :cond_422

    .line 373
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]Fail to set a CB channel to WMS, so Do not store it to SQLite DB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_422
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/EditCBchannelActivity;->launchDialogActivity(I)V

    goto/16 :goto_66

    .line 379
    .end local v18           #channelNew_int:I
    .end local v19           #channel_byte:[B
    .end local v20           #channel_int:[I
    .end local v24           #entrySize:I
    .end local v26           #k:I
    .end local v27           #rowsNumber_SimIO:I
    .end local v28           #setBcConfig_result:Z
    .end local v31           #smsManager:Landroid/telephony/SmsManager;
    .end local v32           #updateCbmi_result:Z
    :cond_42b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    move v5, v0

    if-nez v5, :cond_66

    .line 382
    const/16 v27, 0x0

    .line 383
    .restart local v27       #rowsNumber_SimIO:I
    const/16 v24, 0x0

    .line 384
    .restart local v24       #entrySize:I
    const/16 v17, 0x0

    .line 385
    .restart local v17       #channelInSim:I
    const/4 v14, 0x0

    .line 387
    .local v14, channelEdit_int:I
    const/4 v12, 0x0

    .line 388
    .local v12, baseIdIndex:I
    const/16 v30, 0x0

    .line 389
    .local v30, simIndexIndex:I
    const/16 v16, 0x0

    .line 391
    .restart local v16       #channelIdIndex:I
    const/4 v11, 0x0

    .line 392
    .local v11, baseId:I
    const/16 v29, 0x0

    .line 393
    .local v29, simIndex:I
    const/4 v15, 0x0

    .line 395
    .local v15, channelId:I
    const/16 v32, 0x0

    .line 396
    .restart local v32       #updateCbmi_result:Z
    const/16 v28, 0x0

    .line 397
    .restart local v28       #setBcConfig_result:Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v31

    .line 399
    .restart local v31       #smsManager:Landroid/telephony/SmsManager;
    sget-object v6, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION_SIMIO:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "created ASC"

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/ui/EditCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_46d

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v27

    .line 405
    :cond_46d
    move/from16 v24, v27

    .line 407
    sget v5, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    mul-int/lit8 v5, v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 409
    .restart local v19       #channel_byte:[B
    sget v5, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 412
    .restart local v20       #channel_int:[I
    const/16 v26, 0x0

    .restart local v26       #k:I
    :goto_481
    sget v5, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    move/from16 v0, v26

    move v1, v5

    if-ge v0, v1, :cond_49a

    .line 413
    mul-int/lit8 v5, v26, 0x2

    const/4 v6, -0x1

    aput-byte v6, v19, v5

    .line 414
    mul-int/lit8 v5, v26, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, -0x1

    aput-byte v6, v19, v5

    .line 416
    const/4 v5, -0x1

    aput v5, v20, v26

    .line 412
    add-int/lit8 v26, v26, 0x1

    goto :goto_481

    .line 419
    :cond_49a
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 421
    const-string v5, "EditCBchannelActivity"

    const-string v6, "doSaveAction() STATE_EDIT "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() channel ID to edit newly: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() rowsNumber_SimIO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_565

    .line 426
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_4e5
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_55d

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "channelid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 429
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() i: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() channel in SIM previously: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    mul-int/lit8 v5, v25, 0x2

    const v6, 0xff00

    and-int v6, v6, v17

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 432
    mul-int/lit8 v5, v25, 0x2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 434
    aput v17, v20, v25

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 426
    add-int/lit8 v25, v25, 0x1

    goto :goto_4e5

    .line 438
    :cond_55d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 441
    .end local v25           #i:I
    :cond_565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION_SIMIO:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "created ASC"

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/ui/EditCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_613

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "simindex"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "channelid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor_SimIO_ForEdit:Landroid/database/Cursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 454
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() channel ID to edit old - base ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() channel ID to edit old - sim index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v5, "EditCBchannelActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSaveAction() channel ID to edit old - channel ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_613
    mul-int/lit8 v5, v29, 0x2

    const v6, 0xff00

    and-int/2addr v6, v14

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 460
    mul-int/lit8 v5, v29, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v6, v14, 0xff

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    .line 462
    aput v14, v20, v29

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->operatorCode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->countryCode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "BR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d3

    .line 466
    move-object/from16 v0, v31

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v28

    .line 467
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_6ca

    .line 468
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v5, "selected"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    const-string v5, "simindex"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    const-string v5, "channelid"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v5, "title"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v33

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 474
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction][VIVO]Success to set BC Config to WMS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const v5, 0x7f07011d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_6c5

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 478
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 480
    :cond_6c5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    goto/16 :goto_66

    .line 482
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_6ca
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction][VIVO]Fail to set to WMS, so Do not store it to SQLite DB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 486
    :cond_6d3
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->updateCBMIToSim([B)Z

    move-result v32

    .line 488
    move-object/from16 v0, v31

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setBroadcastConfig(I[I)Z

    move-result v28

    .line 491
    const/4 v5, 0x1

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_768

    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_768

    .line 492
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v5, "selected"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string v5, "simindex"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v5, "channelid"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v5, "title"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v33

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 498
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]Success to updateCBMI to sim and Success to set BC Config to WMS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const v5, 0x7f07011d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-eqz v5, :cond_763

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 505
    :cond_763
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    goto/16 :goto_66

    .line 508
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_768
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]Fail to store a CB channel to SIM, so Do not store it to SQLite DB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 514
    .end local v11           #baseId:I
    .end local v12           #baseIdIndex:I
    .end local v14           #channelEdit_int:I
    .end local v15           #channelId:I
    .end local v16           #channelIdIndex:I
    .end local v17           #channelInSim:I
    .end local v19           #channel_byte:[B
    .end local v20           #channel_int:[I
    .end local v24           #entrySize:I
    .end local v26           #k:I
    .end local v27           #rowsNumber_SimIO:I
    .end local v28           #setBcConfig_result:Z
    .end local v29           #simIndex:I
    .end local v30           #simIndexIndex:I
    .end local v31           #smsManager:Landroid/telephony/SmsManager;
    .end local v32           #updateCbmi_result:Z
    :cond_771
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction]channel length is more than 4 so error pop up"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_789

    .line 516
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction] STATE_INSERT"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 518
    :cond_789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    move v5, v0

    if-nez v5, :cond_66

    .line 519
    const-string v5, "EditCBchannelActivity"

    const-string v6, "[doSaveAction] STATE_EDIT"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66
.end method

.method private launchDialogActivity(I)V
    .registers 4
    .parameter "dialogText"

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 694
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dialogTextCategory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-class v1, Lcom/android/mms/ui/CbmiDialogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 697
    return-void
.end method

.method private resolveIntent()V
    .registers 5

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 544
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 548
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    .line 549
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    .line 578
    :goto_19
    return-void

    .line 550
    :cond_1a
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 553
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    goto :goto_19

    .line 574
    :cond_26
    const-string v2, "EditCBchannelActivity"

    const-string v3, "Unknown action, exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    goto :goto_19
.end method

.method private setupView(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 587
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 589
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/EditCBchannelActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/EditCBchannelActivity$1;-><init>(Lcom/android/mms/ui/EditCBchannelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 612
    :cond_2a
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    if-eqz v0, :cond_40

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 619
    :cond_40
    iget v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-nez v0, :cond_51

    .line 620
    iget-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/EditCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    .line 625
    :cond_51
    if-eqz p1, :cond_5b

    .line 626
    const-string v0, "origContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mOriginalContent:Ljava/lang/String;

    .line 629
    :cond_5b
    iget v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-nez v0, :cond_9e

    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a9

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    const-string v1, "channelid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 634
    .local v6, channelIndex:I
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannel:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 636
    .local v7, commentsIndex:I
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mComments:Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    if-eqz v0, :cond_93

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_93
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    if-eqz v0, :cond_9e

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mComments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 650
    .end local v6           #channelIndex:I
    .end local v7           #commentsIndex:I
    :cond_9e
    :goto_9e
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 651
    return-void

    .line 645
    :cond_a9
    const v0, 0x7f070121

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mCommentsField:Landroid/widget/EditText;

    const v1, 0x7f070122

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/EditCBchannelActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e
.end method


# virtual methods
.method public isCbmiDuplicated()Z
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    const-string v12, "EditCBchannelActivity"

    .line 700
    const/4 v10, 0x0

    .line 701
    .local v10, tempCursor:Landroid/database/Cursor;
    sget-object v1, Lcom/android/mms/Cbmi$Cbmis;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/EditCBchannelActivity;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/EditCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 702
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[ isCbmiDuplicated]START "

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz v10, :cond_c1

    .line 704
    const/4 v7, 0x0

    .line 705
    .local v7, compare_channel:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 707
    .local v11, textbox_channel:Ljava/lang/String;
    const-string v0, "EditCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ isCbmiDuplicated]Current channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 710
    .local v8, cursor_count:I
    const-string v0, "EditCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ isCbmiDuplicated]Cursor count is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 713
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[ isCbmiDuplicated]Cursor move to first"

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v9, 0x0

    .local v9, i:I
    :goto_63
    if-ge v9, v8, :cond_be

    .line 716
    const-string v0, "channelid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 717
    .local v6, channelIndex:I
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    const-string v0, "EditCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ isCbmiDuplicated]Index i: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v0, "EditCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ isCbmiDuplicated]Compared channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v13, :cond_b1

    .line 723
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[ isCbmiDuplicated]Current channel is equal to compared channel"

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v13

    .line 735
    .end local v6           #channelIndex:I
    .end local v7           #compare_channel:Ljava/lang/String;
    .end local v8           #cursor_count:I
    .end local v9           #i:I
    .end local v11           #textbox_channel:Ljava/lang/String;
    :goto_b0
    return v0

    .line 727
    .restart local v6       #channelIndex:I
    .restart local v7       #compare_channel:Ljava/lang/String;
    .restart local v8       #cursor_count:I
    .restart local v9       #i:I
    .restart local v11       #textbox_channel:Ljava/lang/String;
    :cond_b1
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[ isCbmiDuplicated]Current channel is not equal to compared channel:Move To Next"

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 715
    add-int/lit8 v9, v9, 0x1

    goto :goto_63

    .line 731
    .end local v6           #channelIndex:I
    :cond_be
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 734
    .end local v7           #compare_channel:Ljava/lang/String;
    .end local v8           #cursor_count:I
    .end local v9           #i:I
    .end local v11           #textbox_channel:Ljava/lang/String;
    :cond_c1
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[doSaveAction]End return false"

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v0, 0x0

    goto :goto_b0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const-string v7, "EditCBchannelActivity"

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[onCreate]START!!"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->bIsRevert:Z

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->resolveIntent()V

    .line 102
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->setContentView(I)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/mms/ui/EditCBchannelActivity;->setupView(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->operatorCode:Ljava/lang/String;

    .line 106
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->countryCode:Ljava/lang/String;

    .line 108
    sget-object v1, Lcom/android/mms/CbSetting$CbSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/EditCBchannelActivity;->CBSETTING_PROJECTION:[Ljava/lang/String;

    const-string v5, "cbmitotalnoinsim ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/EditCBchannelActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, cbSetting_cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6e

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const-string v0, "cbmitotalnoinsim"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/EditCBchannelActivity;->cbNoInSimIndex:I

    .line 115
    sget v0, Lcom/android/mms/ui/EditCBchannelActivity;->cbNoInSimIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    .line 116
    const-string v0, "EditCBchannelActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CB channel total numbers in SIM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/mms/ui/EditCBchannelActivity;->cbNumberInSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_62
    iget v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_76

    .line 122
    const v0, 0x7f070120

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->setTitle(I)V

    .line 126
    :cond_6d
    :goto_6d
    return-void

    .line 118
    :cond_6e
    const-string v0, "EditCBchannelActivity"

    const-string v0, "Error for cbSetting_cursor "

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 123
    :cond_76
    iget v0, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-nez v0, :cond_6d

    .line 124
    const v0, 0x7f07011f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditCBchannelActivity;->setTitle(I)V

    goto :goto_6d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const-string v2, "EditCBchannelActivity"

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_e
    return v0

    .line 199
    :pswitch_f
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[onOptionsItemSelected]doSaveAction()"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->finish()V

    move v0, v1

    .line 202
    goto :goto_e

    .line 205
    :pswitch_1b
    const-string v0, "EditCBchannelActivity"

    const-string v0, "[onOptionsItemSelected]doRevertAction()"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->doRevertAction()V

    move v0, v1

    .line 207
    goto :goto_e

    .line 197
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1b
    .end packed-switch
.end method

.method protected onPause()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "[onPause] STATE_EDIT"

    const-string v7, "[onPause] DoRevertAction so just Exit"

    const-string v4, "EditCBchannelActivity"

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause]START!!"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mChannelField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, channel:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, channel_length:I
    const/4 v1, -0x1

    .line 138
    .local v1, channel_itgr:I
    if-eqz v2, :cond_27

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 142
    :cond_27
    invoke-virtual {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->isFinishing()Z

    move-result v3

    if-ne v3, v5, :cond_8c

    .line 143
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] Finishing!!"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/EditCBchannelActivity;->setResult(I)V

    .line 146
    iget v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-ne v3, v5, :cond_65

    .line 147
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] STATE_INSERT"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez v2, :cond_4c

    .line 149
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] channel_length is 0"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4b
    :goto_4b
    return-void

    .line 150
    :cond_4c
    iget-boolean v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->bIsRevert:Z

    if-ne v3, v5, :cond_5a

    .line 151
    iput-boolean v6, p0, Lcom/android/mms/ui/EditCBchannelActivity;->bIsRevert:Z

    .line 152
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] DoRevertAction so just Exit"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 154
    :cond_5a
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] DoSaveAction so Intro doSaveAction"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->doSaveAction()V

    goto :goto_4b

    .line 157
    :cond_65
    iget v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-nez v3, :cond_4b

    .line 158
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] STATE_EDIT"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-nez v2, :cond_7a

    .line 160
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] channel length is 0 : So Nothing!!"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 161
    :cond_7a
    iget-boolean v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->bIsRevert:Z

    if-ne v3, v5, :cond_88

    .line 162
    iput-boolean v6, p0, Lcom/android/mms/ui/EditCBchannelActivity;->bIsRevert:Z

    .line 163
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] DoRevertAction so just Exit"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 165
    :cond_88
    invoke-direct {p0}, Lcom/android/mms/ui/EditCBchannelActivity;->doSaveAction()V

    goto :goto_4b

    .line 169
    :cond_8c
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] Not Finishing!!"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-ne v3, v5, :cond_9f

    .line 171
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] STATE_INSERT"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 172
    :cond_9f
    iget v3, p0, Lcom/android/mms/ui/EditCBchannelActivity;->mState:I

    if-nez v3, :cond_4b

    .line 173
    const-string v3, "EditCBchannelActivity"

    const-string v3, "[onPause] STATE_EDIT"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method
