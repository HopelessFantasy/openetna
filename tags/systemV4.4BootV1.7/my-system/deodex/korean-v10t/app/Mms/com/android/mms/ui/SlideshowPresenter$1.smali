.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .registers 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    .line 86
    .local v0, layout:Lcom/android/mms/model/LayoutModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 88
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 91
    const-string v1, "SlideshowPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratio_w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v3, v3, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ratio_h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v3, v3, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
