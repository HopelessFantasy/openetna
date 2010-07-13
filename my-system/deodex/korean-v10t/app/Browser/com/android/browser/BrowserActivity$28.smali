.class Lcom/android/browser/BrowserActivity$28;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4540
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$28;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$28;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$28;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$6702(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4548
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$28;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$28;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$28;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$6600(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;Z)V

    .line 4550
    return-void
.end method
