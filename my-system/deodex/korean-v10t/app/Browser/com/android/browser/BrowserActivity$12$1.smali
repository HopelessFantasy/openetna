.class Lcom/android/browser/BrowserActivity$12$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$12;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$12;

.field final synthetic val$cancelMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$12;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3313
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12$1;->this$1:Lcom/android/browser/BrowserActivity$12;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$12$1;->val$cancelMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12$1;->val$cancelMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3315
    return-void
.end method
