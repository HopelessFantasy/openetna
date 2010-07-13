.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoGalleryViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoViewAdapter"
.end annotation


# instance fields
.field final ctx:Landroid/content/Context;

.field notifyOnChange:Z

.field final photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;


# direct methods
.method private constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    .line 453
    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->ctx:Landroid/content/Context;

    .line 454
    iput-object p3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Landroid/content/Context;Ljava/util/List;Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(ILcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "position"
    .parameter "mf"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 501
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    if-eqz v0, :cond_c

    .line 502
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 504
    :cond_c
    return-void
.end method

.method public add(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mf"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    if-eqz v0, :cond_c

    .line 495
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 497
    :cond_c
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    .line 467
    .local v0, f:Lcom/lge/sns/media/MediaFile;
    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x52

    const/4 v5, 0x1

    .line 471
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 473
    .local v1, f:Lcom/lge/sns/media/MediaFile;
    if-nez p2, :cond_32

    .line 474
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 479
    .local v2, image:Landroid/widget/ImageView;
    :goto_12
    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 481
    .local v3, photo:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_37

    .line 482
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 486
    :goto_21
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 487
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 488
    new-instance v4, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    return-object v2

    .line 476
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_32
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .restart local v2       #image:Landroid/widget/ImageView;
    goto :goto_12

    .line 484
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :cond_37
    const v4, 0x7f02005f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21
.end method

.method public remove(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mf"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    if-eqz v0, :cond_c

    .line 509
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 511
    :cond_c
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .registers 2
    .parameter "notifyOnChange"

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    .line 515
    return-void
.end method
