.class Lcom/android/browser/BrowserActivity$12$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3309
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12$2;->this$1:Lcom/android/browser/BrowserActivity$12;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$12$2;->val$cancelMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12$2;->val$cancelMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3311
    return-void
.end method
