.class Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GalleryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryPickerAdapter"
.end annotation


# instance fields
.field mDone:Z

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/GalleryPicker$Item;",
            ">;"
        }
    .end annotation
.end field

.field mWorkerThread:Lcom/android/camera/CameraThread;

.field final synthetic this$0:Lcom/android/camera/GalleryPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker;)V
    .registers 3
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mDone:Z

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->baseTitleForPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->getIncludeMediaTypes(I)I

    move-result v0

    return v0
.end method

.method private addBucket(ILjava/lang/String;I)V
    .registers 7
    .parameter "itemType"
    .parameter "bucketId"
    .parameter "labelId"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-static {p1}, Lcom/android/camera/GalleryPicker$Item;->convertItemTypeToIncludedMediaType(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/android/camera/GalleryPicker;->access$800(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 485
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/GalleryPicker$Item;

    iget-object v2, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-virtual {v2}, Lcom/android/camera/GalleryPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/android/camera/GalleryPicker$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_20
    return-void
.end method

.method private addBucket(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 11
    .parameter "itemType"
    .parameter "bucketId"
    .parameter "cameraItemType"
    .parameter "cameraBucketId"
    .parameter "labelId"

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-static {p1}, Lcom/android/camera/GalleryPicker$Item;->convertItemTypeToIncludedMediaType(I)I

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/android/camera/GalleryPicker;->access$700(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)I

    move-result v1

    .line 464
    .local v1, itemCount:I
    if-nez v1, :cond_d

    .line 476
    :cond_c
    :goto_c
    return-void

    .line 467
    :cond_d
    const/4 v0, 0x0

    .line 468
    .local v0, cameraItemCount:I
    if-eqz p4, :cond_1a

    .line 469
    iget-object v2, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-static {p3}, Lcom/android/camera/GalleryPicker$Item;->convertItemTypeToIncludedMediaType(I)I

    move-result v3

    invoke-static {v2, v3, p4}, Lcom/android/camera/GalleryPicker;->access$700(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)I

    move-result v0

    .line 472
    :cond_1a
    if-eq v0, v1, :cond_c

    .line 475
    iget-object v2, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/GalleryPicker$Item;

    iget-object v4, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-virtual {v4}, Lcom/android/camera/GalleryPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Lcom/android/camera/GalleryPicker$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private baseTitleForPosition(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/GalleryPicker$Item;

    iget-object v0, p0, Lcom/android/camera/GalleryPicker$Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getIncludeMediaTypes(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/GalleryPicker$Item;

    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker$Item;->getIncludeMediaTypes()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 498
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 512
    if-nez p2, :cond_6d

    .line 513
    iget-object v6, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/android/camera/GalleryPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 514
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 519
    .end local v5           #vi:Landroid/view/LayoutInflater;
    .local v4, v:Landroid/view/View;
    :goto_14
    const v6, 0x7f0b0010

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 521
    .local v3, titleView:Landroid/widget/TextView;
    const v6, 0x7f0b002f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GalleryPickerItem;

    .line 522
    .local v1, iv:Lcom/android/camera/GalleryPickerItem;
    iget-object v6, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/GalleryPicker$Item;

    invoke-virtual {v6}, Lcom/android/camera/GalleryPicker$Item;->getOverlay()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/camera/GalleryPickerItem;->setOverlay(I)V

    .line 523
    iget-object v6, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/GalleryPicker$Item;

    iget-object v0, v6, Lcom/android/camera/GalleryPicker$Item;->mThumb:Lcom/android/camera/GalleryPicker$ItemInfo;

    .line 524
    .local v0, info:Lcom/android/camera/GalleryPicker$ItemInfo;
    if-eqz v0, :cond_6f

    .line 525
    iget-object v6, v0, Lcom/android/camera/GalleryPicker$ItemInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Lcom/android/camera/GalleryPickerItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->baseTitleForPosition(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/camera/GalleryPicker$ItemInfo;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    .end local v2           #title:Ljava/lang/String;
    :goto_6c
    return-object v4

    .line 516
    .end local v0           #info:Lcom/android/camera/GalleryPicker$ItemInfo;
    .end local v1           #iv:Lcom/android/camera/GalleryPickerItem;
    .end local v3           #titleView:Landroid/widget/TextView;
    .end local v4           #v:Landroid/view/View;
    :cond_6d
    move-object v4, p2

    .restart local v4       #v:Landroid/view/View;
    goto :goto_14

    .line 529
    .restart local v0       #info:Lcom/android/camera/GalleryPicker$ItemInfo;
    .restart local v1       #iv:Lcom/android/camera/GalleryPickerItem;
    .restart local v3       #titleView:Landroid/widget/TextView;
    :cond_6f
    const v6, 0x106000d

    invoke-virtual {v1, v6}, Lcom/android/camera/GalleryPickerItem;->setImageResource(I)V

    .line 530
    invoke-direct {p0, p1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->baseTitleForPosition(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c
.end method

.method public init(Z)V
    .registers 14
    .parameter "assumeMounted"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 341
    if-eqz p1, :cond_55

    .line 342
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v2, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-virtual {v2}, Lcom/android/camera/GalleryPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;II)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v10

    .line 352
    .local v10, images:Lcom/android/camera/ImageManager$IImageList;
    :goto_1b
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2a

    .line 354
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mDone:Z

    .line 357
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_5e

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    .line 363
    :cond_2a
    sget-object v6, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    .line 364
    .local v6, cameraItem:Ljava/lang/String;
    invoke-interface {v10}, Lcom/android/camera/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v8

    .line 365
    .local v8, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 366
    .local v4, cameraBucketId:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local p1
    .local v9, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 367
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 368
    .local v11, key:Ljava/lang/String;
    if-eqz v11, :cond_39

    .line 371
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 372
    move-object v4, v11

    goto :goto_39

    .line 349
    .end local v4           #cameraBucketId:Ljava/lang/String;
    .end local v6           #cameraItem:Ljava/lang/String;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #images:Lcom/android/camera/ImageManager$IImageList;
    .end local v11           #key:Ljava/lang/String;
    .restart local p1
    :cond_55
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ImageManager;->emptyImageList()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v10

    .restart local v10       #images:Lcom/android/camera/ImageManager$IImageList;
    goto :goto_1b

    .line 359
    :catchall_5e
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    throw v0

    .line 374
    .end local p1
    .restart local v4       #cameraBucketId:Ljava/lang/String;
    .restart local v6       #cameraItem:Ljava/lang/String;
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #key:Ljava/lang/String;
    :cond_63
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/GalleryPicker$Item;

    const/4 v2, 0x4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v2, v11, p1}, Lcom/android/camera/GalleryPicker$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 377
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #key:Ljava/lang/String;
    :cond_75
    invoke-interface {v10}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 378
    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->notifyDataSetInvalidated()V

    .line 381
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v5, 0x7f09

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->addBucket(ILjava/lang/String;ILjava/lang/String;I)V

    .line 383
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v5, 0x7f090001

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->addBucket(ILjava/lang/String;ILjava/lang/String;I)V

    .line 386
    if-eqz v4, :cond_9e

    .line 387
    const/4 v0, 0x2

    const v1, 0x7f090006

    invoke-direct {p0, v0, v4, v1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->addBucket(ILjava/lang/String;I)V

    .line 389
    const/4 v0, 0x3

    const v1, 0x7f090007

    invoke-direct {p0, v0, v4, v1}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->addBucket(ILjava/lang/String;I)V

    .line 393
    :cond_9e
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mDone:Z

    .line 396
    new-instance v0, Lcom/android/camera/CameraThread;

    new-instance v1, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;-><init>(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;)V

    invoke-direct {v0, v1}, Lcom/android/camera/CameraThread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    .line 450
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->start()V

    .line 451
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->toBackground()V

    .line 452
    return-void
.end method
