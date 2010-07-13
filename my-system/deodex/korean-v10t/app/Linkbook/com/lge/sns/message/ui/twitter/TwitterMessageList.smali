.class public Lcom/lge/sns/message/ui/twitter/TwitterMessageList;
.super Landroid/app/ListActivity;
.source "TwitterMessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;,
        Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    }
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "SNS"

.field private static final CLASS_TAG:Ljava/lang/String; = "SNMessageInbox"

.field private static final DIALOG_PROGRESS_REFRESH:I = 0x0

.field private static final MENU_CONTEXT_DELETE:I = 0x1

.field private static final MENU_CONTEXT_SEND_MESSAGE:I = 0x0

.field private static final MENU_ITEM_BOX_MODE:I = 0x1

.field private static final MENU_ITEM_NEW_DIRECT_MESSAGE:I = 0x0

.field private static final MENU_ITEM_REFRESH:I = 0x2

.field private static final RESULT_SIGN_IN_UPDATE_MESSAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwitterMessageList"


# instance fields
.field private final AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field public final KEY_FRIENDID:Ljava/lang/String;

.field public final KEY_FRIEND_NAME:Ljava/lang/String;

.field public final KEY_MESSAGE_ID:Ljava/lang/String;

.field public final KEY_RECIPIENT_ID:Ljava/lang/String;

.field public final KEY_SENDER_NAME:Ljava/lang/String;

.field public final KEY_SNS_ID:Ljava/lang/String;

.field public final KEY_THREAD_ID:Ljava/lang/String;

.field private final MessageManager:Lcom/lge/sns/message/IMessageFacade;

.field public final TYPE_INBOX:I

.field public final TYPE_OUTBOX:I

.field private btnInbox:Landroid/widget/Button;

.field private btnOutbox:Landroid/widget/Button;

.field private doRefreshFinished:Ljava/lang/Runnable;

.field private doRefreshMsgBox:Ljava/lang/Runnable;

.field private doRefreshStop:Ljava/lang/Runnable;

.field private doShowNotConnectToast:Ljava/lang/Runnable;

.field private mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

.field private mContentView:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessageEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mRecipientId:Ljava/lang/String;

.field private mSnsId:Ljava/lang/String;

.field private m_CurMsgBoxType:I

.field private m_curAccount:Lcom/lge/sns/account/Account;

.field private m_curCredential:Lcom/lge/sns/account/Credential;

.field private m_dlgRefresh:Landroid/app/ProgressDialog;

.field private m_hRefreshFinished:Landroid/os/Handler;

.field private m_lstInboxMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private m_lstOutboxMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private m_threadRefresh:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 77
    const-string v0, "sns_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_SNS_ID:Ljava/lang/String;

    .line 78
    const-string v0, "thread_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_THREAD_ID:Ljava/lang/String;

    .line 79
    const-string v0, "message_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_MESSAGE_ID:Ljava/lang/String;

    .line 80
    const-string v0, "sender_name"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_SENDER_NAME:Ljava/lang/String;

    .line 81
    const-string v0, "recipient_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_RECIPIENT_ID:Ljava/lang/String;

    .line 82
    const-string v0, "friend_userid"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_FRIENDID:Ljava/lang/String;

    .line 83
    const-string v0, "display_name"

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->KEY_FRIEND_NAME:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 100
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    .line 102
    iput v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->TYPE_INBOX:I

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->TYPE_OUTBOX:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    .line 114
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mSnsId:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    .line 116
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curCredential:Lcom/lge/sns/account/Credential;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    .line 119
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    .line 120
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    .line 121
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_hRefreshFinished:Landroid/os/Handler;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mPosition:I

    .line 123
    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mRecipientId:Ljava/lang/String;

    .line 126
    iput v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    .line 457
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshMsgBox:Ljava/lang/Runnable;

    .line 1126
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$6;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$6;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshFinished:Ljava/lang/Runnable;

    .line 1135
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$7;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshStop:Ljava/lang/Runnable;

    .line 1143
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$8;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/account/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/account/Credential;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curCredential:Lcom/lge/sns/account/Credential;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/IMessageFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mSnsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_hRefreshFinished:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final buildEntries()V
    .registers 7

    .prologue
    const-string v5, "TwitterMessageList"

    .line 515
    const-string v3, "TwitterMessageList"

    const-string v3, "buildEntries()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, item:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/message/Message;>;"
    iget v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    packed-switch v3, :pswitch_data_56

    .line 528
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 530
    const-string v3, "TwitterMessageList"

    const-string v3, "item.hasNext()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/Message;

    .line 533
    .local v2, newMessage:Lcom/lge/sns/message/Message;
    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v1

    .line 535
    .local v1, newEntry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    const-string v3, "Inbox"

    iget-object v4, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 537
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 521
    .end local v1           #newEntry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    .end local v2           #newMessage:Lcom/lge/sns/message/Message;
    :pswitch_36
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 522
    goto :goto_f

    .line 524
    :pswitch_3d
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_f

    .line 539
    .restart local v1       #newEntry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    .restart local v2       #newMessage:Lcom/lge/sns/message/Message;
    :cond_44
    const-string v3, "Outbox"

    iget-object v4, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 541
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 544
    .end local v1           #newEntry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    .end local v2           #newMessage:Lcom/lge/sns/message/Message;
    :cond_54
    return-void

    .line 519
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3d
    .end packed-switch
.end method

.method private buildInboxList()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildEntries()V

    .line 429
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_hRefreshFinished:Landroid/os/Handler;

    .line 432
    return-void
.end method

.method private buildMsgList()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const-string v8, "getMessages() - SnsException"

    const-string v7, "TwitterMessageList"

    .line 343
    iget v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    packed-switch v2, :pswitch_data_ba

    .line 373
    :goto_a
    const/4 v1, 0x0

    .line 375
    .local v1, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Message;>;"
    iget v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    packed-switch v2, :pswitch_data_c2

    .line 384
    :goto_10
    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_30

    .line 386
    :cond_18
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_9f

    .line 387
    const v2, 0x7f050066

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 399
    :cond_30
    :goto_30
    return-void

    .line 345
    .end local v1           #messageList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Message;>;"
    :pswitch_31
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_4f

    .line 347
    :try_start_39
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v4}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Inbox"

    invoke-interface {v2, v3, v4, v5, p0}, Lcom/lge/sns/message/IMessageFacade;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;
    :try_end_4f
    .catch Lcom/lge/sns/SnsException; {:try_start_39 .. :try_end_4f} :catch_53

    .line 356
    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildInboxList()V

    goto :goto_a

    .line 351
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 352
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v2, "TwitterMessageList"

    const-string v2, "getMessages() - SnsException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    goto :goto_4f

    .line 359
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :pswitch_64
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_82

    .line 361
    :try_start_6c
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v4}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Outbox"

    invoke-interface {v2, v3, v4, v5, p0}, Lcom/lge/sns/message/IMessageFacade;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;
    :try_end_82
    .catch Lcom/lge/sns/SnsException; {:try_start_6c .. :try_end_82} :catch_86

    .line 369
    :cond_82
    :goto_82
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildOutboxList()V

    goto :goto_a

    .line 364
    :catch_86
    move-exception v2

    move-object v0, v2

    .line 365
    .restart local v0       #e:Lcom/lge/sns/SnsException;
    const-string v2, "TwitterMessageList"

    const-string v2, "getMessages() - SnsException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    goto :goto_82

    .line 377
    .end local v0           #e:Lcom/lge/sns/SnsException;
    .restart local v1       #messageList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Message;>;"
    :pswitch_97
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    .line 378
    goto/16 :goto_10

    .line 380
    :pswitch_9b
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    goto/16 :goto_10

    .line 391
    :cond_9f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->showDialog(I)V

    .line 393
    monitor-enter p0

    .line 395
    :try_start_a4
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshMsgBox:Ljava/lang/Runnable;

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    .line 396
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 397
    monitor-exit p0

    goto/16 :goto_30

    :catchall_b6
    move-exception v2

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_b6

    throw v2

    .line 343
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_31
        :pswitch_64
    .end packed-switch

    .line 375
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_97
        :pswitch_9b
    .end packed-switch
.end method

.method private buildOutboxList()V
    .registers 6

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v3}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Outbox"

    invoke-interface {v1, v2, v3, v4, p0}, Lcom/lge/sns/message/IMessageFacade;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;
    :try_end_16
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_16} :catch_2b

    .line 413
    :goto_16
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 414
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildEntries()V

    .line 416
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 418
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_hRefreshFinished:Landroid/os/Handler;

    .line 419
    return-void

    .line 409
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 410
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v1, "TwitterMessageList"

    const-string v2, "getMessages() - SnsException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private switchingButton(I)V
    .registers 7
    .parameter "type"

    .prologue
    const v4, 0x7f02000c

    const v3, 0x7f02000a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    if-ne p1, v1, :cond_1f

    .line 218
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnInbox:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 219
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnOutbox:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 220
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnInbox:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnOutbox:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 228
    :goto_1e
    return-void

    .line 223
    :cond_1f
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnInbox:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 224
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnOutbox:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 225
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnInbox:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnOutbox:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1e
.end method


# virtual methods
.method protected createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    .registers 7
    .parameter "message"

    .prologue
    const-string v4, " "

    .line 1097
    const-string v2, "TwitterMessageList"

    const-string v3, "createNewViewEntry()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    invoke-direct {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;-><init>()V

    .line 1101
    .local v1, newEntry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    const-string v2, "Inbox"

    iget-object v3, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f05006a

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 1118
    .end local p0
    :cond_3a
    iget-object v2, p1, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->data:Ljava/lang/String;

    .line 1119
    iget-object v2, p1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->date:J

    .line 1120
    iget-object v2, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->threadId:Ljava/lang/String;

    .line 1121
    iget-object v2, p1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->messageId:Ljava/lang/String;

    .line 1123
    return-object v1

    .line 1103
    .restart local p0
    :cond_4f
    const-string v2, "Outbox"

    iget-object v3, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1104
    iget-object v2, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    if-eqz v2, :cond_3a

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f050069

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 1106
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_7a
    iget-object v2, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 1107
    if-lez v0, :cond_9b

    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 1110
    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/sns/message/Recipient;

    iget-object v3, p0, Lcom/lge/sns/message/Recipient;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a
.end method

.method public getMessageBoxType()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 628
    packed-switch p1, :pswitch_data_3a

    .line 647
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 648
    :goto_6
    return-void

    .line 631
    :pswitch_7
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_21

    .line 633
    const v0, 0x7f050066

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 637
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->showDialog(I)V

    .line 639
    monitor-enter p0

    .line 641
    :try_start_26
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshMsgBox:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    .line 642
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 643
    monitor-exit p0

    goto :goto_3

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw v0

    .line 628
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const-string v3, "TwitterMessageList"

    .line 130
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1c

    .line 132
    const v0, 0x7f050066

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :goto_1b
    return-void

    .line 136
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    goto :goto_1b

    .line 138
    :pswitch_24
    const-string v0, "TwitterMessageList"

    const-string v0, "onClick() : btn_inbox"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setMessageBoxType(I)V

    .line 141
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildMsgList()V

    goto :goto_1b

    .line 144
    :pswitch_32
    const-string v0, "TwitterMessageList"

    const-string v0, "onClick() : btn_outbox"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setMessageBoxType(I)V

    .line 147
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildMsgList()V

    goto :goto_1b

    .line 136
    nop

    :pswitch_data_42
    .packed-switch 0x7f080079
        :pswitch_24
        :pswitch_32
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    const-string v4, "TwitterMessageList"

    const-string v5, "onContextItemSelected()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_ba

    .line 333
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_14
    return v4

    .line 277
    :pswitch_15
    iget v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mPosition:I

    if-gez v4, :cond_1b

    move v4, v6

    .line 278
    goto :goto_14

    .line 280
    :cond_1b
    iget v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mPosition:I

    .line 281
    .local v1, id:I
    const/4 v0, 0x0

    .line 283
    .local v0, displayName:Ljava/lang/String;
    iget v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    packed-switch v4, :pswitch_data_c2

    .line 303
    :cond_23
    :goto_23
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.twitter.send"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v4, "sns_id"

    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mSnsId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v4, "recipient_id"

    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mRecipientId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v4, "display_name"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->startActivity(Landroid/content/Intent;)V

    move v4, v7

    .line 312
    goto :goto_14

    .line 285
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_47
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Message;

    iget-object v4, v4, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mRecipientId:Ljava/lang/String;

    .line 286
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Message;

    iget-object v0, v4, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    .line 287
    goto :goto_23

    .line 289
    :pswitch_5e
    const/4 v3, 0x0

    .line 290
    .local v3, recipients:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Recipient;>;"
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Message;

    iget-object v3, v4, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    .line 292
    if-eqz v3, :cond_23

    .line 294
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_23

    .line 296
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Recipient;

    iget-object v4, v4, Lcom/lge/sns/message/Recipient;->userId:Ljava/lang/String;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mRecipientId:Ljava/lang/String;

    .line 297
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Recipient;

    iget-object v0, v4, Lcom/lge/sns/message/Recipient;->displayName:Ljava/lang/String;

    goto :goto_23

    .line 314
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #id:I
    .end local v3           #recipients:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Recipient;>;"
    :pswitch_84
    iget v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mPosition:I

    if-gez v4, :cond_8a

    move v4, v6

    .line 315
    goto :goto_14

    .line 317
    :cond_8a
    iget v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mPosition:I

    .line 319
    .restart local v1       #id:I
    iget v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    packed-switch v4, :pswitch_data_ca

    .line 327
    :goto_91
    const-string v4, "Deleted"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    .line 330
    goto/16 :goto_14

    .line 321
    :pswitch_9d
    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstInboxMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Message;

    invoke-interface {v5, v4}, Lcom/lge/sns/message/IMessageFacade;->deleteMessage(Lcom/lge/sns/message/Message;)V

    goto :goto_91

    .line 324
    :pswitch_ab
    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_lstOutboxMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/Message;

    invoke-interface {v5, v4}, Lcom/lge/sns/message/IMessageFacade;->deleteMessage(Lcom/lge/sns/message/Message;)V

    goto :goto_91

    .line 275
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_15
        :pswitch_84
    .end packed-switch

    .line 283
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_47
        :pswitch_5e
    .end packed-switch

    .line 319
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_ab
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.outbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 162
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    .line 171
    :cond_17
    const-string v3, "sns_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mSnsId:Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mSnsId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    .line 173
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_curCredential:Lcom/lge/sns/account/Credential;

    .line 176
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mInflater:Landroid/view/LayoutInflater;

    .line 177
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mContentView:Landroid/view/ViewGroup;

    .line 179
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setContentView(Landroid/view/View;)V

    .line 181
    const v3, 0x7f080079

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnInbox:Landroid/widget/Button;

    .line 182
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnInbox:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v3, 0x7f08007a

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnOutbox:Landroid/widget/Button;

    .line 184
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->btnOutbox:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setMessageBoxType(I)V

    .line 188
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 189
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 191
    new-instance v3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    .line 192
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildMsgList()V

    .line 196
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "TwitterMessageList"

    .line 246
    const-string v4, "TwitterMessageList"

    const-string v4, "onCreateContextMenu()"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :try_start_b
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_f} :catch_14

    .line 256
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v4, :cond_1d

    .line 269
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_13
    return-void

    .line 251
    :catch_14
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "TwitterMessageList"

    const-string v4, "bad menuInfo"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 259
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1d
    iget v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 260
    .local v2, id:I
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mPosition:I

    .line 261
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    iget-object v4, v4, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 263
    iget v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    if-ne v4, v6, :cond_3e

    .line 264
    const v4, 0x7f05005e

    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v5, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 267
    :cond_3e
    const v4, 0x7f050016

    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v6, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_13
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 436
    packed-switch p1, :pswitch_data_42

    .line 454
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 438
    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    .line 439
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 440
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    const v1, 0x7f050066

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 442
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 443
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$1;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_dlgRefresh:Landroid/app/ProgressDialog;

    goto :goto_8

    .line 436
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x1080034

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    const-string v0, "TwitterMessageList"

    const-string v1, "onCreateOptionsMenu ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x2

    const v1, 0x7f05000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    iget v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    if-ne v0, v3, :cond_3a

    .line 553
    const v0, 0x7f0500b9

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 559
    :goto_28
    const v0, 0x7f050072

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 562
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 556
    :cond_3a
    const v0, 0x7f0500b8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_28
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/message/IMessageFacade;->removeMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V

    .line 233
    return-void
.end method

.method public onMessageAdded(Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter "addedMessage"

    .prologue
    .line 748
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Lcom/lge/sns/message/Message;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 871
    return-void
.end method

.method public onMessageRemoved(Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter "removedMessage"

    .prologue
    .line 875
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Lcom/lge/sns/message/Message;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 940
    return-void
.end method

.method public onMessageUpdated(Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter "updatedMessage"

    .prologue
    .line 945
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Lcom/lge/sns/message/Message;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 583
    const-string v1, "TwitterMessageList"

    const-string v2, "onPrepareOptionMenu ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_72

    move v1, v3

    .line 624
    :goto_11
    return v1

    .line 590
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.twitter.send"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mSnsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 595
    goto :goto_11

    .line 598
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2a
    iget v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    if-ne v1, v4, :cond_37

    .line 599
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setMessageBoxType(I)V

    .line 600
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildMsgList()V

    :goto_35
    move v1, v4

    .line 606
    goto :goto_11

    .line 603
    :cond_37
    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->setMessageBoxType(I)V

    .line 604
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->buildMsgList()V

    goto :goto_35

    .line 609
    :pswitch_3e
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_58

    .line 611
    const v1, 0x7f050066

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 612
    goto :goto_11

    .line 615
    :cond_58
    invoke-virtual {p0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->showDialog(I)V

    .line 617
    monitor-enter p0

    .line 619
    :try_start_5c
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->doRefreshMsgBox:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    .line 620
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_threadRefresh:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 621
    monitor-exit p0

    move v1, v4

    .line 622
    goto :goto_11

    .line 621
    :catchall_6e
    move-exception v1

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_5c .. :try_end_70} :catchall_6e

    throw v1

    .line 585
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_12
        :pswitch_2a
        :pswitch_3e
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 566
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 568
    const-string v1, "TwitterMessageList"

    const-string v2, "onPrepareOptionMenu ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 571
    .local v0, menuItem:Landroid/view/MenuItem;
    iget v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    if-ne v1, v3, :cond_1a

    .line 572
    const v1, 0x7f0500b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 578
    :goto_19
    return v3

    .line 575
    :cond_1a
    const v1, 0x7f0500b8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_19
.end method

.method public setMessageBoxType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 240
    iput p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    .line 241
    iget v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->m_CurMsgBoxType:I

    invoke-direct {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->switchingButton(I)V

    .line 242
    return-void
.end method

.method public testData()V
    .registers 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2a

    .line 202
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;-><init>()V

    .line 204
    .local v0, entry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    const/4 v2, 0x2

    iput v2, v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->kind:I

    .line 206
    const-string v2, "TestLabel"

    iput-object v2, v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->label:Ljava/lang/String;

    .line 207
    const-wide/32 v2, 0x12d687

    iput-wide v2, v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->date:J

    .line 208
    const-string v2, "TestData"

    iput-object v2, v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->data:Ljava/lang/String;

    .line 209
    const-string v2, "TestName"

    iput-object v2, v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mMessageEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 213
    .end local v0           #entry:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;
    :cond_2a
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->mAdapter:Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    invoke-virtual {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 214
    return-void
.end method
