.class Lcom/android/browser/BrowserActivity$13$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$13;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$13;

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$13;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3673
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$13$2;->this$1:Lcom/android/browser/BrowserActivity$13;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$13$2;->val$resultMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "d"
    .parameter "which"

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13$2;->val$resultMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3677
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13$2;->this$1:Lcom/android/browser/BrowserActivity$13;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1310(Lcom/android/browser/BrowserActivity;)I

    .line 3678
    return-void
.end method
