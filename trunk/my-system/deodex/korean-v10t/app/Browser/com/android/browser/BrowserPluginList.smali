.class public Lcom/android/browser/BrowserPluginList;
.super Landroid/app/ListActivity;
.source "BrowserPluginList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {}, Landroid/webkit/WebView;->getPluginList()Landroid/webkit/PluginList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/PluginList;->getList()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, loadedPlugins:Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, localLoadedPluginList:Ljava/util/ArrayList;
    monitor-enter v0

    .line 45
    :try_start_11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_42

    .line 47
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserPluginList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    const v3, 0x7f070089

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserPluginList;->setTitle(I)V

    .line 53
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 55
    const v3, 0x7f07008a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 56
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BrowserPluginList;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void

    .line 46
    .end local v2           #textView:Landroid/widget/TextView;
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v3
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 64
    invoke-static {}, Landroid/webkit/WebView;->getPluginList()Landroid/webkit/PluginList;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/webkit/PluginList;->pluginClicked(Landroid/content/Context;I)V

    .line 65
    return-void
.end method
