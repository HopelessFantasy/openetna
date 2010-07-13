.class Lcom/android/camera/ViewImage$8;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
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
    .line 582
    iput-object p1, p0, Lcom/android/camera/ViewImage$8;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v1, p0, Lcom/android/camera/ViewImage$8;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v0

    .line 585
    .local v0, photoCount:I
    :goto_b
    if-lez v0, :cond_19

    .line 586
    iget-object v1, p0, Lcom/android/camera/ViewImage$8;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/camera/ImageManager$IImageList;->removeImageAt(I)V

    .line 587
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 589
    :cond_19
    iget-object v1, p0, Lcom/android/camera/ViewImage$8;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1, v2}, Lcom/android/camera/ViewImage;->access$1202(Lcom/android/camera/ViewImage;I)I

    .line 590
    iget-object v1, p0, Lcom/android/camera/ViewImage$8;->this$0:Lcom/android/camera/ViewImage;

    invoke-virtual {v1}, Lcom/android/camera/ViewImage;->finish()V

    .line 606
    return-void
.end method
