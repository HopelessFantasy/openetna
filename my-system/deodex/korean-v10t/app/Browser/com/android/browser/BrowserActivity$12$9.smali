.class Lcom/android/browser/BrowserActivity$12$9;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$12;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$12;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$12;Landroid/webkit/SslErrorHandler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3513
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12$9;->this$1:Lcom/android/browser/BrowserActivity$12;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$12$9;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3514
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12$9;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 3515
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12$9;->this$1:Lcom/android/browser/BrowserActivity$12;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 3516
    return-void
.end method
