.class Lcom/android/camera/ImageGallery2$GridViewSpecial$2;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V
    .registers 2
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const-string v14, " "

    .line 1818
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateLocationToast:Landroid/widget/Toast;

    if-eqz v9, :cond_16

    .line 1819
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateLocationToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    .line 1820
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateLocationToast:Landroid/widget/Toast;

    .line 1823
    :cond_16
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v0

    .line 1824
    .local v0, count:I
    if-nez v0, :cond_27

    .line 1848
    :goto_26
    return-void

    .line 1827
    :cond_27
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateRange:[I

    invoke-static {v9, v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$1200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;[I)V

    .line 1829
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateRange:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-interface {v9, v10}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v3

    .line 1830
    .local v3, firstImage:Lcom/android/camera/ImageManager$IImage;
    sub-int v9, v0, v12

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateRange:[I

    aget v10, v10, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1831
    .local v5, lastOffset:I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v4

    .line 1833
    .local v4, lastImage:Lcom/android/camera/ImageManager$IImage;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1834
    .local v2, dateStart:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1836
    .local v1, dateEnd:Ljava/util/GregorianCalendar;
    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1837
    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1839
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v2, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$5500(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1840
    .local v7, text1:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$5500(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1842
    .local v8, text2:Ljava/lang/String;
    move-object v6, v7

    .line 1843
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e3

    .line 1844
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1846
    :cond_e3
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$5600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateLocationToast:Landroid/widget/Toast;

    .line 1847
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateLocationToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26
.end method
