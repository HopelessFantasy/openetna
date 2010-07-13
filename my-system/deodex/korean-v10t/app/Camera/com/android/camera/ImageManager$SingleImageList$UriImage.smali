.class Lcom/android/camera/ImageManager$SingleImageList$UriImage;
.super Lcom/android/camera/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UriImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$SingleImageList;)V
    .registers 2
    .parameter

    .prologue
    .line 2902
    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SimpleBaseImage;-><init>()V

    .line 2903
    return-void
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3061
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 3062
    .local v0, input:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_8

    .line 3076
    :goto_7
    return-object v3

    .line 3065
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 3066
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3067
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3068
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 3072
    if-eqz v0, :cond_21

    .line 3073
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2a

    :cond_21
    :goto_21
    move-object v3, v1

    .line 3076
    goto :goto_7

    .line 3071
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_23
    move-exception v3

    .line 3072
    if-eqz v0, :cond_29

    .line 3073
    :try_start_26
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2c

    .line 3076
    :cond_29
    :goto_29
    throw v3

    .line 3075
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_2a
    move-exception v3

    goto :goto_21

    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_2c
    move-exception v4

    goto :goto_29
.end method


# virtual methods
.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "targetWidthHeight"

    .prologue
    const/4 v7, 0x0

    .line 2944
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 2945
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2946
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2947
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2949
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1e

    .line 2950
    invoke-static {v2, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2952
    :cond_1e
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2953
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2954
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2956
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2960
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move-object v4, v0

    .line 2964
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_35
    return-object v4

    .line 2962
    :catch_36
    move-exception v4

    move-object v1, v4

    .line 2963
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception decoding bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 2964
    goto :goto_35
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .registers 6
    .parameter "targetWidthOrHeight"

    .prologue
    const/4 v3, 0x0

    .line 3004
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3005
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_9

    move-object v2, v3

    .line 3010
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_8
    return-object v2

    .line 3008
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_9
    new-instance v2, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/android/camera/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_8

    .line 3009
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_f
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    move-object v2, v3

    .line 3010
    goto :goto_8
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 3021
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3044
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3039
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 3

    .prologue
    .line 3088
    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3089
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method getInputStream()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 2911
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2912
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2915
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2920
    .end local v1           #path:Ljava/lang/String;
    :goto_2b
    return-object v2

    .line 2917
    :cond_2c
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3b} :catch_3d

    move-result-object v2

    goto :goto_2b

    .line 2919
    :catch_3d
    move-exception v2

    move-object v0, v2

    .line 2920
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3082
    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3083
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    const-string v1, ""

    goto :goto_8
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .registers 6

    .prologue
    .line 2926
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2927
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2930
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2935
    .end local v1           #path:Ljava/lang/String;
    :goto_27
    return-object v2

    .line 2932
    :cond_28
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v2

    goto :goto_27

    .line 2934
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 2935
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 3

    .prologue
    .line 3094
    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 3095
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public imageId()J
    .registers 3

    .prologue
    .line 3025
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 3029
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 3048
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3049
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2f

    .line 3050
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3051
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 3052
    .local v7, scale:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3053
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, scaledBitmap:Landroid/graphics/Bitmap;
    move-object v1, v8

    .line 3056
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    .end local v8           #scaledBitmap:Landroid/graphics/Bitmap;
    :goto_2e
    return-object v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method
