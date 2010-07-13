.class Lcom/android/camera/ImageManager$SingleImageList;
.super Lcom/android/camera/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$SingleImageList$UriImage;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSingleImage:Lcom/android/camera/ImageManager$IImage;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 10
    .parameter
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 3099
    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    .line 3100
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 3101
    iput-object p2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 3102
    iput-object p3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 3103
    new-instance v0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;-><init>(Lcom/android/camera/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3104
    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private makeInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 5
    .parameter "uri"

    .prologue
    .line 3211
    const/4 v1, 0x0

    .line 3213
    .local v1, input:Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9

    move-result-object v1

    move-object v2, v1

    .line 3216
    :goto_8
    return-object v2

    .line 3215
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 3216
    .local v0, ex:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_8
.end method


# virtual methods
.method public deactivate()V
    .registers 1

    .prologue
    .line 3112
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3115
    const/4 v0, 0x1

    return v0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .registers 3
    .parameter "i"

    .prologue
    .line 3123
    if-nez p1, :cond_5

    .line 3124
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3126
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 3
    .parameter "uri"

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3131
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3133
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getImageWithId(J)Lcom/android/camera/ImageManager$IImage;
    .registers 4
    .parameter "id"

    .prologue
    .line 3137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected indexData()I
    .registers 2

    .prologue
    .line 3167
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .registers 2

    .prologue
    .line 3147
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .registers 2

    .prologue
    .line 3157
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .registers 2

    .prologue
    .line 3202
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .registers 2

    .prologue
    .line 3162
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLatitude()I
    .registers 2

    .prologue
    .line 3172
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .registers 2

    .prologue
    .line 3177
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .registers 2

    .prologue
    .line 3152
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMiniThumbId()I
    .registers 2

    .prologue
    .line 3182
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .registers 2

    .prologue
    .line 3142
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .registers 2

    .prologue
    .line 3187
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .registers 2

    .prologue
    .line 3192
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .registers 2

    .prologue
    .line 3207
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .registers 2

    .prologue
    .line 3197
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3119
    const/4 v0, 0x0

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    const/4 v5, 0x0

    .line 3222
    const/4 v0, 0x0

    .line 3225
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_a

    .line 3226
    :try_start_4
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v2

    .line 3227
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_a
    const/4 v3, 0x1

    iput v3, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3229
    const/4 v3, -0x1

    if-eq p1, v3, :cond_24

    .line 3230
    const/4 v3, 0x1

    iput-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3231
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3233
    invoke-static {p4, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3234
    const/4 v3, 0x0

    iput-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3236
    :cond_24
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3240
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_30} :catch_32

    move-object v3, v0

    .line 3245
    :goto_31
    return-object v3

    .line 3241
    :catch_32
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/io/IOException;
    move-object v3, v5

    .line 3243
    goto :goto_31
.end method
