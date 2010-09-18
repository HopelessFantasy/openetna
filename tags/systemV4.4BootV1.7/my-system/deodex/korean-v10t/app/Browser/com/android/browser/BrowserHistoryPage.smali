.class public Lcom/android/browser/BrowserHistoryPage;
.super Landroid/app/ExpandableListActivity;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;,
        Lcom/android/browser/BrowserHistoryPage$ChangeObserver;,
        Lcom/android/browser/BrowserHistoryPage$IconReceiver;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "browser"


# instance fields
.field private mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private final mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

.field private mMaxTabsOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/BrowserHistoryPage$IconReceiver;-><init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$1;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserHistoryPage;)Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserHistoryPage;)Landroid/webkit/DateSorter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mDateSorter:Landroid/webkit/DateSorter;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 94
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 95
    .local v0, clip:Landroid/text/IClipboard;
    if-eqz v0, :cond_f

    .line 96
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 101
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_f
    :goto_f
    return-void

    .line 98
    :catch_10
    move-exception v2

    move-object v1, v2

    .line 99
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "browser"

    const-string v3, "Copy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private loadUrl(Ljava/lang/String;Z)V
    .registers 7
    .parameter "url"
    .parameter "newWindow"

    .prologue
    .line 82
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_19

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "new_window"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    .end local v0           #b:Landroid/os/Bundle;
    :cond_19
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/browser/BrowserHistoryPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->finish()V

    .line 90
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .registers 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v0, p0

    .line 248
    .local v0, a:Landroid/app/Activity;
    :goto_7
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 249
    return-void

    .line 247
    .end local v0           #a:Landroid/app/Activity;
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    goto :goto_7
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 235
    instance-of v0, p2, Lcom/android/browser/HistoryItem;

    if-eqz v0, :cond_10

    .line 236
    check-cast p2, Lcom/android/browser/HistoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserHistoryPage;->loadUrl(Ljava/lang/String;Z)V

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_f
    return v0

    .restart local p2
    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 204
    .local v0, i:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-object v3, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v3, Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, url:Ljava/lang/String;
    iget-object v3, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v3, Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, title:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_4c

    .line 229
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_22
    return v3

    .line 208
    :sswitch_23
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/browser/BrowserHistoryPage;->loadUrl(Ljava/lang/String;Z)V

    move v3, v4

    .line 209
    goto :goto_22

    .line 211
    :sswitch_29
    invoke-direct {p0, v2, v4}, Lcom/android/browser/BrowserHistoryPage;->loadUrl(Ljava/lang/String;Z)V

    move v3, v4

    .line 212
    goto :goto_22

    .line 214
    :sswitch_2e
    invoke-static {p0, v1, v2}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 215
    goto :goto_22

    .line 217
    :sswitch_33
    invoke-static {p0, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    move v3, v4

    .line 218
    goto :goto_22

    .line 220
    :sswitch_38
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserHistoryPage;->copy(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 221
    goto :goto_22

    .line 223
    :sswitch_3d
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v3}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->refreshData()V

    move v3, v4

    .line 225
    goto :goto_22

    .line 206
    nop

    :sswitch_data_4c
    .sparse-switch
        0x7f0c006b -> :sswitch_23
        0x7f0c006c -> :sswitch_29
        0x7f0c0071 -> :sswitch_3d
        0x7f0c00a2 -> :sswitch_33
        0x7f0c00ad -> :sswitch_2e
        0x7f0c00ae -> :sswitch_38
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v3, 0x7f0700a4

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserHistoryPage;->setTitle(I)V

    .line 108
    new-instance v3, Landroid/webkit/DateSorter;

    invoke-direct {v3, p0}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mDateSorter:Landroid/webkit/DateSorter;

    .line 110
    new-instance v3, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;-><init>(Lcom/android/browser/BrowserHistoryPage;)V

    iput-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 111
    iget-object v3, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserHistoryPage;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    .line 113
    .local v1, list:Landroid/widget/ExpandableListView;
    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, v:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BrowserHistoryPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    if-lez v3, :cond_4e

    .line 121
    new-instance v3, Lcom/android/browser/BrowserHistoryPage$1;

    invoke-direct {v3, p0, v1}, Lcom/android/browser/BrowserHistoryPage$1;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/widget/ExpandableListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_4e
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "maxTabsOpen"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserHistoryPage;->mMaxTabsOpen:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet(Landroid/content/ContentResolver;)Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    invoke-virtual {v3, v4}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 137
    invoke-direct {p0, v5, v6}, Lcom/android/browser/BrowserHistoryPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 14
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 173
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, v0

    .line 176
    .local v1, i:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-object v6, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/browser/HistoryItem;

    if-nez v6, :cond_d

    .line 198
    :goto_c
    return-void

    .line 181
    :cond_d
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 182
    .local v2, inflater:Landroid/view/MenuInflater;
    const v6, 0x7f0b0009

    invoke-virtual {v2, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    iget-object v6, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v6, Lcom/android/browser/HistoryItem;

    invoke-virtual {v6}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 188
    const v6, 0x7f0c006c

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/browser/BrowserHistoryPage;->mMaxTabsOpen:Z

    if-nez v7, :cond_58

    move v7, v9

    :goto_2e
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 192
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v5, send:Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/high16 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 195
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    const v6, 0x7f0c00a2

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v4, :cond_5a

    move v7, v9

    :goto_51
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/app/ExpandableListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_c

    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    .end local v5           #send:Landroid/content/Intent;
    :cond_58
    move v7, v8

    .line 188
    goto :goto_2e

    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v5       #send:Landroid/content/Intent;
    :cond_5a
    move v7, v8

    .line 195
    goto :goto_51
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 144
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 167
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 160
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 161
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->refreshData()V

    .line 162
    const/4 v0, 0x1

    goto :goto_b

    .line 156
    :pswitch_data_1a
    .packed-switch 0x7f0c00ac
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 150
    const v0, 0x7f0c00ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Browser;->canClearHistory(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    const/4 v0, 0x1

    return v0
.end method
