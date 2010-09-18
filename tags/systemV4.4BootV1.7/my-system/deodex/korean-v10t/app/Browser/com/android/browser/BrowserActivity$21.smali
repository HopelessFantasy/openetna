.class Lcom/android/browser/BrowserActivity$21;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->setupBrowserToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 4323
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4324
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    if-ne v0, v3, :cond_1f

    .line 4325
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v2, v4}, Lcom/android/browser/BrowserActivity;->access$2200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    .line 4331
    :goto_1e
    return-void

    .line 4327
    :cond_1f
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$21;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    invoke-static {v0, v3, v1, v2}, Lcom/android/browser/BrowserActivity;->access$6100(Lcom/android/browser/BrowserActivity;ZIZ)V

    goto :goto_1e
.end method
