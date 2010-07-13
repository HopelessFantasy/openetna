.class Lcom/android/browser/BrowserActivity$13$1;
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

.field final synthetic val$dialog:Z

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$13;ZLandroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3659
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$13$1;->this$1:Lcom/android/browser/BrowserActivity$13;

    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity$13$1;->val$dialog:Z

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$13$1;->val$resultMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "d"
    .parameter "which"

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13$1;->this$1:Lcom/android/browser/BrowserActivity$13;

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity$13$1;->val$dialog:Z

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$13$1;->val$resultMsg:Landroid/os/Message;

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity$13;->access$5100(Lcom/android/browser/BrowserActivity$13;ZLandroid/os/Message;)V

    .line 3666
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$13$1;->this$1:Lcom/android/browser/BrowserActivity$13;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$13;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1310(Lcom/android/browser/BrowserActivity;)I

    .line 3667
    return-void
.end method
