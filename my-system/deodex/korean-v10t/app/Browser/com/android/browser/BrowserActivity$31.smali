.class Lcom/android/browser/BrowserActivity$31;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 4694
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$31;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$31;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 4696
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$31;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 4697
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$31;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 4698
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$31;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$6902(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4699
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$31;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$7002(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 4700
    return-void
.end method
