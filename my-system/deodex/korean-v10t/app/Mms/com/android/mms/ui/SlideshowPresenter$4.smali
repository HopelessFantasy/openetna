.class Lcom/android/mms/ui/SlideshowPresenter$4;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;

.field final synthetic val$dataChanged:Z

.field final synthetic val$model:Lcom/android/mms/model/Model;

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$model:Lcom/android/mms/model/Model;

    iput-boolean p4, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$dataChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$model:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/RegionMediaModel;

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$dataChanged:Z

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    :try_end_d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_0 .. :try_end_d} :catch_e

    .line 345
    :goto_d
    return-void

    .line 339
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 340
    .local v0, e:Landroid/lge/lgdrm/DrmException;
    const-string v1, "SlideshowPresenter"

    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, v2, Lcom/android/mms/ui/SlideshowPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method
