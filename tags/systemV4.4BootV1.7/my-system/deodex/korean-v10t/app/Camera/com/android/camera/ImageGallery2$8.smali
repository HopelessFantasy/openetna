.class Lcom/android/camera/ImageGallery2$8;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2;->checkThumbnails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageGallery2;

.field final synthetic val$startTime:J

.field final synthetic val$t1:J


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2;JJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iput-wide p2, p0, Lcom/android/camera/ImageGallery2$8;->val$startTime:J

    iput-wide p4, p0, Lcom/android/camera/ImageGallery2$8;->val$t1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 564
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v9}, Lcom/android/camera/ImageGallery2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 565
    .local v6, resources:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    const v10, 0x7f0b000f

    invoke-virtual {v9, v10}, Lcom/android/camera/ImageGallery2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 566
    .local v4, progressTextView:Landroid/widget/TextView;
    const v9, 0x7f0900a1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, progressTextFormatString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    const-string v10, "power"

    invoke-virtual {v9, v10}, Lcom/android/camera/ImageGallery2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 569
    .local v2, pm:Landroid/os/PowerManager;
    const/16 v9, 0xa

    const-string v10, "ImageGallery2.checkThumbnails"

    invoke-virtual {v2, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 572
    .local v1, mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 573
    new-instance v5, Lcom/android/camera/ImageGallery2$8$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/camera/ImageGallery2$8$1;-><init>(Lcom/android/camera/ImageGallery2$8;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 607
    .local v5, r:Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/camera/ImageGallery2;->access$1500(Lcom/android/camera/ImageGallery2;Z)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    .line 608
    .local v0, imageList:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v9

    invoke-interface {v0, v5, v9}, Lcom/android/camera/ImageManager$IImageList;->checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V

    .line 609
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 610
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    .line 611
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v9, v9, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/camera/ImageGallery2$8$2;

    invoke-direct {v10, p0}, Lcom/android/camera/ImageGallery2$8$2;-><init>(Lcom/android/camera/ImageGallery2$8;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 619
    .local v7, t2:J
    return-void
.end method
