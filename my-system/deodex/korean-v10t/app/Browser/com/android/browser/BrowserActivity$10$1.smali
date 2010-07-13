.class Lcom/android/browser/BrowserActivity$10$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$10;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$10;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$10;)V
    .registers 2
    .parameter

    .prologue
    .line 2360
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2361
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1400(Lcom/android/browser/BrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$10;->val$view:Lcom/android/browser/BrowserActivity$AnimatingView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2365
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$10;->val$v:Landroid/view/View;

    if-nez v2, :cond_56

    const/4 v2, 0x1

    :goto_1a
    invoke-static {v1, v2}, Lcom/android/browser/BrowserActivity;->access$1700(Lcom/android/browser/BrowserActivity;Z)V

    .line 2366
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 2368
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    const v2, 0x7f0c0073

    invoke-static {v1, v2}, Lcom/android/browser/BrowserActivity;->access$1602(Lcom/android/browser/BrowserActivity;I)I

    .line 2370
    invoke-virtual {v0}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 2373
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->val$msg:Landroid/os/Message;

    if-eqz v1, :cond_47

    .line 2374
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->val$msg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2379
    :cond_47
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1310(Lcom/android/browser/BrowserActivity;)I

    .line 2381
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10$1;->this$1:Lcom/android/browser/BrowserActivity$10;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1800(Lcom/android/browser/BrowserActivity;)V

    .line 2382
    return-void

    .line 2365
    .end local v0           #t:Lcom/android/browser/TabControl$Tab;
    :cond_56
    const/4 v2, 0x0

    goto :goto_1a
.end method
