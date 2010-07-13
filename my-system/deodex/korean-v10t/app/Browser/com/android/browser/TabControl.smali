.class Lcom/android/browser/TabControl;
.super Ljava/lang/Object;
.source "TabControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TabControl$Tab;,
        Lcom/android/browser/TabControl$BackgroundChromeClient;,
        Lcom/android/browser/TabControl$SubWindowChromeClient;,
        Lcom/android/browser/TabControl$SubWindowClient;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "appid"

.field private static final CLOSEONEXIT:Ljava/lang/String; = "closeonexit"

.field private static final CURRTAB:Ljava/lang/String; = "currentTab"

.field private static final CURRTITLE:Ljava/lang/String; = "currentTitle"

.field private static final CURRURL:Ljava/lang/String; = "currentUrl"

.field private static final LOGTAG:Ljava/lang/String; = "TabControl"

.field static final MAX_TABS:I = 0x8

.field private static final NUMTABS:Ljava/lang/String; = "numTabs"

.field private static final ORIGINALURL:Ljava/lang/String; = "originalUrl"

.field private static final PARENTTAB:Ljava/lang/String; = "parentTab"

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final mEmptyClient:Landroid/webkit/WebViewClient;


# instance fields
.field private final mActivity:Lcom/android/browser/BrowserActivity;

.field private final mBackgroundChromeClient:Lcom/android/browser/TabControl$BackgroundChromeClient;

.field private mCurrentTab:I

.field private final mInflateService:Landroid/view/LayoutInflater;

.field private mTabQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/TabControl$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/TabControl$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    sput-object v0, Lcom/android/browser/TabControl;->mEmptyClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 5
    .parameter "activity"

    .prologue
    const/16 v2, 0x8

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/browser/TabControl$BackgroundChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/TabControl$BackgroundChromeClient;-><init>(Lcom/android/browser/TabControl;Lcom/android/browser/TabControl$1;)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mBackgroundChromeClient:Lcom/android/browser/TabControl$BackgroundChromeClient;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 323
    iput-object p1, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 324
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/browser/TabControl;->mInflateService:Landroid/view/LayoutInflater;

    .line 327
    const-string v0, "thumbnails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/TabControl;->mThumbnailDir:Ljava/io/File;

    .line 328
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/TabControl;)Lcom/android/browser/BrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method private createNewWebView()Landroid/webkit/WebView;
    .registers 5

    .prologue
    .line 808
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 809
    .local v1, w:Landroid/webkit/WebView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 811
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 814
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 815
    .local v0, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/browser/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 816
    return-object v1
.end method

.method private freeTab(Lcom/android/browser/TabControl$Tab;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/android/browser/TabControl;->saveState(Lcom/android/browser/TabControl$Tab;)Z

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/browser/TabControl;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 688
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 689
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 690
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/browser/TabControl$Tab;->access$202(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 691
    return-void
.end method

.method private getLeastUsedTab()Lcom/android/browser/TabControl$Tab;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object v4, v6

    .line 677
    :goto_9
    return-object v4

    .line 662
    :cond_a
    const/4 v3, 0x0

    .line 663
    .local v3, t:Lcom/android/browser/TabControl$Tab;
    const/4 v0, 0x0

    .line 664
    .local v0, i:I
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 665
    .local v2, queueSize:I
    if-nez v2, :cond_17

    move-object v4, v6

    .line 666
    goto :goto_9

    .end local v0           #i:I
    .local v1, i:I
    :cond_16
    move v0, v1

    .line 669
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_17
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #t:Lcom/android/browser/TabControl$Tab;
    check-cast v3, Lcom/android/browser/TabControl$Tab;

    .line 670
    .restart local v3       #t:Lcom/android/browser/TabControl$Tab;
    if-ge v1, v2, :cond_2b

    if-eqz v3, :cond_2b

    invoke-static {v3}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 673
    :cond_2b
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v4

    if-ne v3, v4, :cond_33

    move-object v4, v6

    .line 674
    goto :goto_9

    :cond_33
    move-object v4, v3

    .line 677
    goto :goto_9
.end method

.method private populatePickerData(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebHistoryItem;)V
    .registers 4
    .parameter "t"
    .parameter "item"

    .prologue
    .line 939
    if-eqz p2, :cond_1d

    .line 940
    invoke-virtual {p2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/browser/TabControl$Tab;->access$902(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    invoke-virtual {p2}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/browser/TabControl$Tab;->access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1000(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 943
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$900(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/browser/TabControl$Tab;->access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    :cond_1d
    return-void
.end method

.method private putTabInBackground(Lcom/android/browser/TabControl$Tab;)V
    .registers 6
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 888
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v0

    .line 890
    .local v0, mainView:Landroid/webkit/WebView;
    sget-object v2, Lcom/android/browser/TabControl;->mEmptyClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 891
    iget-object v2, p0, Lcom/android/browser/TabControl;->mBackgroundChromeClient:Lcom/android/browser/TabControl$BackgroundChromeClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 892
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 897
    iget-object v2, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 898
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    .line 899
    .local v1, subView:Landroid/webkit/WebView;
    if-eqz v1, :cond_2f

    .line 901
    sget-object v2, Lcom/android/browser/TabControl;->mEmptyClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 902
    iget-object v2, p0, Lcom/android/browser/TabControl;->mBackgroundChromeClient:Lcom/android/browser/TabControl$BackgroundChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 903
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 904
    iget-object v2, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 906
    :cond_2f
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;Lcom/android/browser/TabControl$Tab;)Z
    .registers 9
    .parameter "b"
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "picture"

    .line 1017
    if-nez p1, :cond_8

    move v3, v4

    .line 1039
    :goto_7
    return v3

    .line 1022
    :cond_8
    invoke-static {p2, v3}, Lcom/android/browser/TabControl$Tab;->access$802(Lcom/android/browser/TabControl$Tab;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1023
    invoke-static {p2, v3}, Lcom/android/browser/TabControl$Tab;->access$902(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 1024
    invoke-static {p2, v3}, Lcom/android/browser/TabControl$Tab;->access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    const-string v3, "closeonexit"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/browser/TabControl$Tab;->access$1602(Lcom/android/browser/TabControl$Tab;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1026
    const-string v3, "appid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/browser/TabControl$Tab;->access$1102(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 1027
    const-string v3, "originalUrl"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/browser/TabControl$Tab;->access$1202(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 1029
    invoke-static {p2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v2

    .line 1030
    .local v2, w:Landroid/webkit/WebView;
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1031
    .local v1, list:Landroid/webkit/WebBackForwardList;
    if-nez v1, :cond_3c

    move v3, v4

    .line 1032
    goto :goto_7

    .line 1034
    :cond_3c
    const-string v3, "picture"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1035
    new-instance v0, Ljava/io/File;

    const-string v3, "picture"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v0, f:Ljava/io/File;
    invoke-virtual {v2, p1, v0}, Landroid/webkit/WebView;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    .line 1037
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1039
    .end local v0           #f:Ljava/io/File;
    :cond_55
    const/4 v3, 0x1

    goto :goto_7
.end method

.method private saveState(Lcom/android/browser/TabControl$Tab;)Z
    .registers 11
    .parameter "t"

    .prologue
    const/4 v8, 0x1

    .line 966
    if-eqz p1, :cond_b2

    .line 967
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v4

    .line 970
    .local v4, w:Landroid/webkit/WebView;
    if-nez v4, :cond_b

    move v5, v8

    .line 1010
    .end local v4           #w:Landroid/webkit/WebView;
    :goto_a
    return v5

    .line 973
    .restart local v4       #w:Landroid/webkit/WebView;
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 974
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 975
    .local v3, list:Landroid/webkit/WebBackForwardList;
    if-eqz v3, :cond_43

    .line 976
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/browser/TabControl;->mThumbnailDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_pic.save"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 978
    .local v1, f:Ljava/io/File;
    invoke-virtual {v4, v0, v1}, Landroid/webkit/WebView;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 979
    const-string v5, "picture"

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .end local v1           #f:Ljava/io/File;
    :cond_43
    if-eqz v3, :cond_af

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    move-object v2, v5

    .line 986
    .local v2, item:Landroid/webkit/WebHistoryItem;
    :goto_4a
    invoke-direct {p0, p1, v2}, Lcom/android/browser/TabControl;->populatePickerData(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebHistoryItem;)V

    .line 987
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$900(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5c

    .line 988
    const-string v5, "currentUrl"

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$900(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_5c
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1000(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6b

    .line 991
    const-string v5, "currentTitle"

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1000(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_6b
    const-string v5, "closeonexit"

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1600(Lcom/android/browser/TabControl$Tab;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 994
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1100(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_87

    .line 995
    const-string v5, "appid"

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1100(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_87
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1200(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_96

    .line 998
    const-string v5, "originalUrl"

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1200(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_96
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1700(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;

    move-result-object v5

    if-eqz v5, :cond_a9

    .line 1003
    const-string v5, "parentTab"

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1700(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    :cond_a9
    invoke-static {p1, v0}, Lcom/android/browser/TabControl$Tab;->access$802(Lcom/android/browser/TabControl$Tab;Landroid/os/Bundle;)Landroid/os/Bundle;

    move v5, v8

    .line 1008
    goto/16 :goto_a

    .line 984
    .end local v2           #item:Landroid/webkit/WebHistoryItem;
    :cond_af
    const/4 v5, 0x0

    move-object v2, v5

    goto :goto_4a

    .line 1010
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #list:Landroid/webkit/WebBackForwardList;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_b2
    const/4 v5, 0x0

    goto/16 :goto_a
.end method

.method private setCurrentTab(Lcom/android/browser/TabControl$Tab;Z)Z
    .registers 11
    .parameter "newTab"
    .parameter "force"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 832
    iget v5, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 833
    .local v0, current:Lcom/android/browser/TabControl$Tab;
    if-ne v0, p1, :cond_e

    if-nez p2, :cond_e

    move v5, v6

    .line 881
    :goto_d
    return v5

    .line 836
    :cond_e
    if-eqz v0, :cond_13

    .line 838
    invoke-direct {p0, v0}, Lcom/android/browser/TabControl;->putTabInBackground(Lcom/android/browser/TabControl$Tab;)V

    .line 841
    :cond_13
    if-nez p1, :cond_17

    move v5, v7

    .line 842
    goto :goto_d

    .line 846
    :cond_17
    iget-object v5, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 847
    .local v1, index:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_25

    .line 848
    iget-object v5, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 850
    :cond_25
    iget-object v5, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v5, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 857
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v2

    .line 858
    .local v2, mainView:Landroid/webkit/WebView;
    if-nez v2, :cond_9a

    move v3, v6

    .line 859
    .local v3, needRestore:Z
    :goto_39
    if-eqz v3, :cond_42

    .line 861
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/browser/TabControl$Tab;->access$202(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 863
    :cond_42
    iget-object v5, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 864
    iget-object v5, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 865
    iget-object v5, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 866
    iget-object v5, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 868
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1500(Lcom/android/browser/TabControl$Tab;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_80

    .line 869
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v4

    .line 870
    .local v4, subView:Landroid/webkit/WebView;
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1300(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$SubWindowClient;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 871
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1400(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$SubWindowChromeClient;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 872
    iget-object v5, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 873
    iget-object v5, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 875
    .end local v4           #subView:Landroid/webkit/WebView;
    :cond_80
    if-eqz v3, :cond_97

    .line 877
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;Lcom/android/browser/TabControl$Tab;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 878
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_97
    move v5, v6

    .line 881
    goto/16 :goto_d

    .end local v3           #needRestore:Z
    :cond_9a
    move v3, v7

    .line 858
    goto :goto_39
.end method


# virtual methods
.method clearHistory()V
    .registers 5

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 503
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_2c

    .line 504
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/TabControl$Tab;

    .line 507
    .local v2, t:Lcom/android/browser/TabControl$Tab;
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 508
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearHistory()V

    .line 510
    :cond_1c
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 511
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearHistory()V

    .line 503
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 514
    .end local v2           #t:Lcom/android/browser/TabControl$Tab;
    :cond_2c
    return-void
.end method

.method createNewTab()Lcom/android/browser/TabControl$Tab;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    return-object v0
.end method

.method createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/TabControl$Tab;
    .registers 12
    .parameter "closeOnExit"
    .parameter "appId"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 419
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 421
    .local v7, size:I
    const/16 v1, 0x8

    if-ne v1, v7, :cond_d

    move-object v1, v6

    .line 430
    :goto_c
    return-object v1

    .line 424
    :cond_d
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 426
    .local v2, w:Landroid/webkit/WebView;
    new-instance v0, Lcom/android/browser/TabControl$Tab;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/TabControl$Tab;-><init>(Lcom/android/browser/TabControl;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;Lcom/android/browser/TabControl$1;)V

    .line 427
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-direct {p0, v0}, Lcom/android/browser/TabControl;->putTabInBackground(Lcom/android/browser/TabControl$Tab;)V

    move-object v1, v0

    .line 430
    goto :goto_c
.end method

.method createSubWindow()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 698
    iget v7, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v7}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v4

    .line 699
    .local v4, t:Lcom/android/browser/TabControl$Tab;
    if-eqz v4, :cond_7e

    invoke-static {v4}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v7

    if-nez v7, :cond_7e

    .line 700
    iget-object v7, p0, Lcom/android/browser/TabControl;->mInflateService:Landroid/view/LayoutInflater;

    const v8, 0x7f030007

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 701
    .local v5, v:Landroid/view/View;
    const v7, 0x7f0c001b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 702
    .local v6, w:Landroid/webkit/WebView;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 703
    new-instance v3, Lcom/android/browser/TabControl$SubWindowClient;

    iget-object v7, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Lcom/android/browser/TabControl$SubWindowClient;-><init>(Lcom/android/browser/TabControl;Landroid/webkit/WebViewClient;)V

    .line 705
    .local v3, subClient:Lcom/android/browser/TabControl$SubWindowClient;
    new-instance v2, Lcom/android/browser/TabControl$SubWindowChromeClient;

    iget-object v7, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v7

    invoke-direct {v2, p0, v4, v7}, Lcom/android/browser/TabControl$SubWindowChromeClient;-><init>(Lcom/android/browser/TabControl;Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebChromeClient;)V

    .line 708
    .local v2, subChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;
    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 709
    invoke-virtual {v6, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 710
    iget-object v7, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 711
    iget-object v7, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 712
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 713
    .local v1, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/browser/BrowserSettings;->addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;

    move-result-object v7

    invoke-virtual {v7, v1, v9}, Lcom/android/browser/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 714
    invoke-static {v4, v6}, Lcom/android/browser/TabControl$Tab;->access$302(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 715
    invoke-static {v4, v3}, Lcom/android/browser/TabControl$Tab;->access$1302(Lcom/android/browser/TabControl$Tab;Lcom/android/browser/TabControl$SubWindowClient;)Lcom/android/browser/TabControl$SubWindowClient;

    .line 716
    invoke-static {v4, v2}, Lcom/android/browser/TabControl$Tab;->access$1402(Lcom/android/browser/TabControl$Tab;Lcom/android/browser/TabControl$SubWindowChromeClient;)Lcom/android/browser/TabControl$SubWindowChromeClient;

    .line 719
    const v7, 0x7f0c001a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/browser/TabControl$Tab;->access$1502(Lcom/android/browser/TabControl$Tab;Landroid/view/View;)Landroid/view/View;

    .line 720
    const v7, 0x7f0c001c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 722
    .local v0, cancel:Landroid/widget/ImageButton;
    new-instance v7, Lcom/android/browser/TabControl$1;

    invoke-direct {v7, p0, v2, v6}, Lcom/android/browser/TabControl$1;-><init>(Lcom/android/browser/TabControl;Lcom/android/browser/TabControl$SubWindowChromeClient;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    .end local v0           #cancel:Landroid/widget/ImageButton;
    .end local v1           #s:Lcom/android/browser/BrowserSettings;
    .end local v2           #subChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;
    .end local v3           #subClient:Lcom/android/browser/TabControl$SubWindowClient;
    .end local v5           #v:Landroid/view/View;
    .end local v6           #w:Landroid/webkit/WebView;
    :cond_7e
    return-void
.end method

.method destroy()V
    .registers 5

    .prologue
    .line 520
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 521
    .local v1, s:Lcom/android/browser/BrowserSettings;
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/TabControl$Tab;

    .line 522
    .local v2, t:Lcom/android/browser/TabControl$Tab;
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/browser/TabControl;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 524
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 525
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->destroy()V

    .line 526
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/browser/TabControl$Tab;->access$202(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    goto :goto_a

    .line 529
    .end local v2           #t:Lcom/android/browser/TabControl$Tab;
    :cond_36
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 530
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 531
    return-void
.end method

.method dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V
    .registers 5
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 912
    if-eqz p1, :cond_25

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 913
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 915
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 916
    invoke-static {p1, v2}, Lcom/android/browser/TabControl$Tab;->access$302(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 917
    invoke-static {p1, v2}, Lcom/android/browser/TabControl$Tab;->access$1502(Lcom/android/browser/TabControl$Tab;Landroid/view/View;)Landroid/view/View;

    .line 919
    :cond_25
    return-void
.end method

.method freeMemory()V
    .registers 5

    .prologue
    const-string v3, "TabControl"

    .line 635
    invoke-direct {p0}, Lcom/android/browser/TabControl;->getLeastUsedTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 636
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    if-eqz v0, :cond_16

    .line 637
    const-string v2, "TabControl"

    const-string v2, "Free a tab in the browser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, v0}, Lcom/android/browser/TabControl;->freeTab(Lcom/android/browser/TabControl$Tab;)V

    .line 640
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 652
    :goto_15
    return-void

    .line 645
    :cond_16
    const-string v2, "TabControl"

    const-string v2, "Free WebView cache"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 647
    .local v1, view:Landroid/webkit/WebView;
    if-eqz v1, :cond_27

    .line 648
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 651
    :cond_27
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_15
.end method

.method getBrowserActivity()Lcom/android/browser/BrowserActivity;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method getCurrentIndex()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    return v0
.end method

.method getCurrentSubWindow()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 369
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 370
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    if-nez v0, :cond_a

    .line 371
    const/4 v1, 0x0

    .line 373
    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9
.end method

.method getCurrentTab()Lcom/android/browser/TabControl$Tab;
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    return-object v0
.end method

.method getCurrentTopWebView()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 357
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 358
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    if-nez v0, :cond_a

    .line 359
    const/4 v1, 0x0

    .line 361
    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9

    :cond_15
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9
.end method

.method getCurrentWebView()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 344
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 345
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    if-nez v0, :cond_a

    .line 346
    const/4 v1, 0x0

    .line 348
    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9
.end method

.method getTab(I)Lcom/android/browser/TabControl$Tab;
    .registers 3
    .parameter "index"

    .prologue
    .line 382
    if-ltz p1, :cond_14

    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_14

    .line 383
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/TabControl$Tab;

    move-object v0, p0

    .line 385
    :goto_13
    return-object v0

    .restart local p0
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method getTabCount()I
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getTabFromId(Ljava/lang/String;)Lcom/android/browser/TabControl$Tab;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 750
    if-nez p1, :cond_5

    move-object v3, v4

    .line 760
    :goto_4
    return-object v3

    .line 753
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 754
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1f

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    .line 756
    .local v2, t:Lcom/android/browser/TabControl$Tab;
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$1100(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v3, v2

    .line 757
    goto :goto_4

    .line 754
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v2           #t:Lcom/android/browser/TabControl$Tab;
    :cond_1f
    move-object v3, v4

    .line 760
    goto :goto_4
.end method

.method getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/TabControl$Tab;
    .registers 6
    .parameter "view"

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 736
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_1c

    .line 737
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    .line 738
    .local v2, t:Lcom/android/browser/TabControl$Tab;
    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-eq v3, p1, :cond_17

    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-ne v3, p1, :cond_19

    :cond_17
    move-object v3, v2

    .line 742
    .end local v2           #t:Lcom/android/browser/TabControl$Tab;
    :goto_18
    return-object v3

    .line 736
    .restart local v2       #t:Lcom/android/browser/TabControl$Tab;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 742
    .end local v2           #t:Lcom/android/browser/TabControl$Tab;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method

.method getTabIndex(Lcom/android/browser/TabControl$Tab;)I
    .registers 3
    .parameter "tab"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getThumbnailDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/browser/TabControl;->mThumbnailDir:Ljava/io/File;

    return-object v0
.end method

.method populatePickerData(Lcom/android/browser/TabControl$Tab;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 926
    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_9

    .line 935
    :cond_8
    :goto_8
    return-void

    .line 931
    :cond_9
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 932
    .local v1, list:Landroid/webkit/WebBackForwardList;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    move-object v0, v2

    .line 934
    .local v0, item:Landroid/webkit/WebHistoryItem;
    :goto_18
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabControl;->populatePickerData(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebHistoryItem;)V

    goto :goto_8

    .line 932
    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    :cond_1c
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_18
.end method

.method recreateWebView(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Z
    .registers 9
    .parameter "t"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 768
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    .line 769
    .local v1, w:Landroid/webkit/WebView;
    if-eqz v1, :cond_3d

    .line 770
    if-eqz p2, :cond_27

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$1200(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 774
    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 775
    .local v0, list:Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_27

    .line 776
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 777
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 778
    const/4 v2, 0x0

    .line 800
    .end local v0           #list:Landroid/webkit/WebBackForwardList;
    :goto_26
    return v2

    .line 783
    :cond_27
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 785
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 789
    :cond_3d
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/browser/TabControl$Tab;->access$202(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 790
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    if-ne v2, p1, :cond_4d

    .line 791
    invoke-direct {p0, p1, v5}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;Z)Z

    .line 795
    :cond_4d
    invoke-static {p1, v4}, Lcom/android/browser/TabControl$Tab;->access$802(Lcom/android/browser/TabControl$Tab;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 796
    invoke-static {p1, v4}, Lcom/android/browser/TabControl$Tab;->access$902(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    invoke-static {p1, v4}, Lcom/android/browser/TabControl$Tab;->access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    invoke-static {p1, p2}, Lcom/android/browser/TabControl$Tab;->access$1202(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    move v2, v5

    .line 800
    goto :goto_26
.end method

.method removeTab(Lcom/android/browser/TabControl$Tab;)Z
    .registers 10
    .parameter "t"

    .prologue
    const-string v7, "picture"

    .line 447
    if-nez p1, :cond_6

    .line 448
    const/4 v4, 0x0

    .line 495
    :goto_5
    return v4

    .line 451
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v4

    if-ne v4, p1, :cond_f

    .line 452
    invoke-direct {p0, p1}, Lcom/android/browser/TabControl;->putTabInBackground(Lcom/android/browser/TabControl$Tab;)V

    .line 456
    :cond_f
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/browser/TabControl;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 461
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserSettings;->deleteObserver(Landroid/webkit/WebSettings;)V

    .line 464
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->destroy()V

    .line 465
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/browser/TabControl$Tab;->access$202(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 468
    :cond_32
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$500(Lcom/android/browser/TabControl$Tab;)V

    .line 471
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 475
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/TabControl$Tab;

    .line 476
    .local v3, tab:Lcom/android/browser/TabControl$Tab;
    invoke-static {v3}, Lcom/android/browser/TabControl$Tab;->access$600(Lcom/android/browser/TabControl$Tab;)Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 477
    invoke-static {v3}, Lcom/android/browser/TabControl$Tab;->access$600(Lcom/android/browser/TabControl$Tab;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabControl$Tab;

    .line 478
    .local v0, child:Lcom/android/browser/TabControl$Tab;
    invoke-static {v0, v3}, Lcom/android/browser/TabControl$Tab;->access$700(Lcom/android/browser/TabControl$Tab;Lcom/android/browser/TabControl$Tab;)V

    goto :goto_5a

    .line 486
    .end local v0           #child:Lcom/android/browser/TabControl$Tab;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tab:Lcom/android/browser/TabControl$Tab;
    :cond_6a
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 487
    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "picture"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 488
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "picture"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 493
    :cond_8e
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 495
    const/4 v4, 0x1

    goto/16 :goto_5
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .registers 15
    .parameter "inState"

    .prologue
    .line 576
    if-nez p1, :cond_9

    const/4 v1, -0x1

    move v10, v1

    .line 578
    .local v10, numTabs:I
    :goto_4
    const/4 v1, -0x1

    if-ne v10, v1, :cond_12

    .line 579
    const/4 v1, 0x0

    .line 626
    :goto_8
    return v1

    .line 576
    .end local v10           #numTabs:I
    :cond_9
    const-string v1, "numTabs"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v10, v1

    goto :goto_4

    .line 581
    .restart local v10       #numTabs:I
    :cond_12
    const-string v1, "currentTab"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 582
    .local v8, currentTab:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1a
    if-ge v9, v10, :cond_c5

    .line 583
    if-ne v9, v8, :cond_5b

    .line 584
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 587
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;Lcom/android/browser/TabControl$Tab;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 589
    const-string v1, "TabControl"

    const-string v2, "Fail in restoreState, load home page."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 582
    :cond_58
    :goto_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 596
    .end local v0           #t:Lcom/android/browser/TabControl$Tab;
    :cond_5b
    new-instance v0, Lcom/android/browser/TabControl$Tab;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/TabControl$Tab;-><init>(Lcom/android/browser/TabControl;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;Lcom/android/browser/TabControl$1;)V

    .line 597
    .restart local v0       #t:Lcom/android/browser/TabControl$Tab;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/TabControl$Tab;->access$802(Lcom/android/browser/TabControl$Tab;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 598
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 599
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currentUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/TabControl$Tab;->access$902(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currentTitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/TabControl$Tab;->access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/TabControl$Tab;->access$1102(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    invoke-static {v0}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "originalUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/TabControl$Tab;->access$1202(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 606
    :cond_ba
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 612
    .end local v0           #t:Lcom/android/browser/TabControl$Tab;
    :cond_c5
    const/4 v9, 0x0

    :goto_c6
    if-ge v9, v10, :cond_fd

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 614
    .local v7, b:Landroid/os/Bundle;
    invoke-virtual {p0, v9}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 615
    .restart local v0       #t:Lcom/android/browser/TabControl$Tab;
    if-eqz v7, :cond_fa

    if-eqz v0, :cond_fa

    .line 616
    const-string v1, "parentTab"

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 617
    .local v12, parentIndex:I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_fa

    .line 618
    invoke-virtual {p0, v12}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v11

    .line 619
    .local v11, parent:Lcom/android/browser/TabControl$Tab;
    if-eqz v11, :cond_fa

    .line 620
    invoke-virtual {v11, v0}, Lcom/android/browser/TabControl$Tab;->addChildTab(Lcom/android/browser/TabControl$Tab;)V

    .line 612
    .end local v11           #parent:Lcom/android/browser/TabControl$Tab;
    .end local v12           #parentIndex:I
    :cond_fa
    add-int/lit8 v9, v9, 0x1

    goto :goto_c6

    .line 626
    .end local v0           #t:Lcom/android/browser/TabControl$Tab;
    .end local v7           #b:Landroid/os/Bundle;
    :cond_fd
    const/4 v1, 0x1

    goto/16 :goto_8
.end method

.method saveState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "outState"

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    .line 558
    .local v2, numTabs:I
    const-string v4, "numTabs"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 560
    .local v1, index:I
    const-string v4, "currentTab"

    if-ltz v1, :cond_41

    if-ge v1, v2, :cond_41

    move v5, v1

    :goto_14
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v2, :cond_43

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v3

    .line 563
    .local v3, t:Lcom/android/browser/TabControl$Tab;
    invoke-direct {p0, v3}, Lcom/android/browser/TabControl;->saveState(Lcom/android/browser/TabControl$Tab;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 561
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 560
    .end local v0           #i:I
    .end local v3           #t:Lcom/android/browser/TabControl$Tab;
    :cond_41
    const/4 v5, 0x0

    goto :goto_14

    .line 567
    .restart local v0       #i:I
    :cond_43
    return-void
.end method

.method setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z
    .registers 3
    .parameter "newTab"

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;Z)Z

    move-result v0

    return v0
.end method

.method wipeAllPickerData()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 953
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_1d

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    .line 955
    .local v2, t:Lcom/android/browser/TabControl$Tab;
    if-eqz v2, :cond_1a

    invoke-static {v2}, Lcom/android/browser/TabControl$Tab;->access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 956
    invoke-static {v2, v4}, Lcom/android/browser/TabControl$Tab;->access$902(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 957
    invoke-static {v2, v4}, Lcom/android/browser/TabControl$Tab;->access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 953
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 960
    .end local v2           #t:Lcom/android/browser/TabControl$Tab;
    :cond_1d
    return-void
.end method
