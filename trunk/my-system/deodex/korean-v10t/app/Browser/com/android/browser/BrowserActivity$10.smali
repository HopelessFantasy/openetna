.class Lcom/android/browser/BrowserActivity$10;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->animateFromTabOverview(Lcom/android/browser/BrowserActivity$AnimatingView;ZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$view:Lcom/android/browser/BrowserActivity$AnimatingView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$AnimatingView;Landroid/view/View;Landroid/os/Message;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$10;->val$view:Lcom/android/browser/BrowserActivity$AnimatingView;

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$10;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/android/browser/BrowserActivity$10;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$10$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserActivity$10$1;-><init>(Lcom/android/browser/BrowserActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2384
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "a"

    .prologue
    .line 2357
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "a"

    .prologue
    .line 2356
    return-void
.end method
