.class public Lcom/lge/sns/message/ui/SNMessageList;
.super Landroid/app/ListActivity;
.source "SNMessageList.java"

# interfaces
.implements Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;,
        Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;
    }
.end annotation


# static fields
.field private static final DIALOG_PROGRESS_REFRESH:I = 0x0

.field private static final MENU_ITEM_REFRESH:I = 0x0

.field private static final MENU_ITEM_SN_MESSAGE:I = 0x1

.field private static final RESULT_FRIENDLIST_PICK:I = 0x0

.field private static final RESULT_SIGN_IN_UPDATE_THREADS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SNMessageListActivity"


# instance fields
.field private final AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field public final KEY_FRIEND_NAME:Ljava/lang/String;

.field public final KEY_RECIPIENT_ID:Ljava/lang/String;

.field public final KEY_SENDER_NAME:Ljava/lang/String;

.field public final KEY_SNS_ID:Ljava/lang/String;

.field public final KEY_THREAD_ID:Ljava/lang/String;

.field private final MessageManager:Lcom/lge/sns/message/IMessageFacade;

.field private currentAccount:Lcom/lge/sns/account/Account;

.field private currentCredential:Lcom/lge/sns/account/Credential;

.field private doShowNotConnectToast:Ljava/lang/Runnable;

.field private doUpdateFinish:Ljava/lang/Runnable;

.field private doUpdateMessageThread:Ljava/lang/Runnable;

.field private doUpdateStop:Ljava/lang/Runnable;

.field private mAdapter:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mMessageThread:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/MessageThread;",
            ">;"
        }
    .end annotation
.end field

.field private mPageNum:I

.field private mPageSize:I

.field private mServiceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsId:Ljava/lang/String;

.field private mThreadRefresh:Ljava/lang/Thread;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    const-string v0, "sns_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->KEY_SNS_ID:Ljava/lang/String;

    .line 53
    const-string v0, "thread_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->KEY_THREAD_ID:Ljava/lang/String;

    .line 54
    const-string v0, "sender_name"

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->KEY_SENDER_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "recipient_id"

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->KEY_RECIPIENT_ID:Ljava/lang/String;

    .line 56
    const-string v0, "display_name"

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->KEY_FRIEND_NAME:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 68
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mServiceEntries:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    .line 165
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageList$2;-><init>(Lcom/lge/sns/message/ui/SNMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateMessageThread:Ljava/lang/Runnable;

    .line 603
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$6;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageList$6;-><init>(Lcom/lge/sns/message/ui/SNMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateFinish:Ljava/lang/Runnable;

    .line 624
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageList$7;-><init>(Lcom/lge/sns/message/ui/SNMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateStop:Ljava/lang/Runnable;

    .line 644
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageList$8;-><init>(Lcom/lge/sns/message/ui/SNMessageList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/account/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentAccount:Lcom/lge/sns/account/Account;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mServiceEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mAdapter:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lge/sns/message/ui/SNMessageList;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/account/Credential;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentCredential:Lcom/lge/sns/account/Credential;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/IMessageFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mSnsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateFinish:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mMessageThread:Ljava/util/List;

    return-object v0
.end method

.method private final buildEntries()V
    .registers 6

    .prologue
    .line 239
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList;->mMessageThread:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    .local v1, item:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/message/MessageThread;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 244
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;-><init>()V

    .line 245
    .local v0, entry:Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/message/MessageThread;

    .line 247
    .local v2, thread:Lcom/lge/sns/message/MessageThread;
    iget-object v3, v2, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    iput-object v3, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 250
    iget v3, v2, Lcom/lge/sns/message/MessageThread;->unread:I

    iput v3, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->unread:I

    .line 251
    iget-object v3, v2, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    iput-object v3, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->data:Ljava/lang/String;

    .line 253
    iget-object v3, v2, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->date:J

    .line 254
    iget-object v3, v2, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    iput-object v3, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->threadId:Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 258
    .end local v0           #entry:Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;
    .end local v2           #thread:Lcom/lge/sns/message/MessageThread;
    :cond_3a
    return-void
.end method

.method private dataChanged()V
    .registers 3

    .prologue
    .line 215
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mAdapter:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    .line 216
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mAdapter:Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    return-void
.end method

.method private doUpdateMessage()V
    .registers 7

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1a

    .line 292
    const v0, 0x7f050066

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    :goto_19
    return-void

    .line 296
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->showDialog(I)V

    .line 298
    monitor-enter p0

    .line 300
    :try_start_1f
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lge/sns/message/ui/SNMessageList;->mPageNum:I

    iget v4, p0, Lcom/lge/sns/message/ui/SNMessageList;->mPageSize:I

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/message/IMessageFacade;->getThreads(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)Ljava/util/List;

    .line 302
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateMessageThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    .line 303
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 305
    monitor-exit p0

    goto :goto_19

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_46

    throw v0
.end method

.method private readMessageFromFacade()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 112
    monitor-enter p0

    .line 114
    :try_start_2
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/message/IMessageFacade;->getThreadCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mPageSize:I

    .line 115
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lge/sns/message/ui/SNMessageList;->mPageNum:I

    iget v4, p0, Lcom/lge/sns/message/ui/SNMessageList;->mPageSize:I

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/message/IMessageFacade;->getThreads(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mMessageThread:Ljava/util/List;

    .line 118
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_5b

    .line 121
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageList;->buildEntries()V

    .line 122
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageList;->dataChanged()V

    .line 124
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mMessageThread:Ljava/util/List;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mMessageThread:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_73

    .line 126
    :cond_42
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_5e

    .line 127
    const v0, 0x7f050066

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :goto_5a
    return-void

    .line 118
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 131
    :cond_5e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->showDialog(I)V

    .line 133
    monitor-enter p0

    .line 135
    :try_start_63
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateMessageThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    .line 136
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mThreadRefresh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_7b

    .line 140
    :cond_73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->mHandler:Landroid/os/Handler;

    goto :goto_5a

    .line 137
    :catchall_7b
    move-exception v0

    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v5, "display_name"

    .line 309
    const/4 v3, -0x1

    if-ne p2, v3, :cond_8

    .line 310
    packed-switch p1, :pswitch_data_40

    .line 331
    :cond_8
    :goto_8
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 332
    :cond_b
    return-void

    .line 312
    :pswitch_c
    const-string v3, "friend_userid"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, recipientId:Ljava/lang/String;
    const-string v3, "display_name"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, displayName:Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.send"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList;->mSnsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v3, "recipient_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v3, "display_name"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageList;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 326
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #recipientId:Ljava/lang/String;
    :pswitch_3b
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateMessage()V

    goto :goto_8

    .line 310
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const-string v4, "sns_id"

    .line 83
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sns_id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->mSnsId:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    const-string v3, "sns_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentAccount:Lcom/lge/sns/account/Account;

    .line 90
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->currentCredential:Lcom/lge/sns/account/Credential;

    .line 92
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageList;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 95
    .local v1, listView:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 96
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 98
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageList;->readMessageFromFacade()V

    .line 99
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 145
    packed-switch p1, :pswitch_data_42

    .line 162
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 147
    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    .line 148
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 149
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050066

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 151
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 152
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/message/ui/SNMessageList$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/message/ui/SNMessageList$1;-><init>(Lcom/lge/sns/message/ui/SNMessageList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_8

    .line 145
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 263
    const v0, 0x7f05000e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    const/4 v0, 0x1

    const v1, 0x7f050072

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 269
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageList;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/message/IMessageFacade;->removeThreadUpdateListener(Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)V

    .line 107
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "list"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 222
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->mMessageThread:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/MessageThread;

    .line 226
    .local v1, messageThread:Lcom/lge/sns/message/MessageThread;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.messagelist"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList;->mSnsId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v2, "thread_id"

    invoke-virtual {v1}, Lcom/lge/sns/message/MessageThread;->getThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "sender_name"

    invoke-virtual {v1}, Lcom/lge/sns/message/MessageThread;->getAuthorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "recipient_id"

    invoke-virtual {v1}, Lcom/lge/sns/message/MessageThread;->getAuthorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    move v1, v3

    .line 287
    :goto_a
    return v1

    .line 277
    :pswitch_b
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageList;->doUpdateMessage()V

    move v1, v4

    .line 278
    goto :goto_a

    .line 280
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList;->mSnsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0, v3}, Lcom/lge/sns/message/ui/SNMessageList;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v4

    .line 285
    goto :goto_a

    .line 275
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 210
    return-void
.end method

.method public onThreadAdded(Lcom/lge/sns/message/MessageThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 475
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$3;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/SNMessageList$3;-><init>(Lcom/lge/sns/message/ui/SNMessageList;Lcom/lge/sns/message/MessageThread;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public onThreadRemoved(Lcom/lge/sns/message/MessageThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 524
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/SNMessageList$4;-><init>(Lcom/lge/sns/message/ui/SNMessageList;Lcom/lge/sns/message/MessageThread;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 542
    return-void
.end method

.method public onThreadUpdated(Lcom/lge/sns/message/MessageThread;)V
    .registers 3
    .parameter "thread"

    .prologue
    .line 546
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/message/ui/SNMessageList$5;-><init>(Lcom/lge/sns/message/ui/SNMessageList;Lcom/lge/sns/message/MessageThread;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method
