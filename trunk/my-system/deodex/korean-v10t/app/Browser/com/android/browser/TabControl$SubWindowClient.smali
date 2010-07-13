.class Lcom/android/browser/TabControl$SubWindowClient;
.super Landroid/webkit/WebViewClient;
.source "TabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubWindowClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebViewClient;

.field final synthetic this$0:Lcom/android/browser/TabControl;


# direct methods
.method constructor <init>(Lcom/android/browser/TabControl;Landroid/webkit/WebViewClient;)V
    .registers 3
    .parameter
    .parameter "client"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/browser/TabControl$SubWindowClient;->this$0:Lcom/android/browser/TabControl;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    .line 76
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 100
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 90
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/browser/TabControl$SubWindowClient;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
