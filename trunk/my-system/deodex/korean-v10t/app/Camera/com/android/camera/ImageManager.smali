.class public Lcom/android/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$VideoObject;,
        Lcom/android/camera/ImageManager$VideoList;,
        Lcom/android/camera/ImageManager$ThreadSafeOutputStream;,
        Lcom/android/camera/ImageManager$SingleImageList;,
        Lcom/android/camera/ImageManager$SimpleBaseImage;,
        Lcom/android/camera/ImageManager$ImageListUber;,
        Lcom/android/camera/ImageManager$DrmImageList;,
        Lcom/android/camera/ImageManager$ImageList;,
        Lcom/android/camera/ImageManager$Image;,
        Lcom/android/camera/ImageManager$IImageList;,
        Lcom/android/camera/ImageManager$IImage;,
        Lcom/android/camera/ImageManager$IGetBoolean_cancelable;,
        Lcom/android/camera/ImageManager$IGetBitmap_cancelable;,
        Lcom/android/camera/ImageManager$ICancelable;,
        Lcom/android/camera/ImageManager$IAddImage_cancelable;,
        Lcom/android/camera/ImageManager$DataLocation;,
        Lcom/android/camera/ImageManager$CanceledException;,
        Lcom/android/camera/ImageManager$BaseImageList;,
        Lcom/android/camera/ImageManager$BaseImage;,
        Lcom/android/camera/ImageManager$BaseCancelable;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field private static final IMAGE_PROJECTION:[Ljava/lang/String; = null

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final MINI_THUMB_TARGET_SIZE:I = 0x60

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMBNAIL_TARGET_SIZE:I = 0x140

.field private static final THUMB_PROJECTION:[Ljava/lang/String; = null

.field private static final VERBOSE:Z = false

.field private static final sAcceptableImageTypes:[Ljava/lang/String; = null

.field private static final sBytesPerMiniThumb:I = 0x2710

.field private static final sDefaultThumbnail:Landroid/graphics/Bitmap; = null

.field private static sInstance:Lcom/android/camera/ImageManager; = null

.field private static final sMiniThumbData:[B = null

.field private static final sMiniThumbIsNull:Ljava/lang/String; = "mini_thumb_magic isnull"

.field private static final sNoImageBitmap:Landroid/graphics/Bitmap; = null

.field private static sStorageURI:Landroid/net/Uri; = null

.field private static sThumbURI:Landroid/net/Uri; = null

.field private static sVideoStorageURI:Landroid/net/Uri; = null

.field private static sVideoThumbURI:Landroid/net/Uri; = null

.field private static final sWhereClause:Ljava/lang/String; = "(mime_type=? or mime_type=?)"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    .line 219
    const/16 v0, 0x2710

    new-array v0, v0, [B

    sput-object v0, Lcom/android/camera/ImageManager;->sMiniThumbData:[B

    .line 2164
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v4

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    .line 2167
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v5

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v6

    const-string v1, "orientation"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3475
    const/16 v0, 0x20

    const/16 v1, 0x20

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->sDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 3643
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->sNoImageBitmap:Landroid/graphics/Bitmap;

    .line 3648
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/ImageManager;->sInstance:Lcom/android/camera/ImageManager;

    .line 3652
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "image_id"

    aput-object v1, v0, v3

    const-string v1, "width"

    aput-object v1, v0, v5

    const-string v1, "height"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 3659
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    .line 3661
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    .line 3663
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->sVideoStorageURI:Landroid/net/Uri;

    .line 3665
    const-string v0, "content://media/external/video/thumbnails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->sVideoThumbURI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3483
    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->sMiniThumbData:[B

    return-object v0
.end method

.method static synthetic access$1000()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->sDefaultThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->sNoImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600([Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static checkFsWritable()Z
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 4149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4150
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4151
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 4152
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2f

    move v4, v6

    .line 4167
    :goto_2e
    return v4

    .line 4156
    :cond_2f
    new-instance v3, Ljava/io/File;

    const-string v4, ".probe"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    .local v3, f:Ljava/io/File;
    :try_start_36
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 4160
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4162
    :cond_3f
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_47

    move v4, v6

    .line 4163
    goto :goto_2e

    .line 4164
    :cond_47
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4a} :catch_4c

    .line 4165
    const/4 v4, 0x1

    goto :goto_2e

    .line 4166
    :catch_4c
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/io/IOException;
    move v4, v6

    .line 4167
    goto :goto_2e
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 9
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v6, 0x1

    .line 128
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 129
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 131
    .local v3, h:I
    div-int v2, v4, p1

    .line 132
    .local v2, candidateW:I
    div-int v1, v3, p1

    .line 133
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 135
    .local v0, candidate:I
    if-nez v0, :cond_11

    move v5, v6

    .line 151
    :goto_10
    return v5

    .line 138
    :cond_11
    if-le v0, v6, :cond_1b

    .line 139
    if-le v4, p1, :cond_1b

    div-int v5, v4, v0

    if-ge v5, p1, :cond_1b

    .line 140
    add-int/lit8 v0, v0, -0x1

    .line 143
    :cond_1b
    if-le v0, v6, :cond_25

    .line 144
    if-le v3, p1, :cond_25

    div-int v5, v3, v0

    if-ge v5, p1, :cond_25

    .line 145
    add-int/lit8 v0, v0, -0x1

    :cond_25
    move v5, v0

    .line 151
    goto :goto_10
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "filePath"

    .prologue
    .line 4231
    const/4 v0, 0x0

    .line 4232
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4234
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x2

    :try_start_7
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setMode(I)V

    .line 4235
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->captureFrame()Landroid/graphics/Bitmap;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_10} :catch_1c

    move-result-object v0

    .line 4243
    :try_start_11
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_28

    .line 4248
    :goto_14
    return-object v0

    .line 4237
    :catch_15
    move-exception v2

    .line 4243
    :try_start_16
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_14

    .line 4244
    :catch_1a
    move-exception v2

    goto :goto_14

    .line 4239
    :catch_1c
    move-exception v2

    .line 4243
    :try_start_1d
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_14

    .line 4244
    :catch_21
    move-exception v2

    goto :goto_14

    .line 4242
    :catchall_23
    move-exception v2

    .line 4243
    :try_start_24
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_2a

    .line 4246
    :goto_27
    throw v2

    .line 4244
    :catch_28
    move-exception v2

    goto :goto_14

    :catch_2a
    move-exception v3

    goto :goto_27
.end method

.method public static debug_where(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 104
    :try_start_0
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    .line 105
    :catch_6
    move-exception v6

    move-object v1, v6

    .line 106
    .local v1, ex:Ljava/lang/Exception;
    if-eqz p1, :cond_d

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_d
    const/4 v2, 0x1

    .line 110
    .local v2, first:Z
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_26

    aget-object v5, v0, v3

    .line 111
    .local v5, s:Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_1e

    .line 112
    const/4 v2, 0x0

    .line 110
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 114
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 117
    .end local v5           #s:Ljava/lang/StackTraceElement;
    :cond_26
    return-void
.end method

.method public static ensureOSXCompatibleFolder()V
    .registers 4

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 88
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_4e
    return-void
.end method

.method public static extractMiniThumb(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3735
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/ImageManager;->extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "recycle"

    .prologue
    .line 3740
    if-nez p0, :cond_4

    .line 3741
    const/4 v3, 0x0

    .line 3758
    :goto_3
    return-object v3

    .line 3745
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 3746
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 3750
    .local v2, scale:F
    :goto_16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3751
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3752
    const/4 v3, 0x0

    invoke-static {v0, p0, p1, p2, v3}, Lcom/android/camera/ImageLoader;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3755
    .local v1, miniThumbnail:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2a

    if-eq v1, p0, :cond_2a

    .line 3756
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2a
    move-object v3, v1

    .line 3758
    goto :goto_3

    .line 3748
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v2           #scale:F
    :cond_2c
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2       #scale:F
    goto :goto_16
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "path"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDataLocation()Lcom/android/camera/ImageManager$DataLocation;
    .registers 1

    .prologue
    .line 3684
    sget-object v0, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method public static getLastImageThumbPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoThumbPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .registers 1

    .prologue
    .line 4172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .registers 7
    .parameter "requireWriteAccess"

    .prologue
    const/4 v4, 0x1

    const-string v5, "ImageManager"

    .line 4177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 4178
    .local v0, state:Ljava/lang/String;
    const-string v2, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 4181
    if-eqz p0, :cond_47

    .line 4182
    invoke-static {}, Lcom/android/camera/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 4183
    .local v1, writable:Z
    const-string v2, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage writable is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 4191
    .end local v1           #writable:Z
    :goto_46
    return v2

    :cond_47
    move v2, v4

    .line 4186
    goto :goto_46

    .line 4188
    :cond_49
    if-nez p0, :cond_55

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    move v2, v4

    .line 4189
    goto :goto_46

    .line 4191
    :cond_55
    const/4 v2, 0x0

    goto :goto_46
.end method

.method private static indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "array"
    .parameter "s"

    .prologue
    .line 3687
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 3688
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    .line 3692
    :goto_d
    return v1

    .line 3687
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3692
    :cond_11
    const/4 v1, -0x1

    goto :goto_d
.end method

.method public static instance()Lcom/android/camera/ImageManager;
    .registers 1

    .prologue
    .line 3700
    sget-object v0, Lcom/android/camera/ImageManager;->sInstance:Lcom/android/camera/ImageManager;

    if-nez v0, :cond_b

    .line 3701
    new-instance v0, Lcom/android/camera/ImageManager;

    invoke-direct {v0}, Lcom/android/camera/ImageManager;-><init>()V

    sput-object v0, Lcom/android/camera/ImageManager;->sInstance:Lcom/android/camera/ImageManager;

    .line 3703
    :cond_b
    sget-object v0, Lcom/android/camera/ImageManager;->sInstance:Lcom/android/camera/ImageManager;

    return-object v0
.end method

.method public static isImage(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 2
    .parameter "image"

    .prologue
    .line 3823
    invoke-interface {p0}, Lcom/android/camera/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 3809
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 4209
    const/4 v7, 0x0

    .line 4210
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4212
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 4213
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2a

    .line 4214
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4215
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 4217
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4222
    :cond_2d
    return v7
.end method

.method public static isVideo(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 2
    .parameter "image"

    .prologue
    .line 3830
    invoke-interface {p0}, Lcom/android/camera/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageManager;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 3816
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;I)Lcom/android/camera/ImageManager$IImageList;
    .registers 12
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"

    .prologue
    .line 3986
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3987
    .local v2, cr:Landroid/content/ContentResolver;
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 3993
    .local v8, uriString:Ljava/lang/String;
    :goto_b
    const-string v0, "content://drm"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3994
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    const/4 v4, 0x2

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;II)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v7

    .line 4014
    .local v7, imageList:Lcom/android/camera/ImageManager$IImageList;
    :goto_20
    return-object v7

    .line 3987
    .end local v7           #imageList:Lcom/android/camera/ImageManager$IImageList;
    .end local v8           #uriString:Ljava/lang/String;
    :cond_21
    const-string v0, ""

    move-object v8, v0

    goto :goto_b

    .line 4000
    .restart local v8       #uriString:Ljava/lang/String;
    :cond_25
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 4002
    new-instance v7, Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v0, v2, p0}, Lcom/android/camera/ImageManager$SingleImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .restart local v7       #imageList:Lcom/android/camera/ImageManager$IImageList;
    goto :goto_20

    .line 4004
    .end local v7           #imageList:Lcom/android/camera/ImageManager$IImageList;
    :cond_4a
    const-string v0, "bucketId"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4006
    .local v6, bucketId:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    const/4 v4, 0x1

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v7

    .restart local v7       #imageList:Lcom/android/camera/ImageManager$IImageList;
    goto :goto_20
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .registers 9
    .parameter "source"

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x60

    .line 3710
    if-nez p0, :cond_7

    move-object v4, v7

    .line 3726
    :goto_6
    return-object v4

    .line 3713
    :cond_7
    invoke-static {p0, v4, v4}, Lcom/android/camera/ImageManager;->extractMiniThumb(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3715
    .local v3, miniThumbnail:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3716
    .local v2, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3717
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 3720
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3721
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_23

    move-result-object v0

    .local v0, data:[B
    move-object v4, v0

    .line 3722
    goto :goto_6

    .line 3723
    .end local v0           #data:[B
    :catch_23
    move-exception v4

    move-object v1, v4

    .line 3724
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception ex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 3726
    goto :goto_6
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 4197
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4198
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 4203
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_9
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4201
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 4202
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_13
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 4203
    goto :goto_8
.end method

.method static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 3764
    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    .line 3765
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3766
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3769
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3770
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_31

    .line 3771
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    .line 3772
    move-object p0, v7

    .line 3778
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_31
    :goto_31
    return-object p0

    .line 3774
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method public static roundOrientation(I)I
    .registers 4
    .parameter "orientationInput"

    .prologue
    .line 3782
    move v0, p0

    .line 3783
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 3784
    const/4 v0, 0x0

    .line 3786
    :cond_5
    rem-int/lit16 v0, v0, 0x168

    .line 3788
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_d

    .line 3789
    const/4 v1, 0x0

    .line 3801
    .local v1, retVal:I
    :goto_c
    return v1

    .line 3790
    .end local v1           #retVal:I
    :cond_d
    const/16 v2, 0x87

    if-ge v0, v2, :cond_14

    .line 3791
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_c

    .line 3792
    .end local v1           #retVal:I
    :cond_14
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_1b

    .line 3793
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_c

    .line 3794
    .end local v1           #retVal:I
    :cond_1b
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_22

    .line 3795
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_c

    .line 3797
    .end local v1           #retVal:I
    :cond_22
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_c
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 30
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageName"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 3843
    new-instance v18, Landroid/content/ContentValues;

    const/4 v3, 0x7

    move-object/from16 v0, v18

    move v1, v3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3844
    .local v18, values:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    const-string v3, "_display_name"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    const-string v3, "description"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    const-string v3, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3848
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    const-string v3, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3851
    new-instance v12, Ljava/io/File;

    move-object v0, v12

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3855
    .local v12, parentFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 3856
    .local v13, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3860
    .local v11, name:Ljava/lang/String;
    if-eqz p7, :cond_84

    .line 3864
    const-string v3, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3865
    const-string v3, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3868
    :cond_84
    if-eqz p9, :cond_af

    if-eqz p10, :cond_af

    .line 3869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3870
    .local v17, value:Ljava/lang/String;
    const-string v3, "_data"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    .end local v17           #value:Ljava/lang/String;
    :cond_af
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 3874
    .local v15, t3:J
    sget-object v3, Lcom/android/camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 3880
    .local v4, uri:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "_display_name"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "_data"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3886
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 3887
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3888
    .local v10, filePath:Ljava/lang/String;
    if-eqz v10, :cond_fb

    .line 3889
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 3890
    .local v14, pos:I
    if-ltz v14, :cond_fb

    .line 3891
    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3892
    const/4 v3, 0x1

    invoke-interface {v9, v3, v10}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 3893
    invoke-interface {v9}, Landroid/database/Cursor;->commitUpdates()Z

    .line 3897
    .end local v10           #filePath:Ljava/lang/String;
    .end local v14           #pos:I
    :cond_fb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3898
    return-object v4
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;II)Lcom/android/camera/ImageManager$IImageList;
    .registers 14
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"

    .prologue
    const/4 v6, 0x0

    .line 4068
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;
    .registers 15
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 4072
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImageList;
    .registers 23
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "specificImageUri"

    .prologue
    .line 4080
    if-nez p2, :cond_4

    .line 4081
    const/4 v4, 0x0

    .line 4134
    :goto_3
    return-object v4

    .line 4084
    :cond_4
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/ImageManager;->hasStorage(Z)Z

    move-result v12

    .line 4088
    .local v12, haveSdCard:Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4093
    .local v14, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ImageManager$IImageList;>;"
    if-eqz p7, :cond_59

    .line 4095
    :try_start_10
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 4096
    new-instance v4, Lcom/android/camera/ImageManager$ImageList;

    sget-object v9, Lcom/android/camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_31} :catch_57

    .line 4133
    :cond_31
    :goto_31
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/camera/ImageManager$IImageList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/android/camera/ImageManager$IImageList;

    .line 4134
    .local v13, imageList:[Lcom/android/camera/ImageManager$IImageList;
    new-instance v4, Lcom/android/camera/ImageManager$ImageListUber;

    move-object v0, v4

    move-object v1, p0

    move-object v2, v13

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ImageManager$ImageListUber;-><init>(Lcom/android/camera/ImageManager;[Lcom/android/camera/ImageManager$IImageList;I)V

    goto :goto_3

    .line 4098
    .end local v13           #imageList:[Lcom/android/camera/ImageManager$IImageList;
    :cond_48
    :try_start_48
    new-instance v4, Lcom/android/camera/ImageManager$SingleImageList;

    move-object v0, v4

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ImageManager$SingleImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_48 .. :try_end_56} :catch_57

    goto :goto_31

    .line 4099
    :catch_57
    move-exception v4

    goto :goto_31

    .line 4102
    :cond_59
    if-eqz v12, :cond_94

    sget-object v4, Lcom/android/camera/ImageManager$DataLocation;->INTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    move-object/from16 v0, p3

    move-object v1, v4

    if-eq v0, v1, :cond_94

    .line 4103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7b

    .line 4105
    :try_start_66
    new-instance v4, Lcom/android/camera/ImageManager$ImageList;

    sget-object v8, Lcom/android/camera/ImageManager;->sStorageURI:Landroid/net/Uri;

    sget-object v9, Lcom/android/camera/ImageManager;->sThumbURI:Landroid/net/Uri;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_66 .. :try_end_7b} :catch_db

    .line 4109
    :cond_7b
    :goto_7b
    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_94

    .line 4111
    :try_start_7f
    new-instance v4, Lcom/android/camera/ImageManager$VideoList;

    sget-object v8, Lcom/android/camera/ImageManager;->sVideoStorageURI:Landroid/net/Uri;

    sget-object v9, Lcom/android/camera/ImageManager;->sVideoThumbURI:Landroid/net/Uri;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/ImageManager$VideoList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7f .. :try_end_94} :catch_d9

    .line 4116
    :cond_94
    :goto_94
    sget-object v4, Lcom/android/camera/ImageManager$DataLocation;->INTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    move-object/from16 v0, p3

    move-object v1, v4

    if-eq v0, v1, :cond_a2

    sget-object v4, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    move-object/from16 v0, p3

    move-object v1, v4

    if-ne v0, v1, :cond_31

    .line 4117
    :cond_a2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_bb

    .line 4119
    :try_start_a6
    new-instance v4, Lcom/android/camera/ImageManager$ImageList;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a6 .. :try_end_bb} :catch_d7

    .line 4124
    :cond_bb
    :goto_bb
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_31

    .line 4126
    :try_start_bf
    new-instance v4, Lcom/android/camera/ImageManager$DrmImageList;

    sget-object v8, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/ImageManager$DrmImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_bf .. :try_end_d2} :catch_d4

    goto/16 :goto_31

    .line 4127
    :catch_d4
    move-exception v4

    goto/16 :goto_31

    .line 4121
    :catch_d7
    move-exception v4

    goto :goto_bb

    .line 4112
    :catch_d9
    move-exception v4

    goto :goto_94

    .line 4106
    :catch_db
    move-exception v4

    goto :goto_7b
.end method

.method public emptyImageList()Lcom/android/camera/ImageManager$IImageList;
    .registers 2

    .prologue
    .line 4018
    new-instance v0, Lcom/android/camera/ImageManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$1;-><init>(Lcom/android/camera/ImageManager;)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;
    .registers 15
    .parameter "uri"
    .parameter "ctx"
    .parameter "cr"
    .parameter "orientation"
    .parameter "source"
    .parameter "jpegData"

    .prologue
    .line 3982
    new-instance v0, Lcom/android/camera/ImageManager$1AddImageCancelable;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageManager$1AddImageCancelable;-><init>(Lcom/android/camera/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;I)V

    return-object v0
.end method
