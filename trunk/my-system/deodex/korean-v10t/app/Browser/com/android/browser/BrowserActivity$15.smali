.class Lcom/android/browser/BrowserActivity$15;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/TabControl$Tab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$fromShowSSLCertificateOnError:Z


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4154
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity$15;->val$fromShowSSLCertificateOnError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 4156
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$5302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4157
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$5402(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;

    .line 4158
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$5502(Lcom/android/browser/BrowserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4161
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity$15;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_2b

    .line 4163
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$5600(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$5700(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$15;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$5800(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->access$4800(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 4168
    :cond_2b
    return-void
.end method
