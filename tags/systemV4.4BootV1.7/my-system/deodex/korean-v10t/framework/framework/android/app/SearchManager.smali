.class public Landroid/app/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchManager$1;,
        Landroid/app/SearchManager$SearchManagerCallback;,
        Landroid/app/SearchManager$OnCancelListener;,
        Landroid/app/SearchManager$OnDismissListener;,
        Landroid/app/SearchManager$DialogCursorProtocol;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final APP_DATA:Ljava/lang/String; = "app_data"

.field public static final COMPONENT_NAME_KEY:Ljava/lang/String; = "intent_component_name_key"

.field private static final DBG:Z = false

.field public static final EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final INTENT_ACTION_CHANGE_SEARCH_SOURCE:Ljava/lang/String; = "android.search.action.CHANGE_SEARCH_SOURCE"

.field public static final INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final INTENT_ACTION_NONE:Ljava/lang/String; = "android.search.action.ZILCH"

.field public static final INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final MENU_KEY:C = 's'

.field public static final MENU_KEYCODE:I = 0x2f

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final SEARCH_CLICK_REPORT_AUTHORITY:Ljava/lang/String; = "com.android.globalsearch.stats"

.field public static final SEARCH_CLICK_REPORT_COLUMN_COMPONENT:Ljava/lang/String; = "component"

.field public static final SEARCH_CLICK_REPORT_COLUMN_QUERY:Ljava/lang/String; = "query"

.field public static final SEARCH_CLICK_REPORT_URI_PATH:Ljava/lang/String; = "click"

.field public static final SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SUGGEST_COLUMN_BACKGROUND_COLOR:Ljava/lang/String; = "suggest_background_color"

.field public static final SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final SUGGEST_COLUMN_INTENT_COMPONENT_NAME:Ljava/lang/String; = "suggest_intent_component"

.field public static final SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final TAG:Ljava/lang/String; = "SearchManager"

.field public static final USER_QUERY:Ljava/lang/String; = "user_query"

.field private static mService:Landroid/app/ISearchManager;


# instance fields
.field mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final mContext:Landroid/content/Context;

.field mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final mHandler:Landroid/os/Handler;

.field private mIdent:I

.field private final mSearchManagerCallback:Landroid/app/SearchManager$SearchManagerCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1643
    iput-object v1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 1644
    iput-object v1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 1646
    new-instance v0, Landroid/app/SearchManager$SearchManagerCallback;

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager$SearchManagerCallback;-><init>(Landroid/app/SearchManager;Landroid/app/SearchManager$1;)V

    iput-object v0, p0, Landroid/app/SearchManager;->mSearchManagerCallback:Landroid/app/SearchManager$SearchManagerCallback;

    .line 1649
    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    .line 1650
    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    .line 1651
    const-string v0, "search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    sput-object v0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    .line 1653
    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 2000
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2001
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "SearchManager"

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

    .line 2002
    return-void
.end method


# virtual methods
.method public getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;
    .registers 5

    .prologue
    .line 1977
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1980
    :goto_6
    return-object v1

    .line 1978
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1979
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSearchableForWebSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;
    .registers 7
    .parameter "componentName"
    .parameter "globalSearch"

    .prologue
    .line 1864
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1867
    :goto_6
    return-object v1

    .line 1865
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1866
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSearchablesForWebSearch()Ljava/util/List;
    .registers 5
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
    .line 1961
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getSearchablesForWebSearch()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1964
    :goto_6
    return-object v1

    .line 1962
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1963
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchablesForWebSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .registers 5
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
    .line 1944
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1947
    :goto_6
    return-object v1

    .line 1945
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1946
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchablesInGlobalSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSuggestions(Landroid/server/search/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "searchable"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    const-string v9, ""

    .line 1892
    if-nez p1, :cond_7

    move-object v0, v2

    .line 1930
    :goto_6
    return-object v0

    .line 1896
    :cond_7
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 1897
    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_f

    move-object v0, v2

    .line 1898
    goto :goto_6

    .line 1901
    :cond_f
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1906
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 1907
    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_27

    .line 1908
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1912
    :cond_27
    const-string v0, "search_suggest_query"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1915
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 1917
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1918
    .local v4, selArgs:[Ljava/lang/String;
    if-eqz v3, :cond_55

    .line 1919
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 1924
    .restart local v4       #selArgs:[Ljava/lang/String;
    :goto_39
    const-string v0, ""

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1930
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_6

    .line 1921
    .end local v1           #uri:Landroid/net/Uri;
    :cond_55
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_39
.end method

.method hasIdent()Z
    .registers 2

    .prologue
    .line 1656
    iget v0, p0, Landroid/app/SearchManager;->mIdent:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDefaultSearchable(Landroid/server/search/SearchableInfo;)Z
    .registers 6
    .parameter "searchable"

    .prologue
    const/4 v3, 0x1

    .line 1877
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v0

    .line 1878
    .local v0, defaultSearchable:Landroid/server/search/SearchableInfo;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public isVisible()Z
    .registers 5

    .prologue
    .line 1753
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->isVisible()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1756
    :goto_6
    return v1

    .line 1754
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1755
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisible() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1847
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDefaultWebSearch(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "component"

    .prologue
    .line 1993
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1, p1}, Landroid/app/ISearchManager;->setDefaultWebSearch(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1997
    :goto_5
    return-void

    .line 1994
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1995
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultWebSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method setIdent(I)V
    .registers 4
    .parameter "ident"

    .prologue
    .line 1660
    iget v0, p0, Landroid/app/SearchManager;->mIdent:I

    if-eqz v0, :cond_c

    .line 1661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mIdent already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_c
    iput p1, p0, Landroid/app/SearchManager;->mIdent:I

    .line 1664
    return-void
.end method

.method public setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1801
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 1802
    return-void
.end method

.method public setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1792
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 1793
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .registers 15
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "launchActivity"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1711
    iget v0, p0, Landroid/app/SearchManager;->mIdent:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called from outside of an Activity context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1715
    :cond_c
    :try_start_c
    sget-object v0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    iget-object v6, p0, Landroid/app/SearchManager;->mSearchManagerCallback:Landroid/app/SearchManager$SearchManagerCallback;

    iget v7, p0, Landroid/app/SearchManager;->mIdent:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/app/ISearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 1720
    :goto_1a
    return-void

    .line 1717
    :catch_1b
    move-exception v0

    move-object v8, v0

    .line 1718
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "SearchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSearch() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public stopSearch()V
    .registers 2

    .prologue
    .line 1736
    :try_start_0
    sget-object v0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->stopSearch()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1739
    :goto_5
    return-void

    .line 1737
    :catch_6
    move-exception v0

    goto :goto_5
.end method
