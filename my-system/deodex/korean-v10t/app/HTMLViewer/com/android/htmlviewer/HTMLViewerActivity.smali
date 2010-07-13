.class public Lcom/android/htmlviewer/HTMLViewerActivity;
.super Landroid/app/Activity;
.source "HTMLViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "HTMLViewerActivity"

.field static final MAXFILESIZE:I = 0x1fa0


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "?"

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 74
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/htmlviewer/HTMLViewerActivity;->requestWindowFeature(I)Z

    .line 76
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    .line 77
    iget-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v4}, Lcom/android/htmlviewer/HTMLViewerActivity;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;

    invoke-direct {v5, p0}, Lcom/android/htmlviewer/HTMLViewerActivity$WebChrome;-><init>(Lcom/android/htmlviewer/HTMLViewerActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 83
    iget-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 84
    .local v2, s:Landroid/webkit/WebSettings;
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 85
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 86
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 87
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 88
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 92
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    if-eqz p1, :cond_46

    .line 96
    iget-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 115
    :cond_45
    :goto_45
    return-void

    .line 99
    :cond_46
    invoke-virtual {p0}, Lcom/android/htmlviewer/HTMLViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 101
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 102
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.htmlfileprovider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, contentUri:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_45

    .line 110
    .end local v0           #contentUri:Ljava/lang/String;
    :cond_8b
    iget-object v4, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_45
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 121
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 131
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 137
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 138
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 139
    return-void
.end method
