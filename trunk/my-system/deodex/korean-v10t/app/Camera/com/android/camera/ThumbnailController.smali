.class public Lcom/android/camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFrame:Landroid/graphics/drawable/Drawable;

.field private mShouldAnimateButton:Z

.field private mShouldAnimateThumb:Z

.field private mShowButtonAnimation:Landroid/view/animation/Animation;

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/ContentResolver;)V
    .registers 7
    .parameter "button"
    .parameter "frame"
    .parameter "contentResolver"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->mShowButtonAnimation:Landroid/view/animation/Animation;

    .line 77
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 78
    iput-object p2, p0, Lcom/android/camera/ThumbnailController;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object p3, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mShowButtonAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 158
    if-eqz p1, :cond_5

    .line 160
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 165
    :cond_5
    :goto_5
    return-void

    .line 161
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .registers 15
    .parameter "original"

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x2

    const/16 v2, 0xc

    const/4 v12, 0x0

    const/4 v1, 0x1

    .line 186
    if-nez p1, :cond_10

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 225
    :cond_f
    :goto_f
    return-void

    .line 194
    :cond_10
    const/16 v7, 0xc

    .line 195
    .local v7, PADDING_WIDTH:I
    const/16 v6, 0xc

    .line 196
    .local v6, PADDING_HEIGHT:I
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 197
    .local v8, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v10, v3, v5

    .line 198
    .local v10, miniThumbWidth:I
    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v9, v3, v5

    .line 199
    .local v9, miniThumbHeight:I
    invoke-static {p1, v10, v9, v12}, Lcom/android/camera/ImageManager;->extractMiniThumb(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 202
    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    .line 203
    .local v11, vignetteLayers:[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mFrame:Landroid/graphics/drawable/Drawable;

    aput-object v3, v11, v12

    .line 204
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_64

    .line 205
    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v1

    .line 207
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    aput-object v3, v11, v1

    .line 208
    iput-boolean v12, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    .line 217
    :goto_49
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, mVignette:Landroid/graphics/drawable/LayerDrawable;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 218
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 220
    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    .line 223
    iput-boolean v1, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateButton:Z

    goto :goto_f

    .line 210
    .end local v0           #mVignette:Landroid/graphics/drawable/LayerDrawable;
    :cond_64
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    aput-object v4, v3, v12

    .line 211
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v1

    .line 212
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 213
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    aput-object v3, v11, v1

    .line 214
    iput-boolean v1, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_49
.end method


# virtual methods
.method public getThumb()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_7

    move v1, v4

    .line 234
    :goto_6
    return v1

    .line 230
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    .line 234
    const/4 v1, 0x1

    goto :goto_6

    .line 231
    :catch_16
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    move v1, v4

    .line 232
    goto :goto_6
.end method

.method public loadData(Ljava/lang/String;)Z
    .registers 12
    .parameter "filePath"

    .prologue
    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, f:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 138
    .local v0, b:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 140
    .local v2, d:Ljava/io/DataInputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_34

    .line 141
    .end local v5           #f:Ljava/io/FileInputStream;
    .local v6, f:Ljava/io/FileInputStream;
    :try_start_8
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_58

    .line 142
    .end local v0           #b:Ljava/io/BufferedInputStream;
    .local v1, b:Ljava/io/BufferedInputStream;
    :try_start_f
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_5c

    .line 143
    .end local v2           #d:Ljava/io/DataInputStream;
    .local v3, d:Ljava/io/DataInputStream;
    :try_start_14
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 144
    .local v8, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 145
    .local v7, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v8, v7}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 146
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_53
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_26} :catch_61

    .line 150
    invoke-direct {p0, v6}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 151
    invoke-direct {p0, v1}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 152
    invoke-direct {p0, v3}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 154
    const/4 v9, 0x1

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #uri:Landroid/net/Uri;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :goto_33
    return v9

    .line 147
    :catch_34
    move-exception v9

    move-object v4, v9

    .line 148
    .local v4, e:Ljava/io/IOException;
    :goto_36
    const/4 v9, 0x0

    .line 150
    invoke-direct {p0, v5}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 152
    invoke-direct {p0, v2}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_33

    .line 150
    .end local v4           #e:Ljava/io/IOException;
    :catchall_41
    move-exception v9

    :goto_42
    invoke-direct {p0, v5}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 152
    invoke-direct {p0, v2}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .line 150
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_4c
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_42

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_4f
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_42

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_53
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_42

    .line 147
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_58
    move-exception v9

    move-object v4, v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_36

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_5c
    move-exception v9

    move-object v4, v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_36

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_61
    move-exception v9

    move-object v4, v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_36
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "uri"
    .parameter "original"

    .prologue
    .line 85
    if-eqz p1, :cond_4

    if-nez p2, :cond_b

    .line 86
    :cond_4
    if-eqz p2, :cond_9

    .line 87
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_9
    const/4 p1, 0x0

    .line 90
    const/4 p2, 0x0

    .line 92
    :cond_b
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 93
    invoke-direct {p0, p2}, Lcom/android/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method public storeData(Ljava/lang/String;)Z
    .registers 13
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 109
    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_7

    move v7, v10

    .line 130
    :goto_6
    return v7

    .line 113
    :cond_7
    const/4 v5, 0x0

    .line 114
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 115
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 117
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_a
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_48
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_3b

    .line 118
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_53
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_5f

    .line 119
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_16
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_56
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_63

    .line 120
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_1b
    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 121
    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_68

    .line 126
    invoke-direct {p0, v6}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-direct {p0, v3}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    const/4 v7, 0x1

    goto :goto_6

    .line 123
    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .end local v3           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_3b
    move-exception v7

    move-object v4, v7

    .line 126
    .local v4, e:Ljava/io/IOException;
    :goto_3d
    invoke-direct {p0, v5}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-direct {p0, v2}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    move v7, v10

    goto :goto_6

    .line 126
    .end local v4           #e:Ljava/io/IOException;
    :catchall_48
    move-exception v7

    :goto_49
    invoke-direct {p0, v5}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-direct {p0, v2}, Lcom/android/camera/ThumbnailController;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 126
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_53
    move-exception v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_49

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_56
    move-exception v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_49

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_5a
    move-exception v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_49

    .line 123
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_5f
    move-exception v7

    move-object v4, v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3d

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_63
    move-exception v7

    move-object v4, v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3d

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_68
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3d
.end method

.method public updateDisplayIfNeeded()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    .line 169
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_b
    :goto_b
    return-void

    .line 173
    :cond_c
    iget-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateButton:Z

    if-eqz v0, :cond_1e

    .line 174
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ThumbnailController;->mShowButtonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iput-boolean v2, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateButton:Z

    .line 179
    :cond_1e
    iget-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 181
    iput-boolean v2, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_b
.end method
