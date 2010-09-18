.class public Lcom/google/android/util/GoogleWebContentHelper;
.super Ljava/lang/Object;
.source "GoogleWebContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/GoogleWebContentHelper$1;,
        Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/view/ViewGroup;

.field private mPrettyUrl:Ljava/lang/String;

.field private mProgressBar:Landroid/view/View;

.field private mReceivedResponse:Z

.field private mSecureUrl:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mUnsuccessfulMessage:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/util/GoogleWebContentHelper;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/util/GoogleWebContentHelper;->handleWebViewCompletion(Z)V

    return-void
.end method

.method private declared-synchronized ensureViews()V
    .registers 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 175
    invoke-direct {p0}, Lcom/google/android/util/GoogleWebContentHelper;->initializeViews()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 177
    :cond_8
    monitor-exit p0

    return-void

    .line 174
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "url"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 188
    const-string v3, ""

    .line 204
    :goto_a
    return-object v3

    .line 196
    :cond_b
    const v3, 0x10402e2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, localeReplacement:Ljava/lang/String;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_22

    .line 199
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 202
    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 203
    .local v0, locale:Ljava/util/Locale;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, tmp:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method private declared-synchronized handleWebViewCompletion(Z)V
    .registers 6
    .parameter "success"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mReceivedResponse:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-eqz v2, :cond_7

    .line 246
    :goto_5
    monitor-exit p0

    return-void

    .line 233
    :cond_7
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mReceivedResponse:Z

    .line 237
    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    if-eqz p1, :cond_32

    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    move-object v0, v2

    .line 241
    .local v0, goneView:Landroid/view/View;
    :goto_1c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    if-eqz p1, :cond_36

    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    move-object v1, v2

    .line 245
    .local v1, visibleView:Landroid/view/View;
    :goto_2a
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2f

    goto :goto_5

    .line 230
    .end local v0           #goneView:Landroid/view/View;
    .end local v1           #visibleView:Landroid/view/View;
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 240
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    move-object v0, v2

    goto :goto_1c

    .line 244
    .restart local v0       #goneView:Landroid/view/View;
    :cond_36
    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_2f

    move-object v1, v2

    goto :goto_2a
.end method

.method private initializeViews()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 209
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 212
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090027

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mLayout:Landroid/view/ViewGroup;

    .line 215
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x1020070

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    .line 216
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;

    invoke-direct {v4, p0, v5}, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;-><init>(Lcom/google/android/util/GoogleWebContentHelper;Lcom/google/android/util/GoogleWebContentHelper$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 217
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 218
    .local v2, settings:Landroid/webkit/WebSettings;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 220
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x1020177

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    .line 221
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mProgressBar:Landroid/view/View;

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, message:Landroid/widget/TextView;
    const v3, 0x10402c3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x102003f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    .line 225
    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/util/GoogleWebContentHelper;->mUnsuccessfulMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/util/GoogleWebContentHelper;->ensureViews()V

    .line 170
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public handleKey(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 154
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public loadDataWithFailUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/GoogleWebContentHelper;
    .registers 12
    .parameter "base"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "failUrl"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/util/GoogleWebContentHelper;->ensureViews()V

    .line 141
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object p0
.end method

.method public loadUrl()Lcom/google/android/util/GoogleWebContentHelper;
    .registers 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/util/GoogleWebContentHelper;->ensureViews()V

    .line 130
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mSecureUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 131
    return-object p0
.end method

.method public setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/util/GoogleWebContentHelper;
    .registers 6
    .parameter "message"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 119
    .local v0, locale:Ljava/util/Locale;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/util/GoogleWebContentHelper;->mPrettyUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mUnsuccessfulMessage:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/GoogleWebContentHelper;
    .registers 4
    .parameter "secureUrl"
    .parameter "prettyUrl"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/util/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mSecureUrl:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/google/android/util/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper;->mPrettyUrl:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setUrlsFromGservices(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/GoogleWebContentHelper;
    .registers 6
    .parameter "secureSetting"
    .parameter "prettySetting"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/util/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mSecureUrl:Ljava/lang/String;

    .line 87
    invoke-static {v0, p2}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/util/GoogleWebContentHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/util/GoogleWebContentHelper;->fillUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/util/GoogleWebContentHelper;->mPrettyUrl:Ljava/lang/String;

    .line 89
    return-object p0
.end method
