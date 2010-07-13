.class Lcom/android/camera/ViewImage$10$1;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage$10;->imageLoaded(IILandroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ViewImage$10;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isThumb:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage$10;Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iput-object p2, p0, Lcom/android/camera/ViewImage$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/android/camera/ViewImage$10$1;->val$isThumb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1283
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3300(Lcom/android/camera/ViewImage;)I

    move-result v6

    if-ne v6, v9, :cond_16

    .line 1284
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_15

    .line 1285
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1339
    :cond_15
    :goto_15
    return-void

    .line 1291
    :cond_16
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3400(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v7, v7, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v7}, Lcom/android/camera/ViewImage;->access$3500(Lcom/android/camera/ViewImage;)I

    move-result v7

    aget-object v5, v6, v7

    .line 1293
    .local v5, oldView:Lcom/android/camera/ImageViewTouchBase;
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3504(Lcom/android/camera/ViewImage;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v7, v7, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v7}, Lcom/android/camera/ViewImage;->access$3400(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_45

    .line 1294
    invoke-virtual {v5}, Lcom/android/camera/ViewImage$ImageViewTouch;->clear()V

    .line 1295
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6, v10}, Lcom/android/camera/ViewImage;->access$3502(Lcom/android/camera/ViewImage;I)I

    .line 1298
    :cond_45
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3400(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v7, v7, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v7}, Lcom/android/camera/ViewImage;->access$3500(Lcom/android/camera/ViewImage;)I

    move-result v7

    aget-object v4, v6, v7

    .line 1299
    .local v4, newView:Lcom/android/camera/ImageViewTouchBase;
    invoke-virtual {v4, v10}, Lcom/android/camera/ViewImage$ImageViewTouch;->setVisibility(I)V

    .line 1300
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v7, p0, Lcom/android/camera/ViewImage$10$1;->val$isThumb:Z

    iget-boolean v8, p0, Lcom/android/camera/ViewImage$10$1;->val$isThumb:Z

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/camera/ViewImage$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 1301
    invoke-virtual {v4}, Lcom/android/camera/ImageViewTouchBase;->bringToFront()V

    .line 1303
    const/4 v2, 0x0

    .line 1305
    .local v2, animation:I
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3600(Lcom/android/camera/ViewImage;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_119

    .line 1306
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3800(Lcom/android/camera/ViewImage;)Ljava/util/Random;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v7, v7, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v7}, Lcom/android/camera/ViewImage;->access$3700(Lcom/android/camera/ViewImage;)[Landroid/view/animation/Animation;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1307
    .local v3, n:I
    move v2, v3

    .line 1312
    .end local v3           #n:I
    :goto_88
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3700(Lcom/android/camera/ViewImage;)[Landroid/view/animation/Animation;

    move-result-object v6

    aget-object v0, v6, v2

    .line 1313
    .local v0, aIn:Landroid/view/animation/Animation;
    invoke-virtual {v4, v0}, Lcom/android/camera/ImageViewTouchBase;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1314
    invoke-virtual {v4, v10}, Lcom/android/camera/ViewImage$ImageViewTouch;->setVisibility(I)V

    .line 1315
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 1317
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3900(Lcom/android/camera/ViewImage;)[Landroid/view/animation/Animation;

    move-result-object v6

    aget-object v1, v6, v2

    .line 1318
    .local v1, aOut:Landroid/view/animation/Animation;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/ViewImage$ImageViewTouch;->setVisibility(I)V

    .line 1319
    invoke-virtual {v5, v1}, Lcom/android/camera/ImageViewTouchBase;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1320
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 1321
    invoke-virtual {v5}, Lcom/android/camera/ViewImage$ImageViewTouch;->clear()V

    .line 1323
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget v7, v7, Lcom/android/camera/ViewImage$10;->val$requestedPos:I

    invoke-static {v6, v7}, Lcom/android/camera/ViewImage;->access$1202(Lcom/android/camera/ViewImage;I)I

    .line 1325
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v7, v7, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v7}, Lcom/android/camera/ViewImage;->access$1800(Lcom/android/camera/ViewImage;)I

    move-result v7

    if-ne v6, v7, :cond_f0

    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-boolean v6, v6, Lcom/android/camera/ViewImage$10;->val$firstCall:Z

    if-nez v6, :cond_f0

    .line 1326
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$4000(Lcom/android/camera/ViewImage;)Z

    move-result v6

    if-eqz v6, :cond_123

    .line 1327
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$4100(Lcom/android/camera/ViewImage;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 1328
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$4200(Lcom/android/camera/ViewImage;)V

    .line 1338
    :cond_f0
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    iget-object v7, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v7, v7, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v7}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v8, v8, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v8}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v8

    rem-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v8, v8, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v8}, Lcom/android/camera/ViewImage;->access$4300(Lcom/android/camera/ViewImage;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/camera/ViewImage;->access$1900(Lcom/android/camera/ViewImage;IJZ)V

    goto/16 :goto_15

    .line 1309
    .end local v0           #aIn:Landroid/view/animation/Animation;
    .end local v1           #aOut:Landroid/view/animation/Animation;
    :cond_119
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6}, Lcom/android/camera/ViewImage;->access$3600(Lcom/android/camera/ViewImage;)I

    move-result v2

    goto/16 :goto_88

    .line 1331
    .restart local v0       #aIn:Landroid/view/animation/Animation;
    .restart local v1       #aOut:Landroid/view/animation/Animation;
    :cond_123
    iget-object v6, p0, Lcom/android/camera/ViewImage$10$1;->this$1:Lcom/android/camera/ViewImage$10;

    iget-object v6, v6, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v6, v9}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    goto/16 :goto_15
.end method
