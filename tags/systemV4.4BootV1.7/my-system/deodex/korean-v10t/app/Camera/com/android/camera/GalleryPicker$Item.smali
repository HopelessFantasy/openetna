.class Lcom/android/camera/GalleryPicker$Item;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GalleryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/GalleryPicker$Item;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ALL_IMAGES:I = 0x0

.field public static final TYPE_ALL_VIDEOS:I = 0x1

.field public static final TYPE_CAMERA_IMAGES:I = 0x2

.field public static final TYPE_CAMERA_VIDEOS:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_NORMAL_FOLDERS:I = 0x4


# instance fields
.field public mFirstImageUri:Landroid/net/Uri;

.field public mId:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mThumb:Lcom/android/camera/GalleryPicker$ItemInfo;

.field public mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lcom/android/camera/GalleryPicker$Item;->mType:I

    .line 266
    iput-object p2, p0, Lcom/android/camera/GalleryPicker$Item;->mId:Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/android/camera/GalleryPicker$Item;->mName:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public static convertItemTypeToIncludedMediaType(I)I
    .registers 2
    .parameter "itemType"

    .prologue
    .line 290
    packed-switch p0, :pswitch_data_a

    .line 299
    const/4 v0, 0x5

    :goto_4
    return v0

    .line 293
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 296
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_4

    .line 290
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/GalleryPicker$Item;)I
    .registers 5
    .parameter "other"

    .prologue
    .line 320
    iget v1, p0, Lcom/android/camera/GalleryPicker$Item;->mType:I

    iget v2, p1, Lcom/android/camera/GalleryPicker$Item;->mType:I

    sub-int v0, v1, v2

    .line 321
    .local v0, x:I
    if-nez v0, :cond_1a

    .line 322
    iget-object v1, p0, Lcom/android/camera/GalleryPicker$Item;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/GalleryPicker$Item;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 323
    if-nez v0, :cond_1a

    .line 324
    iget-object v1, p0, Lcom/android/camera/GalleryPicker$Item;->mId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/GalleryPicker$Item;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 327
    :cond_1a
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 249
    check-cast p1, Lcom/android/camera/GalleryPicker$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/GalleryPicker$Item;->compareTo(Lcom/android/camera/GalleryPicker$Item;)I

    move-result v0

    return v0
.end method

.method public getIncludeMediaTypes()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Lcom/android/camera/GalleryPicker$Item;->mType:I

    invoke-static {v0}, Lcom/android/camera/GalleryPicker$Item;->convertItemTypeToIncludedMediaType(I)I

    move-result v0

    return v0
.end method

.method public getOverlay()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Lcom/android/camera/GalleryPicker$Item;->mType:I

    packed-switch v0, :pswitch_data_14

    .line 314
    const/4 v0, -0x1

    :goto_6
    return v0

    .line 307
    :pswitch_7
    const v0, 0x7f020010

    goto :goto_6

    .line 310
    :pswitch_b
    const v0, 0x7f020012

    goto :goto_6

    .line 312
    :pswitch_f
    const v0, 0x7f020011

    goto :goto_6

    .line 304
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public launch(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    .line 275
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 276
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker$Item;->needsBucketId()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 277
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "bucketId"

    iget-object v4, p0, Lcom/android/camera/GalleryPicker$Item;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 279
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "windowTitle"

    iget-object v3, p0, Lcom/android/camera/GalleryPicker$Item;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "mediaTypes"

    invoke-virtual {p0}, Lcom/android/camera/GalleryPicker$Item;->getIncludeMediaTypes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public needsBucketId()Z
    .registers 3

    .prologue
    .line 271
    iget v0, p0, Lcom/android/camera/GalleryPicker$Item;->mType:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
