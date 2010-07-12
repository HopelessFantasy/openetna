.class public Landroid/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private mActivityWatcher:Landroid/app/IActivityWatcher$Stub;

.field private final mContext:Landroid/content/Context;

.field private mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchDialog:Landroid/server/search/SearchDialogWrapper;

.field private mSearchables:Landroid/server/search/Searchables;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 117
    new-instance v0, Landroid/server/search/SearchManagerService$2;

    invoke-direct {v0, p0}, Landroid/server/search/SearchManagerService$2;-><init>(Landroid/server/search/SearchManagerService;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Landroid/server/search/SearchManagerService$3;

    invoke-direct {v0, p0}, Landroid/server/search/SearchManagerService$3;-><init>(Landroid/server/search/SearchManagerService;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mActivityWatcher:Landroid/app/IActivityWatcher$Stub;

    .line 64
    iput-object p1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/server/search/SearchManagerService$1;

    invoke-direct {v1, p0}, Landroid/server/search/SearchManagerService$1;-><init>(Landroid/server/search/SearchManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchDialog()Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchDialog:Landroid/server/search/SearchDialogWrapper;

    return-object v0
.end method

.method private declared-synchronized ensureSearchDialogCreated()V
    .registers 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchDialog:Landroid/server/search/SearchDialogWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 102
    :goto_5
    monitor-exit p0

    return-void

    .line 101
    :cond_7
    :try_start_7
    new-instance v0, Landroid/server/search/SearchDialogWrapper;

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/server/search/SearchDialogWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchDialog:Landroid/server/search/SearchDialogWrapper;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 99
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ensureSearchablesCreated()V
    .registers 4

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-eqz v1, :cond_7

    .line 96
    :goto_5
    monitor-exit p0

    return-void

    .line 87
    :cond_7
    :try_start_7
    new-instance v1, Landroid/server/search/Searchables;

    iget-object v2, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/server/search/Searchables;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    .line 88
    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    invoke-virtual {v1}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, packageFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/search/SearchManagerService;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    goto :goto_5

    .line 85
    .end local v0           #packageFilter:Landroid/content/IntentFilter;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getSearchDialog()Landroid/server/search/SearchDialogWrapper;
    .registers 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->ensureSearchDialogCreated()V

    .line 111
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchDialog:Landroid/server/search/SearchDialogWrapper;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 110
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSearchables()Landroid/server/search/Searchables;
    .registers 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->ensureSearchablesCreated()V

    .line 106
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method broadcastSearchablesChanged()V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;
    .registers 2

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;
    .registers 5
    .parameter "launchActivity"
    .parameter "globalSearch"

    .prologue
    .line 173
    if-eqz p2, :cond_b

    .line 174
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getDefaultSearchable()Landroid/server/search/SearchableInfo;

    move-result-object v0

    .line 180
    :goto_a
    return-object v0

    .line 176
    :cond_b
    if-nez p1, :cond_16

    .line 177
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    goto :goto_a

    .line 180
    :cond_16
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/server/search/SearchableInfo;

    move-result-object v0

    goto :goto_a
.end method

.method public getSearchablesForWebSearch()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getSearchablesForWebSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method initialize()V
    .registers 3

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mActivityWatcher:Landroid/app/IActivityWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 82
    :goto_9
    return-void

    .line 80
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchDialog:Landroid/server/search/SearchDialogWrapper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchDialog:Landroid/server/search/SearchDialogWrapper;

    invoke-virtual {v0}, Landroid/server/search/SearchDialogWrapper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setDefaultWebSearch(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "component"

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/search/Searchables;->setDefaultWebSearch(Landroid/content/ComponentName;)V

    .line 213
    invoke-virtual {p0}, Landroid/server/search/SearchManagerService;->broadcastSearchablesChanged()V

    .line 214
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V
    .registers 16
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "launchActivity"
    .parameter "appSearchData"
    .parameter "globalSearch"
    .parameter "searchManagerCallback"
    .parameter "ident"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchDialog()Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/server/search/SearchDialogWrapper;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V

    .line 237
    return-void
.end method

.method public stopSearch()V
    .registers 2

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchDialog()Landroid/server/search/SearchDialogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/SearchDialogWrapper;->stopSearch()V

    .line 244
    return-void
.end method
