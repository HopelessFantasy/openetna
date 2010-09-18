.class Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GoogleWebContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/GoogleWebContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/util/GoogleWebContentHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/util/GoogleWebContentHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/util/GoogleWebContentHelper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/util/GoogleWebContentHelper;Lcom/google/android/util/GoogleWebContentHelper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;-><init>(Lcom/google/android/util/GoogleWebContentHelper;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/util/GoogleWebContentHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/util/GoogleWebContentHelper;->access$100(Lcom/google/android/util/GoogleWebContentHelper;Z)V

    .line 253
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/util/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/util/GoogleWebContentHelper;->access$100(Lcom/google/android/util/GoogleWebContentHelper;Z)V

    .line 259
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/util/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/util/GoogleWebContentHelper;->access$100(Lcom/google/android/util/GoogleWebContentHelper;Z)V

    .line 265
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/util/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/util/GoogleWebContentHelper;->access$100(Lcom/google/android/util/GoogleWebContentHelper;Z)V

    .line 271
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/util/GoogleWebContentHelper$MyWebViewClient;->this$0:Lcom/google/android/util/GoogleWebContentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/util/GoogleWebContentHelper;->access$100(Lcom/google/android/util/GoogleWebContentHelper;Z)V

    .line 277
    return-void
.end method
