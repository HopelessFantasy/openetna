.class public Lcom/android/mms/ui/ComposeMessageActivity;
.super Landroid/app/Activity;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_QUERY_TOKEN:I = 0x2648

.field private static final CBCHANNEL:Ljava/lang/String; = "CH"

.field private static final CHARS_REMAINING_BEFORE_COUNTER_SHOWN:I = 0xa

.field private static final DEBUG:Z = false

.field private static final DELETE_CONVERSATION_TOKEN:I = 0x25e5

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field private static final EMAIL_CONTACT_QUERY_TOKEN:I = 0x2649

.field private static final EMAIL_QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final HAS_ATTACHMENT:I = 0x4

.field private static final HAS_SUBJECT:I = 0x2

.field private static final LENGTH_REQUIRES_MMS:I = 0x8

.field private static final MARK_AS_READ_TOKEN:I = 0x26ac

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final MENU_ADD_ATTACHMENT:I = 0x2

.field private static final MENU_ADD_SUBJECT:I = 0x0

.field private static final MENU_ADD_TO_CONTACTS:I = 0xd

.field private static final MENU_CALL_BACK:I = 0x16

.field private static final MENU_CALL_RECIPIENT:I = 0x5

.field private static final MENU_CONTACT_MULTI_PICK:I = 0x7

.field private static final MENU_CONVERSATION_LIST:I = 0x6

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x18

.field private static final MENU_COPY_MOVE_TO_SIM:I = 0x1c

.field private static final MENU_COPY_TO_SDCARD:I = 0x19

.field private static final MENU_COPY_TO_SIM:I = 0x0

.field private static final MENU_DELETE_MESSAGE:I = 0x12

.field private static final MENU_DELETE_THREAD:I = 0x1

.field private static final MENU_DELIVERY_REPORT:I = 0x14

.field private static final MENU_DISCARD:I = 0x3

.field private static final MENU_EDIT_MESSAGE:I = 0xe

.field private static final MENU_FORWARD_MESSAGE:I = 0x15

.field private static final MENU_INSERT_SMILEY:I = 0x1a

.field private static final MENU_MOVE_TO_SIM:I = 0x1

.field private static final MENU_SEARCH:I = 0x13

.field private static final MENU_SEND:I = 0x4

.field private static final MENU_SEND_EMAIL:I = 0x17

.field private static final MENU_VIEW_CONTACT:I = 0xc

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x11

.field private static final MENU_VIEW_SLIDESHOW:I = 0x10

.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field private static final MESSAGE_TYPE_CBS:I = 0x3

.field private static final MESSAGE_TYPE_PROV:I = 0x2

.field private static final MESSAGE_TYPE_PUSH:I = 0x1

.field private static final MESSAGE_TYPE_SMS_MMS:I = 0x0

.field private static final METHOD_LOOKUP:Ljava/lang/String; = "data=?"

.field private static final METHOD_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_ID_INDEX:I = 0x0

.field private static final MMS_SUBJECT_CS_INDEX:I = 0x2

.field private static final MMS_SUBJECT_INDEX:I = 0x1

.field private static final MMS_THRESHOLD:I = 0x2

.field private static final NO_DATE_FOR_DIALOG:J = -0x1L

.field private static final NUMBER_LOOKUP:Ljava/lang/String; = "PHONE_NUMBERS_EQUAL(number,?)"

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PRESENCE_STATUS_COLUMN:I = 0x0

.field private static final RECIPIENTS_MAX_LENGTH:I = 0x1cc

.field private static final RECIPIENTS_REQUIRE_MMS:I = 0x1

.field private static final RECIPIENT_LIMIT:I = 0x14

.field private static final REFRESH_PRESENCE:I = 0xb0b4

.field public static final REQUEST_CODE_ATTACH_IMAGE:I = 0xa

.field public static final REQUEST_CODE_ATTACH_SOUND:I = 0xe

.field public static final REQUEST_CODE_ATTACH_VIDEO:I = 0xc

.field public static final REQUEST_CODE_CONTACT_MULTI_PICK:I = 0x11

.field public static final REQUEST_CODE_CREATE_SLIDESHOW:I = 0x10

.field public static final REQUEST_CODE_RECORD_SOUND:I = 0xf

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field private static final SUBJECT_MAX_LENGTH:I = 0x28

.field private static final TAG:Ljava/lang/String; = "ComposeMessageActivity"

.field private static final TRACE:Z


# instance fields
.field private mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

.field private final mAttachmentEditorHandler:Landroid/os/Handler;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

.field private mBakcup_Uri:Landroid/net/Uri;

.field private mBottomPanel:Landroid/view/View;

.field private mContactInfoCursor:Landroid/database/Cursor;

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mExitOnSent:Z

.field private mExternalAddress:Ljava/lang/String;

.field private mFromUndelivered:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mLastRecipientCount:I

.field private mMMS_THRESHOLD:I

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMessageState:I

.field private mMessageUri:Landroid/net/Uri;

.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mMsgText:Ljava/lang/CharSequence;

.field private mMsgType:I

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mPossiblePendingNotification:Z

.field private final mPresencePollingHandler:Landroid/os/Handler;

.field private mPresenceStatus:I

.field private mRecipientList:Lcom/android/mms/ui/RecipientList;

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private final mRecipientsFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSMSUri:Landroid/net/Uri;

.field private mSMSaddress:Ljava/lang/String;

.field private mSMSdate:J

.field private mSMSdeliveryreport:Z

.field private mSMSmessage:Ljava/lang/String;

.field private mSMSmessagetype:I

.field private mSendButton:Landroid/widget/Button;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mSubject:Ljava/lang/String;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectRLayout:Landroid/widget/RelativeLayout;

.field private mSubjectTextCounter:Landroid/widget/TextView;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private final mTextSubEditorWatcher:Landroid/text/TextWatcher;

.field private mThreadId:J

.field private mToastForDraftSave:Z

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mcheckFDNmessage:Ljava/lang/String;

.field private final mrcptKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "mode"

    const-string v5, "_id"

    .line 279
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mode"

    aput-object v6, v0, v2

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_with_presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 290
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mode"

    aput-object v6, v0, v2

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->EMAIL_QUERY_PROJECTION:[Ljava/lang/String;

    .line 295
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "with_presence"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->METHOD_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 3819
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 3910
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "body"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    .line 361
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 388
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 485
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPresencePollingHandler:Landroid/os/Handler;

    .line 494
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 1002
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$5;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mrcptKeyListener:Landroid/view/View$OnKeyListener;

    .line 1044
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$6;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1054
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$7;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1134
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$8;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1355
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$9;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2028
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 2030
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$10;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 3073
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 3564
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$21;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 3603
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextSubEditorWatcher:Landroid/text/TextWatcher;

    .line 4471
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$28;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 4503
    return-void
.end method

.method private abandonDraftsAndFinish()V
    .registers 2

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 4017
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 4020
    :cond_8
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 4021
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 4022
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startQueryForContactInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectRLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideTopPanelIfNecessary()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList;)Lcom/android/mms/ui/RecipientList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getPersonId(Lcom/android/mms/ui/RecipientList$Recipient;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->viewContact(J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSaddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdeliveryreport:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessagetype:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdate:J

    return-wide v0
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/ComposeMessageActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdate:J

    return-wide p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageActivity;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->moveToSim(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentEditor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->imageInsertAnyway()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->imageInsertResize()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->audioInsertAnyway()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->videoInsertAnyway()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSubCounter(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTemporarySmsMessage(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMmsWorker([Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendSmsWorker([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;J)Lcom/android/mms/ui/MessageItem;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageItem(Ljava/lang/String;J)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cleanupContactInfoCursor()V

    return-void
.end method

.method static synthetic access$7102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateContactInfo()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startPresencePollingRequest()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->abandonDraftsAndFinish()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v0

    return v0
.end method

.method private addAttachment(I)V
    .registers 9
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2848
    packed-switch p1, :pswitch_data_74

    .line 2904
    :goto_5
    return-void

    .line 2850
    :pswitch_6
    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_5

    .line 2854
    :pswitch_c
    const-string v0, "EmailAttatch"

    .line 2855
    .local v0, ExtraName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2856
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2857
    const/16 v4, 0xb

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 2862
    .end local v0           #ExtraName:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1e
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_5

    .line 2866
    :pswitch_24
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2867
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2868
    const/16 v4, 0xd

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 2873
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_36
    const/16 v4, 0xe

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto :goto_5

    .line 2877
    :pswitch_3c
    const/16 v4, 0xf

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;I)V

    goto :goto_5

    .line 2881
    :pswitch_42
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v4

    if-nez v4, :cond_72

    move v3, v6

    .line 2884
    .local v3, wasSms:Z
    :goto_49
    const/4 v4, 0x4

    invoke-direct {p0, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 2886
    if-eqz v3, :cond_60

    .line 2889
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 2890
    .local v2, text:Lcom/android/mms/model/TextModel;
    if-eqz v2, :cond_60

    .line 2891
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 2895
    .end local v2           #text:Lcom/android/mms/model/TextModel;
    :cond_60
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2896
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2897
    const/16 v4, 0x10

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #wasSms:Z
    :cond_72
    move v3, v5

    .line 2881
    goto :goto_49

    .line 2848
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_1e
        :pswitch_24
        :pswitch_36
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method

.method private addAudio(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    const v9, 0x7f07004c

    const/4 v8, 0x4

    const/4 v7, 0x1

    const v6, 0x7f07004f

    const v5, 0x7f07004e

    .line 3241
    invoke-direct {p0, v8, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 3243
    :try_start_e
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    .line 3244
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/AttachmentEditor;->changeAudio(Landroid/net/Uri;)V

    .line 3245
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_1d
    .catch Lcom/google/android/mms/MmsException; {:try_start_e .. :try_end_1d} :catch_1e
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_e .. :try_end_1d} :catch_24
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_e .. :try_end_1d} :catch_8b

    .line 3310
    :cond_1d
    :goto_1d
    return-void

    .line 3247
    :catch_1e
    move-exception v2

    move-object v1, v2

    .line 3248
    .local v1, e:Lcom/google/android/mms/MmsException;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAudioFailure(Lcom/google/android/mms/MmsException;)V

    goto :goto_1d

    .line 3249
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_24
    move-exception v2

    move-object v1, v2

    .line 3250
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3251
    .local v0, creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_74

    .line 3253
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 3255
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v9, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 3260
    :cond_51
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 3262
    invoke-direct {p0, v8, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 3263
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$19;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$19;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v3, 0x7f07010e

    invoke-direct {p0, p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto :goto_1d

    .line 3269
    :cond_68
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3271
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->audioInsertAnyway()V

    goto :goto_1d

    .line 3275
    :cond_74
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v9, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 3279
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_8b
    move-exception v2

    move-object v1, v2

    .line 3280
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3281
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_c3

    .line 3283
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 3291
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 3298
    :cond_b2
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 3305
    :cond_c3
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .registers 25
    .parameter "menu"
    .parameter "l"
    .parameter "msgItem"

    .prologue
    .line 1270
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .local v13, textToSpannify:Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_32

    .line 1272
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_32
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1277
    .local v9, msg:Landroid/text/SpannableString;
    const/16 v16, 0xf

    move-object v0, v9

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1278
    const/16 v16, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v17

    const-class v18, Landroid/text/style/URLSpan;

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, [Landroid/text/style/URLSpan;

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1281
    .local v15, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6b
    :goto_6b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1c8

    .line 1282
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1284
    .local v14, uriString:Ljava/lang/String;
    :goto_79
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_83

    .line 1285
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_79

    .line 1288
    :cond_83
    const-string v16, ":"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1289
    .local v12, sep:I
    const/4 v10, 0x0

    .line 1290
    .local v10, prefix:Ljava/lang/String;
    if-ltz v12, :cond_a2

    .line 1291
    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1292
    add-int/lit8 v16, v12, 0x1

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1294
    :cond_a2
    const/4 v6, 0x0

    .line 1295
    .local v6, addToContacts:Z
    const-string v16, "mailto"

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_154

    .line 1296
    const v16, 0x7f070004

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%s"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1298
    .local v11, sendEmailString:Ljava/lang/String;
    const/16 v16, 0x0

    const/16 v17, 0x17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object v4, v11

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mailto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1303
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->haveEmailContact(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_14f

    const/16 v16, 0x1

    move/from16 v6, v16

    .line 1316
    .end local v11           #sendEmailString:Ljava/lang/String;
    :cond_110
    :goto_110
    if-eqz v6, :cond_6b

    .line 1317
    invoke-static {v14}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1318
    .local v8, intent:Landroid/content/Intent;
    const v16, 0x7f070007

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%s"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1320
    .local v5, addContactString:Ljava/lang/String;
    const/16 v16, 0x0

    const/16 v17, 0x1b

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_6b

    .line 1303
    .end local v5           #addContactString:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v11       #sendEmailString:Ljava/lang/String;
    :cond_14f
    const/16 v16, 0x0

    move/from16 v6, v16

    goto :goto_110

    .line 1304
    .end local v11           #sendEmailString:Ljava/lang/String;
    :cond_154
    const-string v16, "tel"

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_110

    .line 1305
    const v16, 0x7f070003

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "%s"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1307
    .local v7, callBackString:Ljava/lang/String;
    const/16 v16, 0x0

    const/16 v17, 0x16

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.CALL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1314
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1c3

    const/16 v16, 0x1

    move/from16 v6, v16

    :goto_1c1
    goto/16 :goto_110

    :cond_1c3
    const/16 v16, 0x0

    move/from16 v6, v16

    goto :goto_1c1

    .line 1325
    .end local v6           #addToContacts:Z
    .end local v7           #callBackString:Ljava/lang/String;
    .end local v10           #prefix:Ljava/lang/String;
    .end local v12           #sep:I
    .end local v14           #uriString:Ljava/lang/String;
    :cond_1c8
    return-void
.end method

.method private addImage(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 3067
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/android/mms/ui/MessageUtils;->saveBitmapAsPart(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;)V
    :try_end_9
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3071
    :goto_9
    return-void

    .line 3068
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 3069
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddImageFailure(Lcom/google/android/mms/MmsException;)V

    goto :goto_9
.end method

.method private addImage(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    const v7, 0x7f07004f

    const v6, 0x7f07004e

    const/4 v5, 0x1

    const-string v9, "MMSSETTINGDB_CREATIONMODE_I"

    const-string v8, "0"

    .line 3114
    :try_start_b
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    .line 3115
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/AttachmentEditor;->changeImage(Landroid/net/Uri;)V

    .line 3116
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_1a
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_1a} :catch_1b
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_b .. :try_end_1a} :catch_21
    .catch Lcom/android/mms/ResolutionException; {:try_start_b .. :try_end_1a} :catch_8f
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_b .. :try_end_1a} :catch_d8

    .line 3204
    :cond_1a
    :goto_1a
    return-void

    .line 3118
    :catch_1b
    move-exception v2

    move-object v1, v2

    .line 3119
    .local v1, e:Lcom/google/android/mms/MmsException;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddImageFailure(Lcom/google/android/mms/MmsException;)V

    goto :goto_1a

    .line 3120
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_21
    move-exception v2

    move-object v1, v2

    .line 3121
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3122
    .local v0, creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_75

    .line 3124
    const-string v2, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 3126
    const v2, 0x7f07004c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 3131
    :cond_51
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 3133
    const/4 v2, 0x4

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 3134
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$17;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$17;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v3, 0x7f07010e

    invoke-direct {p0, p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto :goto_1a

    .line 3140
    :cond_69
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3142
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->imageInsertAnyway()V

    goto :goto_1a

    .line 3146
    :cond_75
    const v2, 0x7f07004c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 3150
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_8f
    move-exception v2

    move-object v1, v2

    .line 3151
    .local v1, e:Lcom/android/mms/ResolutionException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3152
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_cf

    .line 3154
    const-string v2, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 3156
    :cond_ad
    const/4 v2, 0x4

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 3157
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$18;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$18;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v3, 0x7f07004a

    invoke-direct {p0, p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto/16 :goto_1a

    .line 3163
    :cond_be
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3165
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, p1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    goto/16 :goto_1a

    .line 3170
    :cond_cf
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, p1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    goto/16 :goto_1a

    .line 3172
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_d8
    move-exception v2

    move-object v1, v2

    .line 3173
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3174
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_110

    .line 3176
    const-string v2, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 3184
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3192
    :cond_ff
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3199
    :cond_110
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1192
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_4} :catch_a

    .line 1197
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1199
    .local v3, position:I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V

    .line 1200
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v3           #position:I
    :goto_9
    return-void

    .line 1193
    :catch_a
    move-exception v1

    .line 1194
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "ComposeMessageActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .registers 14
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1256
    check-cast p2, Landroid/widget/ListView;

    .end local p2
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;

    move-result-object v9

    .line 1258
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_23

    .line 1259
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1260
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1265
    .end local v6           #intent:Landroid/content/Intent;
    :cond_23
    return-void
.end method

.method private addVideo(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const v6, 0x7f07004e

    const v5, 0x7f07004f

    const-string v9, "0"

    .line 3340
    invoke-direct {p0, v8, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 3342
    :try_start_d
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    .line 3343
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/AttachmentEditor;->changeVideo(Landroid/net/Uri;)V

    .line 3344
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_1c
    .catch Lcom/google/android/mms/MmsException; {:try_start_d .. :try_end_1c} :catch_1d
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_d .. :try_end_1c} :catch_37
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_d .. :try_end_1c} :catch_8a

    .line 3404
    :cond_1c
    :goto_1c
    return-void

    .line 3346
    :catch_1d
    move-exception v2

    move-object v1, v2

    .line 3347
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "ComposeMessageActivity"

    const-string v3, "add video failed"

    invoke-static {v2, v3, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3348
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1c

    .line 3351
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_37
    move-exception v2

    move-object v1, v2

    .line 3352
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3353
    .local v0, creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 3355
    const-string v2, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 3357
    const v2, 0x7f07004c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 3361
    :cond_67
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 3363
    invoke-direct {p0, v8, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 3364
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$20;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$20;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v3, 0x7f07010e

    invoke-direct {p0, p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V

    goto :goto_1c

    .line 3370
    :cond_7e
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3372
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->videoInsertAnyway()V

    goto :goto_1c

    .line 3375
    .end local v0           #creationMode_flexValues:Ljava/lang/String;
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_8a
    move-exception v2

    move-object v1, v2

    .line 3376
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3377
    .restart local v0       #creationMode_flexValues:Ljava/lang/String;
    if-eqz v0, :cond_c2

    .line 3379
    const-string v2, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 3387
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3394
    :cond_b1
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 3400
    :cond_c2
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3761
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3763
    return-void
.end method

.method private asyncDeleteTemporaryMmsMessage(J)V
    .registers 6
    .parameter "threadId"

    .prologue
    .line 4009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4010
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4011
    return-void
.end method

.method private asyncDeleteTemporarySmsMessage(J)V
    .registers 6
    .parameter "threadId"

    .prologue
    .line 3996
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    .line 3997
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4000
    :cond_12
    return-void
.end method

.method private asyncUpdateTemporaryMmsMessage([Ljava/lang/String;)V
    .registers 5
    .parameter "dests"

    .prologue
    .line 3877
    new-instance v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 3878
    .local v0, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)[Ljava/lang/String;

    .line 3880
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$24;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity$24;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3890
    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDeleteTemporarySmsMessage(J)V

    .line 3891
    return-void
.end method

.method private asyncUpdateTemporarySmsMessage([Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "dests"
    .parameter "contents"

    .prologue
    .line 3950
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$25;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3957
    return-void
.end method

.method private audioInsertAnyway()V
    .registers 5

    .prologue
    .line 3315
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->changeAudioInsertAnyway(Landroid/net/Uri;)V

    .line 3316
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_f
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_f} :catch_16

    .line 3326
    :goto_f
    return-void

    .line 3318
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 3319
    .local v0, e1:Lcom/google/android/mms/MmsException;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAudioFailure(Lcom/google/android/mms/MmsException;)V

    goto :goto_f

    .line 3320
    .end local v0           #e1:Lcom/google/android/mms/MmsException;
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 3321
    .local v0, e1:Lcom/android/mms/ExceedMessageSizeException;
    const v1, 0x7f07004e

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    .line 2734
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientList;->hasValidRecipient()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2737
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2738
    .local v4, recipientIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2739
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 2740
    .local v3, r:Lcom/android/mms/ui/RecipientList$Recipient;
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getPersonId(Lcom/android/mms/ui/RecipientList$Recipient;)J

    move-result-wide v1

    .line 2742
    .local v1, personId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_f

    .line 2743
    iget-object v5, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2744
    .local v0, intent:Landroid/content/Intent;
    const/16 v5, 0x1b

    const v6, 0x7f07006e

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x1080033

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2751
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #personId:J
    .end local v3           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    .end local v4           #recipientIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    :cond_3e
    return-void
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .registers 3
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2150
    invoke-static {p0}, Lcom/android/mms/ui/ConversationList;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2152
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2154
    const/4 v0, 0x1

    .line 2156
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private cancelPresencePollingRequests()V
    .registers 3

    .prologue
    .line 4645
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPresencePollingHandler:Landroid/os/Handler;

    const v1, 0xb0b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4646
    return-void
.end method

.method private checkForTooManyRecipients()V
    .registers 11

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1115
    const/16 v1, 0x14

    .line 1117
    .local v1, recipientLimit:I
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 1118
    .local v0, recipientCount:I
    if-le v0, v9, :cond_33

    move v2, v7

    .line 1120
    .local v2, tooMany:Z
    :goto_d
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-eq v0, v4, :cond_32

    .line 1123
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1124
    if-eqz v2, :cond_32

    .line 1125
    const v4, 0x7f070061

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, tooManyMsg:Ljava/lang/String;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1132
    .end local v3           #tooManyMsg:Ljava/lang/String;
    :cond_32
    return-void

    .end local v2           #tooMany:Z
    :cond_33
    move v2, v8

    .line 1118
    goto :goto_d
.end method

.method private checkPendingNotification()V
    .registers 3

    .prologue
    .line 4478
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4479
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->markAsRead(J)V

    .line 4480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    .line 4482
    :cond_12
    return-void
.end method

.method private cleanupContactInfoCursor()V
    .registers 2

    .prologue
    .line 4639
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 4640
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4642
    :cond_9
    return-void
.end method

.method private clearProvNotification()V
    .registers 3

    .prologue
    .line 4718
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4719
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/clear.prov.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4721
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4722
    return-void
.end method

.method private clearPushNotification()V
    .registers 3

    .prologue
    .line 4711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4712
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/clear.push.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4714
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4715
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 6
    .parameter "listener"
    .parameter "allMessages"

    .prologue
    .line 3647
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3648
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3649
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3650
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3651
    if-eqz p2, :cond_2e

    const v1, 0x7f0700a1

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3654
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3655
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3656
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3657
    return-void

    .line 3651
    :cond_2e
    const v1, 0x7f0700a3

    goto :goto_1a
.end method

.method private confirmSendMessageIfNeeded()V
    .registers 16

    .prologue
    const v14, 0x7f070070

    const v13, 0x7f070058

    const v12, 0x1080027

    const/4 v11, 0x0

    .line 923
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientList;->hasInvalidRecipient()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 924
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientList;->hasValidRecipient()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 925
    const v8, 0x7f070056

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientList;->getInvalidRecipientString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, title:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f070057

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f070075

    new-instance v10, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;

    invoke-direct {v10, p0, v11}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f070071

    new-instance v10, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v10, p0, v11}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1000
    .end local v7           #title:Ljava/lang/String;
    :goto_56
    return-void

    .line 936
    :cond_57
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f070059

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v9, p0, v11}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v8, v14, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_56

    .line 944
    :cond_78
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 947
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    const-string v9, "*99#"

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->checkFdn(Ljava/lang/String;)Z

    move-result v1

    .line 950
    .local v1, bFdn:Z
    if-eqz v1, :cond_8e

    .line 951
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage()V

    goto :goto_56

    .line 953
    :cond_8e
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mcheckFDNmessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v14, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_56

    .line 964
    .end local v1           #bFdn:Z
    :cond_a9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v2

    .line 965
    .local v2, count:I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, numbers:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 967
    .restart local v1       #bFdn:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b7
    if-ge v3, v2, :cond_c5

    .line 969
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    aget-object v9, v4, v3

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->checkFdn(Ljava/lang/String;)Z

    move-result v1

    .line 970
    if-nez v1, :cond_105

    .line 974
    :cond_c5
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    .line 975
    .local v5, operator:Ljava/lang/String;
    if-eqz v1, :cond_fe

    const-string v8, "VIVO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 976
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 979
    .local v6, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v6}, Landroid/telephony/SmsManager;->readValidityPeriod()I

    .line 980
    invoke-virtual {v6}, Landroid/telephony/SmsManager;->readSCAddress()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, SCAddress:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->checkFdn(Ljava/lang/String;)Z

    move-result v1

    .line 984
    const-string v8, "ComposeMessageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check SMSC for VIVO bFdn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    .end local v0           #SCAddress:Ljava/lang/String;
    .end local v6           #smsManager:Landroid/telephony/SmsManager;
    :cond_fe
    if-eqz v1, :cond_108

    .line 988
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage()V

    goto/16 :goto_56

    .line 967
    .end local v5           #operator:Ljava/lang/String;
    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 990
    .restart local v5       #operator:Ljava/lang/String;
    :cond_108
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mcheckFDNmessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v14, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_56
.end method

.method private contactMultiPick()V
    .registers 7

    .prologue
    const/16 v3, 0x14

    .line 2623
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v2

    .line 2624
    .local v2, recipientCount:I
    const/4 v0, 0x0

    .line 2626
    .local v0, availableCount:I
    if-ge v2, v3, :cond_b

    .line 2627
    sub-int v0, v3, v2

    .line 2629
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.MULTI_PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "phone"

    const-string v4, "tel"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2632
    const-string v3, "AvailableSize"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2633
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AvailableSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const/16 v3, 0x11

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2635
    return-void
.end method

.method private convertMessage(Z)V
    .registers 10
    .parameter "toMms"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v7, "SMS"

    const-string v6, "MMS"

    .line 781
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "MMS"

    move-object v3, v6

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_66

    const-string v3, "MMS"

    move-object v3, v6

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    if-eqz p1, :cond_6a

    .line 785
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_42

    .line 786
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    :cond_42
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMmsComponents()V

    .line 789
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_6a

    .line 790
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, mmsText:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v0, v4, v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    .line 793
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 807
    .end local v0           #mmsText:Ljava/lang/CharSequence;
    :goto_61
    return-void

    .line 781
    :cond_62
    const-string v3, "SMS"

    move-object v3, v7

    goto :goto_1d

    :cond_66
    const-string v3, "SMS"

    move-object v3, v7

    goto :goto_2c

    .line 797
    :cond_6a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->uninitMmsComponents()V

    .line 800
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_76

    .line 801
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    :cond_76
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v1, v4, v4, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    .line 806
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    goto :goto_61
.end method

.method private convertMessageIfNeeded(IZ)V
    .registers 4
    .parameter "whichState"
    .parameter "set"

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZZ)V

    .line 819
    return-void
.end method

.method private convertMessageIfNeeded(IZZ)V
    .registers 7
    .parameter "whichState"
    .parameter "set"
    .parameter "toast"

    .prologue
    .line 822
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    .line 823
    .local v0, oldState:I
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 833
    if-nez v0, :cond_15

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    if-eqz v2, :cond_15

    .line 834
    const/4 v1, 0x1

    .line 849
    .local v1, toMms:Z
    :goto_c
    if-eqz p3, :cond_11

    .line 850
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V

    .line 852
    :cond_11
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 853
    .end local v1           #toMms:Z
    :cond_14
    return-void

    .line 835
    :cond_15
    if-eqz v0, :cond_14

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    if-nez v2, :cond_14

    .line 837
    const/4 v1, 0x0

    .restart local v1       #toMms:Z
    goto :goto_c
.end method

.method private copyMedia(J)Z
    .registers 12
    .parameter "msgId"

    .prologue
    .line 1866
    const/4 v5, 0x1

    .line 1868
    .local v5, result:Z
    :try_start_1
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_a
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_a} :catch_3f

    move-result-object v0

    .line 1874
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 1875
    .local v4, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v4, :cond_4c

    .line 1876
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 1877
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1879
    .local v6, type:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1881
    :cond_37
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 1875
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1869
    .end local v0           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #i:I
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #partNum:I
    .end local v6           #type:Ljava/lang/String;
    :catch_3f
    move-exception v7

    move-object v1, v7

    .line 1870
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v7, "ComposeMessageActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1871
    const/4 v7, 0x0

    .line 1884
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :goto_4b
    return v7

    .restart local v0       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v2       #i:I
    .restart local v4       #partNum:I
    :cond_4c
    move v7, v5

    goto :goto_4b
.end method

.method private copyMultipartTextToSIM(ILjava/util/ArrayList;I)Z
    .registers 25
    .parameter "messagesize"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1697
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "ComposeMessageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RHS0731] copyMultipartTextToSIM: messagesize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1699
    .local v12, bReturn:Ljava/lang/Boolean;
    move/from16 v13, p1

    .line 1700
    .local v13, count:I
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 1701
    .local v19, sConcatenatedRef:I
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 1703
    .local v18, ref:I
    const/4 v11, -0x1

    .line 1705
    .local v11, encodingtype:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v20

    .line 1707
    .local v20, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsManager;->getEncodingType()I

    move-result v11

    .line 1709
    const/16 v16, 0x0

    .local v16, i:I
    :goto_4d
    move/from16 v0, v16

    move v1, v13

    if-ge v0, v1, :cond_e9

    .line 1711
    const/4 v4, 0x3

    new-array v14, v4, [B

    .line 1712
    .local v14, data:[B
    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-byte v0, v0

    move v5, v0

    aput-byte v5, v14, v4

    .line 1713
    const/4 v4, 0x1

    int-to-byte v5, v13

    aput-byte v5, v14, v4

    .line 1714
    const/4 v4, 0x2

    add-int/lit8 v5, v16, 0x1

    int-to-byte v5, v5

    aput-byte v5, v14, v4

    .line 1715
    new-instance v15, Lcom/android/internal/telephony/gsm/SmsHeader;

    invoke-direct {v15}, Lcom/android/internal/telephony/gsm/SmsHeader;-><init>()V

    .line 1716
    .local v15, header:Lcom/android/internal/telephony/gsm/SmsHeader;
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsHeader$Element;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v14}, Lcom/android/internal/telephony/gsm/SmsHeader$Element;-><init>(I[B)V

    invoke-virtual {v15, v4}, Lcom/android/internal/telephony/gsm/SmsHeader;->add(Lcom/android/internal/telephony/gsm/SmsHeader$Element;)V

    .line 1718
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_b7

    .line 1719
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSaddress:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdeliveryreport:Z

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdate:J

    move-wide v8, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsHeader;->toByteArray()[B

    move-result-object v10

    invoke-static/range {v4 .. v11}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v17

    .line 1722
    .local v17, pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    if-nez v17, :cond_a0

    .line 1723
    const/4 v4, 0x0

    .line 1732
    .end local v14           #data:[B
    .end local v15           #header:Lcom/android/internal/telephony/gsm/SmsHeader;
    .end local v17           #pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    :goto_9f
    return v4

    .line 1724
    .restart local v14       #data:[B
    .restart local v15       #header:Lcom/android/internal/telephony/gsm/SmsHeader;
    .restart local v17       #pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_a0
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1709
    .end local v17           #pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    :goto_b4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4d

    .line 1726
    :cond_b7
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSaddress:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdeliveryreport:Z

    move v9, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SmsHeader;->toByteArray()[B

    move-result-object v10

    invoke-static/range {v6 .. v11}, Landroid/telephony/SmsMessage;->getSubmitPduSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 1728
    .local v17, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_b4

    .line 1732
    .end local v14           #data:[B
    .end local v15           #header:Lcom/android/internal/telephony/gsm/SmsHeader;
    .end local v17           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_e9
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_9f
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;)Z
    .registers 29
    .parameter "part"

    .prologue
    .line 1888
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v22

    .line 1890
    .local v22, uri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 1891
    .local v17, input:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 1893
    .local v14, fout:Ljava/io/FileOutputStream;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 1894
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/io/FileInputStream;

    move/from16 v24, v0

    if-eqz v24, :cond_22d

    .line 1895
    move-object/from16 v0, v17

    check-cast v0, Ljava/io/FileInputStream;

    move-object v13, v0

    .line 1897
    .local v13, fin:Ljava/io/FileInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v18

    .line 1898
    .local v18, location:[B
    if-nez v18, :cond_2c

    .line 1899
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v18

    .line 1901
    :cond_2c
    if-nez v18, :cond_32

    .line 1902
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v18

    .line 1907
    :cond_32
    new-instance v12, Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1910
    .local v12, fileName:Ljava/lang/String;
    const-string v24, "=?utf-8?B?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_f6

    .line 1912
    const-string v24, "?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1913
    .local v9, endIndex:I
    const/16 v24, 0xa

    move-object v0, v12

    move/from16 v1, v24

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1915
    .local v20, tmpFileName:Ljava/lang/String;
    const-string v24, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v6

    .line 1916
    .local v6, decFileName:[B
    new-instance v12, Ljava/lang/String;

    .end local v12           #fileName:Ljava/lang/String;
    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    .line 1943
    .end local v6           #decFileName:[B
    .end local v9           #endIndex:I
    .end local v20           #tmpFileName:Ljava/lang/String;
    .restart local v12       #fileName:Ljava/lang/String;
    :cond_6b
    :goto_6b
    const-string v7, "/sdcard/download/"

    .line 1946
    .local v7, dir:Ljava/lang/String;
    const-string v24, "."

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .local v16, index:I
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_18f

    .line 1947
    new-instance v21, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1948
    .local v21, type:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1954
    .end local v21           #type:Ljava/lang/String;
    .local v10, extension:Ljava/lang/String;
    :goto_97
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 1957
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    .line 1958
    .local v19, parentFile:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1cd

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    move-result v24

    if-nez v24, :cond_1cd

    .line 1959
    const-string v24, "ComposeMessageActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[MMS] copyPart: mkdirs for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " failed!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_7 .. :try_end_e9} :catchall_29c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e9} :catch_25d

    .line 1960
    const/16 v24, 0x0

    .line 1989
    if-eqz v17, :cond_f0

    .line 1991
    :try_start_ed
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_1ab

    .line 1998
    :cond_f0
    if-eqz v14, :cond_f5

    .line 2000
    :try_start_f2
    #Replaced unresolvable odex instruction with a throw
    throw v14
    #invoke-virtual-quick {v14}, vtable@0xb
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_1bc

    .line 2008
    .end local v7           #dir:Ljava/lang/String;
    .end local v10           #extension:Ljava/lang/String;
    .end local v11           #file:Ljava/io/File;
    .end local v12           #fileName:Ljava/lang/String;
    .end local v13           #fin:Ljava/io/FileInputStream;
    .end local v16           #index:I
    .end local v18           #location:[B
    .end local v19           #parentFile:Ljava/io/File;
    :cond_f5
    :goto_f5
    return v24

    .line 1918
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v13       #fin:Ljava/io/FileInputStream;
    .restart local v18       #location:[B
    :cond_f6
    :try_start_f6
    const-string v24, "=?utf-8?Q?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_129

    .line 1920
    const-string v24, "?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1921
    .restart local v9       #endIndex:I
    const/16 v24, 0xa

    move-object v0, v12

    move/from16 v1, v24

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1923
    .restart local v20       #tmpFileName:Ljava/lang/String;
    const-string v24, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v6

    .line 1924
    .restart local v6       #decFileName:[B
    new-instance v12, Ljava/lang/String;

    .end local v12           #fileName:Ljava/lang/String;
    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    .line 1925
    .restart local v12       #fileName:Ljava/lang/String;
    goto/16 :goto_6b

    .line 1926
    .end local v6           #decFileName:[B
    .end local v9           #endIndex:I
    .end local v20           #tmpFileName:Ljava/lang/String;
    :cond_129
    const-string v24, "=?euc-kr?B?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_15c

    .line 1928
    const-string v24, "?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1929
    .restart local v9       #endIndex:I
    const/16 v24, 0xb

    move-object v0, v12

    move/from16 v1, v24

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1931
    .restart local v20       #tmpFileName:Ljava/lang/String;
    const-string v24, "EUC-KR"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v6

    .line 1932
    .restart local v6       #decFileName:[B
    new-instance v12, Ljava/lang/String;

    .end local v12           #fileName:Ljava/lang/String;
    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    .line 1933
    .restart local v12       #fileName:Ljava/lang/String;
    goto/16 :goto_6b

    .line 1934
    .end local v6           #decFileName:[B
    .end local v9           #endIndex:I
    .end local v20           #tmpFileName:Ljava/lang/String;
    :cond_15c
    const-string v24, "=?euc-kr?Q?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_6b

    .line 1936
    const-string v24, "?"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1937
    .restart local v9       #endIndex:I
    const/16 v24, 0xa

    move-object v0, v12

    move/from16 v1, v24

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1939
    .restart local v20       #tmpFileName:Ljava/lang/String;
    const-string v24, "EUC-KR"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v6

    .line 1940
    .restart local v6       #decFileName:[B
    new-instance v12, Ljava/lang/String;

    .end local v12           #fileName:Ljava/lang/String;
    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    .restart local v12       #fileName:Ljava/lang/String;
    goto/16 :goto_6b

    .line 1950
    .end local v6           #decFileName:[B
    .end local v9           #endIndex:I
    .end local v20           #tmpFileName:Ljava/lang/String;
    .restart local v7       #dir:Ljava/lang/String;
    .restart local v16       #index:I
    :cond_18f
    add-int/lit8 v24, v16, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v25

    move-object v0, v12

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1951
    .restart local v10       #extension:Ljava/lang/String;
    const/16 v24, 0x0

    move-object v0, v12

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1a8
    .catchall {:try_start_f6 .. :try_end_1a8} :catchall_29c
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_1a8} :catch_25d

    move-result-object v12

    goto/16 :goto_97

    .line 1992
    .restart local v11       #file:Ljava/io/File;
    .restart local v19       #parentFile:Ljava/io/File;
    :catch_1ab
    move-exception v8

    .line 1994
    .local v8, e:Ljava/io/IOException;
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1995
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 2001
    .end local v8           #e:Ljava/io/IOException;
    :catch_1bc
    move-exception v8

    .line 2003
    .restart local v8       #e:Ljava/io/IOException;
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 1963
    .end local v8           #e:Ljava/io/IOException;
    :cond_1cd
    :try_start_1cd
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d2
    .catchall {:try_start_1cd .. :try_end_1d2} :catchall_29c
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d2} :catch_25d

    .line 1966
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .local v15, fout:Ljava/io/FileOutputStream;
    const/16 v24, 0x2000

    :try_start_1d4
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v4, v0

    .line 1967
    .local v4, buffer:[B
    const/4 v5, 0x0

    .line 1968
    .local v5, byteRead:I
    const/16 v23, 0x0

    .line 1970
    .local v23, writeSoFar:I
    invoke-virtual {v13, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1971
    :goto_1e0
    const/16 v24, -0x1

    move v0, v5

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f8

    .line 1972
    const/16 v24, 0x0

    move-object v0, v15

    move-object v1, v4

    move/from16 v2, v24

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1973
    add-int v23, v23, v5

    .line 1974
    invoke-virtual {v13, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    goto :goto_1e0

    .line 1977
    :cond_1f8
    const-string v24, "ComposeMessageActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Copy to SD Card : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "byte"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_22c
    .catchall {:try_start_1d4 .. :try_end_22c} :catchall_2ca
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_22c} :catch_2cd

    move-object v14, v15

    .line 1989
    .end local v4           #buffer:[B
    .end local v5           #byteRead:I
    .end local v7           #dir:Ljava/lang/String;
    .end local v10           #extension:Ljava/lang/String;
    .end local v11           #file:Ljava/io/File;
    .end local v12           #fileName:Ljava/lang/String;
    .end local v13           #fin:Ljava/io/FileInputStream;
    .end local v15           #fout:Ljava/io/FileOutputStream;
    .end local v16           #index:I
    .end local v18           #location:[B
    .end local v19           #parentFile:Ljava/io/File;
    .end local v23           #writeSoFar:I
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    :cond_22d
    if-eqz v17, :cond_232

    .line 1991
    :try_start_22f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_232} :catch_23b

    .line 1998
    :cond_232
    if-eqz v14, :cond_237

    .line 2000
    :try_start_234
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_237} :catch_24c

    .line 2008
    :cond_237
    const/16 v24, 0x1

    goto/16 :goto_f5

    .line 1992
    :catch_23b
    move-exception v8

    .line 1994
    .restart local v8       #e:Ljava/io/IOException;
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1995
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 2001
    .end local v8           #e:Ljava/io/IOException;
    :catch_24c
    move-exception v8

    .line 2003
    .restart local v8       #e:Ljava/io/IOException;
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 1984
    .end local v8           #e:Ljava/io/IOException;
    :catch_25d
    move-exception v24

    move-object/from16 v8, v24

    .line 1986
    .restart local v8       #e:Ljava/io/IOException;
    :goto_260
    :try_start_260
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while opening or reading stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26c
    .catchall {:try_start_260 .. :try_end_26c} :catchall_29c

    .line 1987
    const/16 v24, 0x0

    .line 1989
    if-eqz v17, :cond_273

    .line 1991
    :try_start_270
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_270 .. :try_end_273} :catch_28b

    .line 1998
    :cond_273
    if-eqz v14, :cond_f5

    .line 2000
    :try_start_275
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_278
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_278} :catch_27a

    goto/16 :goto_f5

    .line 2001
    :catch_27a
    move-exception v8

    .line 2003
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 1992
    :catch_28b
    move-exception v8

    .line 1994
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1995
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 1989
    .end local v8           #e:Ljava/io/IOException;
    :catchall_29c
    move-exception v24

    :goto_29d
    if-eqz v17, :cond_2a2

    .line 1991
    :try_start_29f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2a2
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2a2} :catch_2a8

    .line 1998
    :cond_2a2
    if-eqz v14, :cond_2a7

    .line 2000
    :try_start_2a4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a7
    .catch Ljava/io/IOException; {:try_start_2a4 .. :try_end_2a7} :catch_2b9

    .line 2004
    :cond_2a7
    throw v24

    .line 1992
    :catch_2a8
    move-exception v8

    .line 1994
    .restart local v8       #e:Ljava/io/IOException;
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1995
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 2001
    .end local v8           #e:Ljava/io/IOException;
    :catch_2b9
    move-exception v8

    .line 2003
    .restart local v8       #e:Ljava/io/IOException;
    const-string v24, "ComposeMessageActivity"

    const-string v25, "IOException caught while closing stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2004
    const/16 v24, 0x0

    goto/16 :goto_f5

    .line 1989
    .end local v8           #e:Ljava/io/IOException;
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .restart local v7       #dir:Ljava/lang/String;
    .restart local v10       #extension:Ljava/lang/String;
    .restart local v11       #file:Ljava/io/File;
    .restart local v12       #fileName:Ljava/lang/String;
    .restart local v13       #fin:Ljava/io/FileInputStream;
    .restart local v15       #fout:Ljava/io/FileOutputStream;
    .restart local v16       #index:I
    .restart local v18       #location:[B
    .restart local v19       #parentFile:Ljava/io/File;
    :catchall_2ca
    move-exception v24

    move-object v14, v15

    .end local v15           #fout:Ljava/io/FileOutputStream;
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    goto :goto_29d

    .line 1984
    .end local v14           #fout:Ljava/io/FileOutputStream;
    .restart local v15       #fout:Ljava/io/FileOutputStream;
    :catch_2cd
    move-exception v24

    move-object/from16 v8, v24

    move-object v14, v15

    .end local v15           #fout:Ljava/io/FileOutputStream;
    .restart local v14       #fout:Ljava/io/FileOutputStream;
    goto :goto_260
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 1519
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1521
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    return-void
.end method

.method private copyToSim()Z
    .registers 14

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v7, 0x1

    const-string v3, "KTF"

    .line 1740
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v12

    .line 1743
    .local v12, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v10

    .line 1747
    .local v10, operator:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1749
    .local v8, bReturn:Ljava/lang/Boolean;
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessagetype:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_21

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessagetype:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_21

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessagetype:I

    if-ne v1, v4, :cond_68

    .line 1751
    :cond_21
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1753
    .local v9, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "KTF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_4c

    .line 1754
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideSimMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1759
    :goto_35
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_53

    .line 1760
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0, v9, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMultipartTextToSIM(ILjava/util/ArrayList;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1812
    .end local v9           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_47
    :goto_47
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1756
    .restart local v9       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_35

    .line 1763
    :cond_53
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSaddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdeliveryreport:Z

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 1765
    .local v11, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    iget-object v1, v11, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {v12, v0, v1, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_47

    .line 1767
    .end local v9           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_68
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessagetype:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b0

    .line 1770
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1772
    .restart local v9       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "KTF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_94

    .line 1773
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideSimMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1779
    :goto_81
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_9b

    .line 1780
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0, v9, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMultipartTextToSIM(ILjava/util/ArrayList;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_47

    .line 1775
    :cond_94
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_81

    .line 1783
    :cond_9b
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSaddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdeliveryreport:Z

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 1785
    .restart local v11       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    iget-object v1, v11, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {v12, v0, v1, v4}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_47

    .line 1788
    .end local v9           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_b0
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessagetype:I

    if-ne v1, v7, :cond_47

    .line 1791
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1793
    .restart local v9       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KTF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v7, :cond_e0

    .line 1794
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideSimMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1800
    :goto_cc
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_e7

    .line 1801
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0, v9, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMultipartTextToSIM(ILjava/util/ArrayList;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_47

    .line 1796
    :cond_e0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_cc

    .line 1804
    :cond_e7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSaddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSmessage:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdeliveryreport:Z

    iget-wide v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSMSdate:J

    move-object v6, v0

    invoke-static/range {v0 .. v7}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v11

    .line 1808
    .local v11, pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    iget-object v1, v11, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    invoke-virtual {v12, v0, v1, v7}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_47
.end method

.method private static createNewSlideshow(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .registers 7
    .parameter "context"

    .prologue
    .line 2061
    invoke-static {p0}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 2062
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)V

    .line 2064
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    new-instance v2, Lcom/android/mms/model/TextModel;

    const-string v3, "text/plain"

    const-string v4, "text_0.txt"

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 2067
    .local v2, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 2069
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 2070
    return-object v1
.end method

.method private createTemporaryMmsMessage()Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 3865
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 3866
    .local v2, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)[Ljava/lang/String;

    .line 3867
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 3868
    .local v0, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 3869
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 3870
    .local v1, res:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 3871
    return-object v1
.end method

.method private creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V
    .registers 8
    .parameter "context"
    .parameter "callback"
    .parameter "stringId"

    .prologue
    .line 4742
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$31;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity$31;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    .line 4748
    .local v2, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$32;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$32;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4754
    .local v1, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$33;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$33;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4760
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v1, v0}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4764
    return-void
.end method

.method private deleteTemporarySmsMessage(J)V
    .registers 7
    .parameter "threadId"

    .prologue
    .line 4003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "type=3"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4006
    return-void
.end method

.method private deriveAddress(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter "intent"

    .prologue
    .line 3681
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3682
    .local v0, recipientUri:Landroid/net/Uri;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private dialRecipient()V
    .registers 6

    .prologue
    .line 2615
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientList;->getSingleRecipientNumber()Ljava/lang/String;

    move-result-object v1

    .line 2617
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2619
    .local v0, dialIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2620
    return-void
.end method

.method private discardTemporaryMessage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 884
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    .line 886
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discardTemporaryMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 889
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 893
    :cond_2c
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDeleteTemporarySmsMessage(J)V

    .line 896
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 897
    return-void
.end method

.method private drawBottomPanel(I)V
    .registers 6
    .parameter "attachmentType"

    .prologue
    const/4 v3, 0x0

    .line 3507
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetCounter()V

    .line 3509
    sparse-switch p1, :sswitch_data_5c

    .line 3518
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3519
    const/4 v0, 0x0

    .line 3520
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_59

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 3521
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 3522
    .local v1, tm:Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_27

    .line 3523
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3529
    .end local v1           #tm:Lcom/android/mms/model/TextModel;
    :cond_27
    :goto_27
    if-eqz v0, :cond_3e

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3530
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3533
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_3e
    :goto_3e
    return-void

    .line 3511
    :sswitch_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Type of the attachment may not be EMPTY."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3514
    :sswitch_47
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3515
    const v2, 0x7f090017

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_3e

    .line 3526
    .restart local v0       #text:Ljava/lang/CharSequence;
    :cond_59
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    goto :goto_27

    .line 3509
    :sswitch_data_5c
    .sparse-switch
        -0x1 -> :sswitch_3f
        0x4 -> :sswitch_47
    .end sparse-switch
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .registers 4
    .parameter "msgItem"

    .prologue
    .line 1467
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1468
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1472
    :goto_d
    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->isFailedMessage(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1f

    .line 1474
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 1476
    :cond_1f
    return-void

    .line 1470
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_d
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .registers 10
    .parameter "msgItem"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1487
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    .line 1489
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1492
    :cond_f
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 1493
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1494
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "msg_box"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1495
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1498
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 1499
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1500
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    .line 1501
    const/4 v0, 0x2

    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 1504
    :cond_42
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-lez v0, :cond_4a

    .line 1505
    const/4 v0, 0x4

    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 1508
    :cond_4a
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 1509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1510
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor()V

    .line 1516
    :goto_58
    return-void

    .line 1512
    :cond_59
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1513
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1514
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideTopPanelIfNecessary()V

    goto :goto_58
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .registers 7
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1480
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1481
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1483
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 1484
    return-void
.end method

.method private static encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6
    .parameter "array"

    .prologue
    .line 2074
    array-length v0, p0

    .line 2075
    .local v0, count:I
    if-lez v0, :cond_16

    .line 2076
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 2077
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v0, :cond_14

    .line 2078
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 2077
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    move-object v3, v1

    .line 2082
    .end local v1           #encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2           #i:I
    :goto_15
    return-object v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "exit"

    .prologue
    .line 2566
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2567
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2579
    :goto_9
    return-void

    .line 2571
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasValidRecipient()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2572
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_9

    .line 2577
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    .line 2578
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)[Ljava/lang/String;
    .registers 9
    .parameter "sendReq"

    .prologue
    .line 4026
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 4027
    .local v0, dests:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 4028
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_f

    .line 4029
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 4033
    :cond_f
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->getBccNumbers()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 4034
    if-eqz v1, :cond_1e

    .line 4035
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 4039
    :cond_1e
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v3, :cond_38

    const-string v3, ""

    move-object v2, v3

    .line 4041
    .local v2, subject:Ljava/lang/String;
    :goto_25
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 4044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 4046
    return-object v0

    .line 4039
    .end local v2           #subject:Ljava/lang/String;
    :cond_38
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_25
.end method

.method private fixEmptySlideshow(Lcom/android/mms/model/SlideshowModel;)V
    .registers 8
    .parameter "slideshow"

    .prologue
    const/4 v5, 0x0

    .line 3492
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_f

    .line 3493
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, p1, p0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)V

    .line 3494
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {p1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 3497
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :cond_f
    invoke-virtual {p1, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-nez v2, :cond_31

    .line 3498
    new-instance v1, Lcom/android/mms/model/TextModel;

    const-string v2, "text/plain"

    const-string v3, "text_0.txt"

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 3501
    .local v1, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {p1, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3503
    .end local v1           #text:Lcom/android/mms/model/TextModel;
    :cond_31
    return-void
.end method

.method private getAudioString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3470
    const v0, 0x7f0700e8

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4318
    if-eqz p1, :cond_32

    .line 4319
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4321
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_32

    .line 4323
    :try_start_17
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4324
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_35

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 4327
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4331
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_2e
    return-wide v0

    .line 4327
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4331
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_32
    const-wide/16 v0, -0x1

    goto :goto_2e

    .line 4327
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_35
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;J)Lcom/android/mms/ui/MessageItem;
    .registers 8
    .parameter "type"
    .parameter "msgId"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 516
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 517
    :cond_18
    const-string v1, "ComposeMessageActivity"

    const-string v2, "Bad cursor."

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    const/4 v1, 0x0

    .line 521
    :goto_25
    return-object v1

    :cond_26
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    goto :goto_25
.end method

.method private getOrCreateThreadId([Ljava/lang/String;)J
    .registers 5
    .parameter "numbers"

    .prologue
    .line 4114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4115
    .local v0, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4116
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPersonId(Lcom/android/mms/ui/RecipientList$Recipient;)J
    .registers 9
    .parameter "r"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 2765
    if-nez p1, :cond_8

    move-wide v1, v3

    .line 2776
    :goto_7
    return-wide v1

    .line 2768
    :cond_8
    iget-wide v1, p1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_11

    .line 2769
    iget-wide v1, p1, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    goto :goto_7

    .line 2771
    :cond_11
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 2773
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-wide v1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_24

    .line 2774
    iget-wide v1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    goto :goto_7

    :cond_24
    move-wide v1, v3

    .line 2776
    goto :goto_7
.end method

.method private getPictureString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3474
    const v0, 0x7f0700e9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 3487
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3488
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"
    .parameter "mediaName"

    .prologue
    .line 3482
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3483
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;
    .registers 14
    .parameter "listView"
    .parameter "position"

    .prologue
    const/4 v10, 0x0

    .line 1204
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 1205
    .local v2, msglistItem:Lcom/android/mms/ui/MessageListItem;
    if-nez v2, :cond_b

    move-object v8, v10

    .line 1252
    :goto_a
    return-object v8

    .line 1215
    :cond_b
    const/4 v5, 0x0

    .line 1216
    .local v5, text:Ljava/lang/CharSequence;
    const/4 v4, -0x1

    .line 1217
    .local v4, selStart:I
    const/4 v3, -0x1

    .line 1220
    .local v3, selEnd:I
    const v8, 0x7f09004c

    invoke-virtual {v2, v8}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1221
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v6, :cond_25

    .line 1222
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1223
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1224
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1227
    :cond_25
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3f

    .line 1229
    const v8, 0x7f090062

    invoke-virtual {v2, v8}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1230
    .restart local v6       #textView:Landroid/widget/TextView;
    if-eqz v6, :cond_3f

    .line 1231
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1232
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1233
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1239
    :cond_3f
    if-eq v4, v3, :cond_63

    .line 1240
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1241
    .local v1, min:I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1243
    .local v0, max:I
    check-cast v5, Landroid/text/Spanned;

    .end local v5           #text:Ljava/lang/CharSequence;
    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v5, v1, v0, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 1246
    .local v7, urls:[Landroid/text/style/URLSpan;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_63

    .line 1247
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_a

    .end local v0           #max:I
    .end local v1           #min:I
    .end local v7           #urls:[Landroid/text/style/URLSpan;
    :cond_63
    move-object v8, v10

    .line 1252
    goto :goto_a
.end method

.method private getThreadType()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4407
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_c
    move v0, v2

    .line 4409
    .local v0, isMms:Z
    :goto_d
    if-nez v0, :cond_1f

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    if-le v1, v2, :cond_1f

    move v1, v2

    :goto_1c
    return v1

    .end local v0           #isMms:Z
    :cond_1d
    move v0, v3

    .line 4407
    goto :goto_d

    .restart local v0       #isMms:Z
    :cond_1f
    move v1, v3

    .line 4409
    goto :goto_1c
.end method

.method private getThreadUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 3687
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter "base"
    .parameter "extension"

    .prologue
    const-string v4, "."

    .line 2012
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_1f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2015
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2014
    .restart local v0       #file:Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 2017
    :cond_4e
    return-object v0
.end method

.method private getVideoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3478
    const v0, 0x7f0700ea

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goToConversationList()V
    .registers 3

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 2583
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2584
    return-void
.end method

.method private handleAddAudioFailure(Lcom/google/android/mms/MmsException;)V
    .registers 4
    .parameter "exception"

    .prologue
    .line 3330
    const-string v0, "ComposeMessageActivity"

    const-string v1, "add Audio failed"

    invoke-static {v0, v1, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3331
    const v0, 0x7f07004f

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3335
    return-void
.end method

.method private handleAddImageFailure(Lcom/google/android/mms/MmsException;)V
    .registers 4
    .parameter "exception"

    .prologue
    .line 3232
    const-string v0, "ComposeMessageActivity"

    const-string v1, "add image failed"

    invoke-static {v0, v1, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3233
    const v0, 0x7f07004f

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3237
    return-void
.end method

.method private handleForwardedMessage()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3427
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    .line 3436
    :goto_f
    return v0

    .line 3432
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 3433
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    :cond_17
    move v0, v3

    .line 3436
    goto :goto_f
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const-string v6, "android.intent.extra.TEXT"

    const-string v5, "android.intent.extra.STREAM"

    .line 3440
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3442
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v0, :cond_19

    .line 3443
    :cond_17
    const/4 v2, 0x0

    .line 3466
    :goto_18
    return v2

    .line 3446
    :cond_19
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3447
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 3451
    :cond_29
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3452
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3453
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_4d

    .line 3454
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 3455
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 3456
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;)V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_4d
    :goto_4d
    move v2, v4

    .line 3466
    goto :goto_18

    .line 3457
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_4f
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 3458
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;)V

    goto :goto_4d

    .line 3459
    :cond_5f
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3460
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto :goto_4d
.end method

.method private hasAttachment()Z
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentEditor;->getAttachmentType()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hasInvalidRecipient()Z
    .registers 2

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->hasInvalidRecipient()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private hasRecipient()Z
    .registers 2

    .prologue
    .line 4050
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasValidRecipient()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasInvalidRecipient()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hasSim()Z
    .registers 6

    .prologue
    .line 4079
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 4082
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .local v0, simState:I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_29

    .line 4083
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM is not ready. state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    const/4 v2, 0x0

    .line 4086
    :goto_28
    return v2

    :cond_29
    const/4 v2, 0x1

    goto :goto_28
.end method

.method private hasSubject()Z
    .registers 2

    .prologue
    .line 4073
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private hasText()Z
    .registers 2

    .prologue
    .line 4069
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private hasValidRecipient()Z
    .registers 2

    .prologue
    .line 4056
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->hasValidRecipient()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private haveEmailContact(Ljava/lang/String;)Z
    .registers 13
    .parameter "emailAddress"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1328
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v3, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1334
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_47

    .line 1336
    :cond_2e
    :try_start_2e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1337
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1338
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_49

    move-result v0

    if-nez v0, :cond_2e

    .line 1343
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1346
    .end local v8           #name:Ljava/lang/String;
    :goto_43
    return v0

    .line 1343
    :cond_44
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_47
    move v0, v9

    .line 1346
    goto :goto_43

    .line 1343
    :catchall_49
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private haveSomethingToCopyToSDCard(J)Z
    .registers 12
    .parameter "msgId"

    .prologue
    .line 1838
    :try_start_0
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_9
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_9} :catch_3a

    move-result-object v0

    .line 1845
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v5, 0x0

    .line 1846
    .local v5, result:Z
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 1847
    .local v4, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v4, :cond_38

    .line 1848
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 1849
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1851
    .local v6, type:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1853
    :cond_37
    const/4 v5, 0x1

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #type:Ljava/lang/String;
    :cond_38
    move v7, v5

    .line 1857
    .end local v0           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #i:I
    .end local v4           #partNum:I
    .end local v5           #result:Z
    :goto_39
    return v7

    .line 1840
    :catch_3a
    move-exception v7

    move-object v1, v7

    .line 1841
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v7, "ComposeMessageActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1842
    const/4 v7, 0x0

    goto :goto_39

    .line 1847
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v2       #i:I
    .restart local v3       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v4       #partNum:I
    .restart local v5       #result:Z
    .restart local v6       #type:Ljava/lang/String;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method private hideTopPanelIfNecessary()V
    .registers 3

    .prologue
    .line 2293
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2294
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2296
    :cond_13
    return-void
.end method

.method private imageInsertAnyway()V
    .registers 5

    .prologue
    .line 3209
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->changeImageInsertAnyway(Landroid/net/Uri;)V

    .line 3210
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_f
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_f} :catch_22

    .line 3224
    :goto_f
    return-void

    .line 3213
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 3214
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddImageFailure(Lcom/google/android/mms/MmsException;)V

    goto :goto_f

    .line 3215
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 3216
    .local v0, e:Lcom/android/mms/ResolutionException;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    goto :goto_f

    .line 3218
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 3219
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v1, 0x7f07004e

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getPictureString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private imageInsertResize()V
    .registers 4

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    .line 3229
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 14
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const-string v10, "address"

    .line 4346
    if-eqz p1, :cond_62

    .line 4347
    const-string v3, "thread_id"

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    .line 4348
    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 4349
    const-string v3, "address"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    .line 4350
    const-string v3, "exit_on_sent"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    .line 4351
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    .line 4352
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 4382
    :goto_3c
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 4383
    invoke-direct {p0, v9, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 4387
    :cond_47
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    if-nez v3, :cond_4f

    .line 4388
    const-string v3, ""

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 4391
    :cond_4f
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    if-nez v3, :cond_61

    .line 4392
    iget-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_e3

    .line 4393
    iget-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    .line 4404
    :cond_61
    :goto_61
    return-void

    .line 4354
    :cond_62
    const-string v3, "thread_id"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    .line 4355
    const-string v3, "msg_uri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 4356
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v3, :cond_a1

    iget-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_a1

    .line 4359
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4360
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v9, :cond_a1

    .line 4362
    :try_start_8f
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_a1} :catch_d0

    .line 4368
    .end local v2           #uri:Landroid/net/Uri;
    :cond_a1
    :goto_a1
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 4369
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4370
    .local v0, ex_addr:[Ljava/lang/String;
    aget-object v3, v0, v5

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    .line 4375
    .end local v0           #ex_addr:[Ljava/lang/String;
    :goto_b3
    const-string v3, "exit_on_sent"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    .line 4376
    const-string v3, "from_undelivered"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFromUndelivered:Z

    .line 4377
    const-string v3, "sms_body"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 4379
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->setSubjectFromIntent(Landroid/content/Intent;)V

    goto/16 :goto_3c

    .line 4363
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_d0
    move-exception v3

    move-object v1, v3

    .line 4364
    .local v1, exception:Ljava/lang/NumberFormatException;
    const-string v3, "ComposeMessageActivity"

    const-string v4, "Thread ID must be a Long."

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 4373
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_da
    const-string v3, "address"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    goto :goto_b3

    .line 4395
    :cond_e3
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->deriveAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    .line 4399
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 4400
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    goto/16 :goto_61
.end method

.method private initFocus()V
    .registers 2

    .prologue
    .line 4460
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_20

    .line 4462
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 4468
    :goto_1f
    return-void

    .line 4467
    :cond_20
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1f
.end method

.method private initMessageList()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3708
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_6

    .line 3726
    :goto_5
    return-void

    .line 3713
    :cond_6
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getThreadType()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZI)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 3715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 3716
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 3717
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 3719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 3720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$23;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$23;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5
.end method

.method private initMmsComponents()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 633
    const v2, 0x7f090015

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    .line 634
    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectRLayout:Landroid/widget/RelativeLayout;

    .line 635
    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 636
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextSubEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 637
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 638
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 640
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 641
    const/4 v2, 0x2

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 642
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor()V

    .line 647
    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_a1

    .line 649
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 650
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_6f
    .catch Lcom/google/android/mms/MmsException; {:try_start_57 .. :try_end_6f} :catch_c2

    .line 665
    :goto_6f
    new-instance v2, Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    const v4, 0x7f090017

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/AttachmentEditor;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    .line 667
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/AttachmentEditor;->setOnAttachmentChangedListener(Lcom/android/mms/ui/AttachmentEditor$OnAttachmentChangedListener;)V

    .line 669
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 670
    .local v0, attachmentType:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->fixEmptySlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 671
    const/4 v2, -0x1

    if-ne v0, v2, :cond_93

    .line 672
    const/4 v0, 0x0

    .line 674
    :cond_93
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V

    .line 676
    if-lez v0, :cond_a0

    .line 677
    const/4 v2, 0x4

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 679
    .end local v0           #attachmentType:I
    :cond_a0
    :goto_a0
    return-void

    .line 652
    :cond_a1
    :try_start_a1
    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->createNewSlideshow(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 653
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_bb

    .line 654
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_bb
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->createTemporaryMmsMessage()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    :try_end_c1
    .catch Lcom/google/android/mms/MmsException; {:try_start_a1 .. :try_end_c1} :catch_c2

    goto :goto_6f

    .line 658
    :catch_c2
    move-exception v2

    move-object v1, v2

    .line 659
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "ComposeMessageActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_a0
.end method

.method private initRecipientsEditor()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2087
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2138
    :goto_8
    return-void

    .line 2090
    :cond_9
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2091
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_74

    .line 2092
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2098
    :goto_1c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2099
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/ui/RecipientList;)V

    .line 2100
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2101
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2103
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mrcptKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2104
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2105
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1cc

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 2116
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$11;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2134
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v1, v6, :cond_6c

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_85

    .line 2135
    :cond_6c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 2094
    :cond_74
    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2095
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    goto :goto_1c

    .line 2137
    :cond_85
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private initResourceRefs()V
    .registers 3

    .prologue
    .line 3625
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 3626
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3627
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 3628
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 3629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3630
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3640
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 3641
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    .line 3642
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3643
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    .line 3644
    return-void
.end method

.method private invalidateRecipientsInCache()V
    .registers 5

    .prologue
    .line 2754
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    .line 2755
    .local v0, cache:Lcom/android/mms/util/ContactInfoCache;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2756
    .local v2, recipientIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 2758
    .local v1, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v3, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/mms/util/ContactInfoCache;->invalidateContact(Ljava/lang/String;)V

    goto :goto_a

    .line 2760
    .end local v1           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_1c
    return-void
.end method

.method private isEmptyMessage()Z
    .registers 2

    .prologue
    .line 2383
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2384
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptyMms()Z

    move-result v0

    .line 2386
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptySms()Z

    move-result v0

    goto :goto_a
.end method

.method private isEmptyMms()Z
    .registers 2

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasText()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isEmptySms()Z
    .registers 2

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 1350
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 1352
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isPreparedForSending()Z
    .registers 3

    .prologue
    .line 4091
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 4093
    .local v0, recipientCount:I
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasSim()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-lez v0, :cond_1e

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1e

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private isRecipientCallable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2611
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v0

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->containsEmail()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isRecipientsEditorVisible()Z
    .registers 2

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isSubjectEditorVisible()Z
    .registers 2

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private loadDraft()V
    .registers 5

    .prologue
    .line 3730
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 3758
    :cond_8
    :goto_8
    return-void

    .line 3735
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3740
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFromUndelivered:Z

    if-nez v0, :cond_21

    .line 3742
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3749
    :cond_21
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->readTemporarySmsMessage(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 3750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3751
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->readTemporaryMmsMessage(J)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3752
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    goto :goto_8

    .line 3754
    :cond_3e
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no SMS or MMS drafts in thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter "format"
    .parameter "args"

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 375
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 376
    .local v4, tid:J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 377
    .local v3, stack:[Ljava/lang/StackTraceElement;
    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, methodName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 380
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, logMsg:Ljava/lang/String;
    const-string v6, "ComposeMessageActivity"

    invoke-static {v6, v1}, Lcom/android/mms/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private markAsRead(J)V
    .registers 11
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 4485
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    .line 4501
    :goto_8
    return-void

    .line 4490
    :cond_9
    const-string v0, "ComposeMessageActivity"

    const-string v1, "Send Read Report !!!!!"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4491
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    const/16 v6, 0x80

    invoke-static {p0, v0, v1, v6}, Lcom/android/mms/ui/MessageUtils;->sendReadReport(Landroid/content/Context;JI)V

    .line 4494
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 4495
    .local v3, threadUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 4496
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4497
    const-string v5, "read = 0"

    .line 4499
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x26ac

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_8
.end method

.method private moveToSim(Landroid/net/Uri;)Z
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1818
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS0525] moveToSim : uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1820
    .local v6, bReturn:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToSim()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1821
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1822
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1824
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1826
    :cond_3b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private onKeyboardStateChanged(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    const/4 v1, 0x1

    .line 2488
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_a

    .line 2489
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 2491
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    .line 2492
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2494
    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2495
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2508
    return-void
.end method

.method private readTemporaryMmsMessage(J)Z
    .registers 13
    .parameter "threadId"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3832
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_23

    .line 3833
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTemporaryMmsMessage: already has message url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 3860
    :goto_22
    return v0

    .line 3837
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3838
    .local v4, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3843
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_42
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_75

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 3844
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 3849
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v7, v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    .line 3851
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 3852
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V
    :try_end_70
    .catchall {:try_start_42 .. :try_end_70} :catchall_7a

    .line 3857
    :cond_70
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_22

    :cond_75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 3860
    goto :goto_22

    .line 3857
    :catchall_7a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private readTemporarySmsMessage(J)Ljava/lang/String;
    .registers 12
    .parameter "thread_id"

    .prologue
    const/4 v5, 0x0

    const-string v4, "type=3"

    .line 3920
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_c

    .line 3921
    const-string v0, ""

    .line 3946
    :goto_b
    return-object v0

    .line 3924
    :cond_c
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3925
    .local v2, thread_uri:Landroid/net/Uri;
    const-string v7, ""

    .line 3927
    .local v7, body:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v0, "type=3"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3930
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_30

    .line 3932
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3933
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_39

    move-result-object v7

    .line 3936
    :cond_2d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3944
    :cond_30
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "type=3"

    invoke-static {p0, v0, v2, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v7

    .line 3946
    goto :goto_b

    .line 3936
    :catchall_39
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private recipientCount()I
    .registers 3

    .prologue
    .line 4105
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4106
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    .line 4110
    .local v0, recipientCount:I
    :goto_c
    return v0

    .line 4108
    .end local v0           #recipientCount:I
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v0

    .restart local v0       #recipientCount:I
    goto :goto_c
.end method

.method private recipientsRequireMms()Z
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->containsBcc()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->containsEmail()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private removeSubjectIfEmpty()V
    .registers 3

    .prologue
    .line 2399
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 2402
    :cond_f
    return-void
.end method

.method private requiresMms()Z
    .registers 2

    .prologue
    .line 760
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private resetCounter()V
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    return-void
.end method

.method private resetMessage()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 4230
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_d

    .line 4231
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->hideView()V

    .line 4235
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_1a

    .line 4236
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 4238
    :cond_1a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4244
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4248
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    and-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    .line 4251
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 4255
    iput-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 4256
    iput-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 4259
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 4263
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_77

    .line 4265
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 4271
    :goto_46
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    .line 4274
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 4277
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_58

    .line 4278
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 4279
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideTopPanelIfNecessary()V

    .line 4283
    :cond_58
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4287
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v1, :cond_74

    .line 4288
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4291
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4294
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_74
    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 4295
    return-void

    .line 4268
    :cond_77
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMmsComponents()V

    goto :goto_46
.end method

.method private resetMmsComponents()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 728
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    .line 729
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_1a

    .line 730
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 732
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 734
    :cond_1a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    .line 737
    :try_start_1d
    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->createNewSlideshow(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 738
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_37

    .line 739
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 741
    :cond_37
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->createTemporaryMmsMessage()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    :try_end_3d
    .catch Lcom/google/android/mms/MmsException; {:try_start_1d .. :try_end_3d} :catch_58

    .line 748
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 749
    .local v0, attachmentType:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4c

    .line 750
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->fixEmptySlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 751
    const/4 v0, 0x0

    .line 754
    :cond_4c
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v2, :cond_57

    .line 755
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V

    .line 757
    .end local v0           #attachmentType:I
    :cond_57
    :goto_57
    return-void

    .line 742
    :catch_58
    move-exception v2

    move-object v1, v2

    .line 743
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v2, "ComposeMessageActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_57
.end method

.method private resetSubCounter()V
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    return-void
.end method

.method private saveDraft()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3772
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v1, :cond_11

    .line 3817
    :cond_10
    :goto_10
    return-void

    .line 3779
    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptyMessage()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v1, :cond_28

    .line 3780
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V

    .line 3781
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_10

    .line 3789
    :cond_28
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasValidRecipient()Z

    move-result v1

    if-nez v1, :cond_37

    .line 3790
    new-array v1, v4, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    .line 3793
    :cond_37
    const/4 v0, 0x0

    .line 3794
    .local v0, savedAsDraft:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 3795
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptyMms()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v1, :cond_67

    .line 3796
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v3, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3811
    :goto_4d
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 3813
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 3814
    const v1, 0x7f070060

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 3798
    :cond_67
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncUpdateTemporaryMmsMessage([Ljava/lang/String;)V

    .line 3799
    const/4 v0, 0x1

    goto :goto_4d

    .line 3802
    :cond_72
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptySms()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 3803
    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDeleteTemporarySmsMessage(J)V

    goto :goto_4d

    .line 3805
    :cond_7e
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncUpdateTemporarySmsMessage([Ljava/lang/String;Ljava/lang/String;)V

    .line 3807
    const/4 v0, 0x1

    goto :goto_4d
.end method

.method private sendMessage()V
    .registers 10

    .prologue
    .line 4122
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 4127
    .local v2, dests:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeSubjectIfEmpty()V

    .line 4128
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 4132
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 4133
    .local v3, mmsUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 4134
    .local v4, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 4135
    .local v5, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v6, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 4136
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)[Ljava/lang/String;

    .line 4138
    if-eqz v5, :cond_30

    .line 4142
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 4145
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$26;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$26;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 4161
    .end local v3           #mmsUri:Landroid/net/Uri;
    .end local v4           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v5           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v6           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_30
    :goto_30
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_53

    .line 4165
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 4166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 4167
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 4172
    :goto_3e
    return-void

    .line 4153
    :cond_3f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4154
    .local v7, msgText:Ljava/lang/String;
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$27;

    invoke-direct {v1, p0, v2, v7}, Lcom/android/mms/ui/ComposeMessageActivity$27;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_30

    .line 4170
    .end local v7           #msgText:Ljava/lang/String;
    :cond_53
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V

    goto :goto_3e
.end method

.method private sendMmsWorker([Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 14
    .parameter "dests"
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"

    .prologue
    const-string v7, "ComposeMessageActivity"

    .line 4199
    if-nez p2, :cond_5

    .line 4226
    :goto_4
    return-void

    .line 4204
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v2

    .line 4206
    .local v2, threadId:J
    const-string v4, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMmsWorker: update temporary MMS message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    invoke-static {p2, p3, p4, p5}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTemporaryMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 4211
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->deleteTemporarySmsMessage(J)V

    .line 4213
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4215
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_2c
    invoke-interface {v1, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v4

    if-nez v4, :cond_39

    .line 4218
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v4, p2, v5, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4221
    :cond_39
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    .line 4222
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3f} :catch_40

    goto :goto_4

    .line 4223
    :catch_40
    move-exception v4

    move-object v0, v4

    .line 4224
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private sendSmsWorker([Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "dests"
    .parameter "msgText"

    .prologue
    .line 4180
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v4

    .line 4182
    .local v4, threadId:J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 4186
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_c
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 4187
    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->setThreadId(J)V

    .line 4188
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    .line 4194
    :goto_15
    return-void

    .line 4191
    :catch_16
    move-exception v1

    move-object v6, v1

    .line 4192
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method private setPresenceIcon(I)V
    .registers 5
    .parameter "iconId"

    .prologue
    .line 2145
    if-nez p1, :cond_d

    const/4 v1, 0x0

    move-object v0, v1

    .line 2146
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 2147
    return-void

    .line 2145
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_4
.end method

.method private setSubjectFromIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 4335
    const-string v1, "subject"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4336
    .local v0, subject:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 4337
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    .line 4339
    :cond_e
    return-void
.end method

.method private setThreadId(J)V
    .registers 3
    .parameter "threadId"

    .prologue
    .line 4342
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    .line 4343
    return-void
.end method

.method private showAddAttachmentDialog()V
    .registers 4

    .prologue
    .line 2907
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2908
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2909
    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2911
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    .line 2914
    .local v0, adapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$15;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2920
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2921
    return-void
.end method

.method private showDeliveryReport(JLjava/lang/String;)V
    .registers 6
    .parameter "messageId"
    .parameter "type"

    .prologue
    .line 2021
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2022
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2023
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2025
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2026
    return-void
.end method

.method private showSmileyDialog()V
    .registers 20

    .prologue
    .line 4571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    move-object v4, v0

    if-nez v4, :cond_b9

    .line 4572
    sget-object v14, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 4573
    .local v14, icons:[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 4575
    .local v16, names:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 4578
    .local v17, texts:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v9, v0

    .line 4580
    .local v9, N:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4581
    .local v5, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_28
    if-ge v13, v9, :cond_5e

    .line 4584
    const/4 v10, 0x0

    .line 4585
    .local v10, added:Z
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2c
    if-ge v15, v13, :cond_35

    .line 4586
    aget v4, v14, v13

    aget v6, v14, v15

    if-ne v4, v6, :cond_5b

    .line 4587
    const/4 v10, 0x1

    .line 4591
    :cond_35
    if-nez v10, :cond_58

    .line 4592
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 4594
    .local v12, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "icon"

    aget v6, v14, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4595
    const-string v4, "name"

    aget-object v6, v16, v13

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4596
    const-string v4, "text"

    aget-object v6, v17, v13

    invoke-virtual {v12, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4598
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4581
    .end local v12           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_58
    add-int/lit8 v13, v13, 0x1

    goto :goto_28

    .line 4585
    :cond_5b
    add-int/lit8 v15, v15, 0x1

    goto :goto_2c

    .line 4602
    .end local v10           #added:Z
    .end local v15           #j:I
    :cond_5e
    new-instance v3, Landroid/widget/SimpleAdapter;

    const v6, 0x7f030024

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "icon"

    aput-object v8, v7, v4

    const/4 v4, 0x1

    const-string v8, "name"

    aput-object v8, v7, v4

    const/4 v4, 0x2

    const-string v8, "text"

    aput-object v8, v7, v4

    const/4 v4, 0x3

    new-array v8, v4, [I

    fill-array-data v8, :array_c2

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 4608
    .local v3, a:Landroid/widget/SimpleAdapter;
    new-instance v18, Lcom/android/mms/ui/ComposeMessageActivity$29;

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity$29;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4618
    .local v18, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 4620
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4622
    .local v11, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0700fc

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4624
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4625
    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$30;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$30;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4632
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 4635
    .end local v3           #a:Landroid/widget/SimpleAdapter;
    .end local v5           #entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v9           #N:I
    .end local v11           #b:Landroid/app/AlertDialog$Builder;
    .end local v13           #i:I
    .end local v14           #icons:[I
    .end local v16           #names:[Ljava/lang/String;
    .end local v17           #texts:[Ljava/lang/String;
    .end local v18           #viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSmileyDialog:Landroid/app/AlertDialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 4636
    return-void

    .line 4602
    :array_c2
    .array-data 0x4
        0x73t 0x0t 0x9t 0x7ft
        0x74t 0x0t 0x9t 0x7ft
        0x75t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2287
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2288
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2289
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2290
    return-void
.end method

.method private startMsgListQuery()V
    .registers 10

    .prologue
    const/16 v4, 0x2537

    .line 3691
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 3705
    :goto_a
    return-void

    .line 3696
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 3699
    :try_start_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getThreadUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_a

    .line 3702
    :catch_22
    move-exception v0

    move-object v8, v0

    .line 3703
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_a
.end method

.method private startPresencePollingRequest()V
    .registers 5

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPresencePollingHandler:Landroid/os/Handler;

    const v1, 0xb0b4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4651
    return-void
.end method

.method private startPushExpirationService()V
    .registers 3

    .prologue
    .line 4725
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4726
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/start.push.expiration.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4728
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4729
    return-void
.end method

.method private startQueryForContactInfo()V
    .registers 11

    .prologue
    const/16 v1, 0x2649

    const/16 v7, 0x2648

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientList;->getSingleRecipientNumber()Ljava/lang/String;

    move-result-object v8

    .line 4655
    .local v8, number:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelPresencePollingRequests()V

    .line 4656
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4657
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setPresenceIcon(I)V

    .line 4658
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startPresencePollingRequest()V

    .line 4692
    :goto_1b
    return-void

    .line 4664
    :cond_1c
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object v8, v0, v3

    .line 4668
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 4670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->METHOD_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity;->EMAIL_QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "data=?"

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoSelectionArgs:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 4679
    :cond_3a
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatchEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4680
    .local v9, number7match:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4681
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object v9, v0, v3

    .line 4683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 4685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "PHONE_NUMBERS_EQUAL(number,?)"

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoSelectionArgs:[Ljava/lang/String;

    move v1, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private stopPushExpirationService()V
    .registers 3

    .prologue
    .line 4732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4733
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/stop.push.expiration.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4735
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4736
    return-void
.end method

.method private toastConvertInfo(Z)V
    .registers 4
    .parameter "toMms"

    .prologue
    .line 812
    if-eqz p1, :cond_f

    const v1, 0x7f07005b

    move v0, v1

    .line 814
    .local v0, resId:I
    :goto_6
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 815
    return-void

    .line 812
    .end local v0           #resId:I
    :cond_f
    const v1, 0x7f07005c

    move v0, v1

    goto :goto_6
.end method

.method private declared-synchronized uninitMmsComponents()V
    .registers 7

    .prologue
    .line 694
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_2a

    .line 695
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/AttachmentEditor;->getAttachmentType()I

    move-result v0

    .line 696
    .local v0, attachmentType:I
    if-nez v0, :cond_2a

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_2a

    .line 697
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 698
    .local v1, model:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_2a

    .line 699
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 700
    .local v2, textModel:Lcom/android/mms/model/TextModel;
    if-eqz v2, :cond_2a

    .line 701
    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 707
    .end local v0           #attachmentType:I
    .end local v1           #model:Lcom/android/mms/model/SlideModel;
    .end local v2           #textModel:Lcom/android/mms/model/TextModel;
    :cond_2a
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    .line 708
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 709
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_50

    .line 711
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 712
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 713
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    .line 716
    :cond_50
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_6f

    .line 717
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 719
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectRLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideTopPanelIfNecessary()V

    .line 721
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 723
    :cond_6f
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubject:Ljava/lang/String;

    .line 724
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_77

    .line 725
    monitor-exit p0

    return-void

    .line 694
    :catchall_77
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateContactInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4695
    const/4 v1, 0x0

    .line 4696
    .local v1, updated:Z
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4697
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPresenceStatus:I

    .line 4698
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPresenceStatus:I

    if-eqz v2, :cond_24

    .line 4699
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPresenceStatus:I

    invoke-static {v2}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 4700
    .local v0, presenceIcon:I
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setPresenceIcon(I)V

    .line 4701
    const/4 v1, 0x1

    .line 4704
    .end local v0           #presenceIcon:I
    :cond_24
    if-nez v1, :cond_29

    .line 4705
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setPresenceIcon(I)V

    .line 4707
    :cond_29
    return-void
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .registers 15
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 552
    if-ge p3, p4, :cond_19

    move v4, v7

    .line 553
    .local v4, textAdded:Z
    :goto_7
    if-eqz v4, :cond_1b

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 554
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_18

    .line 555
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    :cond_18
    :goto_18
    return-void

    .end local v4           #textAdded:Z
    :cond_19
    move v4, v8

    .line 552
    goto :goto_7

    .line 566
    .restart local v4       #textAdded:Z
    :cond_1b
    const/4 v1, 0x0

    .line 567
    .local v1, params:[I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KTF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_6f

    .line 568
    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->calculateKTUserIfaceLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 582
    :goto_2c
    aget v0, v1, v8

    .line 583
    .local v0, msgCount:I
    const/4 v5, 0x2

    aget v2, v1, v5

    .line 587
    .local v2, remainingInCurrentMessage:I
    iget v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMS_THRESHOLD:I

    if-lt v0, v5, :cond_74

    move v5, v7

    :goto_36
    invoke-direct {p0, v9, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, showCounter:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_47

    if-gt v0, v7, :cond_46

    const/16 v5, 0xa

    if-gt v2, v5, :cond_47

    .line 596
    :cond_46
    const/4 v3, 0x1

    .line 599
    :cond_47
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_18

    .line 600
    if-eqz v3, :cond_76

    .line 602
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 570
    .end local v0           #msgCount:I
    .end local v2           #remainingInCurrentMessage:I
    .end local v3           #showCounter:Z
    :cond_6f
    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    goto :goto_2c

    .restart local v0       #msgCount:I
    .restart local v2       #remainingInCurrentMessage:I
    :cond_74
    move v5, v8

    .line 587
    goto :goto_36

    .line 605
    .restart local v3       #showCounter:Z
    :cond_76
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method

.method private updateSendButtonState()V
    .registers 4

    .prologue
    .line 4298
    const/4 v0, 0x0

    .line 4299
    .local v0, enable:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4303
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentEditor;->getAttachmentType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_20

    .line 4305
    :cond_14
    const/4 v0, 0x1

    .line 4313
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4314
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 4315
    return-void

    .line 4307
    :cond_20
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    goto :goto_15

    .line 4309
    :cond_27
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v1, :cond_15

    .line 4310
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->setCanSend(Z)V

    goto :goto_15
.end method

.method private updateSendFailedNotification()V
    .registers 3

    .prologue
    .line 2343
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$12;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 2349
    return-void
.end method

.method private updateState(IZ)V
    .registers 5
    .parameter "whichState"
    .parameter "set"

    .prologue
    .line 773
    if-eqz p2, :cond_8

    .line 774
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    .line 778
    :goto_7
    return-void

    .line 776
    :cond_8
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    goto :goto_7
.end method

.method private updateSubCounter(Ljava/lang/CharSequence;I)V
    .registers 7
    .parameter "text"
    .parameter "count"

    .prologue
    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, showCounter:Z
    const/16 v2, 0x28

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 615
    .local v0, remainingInSubject:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2c

    .line 616
    const/4 v1, 0x1

    .line 620
    :goto_16
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    if-eqz v2, :cond_2b

    .line 621
    if-eqz v1, :cond_2e

    .line 623
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_2b
    :goto_2b
    return-void

    .line 618
    :cond_2c
    const/4 v1, 0x0

    goto :goto_16

    .line 626
    :cond_2e
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextCounter:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b
.end method

.method public static updateTemporaryMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 9
    .parameter "uri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"

    .prologue
    .line 3896
    if-nez p0, :cond_3

    .line 3908
    :goto_2
    return-void

    .line 3898
    :cond_3
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 3899
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 3902
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    :try_start_a
    invoke-virtual {p1, p0, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_d
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_d} :catch_11

    .line 3907
    :goto_d
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_2

    .line 3903
    :catch_11
    move-exception v0

    .line 3904
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTemporaryMmsMessage: cannot update message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private updateTemporarySmsMessage(JLjava/lang/String;)V
    .registers 12
    .parameter "thread_id"
    .parameter "contents"

    .prologue
    const/4 v5, 0x0

    const-string v4, "type=3"

    const-string v0, "body"

    .line 3961
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_c

    .line 3993
    :goto_b
    return-void

    .line 3966
    :cond_c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3968
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->deleteTemporarySmsMessage(J)V

    goto :goto_b

    .line 3972
    :cond_16
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3973
    .local v2, thread_uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v0, "type=3"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3977
    .local v7, c:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3978
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3979
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "body"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "type=3"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_6f

    .line 3991
    :goto_42
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 3983
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_46
    :try_start_46
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3984
    .restart local v3       #values:Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3985
    const-string v0, "body"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3987
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v3}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3988
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->asyncDeleteTemporaryMmsMessage(J)V
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_6f

    goto :goto_42

    .line 3991
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_6f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateWindowTitle()V
    .registers 15

    .prologue
    const/4 v12, 0x2

    const-string v13, ", "

    .line 4418
    iget v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 4419
    const v10, 0x7f070150

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 4450
    :goto_12
    return-void

    .line 4421
    :cond_13
    iget v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-ne v10, v12, :cond_22

    .line 4422
    const v10, 0x7f070151

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 4427
    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4428
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v10}, Lcom/android/mms/ui/RecipientList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4429
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/RecipientList$Recipient;>;"
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    .line 4430
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 4431
    .local v5, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v10, v5, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 4434
    .end local v5           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_45
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v1

    .line 4435
    .local v1, cache:Lcom/android/mms/util/ContactInfoCache;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v10}, Lcom/android/mms/ui/RecipientList;->getBccNumbers()[Ljava/lang/String;

    move-result-object v9

    .line 4436
    .local v9, values:[Ljava/lang/String;
    array-length v10, v9

    if-lez v10, :cond_6e

    .line 4437
    const-string v10, "Bcc: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5a
    if-ge v2, v4, :cond_6e

    aget-object v8, v0, v2

    .line 4439
    .local v8, v:Ljava/lang/String;
    invoke-virtual {v1, p0, v8}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 4443
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v8           #v:Ljava/lang/String;
    :cond_6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_88

    .line 4445
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int v7, v10, v12

    .line 4446
    .local v7, tail:I
    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v6, v7, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 4448
    .end local v7           #tail:I
    :cond_88
    const v10, 0x7f07003c

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method

.method private videoInsertAnyway()V
    .registers 6

    .prologue
    const v4, 0x7f07004f

    .line 3409
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBakcup_Uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentEditor;->changeVideoInsertAnyway(Landroid/net/Uri;)V

    .line 3410
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V
    :try_end_12
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_12} :catch_13
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_12} :catch_2d

    .line 3422
    :goto_12
    return-void

    .line 3412
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 3413
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "ComposeMessageActivity"

    const-string v2, "add video failed"

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3414
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 3417
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 3418
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const v1, 0x7f07004e

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVideoString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private viewContact(J)V
    .registers 6
    .parameter "personId"

    .prologue
    .line 1183
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1184
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1185
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1186
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2925
    const-string v7, "ComposeMessageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult: requestCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", resultCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 2929
    const/4 v7, -0x1

    if-eq p2, v7, :cond_3b

    .line 2932
    const/4 v7, 0x4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasAttachment()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 3063
    :cond_3a
    :goto_3a
    return-void

    .line 2936
    :cond_3b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v7

    if-nez v7, :cond_45

    .line 2937
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    .line 2940
    :cond_45
    packed-switch p1, :pswitch_data_17c

    .line 3060
    :goto_48
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v7

    if-nez v7, :cond_3a

    .line 3061
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessage(Z)V

    goto :goto_3a

    .line 2945
    :pswitch_53
    :try_start_53
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v7}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_5b
    .catch Lcom/google/android/mms/MmsException; {:try_start_53 .. :try_end_5b} :catch_7f

    .line 2954
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 2956
    .local v0, attachmentType:I
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_71

    .line 2957
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2959
    :cond_71
    packed-switch v0, :pswitch_data_190

    .line 2977
    :pswitch_74
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V

    .line 2981
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    goto :goto_48

    .line 2946
    .end local v0           #attachmentType:I
    :catch_7f
    move-exception v7

    move-object v2, v7

    .line 2947
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v7, "ComposeMessageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to load slideshow from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    const v7, 0x7f07005f

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_3a

    .line 2961
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #attachmentType:I
    :pswitch_ab
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->fixEmptySlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 2962
    const/4 v0, 0x0

    .line 2965
    :pswitch_b1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V

    .line 2966
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 2967
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    goto/16 :goto_3a

    .line 2971
    :pswitch_c2
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2972
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/AttachmentEditor;->setAttachment(Lcom/android/mms/model/SlideshowModel;I)V

    .line 2973
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    goto/16 :goto_3a

    .line 2998
    .end local v0           #attachmentType:I
    :pswitch_d5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;)V

    goto/16 :goto_48

    .line 3003
    :pswitch_de
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;)V

    goto/16 :goto_48

    .line 3009
    :pswitch_e7
    const/16 v7, 0xe

    if-ne p1, v7, :cond_108

    .line 3010
    const-string v7, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 3011
    .local v6, uri:Landroid/net/Uri;
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fc

    .line 3012
    const/4 v6, 0x0

    .line 3018
    :cond_fc
    :goto_fc
    if-nez v6, :cond_10d

    .line 3019
    const/4 v7, 0x4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasAttachment()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    goto/16 :goto_3a

    .line 3015
    .end local v6           #uri:Landroid/net/Uri;
    :cond_108
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #uri:Landroid/net/Uri;
    goto :goto_fc

    .line 3023
    :cond_10d
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto/16 :goto_48

    .line 3027
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_112
    const-string v7, "phone"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    .line 3030
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_172

    .line 3032
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3033
    .local v5, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    .line 3034
    .local v1, count:I
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 3036
    .local v4, numbers:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13c
    if-ge v3, v1, :cond_14d

    .line 3037
    if-eqz v3, :cond_145

    .line 3038
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    :cond_145
    aget-object v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    add-int/lit8 v3, v3, 0x1

    goto :goto_13c

    .line 3042
    :cond_14d
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3045
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/mms/ui/RecipientList;->from(Ljava/lang/String;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    .line 3050
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #numbers:[Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :goto_161
    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 3051
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/ui/RecipientList;)V

    goto/16 :goto_48

    .line 3048
    :cond_172
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-static {v7, p0}, Lcom/android/mms/ui/RecipientList;->from(Ljava/lang/String;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    goto :goto_161

    .line 2940
    nop

    :pswitch_data_17c
    .packed-switch 0xa
        :pswitch_d5
        :pswitch_d5
        :pswitch_de
        :pswitch_de
        :pswitch_e7
        :pswitch_e7
        :pswitch_53
        :pswitch_112
    .end packed-switch

    .line 2959
    :pswitch_data_190
    .packed-switch -0x1
        :pswitch_ab
        :pswitch_b1
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_c2
    .end packed-switch
.end method

.method public onAttachmentChanged(II)V
    .registers 5
    .parameter "newType"
    .parameter "oldType"

    .prologue
    const/4 v1, 0x4

    .line 2597
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    .line 2598
    if-lez p1, :cond_e

    .line 2600
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateState(IZ)V

    .line 2605
    :goto_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 2606
    return-void

    .line 2603
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3541
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 3543
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2476
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2477
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v3, :cond_32

    move v0, v3

    :goto_22
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 2480
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    move v0, v3

    :goto_2a
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 2481
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 2482
    return-void

    :cond_32
    move v0, v4

    .line 2479
    goto :goto_22

    :cond_34
    move v0, v4

    .line 2480
    goto :goto_2a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "ComposeMessageActivity"

    .line 2161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2162
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step1"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->requestWindowFeature(I)Z

    .line 2164
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->requestWindowFeature(I)Z

    .line 2166
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step2"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setContentView(I)V

    .line 2168
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step3"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 2171
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2174
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step4"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V

    .line 2176
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step5"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 2179
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 2180
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 2181
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step6"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2184
    const-string v3, "ComposeMessageActivity"

    const-string v3, "OnCreate Step7"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17c

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    const-string v4, "801010101018"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 2187
    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    .line 2200
    :goto_83
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v3, v7, :cond_90

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v3, v9, :cond_90

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a9

    .line 2201
    :cond_90
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2202
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2203
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2204
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2205
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2209
    :cond_a9
    const-string v3, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v3, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const-string v3, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    const-string v3, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): mMessageUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NVDB_SMS_CONCAT_MAX_I"

    invoke-static {v3, v4}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2216
    .local v2, mMMS_THRESHOLD_flexValues:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMS_THRESHOLD:I

    .line 2217
    const-string v3, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<ComposeMessageActivity> onCreate() mMMS_THRESHOLD_flexValues = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMMS_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMS_THRESHOLD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/android/mms/ui/RecipientList;->from(Ljava/lang/String;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    .line 2222
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 2225
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->undeliveredMessageDialog(J)V

    .line 2229
    :cond_166
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V

    .line 2232
    iget-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->markAsRead(J)V

    .line 2236
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v3, v7, :cond_17b

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v3, v9, :cond_17b

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b4

    .line 2284
    :cond_17b
    :goto_17b
    return-void

    .line 2189
    .end local v2           #mMMS_THRESHOLD_flexValues:Ljava/lang/String;
    :cond_17c
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_192

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    const-string v4, "901010101019"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_192

    .line 2190
    iput v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    goto/16 :goto_83

    .line 2192
    :cond_192
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExternalAddress:Ljava/lang/String;

    const-string v4, "CH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 2193
    const-string v3, "ComposeMessageActivity"

    const-string v3, "onCreate() mExternalAddress This is CB message because address is CH 000 "

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    goto/16 :goto_83

    .line 2196
    :cond_1b0
    iput v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    goto/16 :goto_83

    .line 2243
    .restart local v2       #mMMS_THRESHOLD_flexValues:Ljava/lang/String;
    :cond_1b4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1c7

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleForwardedMessage()Z

    move-result v3

    if-nez v3, :cond_1c7

    .line 2244
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()V

    .line 2249
    :cond_1c7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z

    move-result v3

    invoke-direct {p0, v7, v3, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZZ)V

    .line 2252
    iget-wide v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1d9

    .line 2253
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 2259
    :cond_1d9
    const/4 v0, 0x0

    .line 2260
    .local v0, attachmentType:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_21b

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 2261
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 2267
    :goto_1ea
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 2269
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel(I)V

    .line 2271
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 2273
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2274
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v3, v7, :cond_223

    move v3, v7

    :goto_202
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 2275
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_225

    move v3, v7

    :goto_209
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 2276
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged(Z)V

    .line 2278
    const v3, 0x7f0700ce

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mcheckFDNmessage:Ljava/lang/String;

    goto/16 :goto_17b

    .line 2263
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_21b
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    and-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageState:I

    .line 2264
    const/4 v0, 0x0

    goto :goto_1ea

    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_223
    move v3, v8

    .line 2274
    goto :goto_202

    :cond_225
    move v3, v8

    .line 2275
    goto :goto_209
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 2471
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2472
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3546
    if-eqz p3, :cond_20

    .line 3547
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3549
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 3551
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_1c
    move v0, v2

    .line 3561
    :goto_1d
    return v0

    .line 3555
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d

    .line 3558
    :cond_20
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3559
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    :cond_29
    move v0, v2

    .line 3561
    goto :goto_1d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2524
    sparse-switch p1, :sswitch_data_56

    .line 2560
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_9
    return v3

    .line 2526
    :sswitch_a
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2529
    :try_start_16
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1e} :catch_32

    .line 2535
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 2536
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    .line 2539
    .local v2, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    invoke-direct {p0, v2, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v3, v6

    .line 2540
    goto :goto_9

    .line 2530
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :catch_32
    move-exception v3

    move-object v1, v3

    .line 2531
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "ComposeMessageActivity"

    const-string v4, "Unexpected ClassCastException."

    invoke-static {v3, v4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2532
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_9

    .line 2546
    .end local v1           #e:Ljava/lang/ClassCastException;
    :sswitch_40
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2547
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    move v3, v6

    .line 2548
    goto :goto_9

    .line 2552
    :sswitch_4b
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$13;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$13;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    move v3, v6

    .line 2557
    goto :goto_9

    .line 2524
    nop

    :sswitch_data_56
    .sparse-switch
        0x4 -> :sswitch_4b
        0x17 -> :sswitch_40
        0x42 -> :sswitch_40
        0x43 -> :sswitch_a
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 2781
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_78

    :cond_8
    :goto_8
    :pswitch_8
    move v3, v5

    .line 2844
    :goto_9
    return v3

    .line 2783
    :pswitch_a
    const/4 v3, 0x2

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->convertMessageIfNeeded(IZ)V

    .line 2784
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor()V

    .line 2785
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_8

    .line 2789
    :pswitch_17
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog()V

    goto :goto_8

    .line 2792
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isEmptyMessage()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2793
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V

    .line 2794
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_8

    .line 2798
    :cond_28
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->showDiscardMessageConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_8

    .line 2803
    :pswitch_32
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2804
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_8

    .line 2808
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onSearchRequested()Z

    goto :goto_8

    .line 2811
    :pswitch_40
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getThreadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, p0, v3, v5}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 2813
    .local v0, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_8

    .line 2816
    .end local v0           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :pswitch_4d
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 2823
    :pswitch_56
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dialRecipient()V

    goto :goto_8

    .line 2827
    :pswitch_5a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->contactMultiPick()V

    goto :goto_8

    .line 2831
    :pswitch_5e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V

    goto :goto_8

    .line 2835
    :pswitch_62
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->getSingleRecipient()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getPersonId(Lcom/android/mms/ui/RecipientList$Recipient;)J

    move-result-wide v1

    .line 2836
    .local v1, personId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_8

    .line 2837
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->viewContact(J)V

    goto :goto_8

    .line 2841
    .end local v1           #personId:J
    :pswitch_76
    const/4 v3, 0x0

    goto :goto_9

    .line 2781
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_a
        :pswitch_40
        :pswitch_17
        :pswitch_1b
        :pswitch_32
        :pswitch_56
        :pswitch_4d
        :pswitch_5a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_62
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5e
        :pswitch_76
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 2406
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2407
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelPresencePollingRequests()V

    .line 2408
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const v7, 0x108003c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2639
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2643
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v3, v6, :cond_16

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-eq v3, v9, :cond_16

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    if-ne v3, v8, :cond_51

    .line 2644
    :cond_16
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_46

    .line 2648
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2649
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_36

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_36

    .line 2650
    const v3, 0x7f07001f

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2657
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_36
    :goto_36
    const/4 v3, 0x6

    const v4, 0x7f070046

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108018b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v3, v6

    .line 2730
    :goto_45
    return v3

    .line 2654
    :cond_46
    const v3, 0x7f070041

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_36

    .line 2664
    :cond_51
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2665
    const/4 v3, 0x5

    const v4, 0x7f070008

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080036

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2669
    :cond_65
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_7f

    .line 2671
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2672
    const/4 v3, 0x7

    const v4, 0x7f070157

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020018

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2679
    :cond_7f
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->getSingleRecipient()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getPersonId(Lcom/android/mms/ui/RecipientList$Recipient;)J

    move-result-wide v1

    .line 2680
    .local v1, personId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_9e

    .line 2681
    const/16 v3, 0xc

    const v4, 0x7f07006d

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020018

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2686
    :cond_9e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v3

    if-nez v3, :cond_b1

    .line 2687
    const v3, 0x7f070040

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108003e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2691
    :cond_b1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditor:Lcom/android/mms/ui/AttachmentEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/AttachmentEditor;->getAttachmentType()I

    move-result v3

    if-nez v3, :cond_ca

    .line 2692
    :cond_bd
    const v3, 0x7f07003f

    invoke-interface {p1, v5, v9, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020017

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2697
    :cond_ca
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 2698
    const/4 v3, 0x4

    const v4, 0x7f070045

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080050

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2701
    :cond_de
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v3, :cond_f9

    .line 2703
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 2704
    const/16 v3, 0x1a

    const v4, 0x7f0700fc

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080188

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2709
    :cond_f9
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_131

    .line 2715
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_11d

    .line 2716
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2717
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_11d

    .line 2718
    const v3, 0x7f07001f

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2726
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_11d
    :goto_11d
    const/4 v3, 0x6

    const v4, 0x7f070046

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108018b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2729
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    move v3, v6

    .line 2730
    goto/16 :goto_45

    .line 2723
    :cond_131
    const v3, 0x7f070041

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_11d
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 2300
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2302
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->markAsRead(J)V

    .line 2307
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateRecipientsInCache()V

    .line 2308
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 2327
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 2331
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startPresencePollingRequest()V

    .line 2333
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 2334
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startPushExpirationService()V

    .line 2336
    :cond_12
    const-string v0, "ComposeMessageActivity"

    const-string v1, "<ComposeMessageActivity> onResume() startPushExpirationService called"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    const-string v4, "ComposeMessageActivity"

    .line 2353
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2355
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 2356
    const-string v0, "ComposeMessageActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ONFREEZE: thread_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v0, "thread_id"

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2360
    :cond_2e
    const-string v0, "ComposeMessageActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ONFREEZE: address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const-string v0, "address"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 2365
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2366
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    :cond_72
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_97

    .line 2370
    const-string v0, "ComposeMessageActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ONFREEZE: mMessageUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2377
    :cond_97
    :goto_97
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    if-eqz v0, :cond_a2

    .line 2378
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2380
    :cond_a2
    return-void

    .line 2374
    :cond_a3
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 2312
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2314
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateWindowTitle()V

    .line 2315
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V

    .line 2318
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2320
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 2321
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startQueryForContactInfo()V

    .line 2322
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 2323
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 2412
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2414
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_d

    .line 2447
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2451
    :cond_d
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2452
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->stopPushExpirationService()V

    .line 2454
    :cond_15
    const-string v0, "ComposeMessageActivity"

    const-string v1, "<ComposeMessageActivity> onStop() stopPushExpirationService called"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft()V

    .line 2460
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2462
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cleanupContactInfoCursor()V

    .line 2463
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    .prologue
    .line 2512
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 2513
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 2517
    if-eqz p1, :cond_5

    .line 2518
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 2520
    :cond_5
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 685
    if-ltz p2, :cond_5

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 689
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 690
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .registers 11
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    .line 3661
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3664
    .local v1, dialog:Landroid/widget/LinearLayout;
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_40

    .line 3665
    const v3, 0x7f07001d

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3672
    .local v0, body:Ljava/lang/String;
    :goto_25
    const v3, 0x7f090062

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3674
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 3675
    .local v2, undeliveredDialog:Landroid/widget/Toast;
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 3676
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 3677
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3678
    return-void

    .line 3669
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #undeliveredDialog:Landroid/widget/Toast;
    :cond_40
    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/String;
    goto :goto_25
.end method
