.class Landroid/server/search/SearchDialogWrapper;
.super Ljava/lang/Object;
.source "SearchDialogWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEY_APP_SEARCH_DATA:Ljava/lang/String; = "d"

.field private static final KEY_IDENT:Ljava/lang/String; = "i"

.field private static final KEY_INITIAL_QUERY:Ljava/lang/String; = "q"

.field private static final KEY_LAUNCH_ACTIVITY:Ljava/lang/String; = "a"

.field private static final MSG_ACTIVITY_RESUMING:I = 0x3

.field private static final MSG_CLOSING_SYSTEM_DIALOGS:I = 0x4

.field private static final MSG_INIT:I = 0x0

.field private static final MSG_START_SEARCH:I = 0x1

.field private static final MSG_STOP_SEARCH:I = 0x2

.field private static final SEARCH_UI_THREAD_NAME:Ljava/lang/String; = "SearchDialog"

.field private static final SEARCH_UI_THREAD_PRIORITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallback:Landroid/app/ISearchManagerCallback;

.field private final mContext:Landroid/content/Context;

.field private mReceiverRegistered:Z

.field private mResumedIdent:I

.field mSearchDialog:Landroid/app/SearchDialog;

.field private final mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

.field private mStartedIdent:I

.field private volatile mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    .line 87
    iput v3, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    .line 90
    iput v3, p0, Landroid/server/search/SearchDialogWrapper;->mResumedIdent:I

    .line 95
    iput-boolean v3, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 149
    new-instance v1, Landroid/server/search/SearchDialogWrapper$1;

    invoke-direct {v1, p0}, Landroid/server/search/SearchDialogWrapper$1;-><init>(Landroid/server/search/SearchDialogWrapper;)V

    iput-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Landroid/server/search/SearchDialogWrapper;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SearchDialog"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v1, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;-><init>(Landroid/server/search/SearchDialogWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    .line 112
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    invoke-virtual {v1, v3}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->sendEmptyMessage(I)Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Landroid/server/search/SearchDialogWrapper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/server/search/SearchDialogWrapper;->init()V

    return-void
.end method

.method private callOnCancel()V
    .registers 5

    .prologue
    .line 401
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    if-eqz v1, :cond_9

    .line 404
    :try_start_4
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    invoke-interface {v1}, Landroid/app/ISearchManagerCallback;->onCancel()V
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_9} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 411
    :cond_9
    :goto_9
    return-void

    .line 407
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 408
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SearchManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancel() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 405
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_25
    move-exception v1

    goto :goto_9
.end method

.method private callOnDismiss()V
    .registers 5

    .prologue
    .line 389
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    if-nez v1, :cond_5

    .line 398
    :goto_4
    return-void

    .line 392
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    invoke-interface {v1}, Landroid/app/ISearchManagerCallback;->onDismiss()V
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_d

    goto :goto_4

    .line 393
    :catch_b
    move-exception v1

    goto :goto_4

    .line 395
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 396
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SearchManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDismiss() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 415
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "SearchManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 124
    new-instance v0, Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    .line 125
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 126
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 6

    .prologue
    .line 130
    iget-boolean v1, p0, Landroid/server/search/SearchDialogWrapper;->mReceiverRegistered:Z

    if-nez v1, :cond_18

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/search/SearchDialogWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/search/SearchDialogWrapper;->mReceiverRegistered:Z

    .line 137
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_18
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .registers 3

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mReceiverRegistered:Z

    if-eqz v0, :cond_e

    .line 141
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mReceiverRegistered:Z

    .line 144
    :cond_e
    return-void
.end method


# virtual methods
.method public activityResuming(I)V
    .registers 4
    .parameter "ident"

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 214
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 215
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    invoke-virtual {v1, v0}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method public closingSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    invoke-virtual {v1, v0}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/server/search/SearchDialogWrapper;->callOnCancel()V

    .line 386
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 369
    iput v0, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    .line 370
    iput-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 371
    invoke-direct {p0}, Landroid/server/search/SearchDialogWrapper;->callOnDismiss()V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    .line 375
    invoke-direct {p0}, Landroid/server/search/SearchDialogWrapper;->unregisterBroadcastReceiver()V

    .line 376
    return-void
.end method

.method performActivityResuming(I)V
    .registers 4
    .parameter "ident"

    .prologue
    .line 325
    iput p1, p0, Landroid/server/search/SearchDialogWrapper;->mResumedIdent:I

    .line 326
    iget v0, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    if-eqz v0, :cond_14

    .line 327
    iget v0, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    iget v1, p0, Landroid/server/search/SearchDialogWrapper;->mResumedIdent:I

    if-ne v0, v1, :cond_15

    .line 331
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->show()V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 341
    :cond_14
    :goto_14
    return-void

    .line 337
    :cond_15
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->hide()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    goto :goto_14
.end method

.method performClosingSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 350
    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 352
    invoke-virtual {p0}, Landroid/server/search/SearchDialogWrapper;->performStopSearch()V

    .line 354
    :cond_b
    return-void
.end method

.method performOnConfigurationChanged()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->onConfigurationChanged()V

    .line 362
    return-void
.end method

.method performStartSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V
    .registers 14
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "launchActivity"
    .parameter "appSearchData"
    .parameter "globalSearch"
    .parameter "searchManagerCallback"
    .parameter "ident"

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/server/search/SearchDialogWrapper;->registerBroadcastReceiver()V

    .line 291
    iput-object p6, p0, Landroid/server/search/SearchDialogWrapper;->mCallback:Landroid/app/ISearchManagerCallback;

    .line 294
    iget v0, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    if-eqz v0, :cond_e

    .line 295
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->dismiss()V

    .line 298
    :cond_e
    iput p7, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    .line 301
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)Z

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 304
    return-void
.end method

.method performStopSearch()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    .line 314
    iput-boolean v1, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 315
    iput v1, p0, Landroid/server/search/SearchDialogWrapper;->mStartedIdent:I

    .line 316
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V
    .registers 13
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "launchActivity"
    .parameter "appSearchData"
    .parameter "globalSearch"
    .parameter "searchManagerCallback"
    .parameter "ident"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 180
    if-eqz p2, :cond_34

    move v2, v3

    :goto_b
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 181
    if-eqz p5, :cond_36

    move v2, v3

    :goto_10
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 182
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, msgData:Landroid/os/Bundle;
    const-string v2, "q"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "a"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    const-string v2, "d"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    const-string v2, "i"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget-object v2, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    invoke-virtual {v2, v0}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    iput-boolean v3, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 192
    return-void

    .end local v1           #msgData:Landroid/os/Bundle;
    :cond_34
    move v2, v4

    .line 180
    goto :goto_b

    :cond_36
    move v2, v4

    .line 181
    goto :goto_10
.end method

.method public stopSearch()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper;->mSearchUiThread:Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->sendEmptyMessage(I)Z

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/search/SearchDialogWrapper;->mVisible:Z

    .line 204
    return-void
.end method
