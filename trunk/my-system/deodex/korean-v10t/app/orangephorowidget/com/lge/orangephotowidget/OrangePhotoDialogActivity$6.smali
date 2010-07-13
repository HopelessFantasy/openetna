.class Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;
.super Ljava/lang/Object;
.source "OrangePhotoDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$500(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 553
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    iget-object v0, v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    iget-object v1, v1, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$502(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Z)Z

    .line 556
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$600(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 566
    :goto_27
    return-void

    .line 561
    :cond_28
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    iget-object v0, v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    iget-object v1, v1, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$502(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Z)Z

    .line 563
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$600(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_27
.end method
