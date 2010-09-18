.class public Lcom/lge/sns/media/MediaSdcard;
.super Ljava/lang/Object;
.source "MediaSdcard.java"


# static fields
.field private static final SAVE_FILE_TYPE:Ljava/lang/String; = ".jpg"


# instance fields
.field private SDCARD_SIZE_RETURN_ERROR:I

.field private UNDERBAR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sns/media/MediaSdcard;->SDCARD_SIZE_RETURN_ERROR:I

    .line 48
    const-string v0, "_"

    iput-object v0, p0, Lcom/lge/sns/media/MediaSdcard;->UNDERBAR:Ljava/lang/String;

    return-void
.end method

.method private findSameFileName(Ljava/lang/String;)Z
    .registers 7
    .parameter "fileName"

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, fileList:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 88
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 89
    const/4 v2, 0x1

    .line 93
    :goto_2c
    return v2

    .line 87
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 93
    :cond_30
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method private makeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "fileName"

    .prologue
    .line 104
    move-object v1, p1

    .line 105
    .local v1, tempString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, count:I
    if-eqz p1, :cond_2a

    .line 109
    :goto_4
    invoke-direct {p0, p1}, Lcom/lge/sns/media/MediaSdcard;->findSameFileName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/media/MediaSdcard;->UNDERBAR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_28
    move-object v2, p1

    .line 120
    :goto_29
    return-object v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method private sdCardEnoughSpace()J
    .registers 9

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lge/sns/media/MediaSdcard;->sdCardExist()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 67
    .local v5, sdCardRootDir:Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, currentSdCardStat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 69
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 71
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 73
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #currentSdCardStat:Landroid/os/StatFs;
    .end local v5           #sdCardRootDir:Ljava/io/File;
    :goto_1f
    return-wide v6

    :cond_20
    iget v6, p0, Lcom/lge/sns/media/MediaSdcard;->SDCARD_SIZE_RETURN_ERROR:I

    int-to-long v6, v6

    goto :goto_1f
.end method

.method private sdCardExist()Z
    .registers 3

    .prologue
    .line 57
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addToMediaDB(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/media/MediaFile;J)V
    .registers 16
    .parameter "ctx"
    .parameter "filePath"
    .parameter "mf"
    .parameter "fileSize"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 192
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 194
    .local v2, currentTime:Ljava/util/Date;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {p3}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v5, "description"

    invoke-virtual {p3}, Lcom/lge/sns/media/MediaFile;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v5, "_display_name"

    invoke-virtual {p3}, Lcom/lge/sns/media/MediaFile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v5, "datetaken"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v5, "date_added"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string v5, "date_modified"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v5, "_data"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v5, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 207
    .local v1, contentResolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 208
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 210
    .local v3, newUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public writeToDiskImage(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;
    .registers 16
    .parameter "ctx"
    .parameter "orgPic"
    .parameter "fileName"

    .prologue
    .line 133
    const-wide/16 v1, 0x0

    .line 135
    .local v1, avaiableSdCardSize:J
    invoke-direct {p0}, Lcom/lge/sns/media/MediaSdcard;->sdCardEnoughSpace()J

    move-result-wide v1

    iget v10, p0, Lcom/lge/sns/media/MediaSdcard;->SDCARD_SIZE_RETURN_ERROR:I

    int-to-long v10, v10

    cmp-long v10, v1, v10

    if-nez v10, :cond_1a

    .line 136
    const v10, 0x7f0500a9

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 137
    const/4 v10, 0x0

    .line 179
    :goto_19
    return-object v10

    .line 138
    :cond_1a
    if-nez p2, :cond_29

    .line 139
    const v10, 0x7f0500ab

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 140
    const/4 v10, 0x0

    goto :goto_19

    .line 143
    :cond_29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, filePath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 145
    .local v8, saveFileStream:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 147
    .local v0, abSolutePath:Ljava/lang/String;
    array-length v10, p2

    int-to-long v10, v10

    cmp-long v10, v1, v10

    if-gez v10, :cond_46

    .line 149
    const v10, 0x7f0500aa

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 150
    const/4 v10, 0x0

    goto :goto_19

    .line 153
    :cond_46
    const/4 v10, 0x0

    array-length v11, p2

    invoke-static {p2, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 154
    .local v7, photo:Landroid/graphics/Bitmap;
    invoke-direct {p0, p3}, Lcom/lge/sns/media/MediaSdcard;->makeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, modifiedFileName:Ljava/lang/String;
    :try_start_50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_72} :catch_b7

    .line 162
    .end local v8           #saveFileStream:Ljava/io/FileOutputStream;
    .local v9, saveFileStream:Ljava/io/FileOutputStream;
    :try_start_72
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v7, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_95

    .line 164
    :try_start_79
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_9a

    move-object v8, v9

    .line 170
    .end local v9           #saveFileStream:Ljava/io/FileOutputStream;
    .restart local v8       #saveFileStream:Ljava/io/FileOutputStream;
    :goto_7d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v5, forSize:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_a9

    .line 173
    const v10, 0x7f0500a8

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 174
    const/4 v10, 0x0

    goto :goto_19

    .line 164
    .end local v5           #forSize:Ljava/io/File;
    .end local v8           #saveFileStream:Ljava/io/FileOutputStream;
    .restart local v9       #saveFileStream:Ljava/io/FileOutputStream;
    :catchall_95
    move-exception v10

    :try_start_96
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    throw v10
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9a} :catch_9a

    .line 166
    :catch_9a
    move-exception v10

    move-object v3, v10

    move-object v8, v9

    .line 167
    .end local v9           #saveFileStream:Ljava/io/FileOutputStream;
    .local v3, e:Ljava/io/IOException;
    .restart local v8       #saveFileStream:Ljava/io/FileOutputStream;
    :goto_9d
    const v10, 0x7f0500a8

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_7d

    .line 177
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #forSize:Ljava/io/File;
    :cond_a9
    const v10, 0x7f0500ac

    const/4 v11, 0x1

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move-object v10, v5

    .line 179
    goto/16 :goto_19

    .line 166
    .end local v5           #forSize:Ljava/io/File;
    :catch_b7
    move-exception v10

    move-object v3, v10

    goto :goto_9d
.end method
