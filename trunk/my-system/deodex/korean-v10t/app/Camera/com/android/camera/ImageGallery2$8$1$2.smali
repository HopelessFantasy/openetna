.class Lcom/android/camera/ImageGallery2$8$1$2;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$8$1;->checking(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ImageGallery2$8$1;

.field final synthetic val$count:I

.field final synthetic val$maxCount:I


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$8$1;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$8$1$2;->this$2:Lcom/android/camera/ImageGallery2$8$1;

    iput p2, p0, Lcom/android/camera/ImageGallery2$8$1$2;->val$maxCount:I

    iput p3, p0, Lcom/android/camera/ImageGallery2$8$1$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$8$1$2;->this$2:Lcom/android/camera/ImageGallery2$8$1;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$8$1;->val$progressTextFormatString:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ImageGallery2$8$1$2;->val$maxCount:I

    iget v5, p0, Lcom/android/camera/ImageGallery2$8$1$2;->val$count:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$8$1$2;->this$2:Lcom/android/camera/ImageGallery2$8$1;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$8$1;->val$progressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    return-void
.end method
