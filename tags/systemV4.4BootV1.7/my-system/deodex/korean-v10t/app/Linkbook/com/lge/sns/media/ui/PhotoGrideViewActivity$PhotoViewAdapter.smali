.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoGrideViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity;
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

.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;


# direct methods
.method private constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Landroid/content/Context;Ljava/util/List;)V
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
    .line 380
    .local p3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    .line 381
    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->ctx:Landroid/content/Context;

    .line 382
    iput-object p3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Landroid/content/Context;Ljava/util/List;Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(ILcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "position"
    .parameter "mf"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 429
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    if-eqz v0, :cond_c

    .line 430
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 432
    :cond_c
    return-void
.end method

.method public add(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mf"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    if-eqz v0, :cond_c

    .line 423
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 425
    :cond_c
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    .line 395
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

    .line 399
    invoke-virtual {p0, p1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 401
    .local v1, f:Lcom/lge/sns/media/MediaFile;
    if-nez p2, :cond_35

    .line 402
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 407
    .local v2, image:Landroid/widget/ImageView;
    :goto_12
    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-static {v4}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->access$500(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 408
    .local v3, photo:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3a

    .line 409
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    :goto_21
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 414
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 415
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 417
    return-object v2

    .line 404
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_35
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .restart local v2       #image:Landroid/widget/ImageView;
    goto :goto_12

    .line 411
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :cond_3a
    const v4, 0x7f02005f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21
.end method

.method public remove(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mf"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    if-eqz v0, :cond_c

    .line 437
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyDataSetChanged()V

    .line 439
    :cond_c
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .registers 2
    .parameter "notifyOnChange"

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->notifyOnChange:Z

    .line 443
    return-void
.end method
