.class Lcom/android/browser/BrowserActivity$30;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4702
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$30;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$30;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 4703
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$30;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 4704
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$30;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 4705
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$30;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$6902(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4706
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$30;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$7002(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 4707
    return-void
.end method
