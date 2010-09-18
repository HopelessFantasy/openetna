.class public Lcom/lge/sns/message/ui/SNMessageView;
.super Landroid/app/Activity;
.source "SNMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
    }
.end annotation


# static fields
.field private static final DIALOG_PROGRESS_REFRESH:I = 0x0

.field private static final DIALOG_PROGRESS_REPLY:I = 0x1

.field public static final KEY_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"

.field public static final KEY_SENDER_NAME:Ljava/lang/String; = "sender_name"

.field public static final KEY_SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final MENU_ITEM_REFRESH:I = 0x0

.field private static final MENU_ITEM_SAVE_PROFILE:I = 0x1

.field private static final RESULT_SIGN_IN:I = 0x0

.field private static final RESULT_SIGN_IN_REPLY_MESSAGE:I = 0x1

.field private static final RESULT_SIGN_IN_UPDATE_MESSAGES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SNMessageView"


# instance fields
.field private final AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field private final MessageManager:Lcom/lge/sns/message/IMessageFacade;

.field private final ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

.field private currentAccount:Lcom/lge/sns/account/Account;

.field private currentCredential:Lcom/lge/sns/account/Credential;

.field private doReplyFinish:Ljava/lang/Runnable;

.field private doReplyMessages:Ljava/lang/Runnable;

.field private doReplyStop:Ljava/lang/Runnable;

.field private doShowNotConnectToast:Ljava/lang/Runnable;

.field private doUpdateFinish:Ljava/lang/Runnable;

.field private doUpdateMessages:Ljava/lang/Runnable;

.field private doUpdateStop:Ljava/lang/Runnable;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDefaultLayout:Landroid/widget/LinearLayout;

.field private mEdit:Landroid/widget/EditText;

.field private mEditLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientId:Ljava/lang/String;

.field private mReply:Landroid/widget/Button;

.field private mSend:Landroid/widget/Button;

.field private mSenderName:Ljava/lang/String;

.field private mServiceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsId:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mThreadRefresh:Ljava/lang/Thread;

.field private mThreadReply:Ljava/lang/Thread;

.field private progressDialog:Landroid/app/ProgressDialog;

.field thread:Lcom/lge/sns/message/MessageThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 80
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    .line 81
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mServiceEntries:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    .line 104
    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->thread:Lcom/lge/sns/message/MessageThread;

    .line 503
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$2;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateMessages:Ljava/lang/Runnable;

    .line 547
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$3;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doReplyMessages:Ljava/lang/Runnable;

    .line 723
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$7;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateFinish:Ljava/lang/Runnable;

    .line 744
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$8;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateStop:Ljava/lang/Runnable;

    .line 764
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$9;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doReplyFinish:Ljava/lang/Runnable;

    .line 793
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$10;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$10;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doReplyStop:Ljava/lang/Runnable;

    .line 813
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$11;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageView$11;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/account/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentAccount:Lcom/lge/sns/account/Account;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mMessageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doReplyStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doReplyFinish:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lge/sns/message/ui/SNMessageView;->makeEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mServiceEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/sns/message/ui/SNMessageView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->buildView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/lge/sns/message/ui/SNMessageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadReply:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/lge/sns/message/ui/SNMessageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadReply:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEditLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/account/Credential;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentCredential:Lcom/lge/sns/account/Credential;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mDefaultLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/message/IMessageFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSnsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateFinish:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addEntry(Lcom/lge/sns/message/Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/lge/sns/message/ui/SNMessageView;->makeEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method private final buildEntries()V
    .registers 3

    .prologue
    .line 462
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 466
    .local v0, messageItem:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/message/Message;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    invoke-direct {p0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->addEntry(Lcom/lge/sns/message/Message;)V

    goto :goto_b

    .line 473
    :cond_1b
    return-void
.end method

.method private buildOtherViews(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    .line 383
    .local v0, entry:Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
    invoke-direct {p0, v0}, Lcom/lge/sns/message/ui/SNMessageView;->buildViewForEntry(Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;)Landroid/view/View;

    move-result-object v2

    .line 384
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 386
    .end local v0           #entry:Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
    .end local v2           #view:Landroid/view/View;
    :cond_18
    return-void
.end method

.method private buildView()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mLayout:Landroid/widget/LinearLayout;

    .line 373
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 375
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->buildOtherViews(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 376
    return-void
.end method

.method private buildViewForEntry(Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;)Landroid/view/View;
    .registers 23
    .parameter "entry"

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    .line 397
    .local v18, parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->date:J

    move-wide v4, v0

    .line 398
    .local v4, date:J
    const/high16 v10, 0x2

    .line 399
    .local v10, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 400
    .local v11, currentTime:J
    sub-long v14, v11, v4

    .line 401
    .local v14, elapsedTime:J
    const-wide/32 v8, 0x36ee80

    .line 402
    .local v8, minResolution:J
    const-string v16, ""

    .line 404
    .local v16, elapsedTimeText:Ljava/lang/CharSequence;
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v14, v6

    if-gez v6, :cond_7a

    .line 405
    const-wide/32 v6, 0xea60

    cmp-long v6, v14, v6

    if-gez v6, :cond_76

    .line 406
    const-wide/16 v8, 0x3e8

    .line 412
    :goto_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 422
    .end local v10           #flags:I
    :goto_30
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->kind:I

    move v6, v0

    if-nez v6, :cond_96

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v0

    const v7, 0x7f030032

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v18

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .end local v8           #minResolution:J
    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 426
    .local v20, view:Landroid/view/View;
    const v6, 0x7f080068

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 427
    .local v17, line:Landroid/widget/TextView;
    const v6, 0x7f080086

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 429
    .local v19, time:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->authorName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :goto_75
    return-object v20

    .line 409
    .end local v17           #line:Landroid/widget/TextView;
    .end local v19           #time:Landroid/widget/TextView;
    .end local v20           #view:Landroid/view/View;
    .restart local v8       #minResolution:J
    .restart local v10       #flags:I
    :cond_76
    const-wide/32 v8, 0xea60

    goto :goto_28

    .line 417
    :cond_7a
    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->date:J

    move-wide v10, v0

    .end local v10           #flags:I
    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    goto :goto_30

    .line 431
    :cond_96
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->kind:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v0

    const v7, 0x7f03002f

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v18

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .end local v8           #minResolution:J
    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 435
    .restart local v20       #view:Landroid/view/View;
    const v6, 0x7f08007d

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 436
    .restart local v17       #line:Landroid/widget/TextView;
    const v6, 0x7f08007e

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 437
    .local v13, data:Landroid/widget/TextView;
    const v6, 0x7f080086

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 439
    .restart local v19       #time:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->authorName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->data:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    .line 446
    .end local v13           #data:Landroid/widget/TextView;
    .end local v17           #line:Landroid/widget/TextView;
    .end local v19           #time:Landroid/widget/TextView;
    .end local v20           #view:Landroid/view/View;
    .restart local v8       #minResolution:J
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v0

    const v7, 0x7f03002e

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v18

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .end local v8           #minResolution:J
    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 447
    .restart local v20       #view:Landroid/view/View;
    const v6, 0x7f08007d

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 448
    .restart local v17       #line:Landroid/widget/TextView;
    const v6, 0x7f08007e

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 449
    .restart local v13       #data:Landroid/widget/TextView;
    const v6, 0x7f080086

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 451
    .restart local v19       #time:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->authorName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->data:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_75
.end method

.method private isProfileSaved()Z
    .registers 7

    .prologue
    const-string v5, "SNMessageView"

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, recipientProfile:Lcom/lge/sns/profile/Profile;
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSnsId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView;->mRecipientId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_c
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_3 .. :try_end_c} :catch_11
    .catch Lcom/lge/sns/SnsException; {:try_start_3 .. :try_end_c} :catch_1b

    move-result-object v1

    .line 311
    :goto_d
    if-nez v1, :cond_25

    .line 312
    const/4 v2, 0x0

    .line 315
    :goto_10
    return v2

    .line 305
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 306
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v2, "SNMessageView"

    const-string v2, "getProfile() - UnauthorizatedException"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 307
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 308
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v2, "SNMessageView"

    const-string v2, "getProfile() - SnsException"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 315
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :cond_25
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v3}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/lge/sns/profile/IProfileFacade;->isExistInContacts(Lcom/lge/sns/profile/ProfileListItem;Ljava/lang/String;)Z

    move-result v2

    goto :goto_10
.end method

.method private makeEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
    .registers 6
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 484
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;-><init>()V

    .line 486
    .local v0, entry:Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;
    iget-object v1, p1, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_36

    .line 487
    const/4 v1, 0x2

    iput v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->kind:I

    .line 493
    :goto_13
    invoke-virtual {p1}, Lcom/lge/sns/message/Message;->getSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->label:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Lcom/lge/sns/message/Message;->getUpdatedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->date:J

    .line 495
    invoke-virtual {p1}, Lcom/lge/sns/message/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->data:Ljava/lang/String;

    .line 496
    iget-object v1, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->threadId:Ljava/lang/String;

    .line 497
    iget-object v1, p1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->messageId:Ljava/lang/String;

    .line 498
    iget-object v1, p1, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->authorName:Ljava/lang/String;

    .line 500
    return-object v0

    .line 490
    :cond_36
    iput v3, v0, Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;->kind:I

    goto :goto_13
.end method

.method private readMessageFromFacade()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v3}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, p0}, Lcom/lge/sns/message/IMessageFacade;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mMessageList:Ljava/util/List;
    :try_end_17
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_17} :catch_5e

    .line 344
    :goto_17
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->buildEntries()V

    .line 345
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->buildView()V

    .line 347
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v3}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/message/IMessageFacade;->getThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/message/MessageThread;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->thread:Lcom/lge/sns/message/MessageThread;

    .line 349
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mMessageList:Ljava/util/List;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v5, :cond_45

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->thread:Lcom/lge/sns/message/MessageThread;

    iget v1, v1, Lcom/lge/sns/message/MessageThread;->unread:I

    if-eqz v1, :cond_7d

    .line 351
    :cond_45
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_68

    .line 352
    const v1, 0x7f050066

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 367
    :goto_5d
    return-void

    .line 339
    :catch_5e
    move-exception v1

    move-object v0, v1

    .line 341
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v1, "SNMessageView"

    const-string v2, "getMessages() - SnsException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 356
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :cond_68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->showDialog(I)V

    .line 358
    monitor-enter p0

    .line 360
    :try_start_6d
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateMessages:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    .line 361
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 362
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_85

    .line 366
    :cond_7d
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView;->mHandler:Landroid/os/Handler;

    goto :goto_5d

    .line 362
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v1
.end method

.method private replyMessage()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_a

    .line 331
    :cond_9
    :goto_9
    return-void

    .line 324
    :cond_a
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->showDialog(I)V

    .line 329
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->doReplyMessages:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadReply:Ljava/lang/Thread;

    .line 330
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadReply:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method private updateMessage()V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1a

    .line 287
    const v0, 0x7f050066

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 298
    :goto_19
    return-void

    .line 291
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageView;->showDialog(I)V

    .line 293
    monitor-enter p0

    .line 295
    :try_start_1f
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView;->doUpdateMessages:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    .line 296
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 297
    monitor-exit p0

    goto :goto_19

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_30

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 270
    packed-switch p1, :pswitch_data_10

    .line 282
    :goto_3
    :pswitch_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 283
    return-void

    .line 275
    :pswitch_7
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->replyMessage()V

    goto :goto_3

    .line 278
    :pswitch_b
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->updateMessage()V

    goto :goto_3

    .line 270
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_3
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 220
    :goto_7
    :pswitch_7
    return-void

    .line 213
    :pswitch_8
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEditLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->mDefaultLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 217
    :pswitch_16
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->replyMessage()V

    goto :goto_7

    .line 211
    :pswitch_data_1a
    .packed-switch 0x7f080082
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_16
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x7

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 111
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "sns_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSnsId:Ljava/lang/String;

    .line 112
    const-string v5, "thread_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mThreadId:Ljava/lang/String;

    .line 113
    const-string v5, "sender_name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSenderName:Ljava/lang/String;

    .line 114
    const-string v5, "recipient_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mRecipientId:Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v6, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSnsId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentAccount:Lcom/lge/sns/account/Account;

    .line 117
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v5}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentCredential:Lcom/lge/sns/account/Credential;

    .line 119
    invoke-virtual {p0, v7}, Lcom/lge/sns/message/ui/SNMessageView;->requestWindowFeature(I)Z

    .line 120
    const v5, 0x7f03002a

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageView;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f030045

    invoke-virtual {v5, v7, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 124
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 125
    .local v3, titleImage:Landroid/widget/ImageView;
    if-eqz v3, :cond_67

    .line 126
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v5}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v0

    .line 127
    .local v0, icon:[B
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    .local v2, photo:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .end local v0           #icon:[B
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :cond_67
    const v5, 0x7f080068

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, titleText:Landroid/widget/TextView;
    if-eqz v4, :cond_77

    .line 134
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSenderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_77
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03002c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mContentView:Landroid/view/ViewGroup;

    .line 142
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->setContentView(Landroid/view/View;)V

    .line 144
    const v5, 0x7f08003b

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mLayout:Landroid/widget/LinearLayout;

    .line 145
    const v5, 0x7f080081

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mDefaultLayout:Landroid/widget/LinearLayout;

    .line 146
    const v5, 0x7f080083

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEditLayout:Landroid/widget/LinearLayout;

    .line 147
    const v5, 0x7f080082

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mReply:Landroid/widget/Button;

    .line 148
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mReply:Landroid/widget/Button;

    const v6, 0x7f05006d

    invoke-virtual {p0, v6}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mReply:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v5, 0x7f080085

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSend:Landroid/widget/Button;

    .line 152
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSend:Landroid/widget/Button;

    const v6, 0x7f050067

    invoke-virtual {p0, v6}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSend:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v5, 0x7f080084

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/SNMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEdit:Landroid/widget/EditText;

    .line 157
    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mEdit:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->readMessageFromFacade()V

    .line 160
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 176
    packed-switch p1, :pswitch_data_62

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_9
    return-object v0

    .line 178
    :pswitch_a
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    .line 179
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 180
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050066

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 182
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 183
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/message/ui/SNMessageView$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/message/ui/SNMessageView$1;-><init>(Lcom/lge/sns/message/ui/SNMessageView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_9

    .line 192
    :pswitch_41
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    .line 193
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 194
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f05006b

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 204
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_9

    .line 176
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_a
        :pswitch_41
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "SNMessageView"

    .line 224
    const v3, 0x7f05000e

    invoke-interface {p1, v6, v6, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108004c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->isProfileSaved()Z

    move-result v3

    if-ne v3, v7, :cond_3b

    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, recipientProfile:Lcom/lge/sns/profile/Profile;
    :try_start_18
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSnsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView;->mRecipientId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_21
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_18 .. :try_end_21} :catch_40
    .catch Lcom/lge/sns/SnsException; {:try_start_18 .. :try_end_21} :catch_5c

    move-result-object v2

    .line 244
    :goto_22
    if-eqz v2, :cond_3b

    .line 245
    const v3, 0x7f050015

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02009f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-static {p0, v2, v4}, Lcom/lge/sns/profile/ui/FriendsList;->getSaveProfileToContactIntent(Landroid/content/Context;Lcom/lge/sns/profile/Profile;Lcom/lge/sns/account/IAccountFacade;)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 253
    .end local v2           #recipientProfile:Lcom/lge/sns/profile/Profile;
    :cond_3b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    :goto_3f
    return v3

    .line 232
    .restart local v2       #recipientProfile:Lcom/lge/sns/profile/Profile;
    :catch_40
    move-exception v3

    move-object v0, v3

    .line 233
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v3, "SNMessageView"

    const-string v3, "getProfile() - UnauthorizatedException"

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView;->mSnsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v1, v6}, Lcom/lge/sns/message/ui/SNMessageView;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v7

    .line 238
    goto :goto_3f

    .line 240
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_5c
    move-exception v3

    move-object v0, v3

    .line 241
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v3, "SNMessageView"

    const-string v3, "getProfile() - SnsException"

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/message/IMessageFacade;->removeMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V

    .line 172
    return-void
.end method

.method public onMessageAdded(Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 610
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/SNMessageView$4;-><init>(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method public onMessageRemoved(Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 652
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/SNMessageView$5;-><init>(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method public onMessageUpdated(Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 673
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageView$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/SNMessageView$6;-><init>(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 266
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 260
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageView;->updateMessage()V

    move v0, v1

    .line 261
    goto :goto_9

    .line 263
    :pswitch_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageView;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 264
    goto :goto_9

    .line 258
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    return-void
.end method
