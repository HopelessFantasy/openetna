.class Lcom/android/camera/ViewImage$2;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->setupDismissOnScreenControlRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x4

    .line 274
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$400(Lcom/android/camera/ViewImage;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 275
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$500(Lcom/android/camera/ViewImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_35

    .line 276
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$600(Lcom/android/camera/ViewImage;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 277
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 279
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$500(Lcom/android/camera/ViewImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$500(Lcom/android/camera/ViewImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_35
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$700(Lcom/android/camera/ViewImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5f

    .line 284
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$800(Lcom/android/camera/ViewImage;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 285
    .restart local v0       #a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 287
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$700(Lcom/android/camera/ViewImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$700(Lcom/android/camera/ViewImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_5f
    iget-object v1, p0, Lcom/android/camera/ViewImage$2;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$900(Lcom/android/camera/ViewImage;)Landroid/widget/ZoomButtonsController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 292
    :cond_69
    return-void
.end method
