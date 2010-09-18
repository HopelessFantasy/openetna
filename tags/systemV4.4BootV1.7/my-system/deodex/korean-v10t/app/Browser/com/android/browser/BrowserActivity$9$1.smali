.class Lcom/android/browser/BrowserActivity$9$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity$9;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserActivity$9;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$9;)V
    .registers 2
    .parameter

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2272
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1400(Lcom/android/browser/BrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity$9;->val$view:Lcom/android/browser/BrowserActivity$AnimatingView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2273
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 2275
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget v3, v3, Lcom/android/browser/BrowserActivity$9;->val$newIndex:I

    invoke-virtual {v2, v3}, Lcom/android/browser/ImageGrid;->setCurrentIndex(I)V

    .line 2277
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$1500(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserActivity$TabListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/ImageGrid;->setListener(Lcom/android/browser/ImageGrid$Listener;)V

    .line 2280
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ImageGrid;->isLive()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2281
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    const v3, 0x7f0c008e

    invoke-static {v2, v3}, Lcom/android/browser/BrowserActivity;->access$1602(Lcom/android/browser/BrowserActivity;I)I

    .line 2282
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ImageGrid;->requestFocus()Z

    .line 2286
    :cond_5e
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-boolean v2, v2, Lcom/android/browser/BrowserActivity$9;->val$remove:Z

    if-eqz v2, :cond_c8

    .line 2290
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 2294
    .local v0, currentTab:Lcom/android/browser/TabControl$Tab;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget v3, v3, Lcom/android/browser/BrowserActivity$9;->val$newIndex:I

    invoke-virtual {v2, v3}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 2296
    .local v1, tab:Lcom/android/browser/TabControl$Tab;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 2298
    if-eq v0, v1, :cond_98

    .line 2299
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 2301
    :cond_98
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    if-eqz v2, :cond_c8

    .line 2302
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget v3, v3, Lcom/android/browser/BrowserActivity$9;->val$newIndex:I

    invoke-virtual {v2, v3}, Lcom/android/browser/ImageGrid;->remove(I)V

    .line 2304
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v2, v2, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$9$1;->this$1:Lcom/android/browser/BrowserActivity$9;

    iget-object v3, v3, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/browser/ImageGrid;->setCurrentIndex(I)V

    .line 2308
    .end local v0           #currentTab:Lcom/android/browser/TabControl$Tab;
    .end local v1           #tab:Lcom/android/browser/TabControl$Tab;
    :cond_c8
    return-void
.end method
