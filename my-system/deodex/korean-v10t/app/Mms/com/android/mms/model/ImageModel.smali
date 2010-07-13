.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/ImageModel$ScheduledJob;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageModel"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I = 0x1e0

.field private static mContentRestriction:Lcom/android/mms/model/ContentRestriction;


# instance fields
.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmConsumeTime:J

.field private mHeight:I

.field private mWidth:I

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/model/ImageModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    .registers 8
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .parameter "checkRestriction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/model/ImageModel;->mDrmConsumeTime:J

    .line 60
    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->timer:Ljava/util/Timer;

    .line 86
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 91
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 92
    invoke-virtual {p0, p4}, Lcom/android/mms/model/ImageModel;->checkContentRestriction(Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .registers 16
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "session"
    .parameter "uri"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 111
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Landroid/lge/lgdrm/DrmContentSession;)V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/model/ImageModel;->mDrmConsumeTime:J

    .line 60
    iput-object v8, p0, Lcom/android/mms/model/ImageModel;->timer:Ljava/util/Timer;

    .line 86
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .registers 14
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 97
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/model/ImageModel;->mDrmConsumeTime:J

    .line 60
    iput-object v7, p0, Lcom/android/mms/model/ImageModel;->timer:Ljava/util/Timer;

    .line 86
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 99
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/model/ImageModel;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/mms/model/ImageModel;->mDrmConsumeTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/mms/model/ImageModel;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/mms/model/ImageModel;->mDrmConsumeTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/mms/model/ImageModel;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const-string v8, "ImageModel"

    .line 321
    iget v4, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 322
    .local v4, outWidth:I
    iget v3, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 324
    .local v3, outHeight:I
    const/4 v5, 0x1

    .line 326
    .local v5, s:I
    :goto_8
    div-int v6, v4, v5

    if-gt v6, p1, :cond_10

    div-int v6, v3, v5

    if-le v6, p1, :cond_13

    .line 327
    :cond_10
    mul-int/lit8 v5, v5, 0x2

    goto :goto_8

    .line 329
    :cond_13
    const-string v6, "ImageModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " outHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, input:Ljava/io/InputStream;
    :try_start_41
    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 337
    const/4 v6, 0x0

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_4f} :catch_61

    move-result-object v6

    .line 342
    if-eqz v1, :cond_55

    .line 344
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 347
    :cond_55
    :goto_55
    return-object v6

    .line 345
    :catch_56
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/IOException;
    const-string v7, "ImageModel"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    .line 338
    .end local v0           #e:Ljava/io/IOException;
    :catch_61
    move-exception v6

    move-object v0, v6

    .line 339
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_63
    const-string v6, "ImageModel"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_7e

    .line 342
    if-eqz v1, :cond_71

    .line 344
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_73

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_71
    :goto_71
    move-object v6, v9

    .line 347
    goto :goto_55

    .line 345
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_73
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/IOException;
    const-string v6, "ImageModel"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    .line 342
    .end local v0           #e:Ljava/io/IOException;
    :catchall_7e
    move-exception v6

    if-eqz v1, :cond_84

    .line 344
    :try_start_81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    .line 347
    :cond_84
    :goto_84
    throw v6

    .line 345
    :catch_85
    move-exception v0

    .line 346
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "ImageModel"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_84
.end method

.method private decodeImageBounds()V
    .registers 5

    .prologue
    .line 156
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 157
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 158
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 160
    const-string v1, "ImageModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .registers 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v3, Lcom/android/mms/ui/UriImage;

    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 118
    .local v3, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v3}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 120
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Type of media is unknown."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_1d
    invoke-virtual {v3}, Lcom/android/mms/ui/UriImage;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/model/ImageModel;->mFileName:Ljava/lang/String;

    .line 124
    invoke-virtual {v3}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    .line 125
    invoke-virtual {v3}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 126
    invoke-virtual {v3}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 129
    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    const-string v5, "application/vnd.oma.drm.content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    const-string v5, "application/vnd.oma.drm.dcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 133
    :cond_49
    :try_start_49
    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v2

    .line 134
    .local v2, session:Landroid/lge/lgdrm/DrmContentSession;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 136
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-eqz v2, :cond_5a

    .line 137
    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 139
    :cond_5a
    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_63

    .line 140
    iget-object v4, p0, Lcom/android/mms/model/ImageModel;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/mms/model/ImageModel;->setFileName(Ljava/lang/String;)V

    .line 142
    :cond_63
    if-eqz v0, :cond_68

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->setDrmContent(Landroid/lge/lgdrm/DrmContent;)V
    :try_end_68
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_49 .. :try_end_68} :catch_99

    .line 149
    .end local v0           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v2           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_68
    :goto_68
    const-string v4, "ImageModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New ImageModel created: mSrc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mContentType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 144
    :catch_99
    move-exception v4

    move-object v1, v4

    .line 145
    .local v1, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v1}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_68
.end method


# virtual methods
.method protected checkContentRestriction(Z)V
    .registers 5
    .parameter "checkType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "ImageModel"

    const-string v1, "checkContentRestriction()"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 193
    :goto_d
    return-void

    .line 188
    :cond_e
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/ImageModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 189
    if-eqz p1, :cond_23

    .line 190
    sget-object v0, Lcom/android/mms/model/ImageModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 192
    :cond_23
    sget-object v0, Lcom/android/mms/model/ImageModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    goto :goto_d
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 204
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1b

    .line 205
    const/16 v1, 0x1e0

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 208
    :cond_1b
    return-object v0
.end method

.method public getBitmapWithDrmCheck(Z)Landroid/graphics/Bitmap;
    .registers 24
    .parameter "isThumbnail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v5, 0x0

    .line 214
    .local v5, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move v11, v0

    .line 215
    .local v11, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    move v10, v0

    .line 217
    .local v10, outHeight:I
    const-string v18, "ImageModel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mWidth :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v18, "ImageModel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mHeight :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/ImageModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v18

    if-eqz v18, :cond_11d

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/ImageModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v18

    if-eqz v18, :cond_14d

    .line 227
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/ImageModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    move-object v14, v0

    .line 229
    .local v14, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v14, :cond_61

    .line 231
    const/16 v18, 0x0

    .line 317
    .end local v14           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_60
    return-object v18

    .line 234
    .restart local v14       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_61
    const/16 v18, 0x1

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 236
    .local v6, drmContent:Landroid/lge/lgdrm/DrmContent;
    if-nez v6, :cond_6f

    .line 238
    const/16 v18, 0x0

    goto :goto_60

    .line 242
    :cond_6f
    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v17

    .line 243
    .local v17, status:I
    if-eqz v17, :cond_81

    .line 245
    const/16 v18, 0x0

    goto :goto_60

    .line 252
    :cond_81
    if-nez p1, :cond_bf

    .line 253
    invoke-virtual {v14}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v15

    .line 254
    .local v15, startTime:J
    const-wide/16 v18, 0x0

    move-object v0, v14

    move-wide v1, v15

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result v12

    .line 256
    .local v12, retVal:I
    if-lez v12, :cond_c8

    .line 259
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/model/ImageModel;->mDrmConsumeTime:J

    .line 260
    new-instance v18, Ljava/util/Timer;

    invoke-direct/range {v18 .. v18}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/ImageModel;->timer:Ljava/util/Timer;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/ImageModel;->timer:Ljava/util/Timer;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/mms/model/ImageModel$ScheduledJob;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/model/ImageModel$ScheduledJob;-><init>(Lcom/android/mms/model/ImageModel;)V

    move v0, v12

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 272
    .end local v12           #retVal:I
    .end local v15           #startTime:J
    :cond_bf
    invoke-virtual {v14}, Landroid/lge/lgdrm/DrmContentSession;->openDrmStream()Landroid/lge/lgdrm/DrmStream;

    move-result-object v8

    .line 273
    .local v8, inDrm:Landroid/lge/lgdrm/DrmStream;
    if-nez v8, :cond_dc

    .line 275
    const/16 v18, 0x0

    goto :goto_60

    .line 263
    .end local v8           #inDrm:Landroid/lge/lgdrm/DrmStream;
    .restart local v12       #retVal:I
    .restart local v15       #startTime:J
    :cond_c8
    if-gez v12, :cond_bf

    .line 266
    const-string v18, "ImageModel"

    const-string v19, "start() Consume finished!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/ImageModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 268
    const/16 v18, 0x0

    goto :goto_60

    .line 278
    .end local v12           #retVal:I
    .end local v15           #startTime:J
    .restart local v8       #inDrm:Landroid/lge/lgdrm/DrmStream;
    :cond_dc
    const/4 v13, 0x1

    .line 280
    .local v13, s:I
    :goto_dd
    div-int v18, v11, v13

    const/16 v19, 0x1e0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f1

    div-int v18, v10, v13

    const/16 v19, 0x1e0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f4

    .line 281
    :cond_f1
    mul-int/lit8 v13, v13, 0x2

    goto :goto_dd

    .line 284
    :cond_f4
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    iput v13, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    const/16 v18, 0x0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_104
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_104} :catch_113

    move-result-object v5

    .line 289
    :try_start_105
    invoke-virtual {v8}, Landroid/lge/lgdrm/DrmStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_10e
    .catch Ljava/lang/SecurityException; {:try_start_105 .. :try_end_108} :catch_113

    .line 293
    :goto_108
    if-eqz v5, :cond_14d

    move-object/from16 v18, v5

    .line 295
    goto/16 :goto_60

    .line 290
    :catch_10e
    move-exception v7

    .line 291
    .local v7, e:Ljava/io/IOException;
    :try_start_10f
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_112
    .catch Ljava/lang/SecurityException; {:try_start_10f .. :try_end_112} :catch_113

    goto :goto_108

    .line 298
    .end local v6           #drmContent:Landroid/lge/lgdrm/DrmContent;
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #inDrm:Landroid/lge/lgdrm/DrmStream;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #s:I
    .end local v14           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v17           #status:I
    :catch_113
    move-exception v18

    move-object/from16 v7, v18

    .line 300
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 301
    const/16 v18, 0x0

    goto/16 :goto_60

    .line 307
    .end local v7           #e:Ljava/lang/SecurityException;
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .line 310
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    if-nez v5, :cond_149

    .line 311
    const/16 v18, 0x1e0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 312
    new-instance v18, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    :cond_149
    move-object/from16 v18, v5

    .line 314
    goto/16 :goto_60

    .line 317
    :cond_14d
    const/16 v18, 0x0

    goto/16 :goto_60
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    return v0
.end method

.method public getRestriction()Lcom/android/mms/model/ContentRestriction;
    .registers 2

    .prologue
    .line 196
    sget-object v0, Lcom/android/mms/model/ImageModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-eqz v0, :cond_7

    .line 197
    sget-object v0, Lcom/android/mms/model/ImageModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 199
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .registers 6
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 166
    iput-boolean v3, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    .line 171
    :cond_10
    :goto_10
    invoke-virtual {p0, v2}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 172
    return-void

    .line 167
    :cond_14
    iget-short v0, p0, Lcom/android/mms/model/ImageModel;->mFill:S

    if-eq v0, v3, :cond_10

    .line 168
    iput-boolean v2, p0, Lcom/android/mms/model/ImageModel;->mVisible:Z

    goto :goto_10
.end method
