.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BIT_RATE:I = 0x10

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_CODEC:I = 0xc

.field public static final METADATA_KEY_COMMENT:I = 0xe

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_COPYRIGHT:I = 0xf

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_FRAME_RATE:I = 0x11

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_IS_DRM_CRIPPLED:I = 0xb

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_RATING:I = 0xd

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_FORMAT:I = 0x12

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x14

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final MODE_CAPTURE_FRAME_ONLY:I = 0x2

.field public static final MODE_GET_METADATA_ONLY:I = 0x1


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 46
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native captureFrame()Landroid/graphics/Bitmap;
.end method

.method public native extractAlbumArt()[B
.end method

.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 223
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    return-void

    .line 223
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getMode()I
.end method

.method public native release()V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 13
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 131
    if-nez p2, :cond_8

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_16

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 137
    :cond_16
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 175
    :cond_1d
    :goto_1d
    return-void

    .line 141
    :cond_1e
    const/4 v7, 0x0

    .line 143
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_47
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_22} :catch_31

    move-result-object v8

    .line 145
    .local v8, resolver:Landroid/content/ContentResolver;
    :try_start_23
    const-string v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_28} :catch_31

    move-result-object v7

    .line 149
    if-nez v7, :cond_4e

    .line 150
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_47
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_31} :catch_31

    .line 165
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_31
    move-exception v0

    .line 168
    if-eqz v7, :cond_37

    .line 169
    :try_start_34
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_80

    .line 174
    :cond_37
    :goto_37
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_1d

    .line 146
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :catch_3f
    move-exception v0

    move-object v6, v0

    .line 147
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_47
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_47} :catch_31

    .line 167
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catchall_47
    move-exception v0

    .line 168
    if-eqz v7, :cond_4d

    .line 169
    :try_start_4a
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_82

    .line 167
    :cond_4d
    :goto_4d
    throw v0

    .line 152
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    :cond_4e
    :try_start_4e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 153
    .local v1, descriptor:Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 159
    :cond_5e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_73

    .line 160
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_47
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_6b} :catch_31

    .line 168
    :goto_6b
    if-eqz v7, :cond_1d

    .line 169
    :try_start_6d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_1d

    .line 171
    :catch_71
    move-exception v0

    goto :goto_1d

    .line 162
    :cond_73
    :try_start_73
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_47
    .catch Ljava/lang/SecurityException; {:try_start_73 .. :try_end_7f} :catch_31

    goto :goto_6b

    .line 171
    .end local v1           #descriptor:Ljava/io/FileDescriptor;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_80
    move-exception v0

    goto :goto_37

    :catch_82
    move-exception v2

    goto :goto_4d
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 116
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 117
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMode(I)V
.end method
