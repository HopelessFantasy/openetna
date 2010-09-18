.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# static fields
.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJSInterfaceMap:Ljava/util/HashMap;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private final mSettings:Landroid/webkit/WebSettings;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;)V
    .registers 8
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 56
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 104
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_20

    .line 105
    new-instance v1, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v1}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    .line 107
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 109
    invoke-static {p1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 113
    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 114
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    .line 116
    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    .line 117
    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 119
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 120
    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 125
    return-void
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .registers 4
    .parameter "w"

    .prologue
    .line 641
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 642
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .registers 5
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    .line 623
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/WebView;

    move-result-object v0

    .line 624
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_11

    .line 625
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v1

    .line 627
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private decidePolicyForFormResubmission(I)V
    .registers 6
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    .line 649
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 651
    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 653
    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 654
    return-void
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 615
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 616
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private native getFormTextData()Ljava/util/HashMap;
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .registers 5
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 305
    if-nez p3, :cond_4

    if-nez p2, :cond_13

    .line 306
    :cond_4
    if-eqz p3, :cond_13

    .line 307
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 308
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 309
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 312
    :cond_13
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .registers 9
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v3, 0x0

    .line 253
    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    .line 255
    if-nez p4, :cond_7

    if-nez p3, :cond_40

    .line 256
    :cond_7
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    .line 258
    if-eqz p4, :cond_1b

    .line 260
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 263
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 264
    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 267
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 271
    :cond_1b
    if-nez p3, :cond_40

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 273
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 275
    .local v1, h:Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_40

    .line 276
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, currentUrl:Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 278
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->getFormTextData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebViewDatabase;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 283
    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v1           #h:Landroid/webkit/WebHistoryItem;
    :cond_40
    return-void
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 215
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private requestFocus()V
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    .line 635
    return-void
.end method

.method private resetLoadingStates()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 219
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 220
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v1, :cond_f

    move v1, v2

    :goto_a
    iput-boolean v1, v0, Landroid/webkit/WebViewCore;->mEndScaleZoom:Z

    .line 221
    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 222
    return-void

    .line 220
    :cond_f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private native setCacheDisabled(Z)V
.end method

.method private setProgress(I)V
    .registers 5
    .parameter "newProgress"

    .prologue
    .line 598
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    .line 599
    const/16 v0, 0x64

    if-ne p1, v0, :cond_14

    .line 600
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 605
    :cond_14
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_21

    const/16 v0, 0x4b

    if-le p1, v0, :cond_21

    .line 606
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    .line 608
    :cond_21
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 380
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private startLoadingResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BIZZ)Landroid/webkit/LoadListener;
    .registers 28
    .parameter "loaderHandle"
    .parameter "url"
    .parameter "method"
    .parameter "headers"
    .parameter "postData"
    .parameter "cacheMode"
    .parameter "isHighPriority"
    .parameter "synchronous"

    .prologue
    .line 479
    new-instance v11, Landroid/webkit/PerfChecker;

    invoke-direct {v11}, Landroid/webkit/PerfChecker;-><init>()V

    .line 481
    .local v11, checker:Landroid/webkit/PerfChecker;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result p6

    .line 485
    :cond_1a
    const-string v5, "POST"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 488
    if-nez p6, :cond_29

    .line 489
    const/16 p6, 0x2

    .line 491
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 497
    :try_start_3a
    new-instance v18, Landroid/net/WebAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 499
    .local v18, uri:Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 500
    .local v17, schemePlusHost:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v15

    .line 503
    .local v15, ret:[Ljava/lang/String;
    if-eqz v15, :cond_d0

    if-eqz p5, :cond_d0

    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d0

    const/4 v5, 0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d0

    .line 508
    new-instance v14, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 509
    .local v14, postString:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d0

    const/4 v5, 0x1

    aget-object v5, v15, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 513
    .local v16, saved:[Ljava/lang/String;
    if-eqz v16, :cond_111

    .line 516
    const/4 v5, 0x0

    aget-object v5, v16, v5

    if-eqz v5, :cond_d0

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v15, v6

    const/4 v7, 0x1

    aget-object v7, v15, v7

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d0
    .catch Landroid/net/ParseException; {:try_start_3a .. :try_end_d0} :catch_127

    .line 539
    .end local v14           #postString:Ljava/lang/String;
    .end local v15           #ret:[Ljava/lang/String;
    .end local v16           #saved:[Ljava/lang/String;
    .end local v17           #schemePlusHost:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/WebAddress;
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    move v10, v0

    .line 548
    .local v10, isMainFramePage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p1

    move/from16 v9, p8

    invoke-static/range {v5 .. v10}, Landroid/webkit/LoadListener;->getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZ)Landroid/webkit/LoadListener;

    move-result-object v12

    .line 551
    .local v12, loadListener:Landroid/webkit/LoadListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onLoadResource(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Landroid/webkit/LoadListener;->getNativeLoaderCount()I

    move-result v5

    const/16 v6, 0x12c

    if-le v5, v6, :cond_129

    .line 554
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x1040070

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 557
    invoke-virtual {v12}, Landroid/webkit/LoadListener;->notifyError()V

    .line 558
    invoke-virtual {v12}, Landroid/webkit/LoadListener;->tearDown()V

    .line 559
    const/4 v5, 0x0

    .line 588
    :goto_110
    return-object v5

    .line 526
    .end local v10           #isMainFramePage:Z
    .end local v12           #loadListener:Landroid/webkit/LoadListener;
    .restart local v14       #postString:Ljava/lang/String;
    .restart local v15       #ret:[Ljava/lang/String;
    .restart local v16       #saved:[Ljava/lang/String;
    .restart local v17       #schemePlusHost:Ljava/lang/String;
    .restart local v18       #uri:Landroid/net/WebAddress;
    :cond_111
    :try_start_111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v15, v6

    const/4 v7, 0x1

    aget-object v7, v15, v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_126
    .catch Landroid/net/ParseException; {:try_start_111 .. :try_end_126} :catch_127

    goto :goto_d0

    .line 531
    .end local v14           #postString:Ljava/lang/String;
    .end local v15           #ret:[Ljava/lang/String;
    .end local v16           #saved:[Ljava/lang/String;
    .end local v17           #schemePlusHost:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/WebAddress;
    :catch_127
    move-exception v5

    goto :goto_d0

    .line 565
    .restart local v10       #isMainFramePage:Z
    .restart local v12       #loadListener:Landroid/webkit/LoadListener;
    :cond_129
    if-eqz p8, :cond_12e

    .line 566
    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    .line 569
    :cond_12e
    new-instance v13, Landroid/webkit/FrameLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    move-object v0, v13

    move-object v1, v12

    move-object v2, v5

    move-object/from16 v3, p3

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/FrameLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;Z)V

    .line 571
    .local v13, loader:Landroid/webkit/FrameLoader;
    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setHeaders(Ljava/util/HashMap;)V

    .line 572
    move-object v0, v13

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setPostData([B)V

    .line 575
    const-string v5, "If-Modified-Since"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_161

    const-string v5, "If-None-Match"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17e

    :cond_161
    const/4 v5, 0x2

    :goto_162
    invoke-virtual {v13, v5}, Landroid/webkit/FrameLoader;->setCacheMode(I)V

    .line 579
    invoke-virtual {v13}, Landroid/webkit/FrameLoader;->executeLoad()Z

    move-result v5

    if-nez v5, :cond_170

    .line 580
    const-string v5, "startLoadingResource fail"

    invoke-virtual {v11, v5}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 582
    :cond_170
    const-string v5, "startLoadingResource succeed"

    invoke-virtual {v11, v5}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 584
    if-eqz p8, :cond_17a

    .line 585
    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    .line 588
    :cond_17a
    if-nez p8, :cond_181

    move-object v5, v12

    goto :goto_110

    :cond_17e
    move/from16 v5, p6

    .line 575
    goto :goto_162

    .line 588
    :cond_181
    const/4 v5, 0x0

    goto :goto_110
.end method

.method private transitionToCommitted(IZ)V
    .registers 4
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    .line 291
    if-eqz p2, :cond_5

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    .line 294
    :cond_5
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .registers 4
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 660
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 661
    return-void
.end method

.method private windowObjectCleared(I)V
    .registers 5
    .parameter "nativeFramePointer"

    .prologue
    .line 419
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    if-eqz v2, :cond_24

    .line 420
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 421
    .local v1, iter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    .local v0, interfaceName:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    .line 427
    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_24
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 447
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    .line 450
    :cond_b
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 451
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_18
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public native cacheDisabled()Z
.end method

.method certificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V

    .line 325
    :cond_9
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method didFirstLayout()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 237
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_c

    .line 238
    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    .line 241
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 243
    :cond_c
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v1, v0, Landroid/webkit/WebViewCore;->mEndScaleZoom:Z

    .line 244
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method

.method firstLayoutDone()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method getRawResFilename(I)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 683
    packed-switch p1, :pswitch_data_2e

    .line 693
    const-string v2, "webkit"

    const-string v3, "getRawResFilename got incompatible resource ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 698
    :goto_f
    return-object v2

    .line 685
    :pswitch_10
    const v0, 0x10c0002

    .line 696
    .local v0, resid:I
    :goto_13
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 697
    .local v1, value:Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 698
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 689
    .end local v0           #resid:I
    .end local v1           #value:Landroid/util/TypedValue;
    :pswitch_29
    const v0, 0x10c0001

    .line 690
    .restart local v0       #resid:I
    goto :goto_13

    .line 683
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_29
    .end packed-switch
.end method

.method getUserAgentString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .registers 3
    .parameter "steps"

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 197
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 199
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 341
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_5e

    .line 369
    :goto_6
    :pswitch_6
    return-void

    .line 343
    :pswitch_7
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 348
    new-instance v2, Landroid/net/WebAddress;

    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, uri:Landroid/net/WebAddress;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, schemePlusHost:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, v0}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, up:[Ljava/lang/String;
    if-eqz v1, :cond_51

    aget-object v3, v1, v5

    if-eqz v3, :cond_51

    .line 354
    aget-object v3, v1, v5

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {p0, v3, v4}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v0           #schemePlusHost:Ljava/lang/String;
    .end local v1           #up:[Ljava/lang/String;
    .end local v2           #uri:Landroid/net/WebAddress;
    :cond_51
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    goto :goto_6

    .line 362
    :pswitch_55
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_6

    .line 341
    nop

    :pswitch_data_5e
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_55
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .registers 5
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 434
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v0, v2, :cond_8

    move v0, v1

    .line 442
    :goto_7
    return v0

    .line 437
    :cond_8
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 439
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v2

    .line 440
    goto :goto_7

    :cond_15
    move v0, v1

    .line 442
    goto :goto_7
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "failUrl"

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 171
    if-nez p5, :cond_7

    .line 172
    const-string p5, ""

    .line 174
    :cond_7
    if-nez p2, :cond_b

    .line 175
    const-string p2, ""

    .line 180
    :cond_b
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 181
    :cond_13
    const-string p1, "about:blank"

    .line 183
    :cond_15
    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    .line 184
    :cond_1d
    const-string p3, "text/html"

    .line 186
    :cond_1f
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 188
    return-void
.end method

.method loadType()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 135
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 137
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    :goto_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 143
    return-void

    .line 140
    :cond_1a
    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public native nativeDestroyFrame()V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 4
    .parameter "url"
    .parameter "data"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 154
    return-void
.end method

.method public native reload(Z)V
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 775
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_7

    .line 776
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    .line 778
    :cond_7
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    .line 779
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
