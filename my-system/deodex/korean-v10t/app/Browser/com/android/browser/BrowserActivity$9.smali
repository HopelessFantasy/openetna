.class Lcom/android/browser/BrowserActivity$9;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->animateToTabOverview(IZLcom/android/browser/BrowserActivity$AnimatingView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$newIndex:I

.field final synthetic val$remove:Z

.field final synthetic val$view:Lcom/android/browser/BrowserActivity$AnimatingView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$AnimatingView;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$9;->val$view:Lcom/android/browser/BrowserActivity$AnimatingView;

    iput p3, p0, Lcom/android/browser/BrowserActivity$9;->val$newIndex:I

    iput-boolean p4, p0, Lcom/android/browser/BrowserActivity$9;->val$remove:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1310(Lcom/android/browser/BrowserActivity;)I

    .line 2266
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->val$view:Lcom/android/browser/BrowserActivity$AnimatingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$AnimatingView;->setVisibility(I)V

    .line 2269
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$9$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserActivity$9$1;-><init>(Lcom/android/browser/BrowserActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2310
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "a"

    .prologue
    .line 2260
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2254
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ImageGrid;->requestFocus()Z

    .line 2257
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ImageGrid;->setListener(Lcom/android/browser/ImageGrid$Listener;)V

    .line 2259
    :cond_1b
    return-void
.end method
