.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DrmWrapper"


# instance fields
.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field private mDecryptedData:[B

.field private final mDrmObject:Landroid/drm/mobile1/DrmRawContent;

.field private mRight:Landroid/drm/mobile1/DrmRights;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    .registers 7
    .parameter "drmContentType"
    .parameter "uri"
    .parameter "drmData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_7

    if-nez p3, :cond_f

    .line 70
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Content-Type or data may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_f
    iput-object p2, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 75
    iput-object p3, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    .line 77
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .local v0, drmDataStream:Ljava/io/ByteArrayInputStream;
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled()Z

    move-result v1

    if-nez v1, :cond_33

    .line 82
    const-string v1, "DrmWrapper"

    const-string v2, "DRM rights not installed yet."

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/android/mms/drm/DrmWrapper;->installRights([B)V

    .line 85
    :cond_33
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedData()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "DrmWrapper"

    .line 111
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-nez v6, :cond_35

    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v6, :cond_35

    .line 113
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    iget-object v7, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    invoke-virtual {v6, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v3

    .line 115
    .local v3, decryptedDataStream:Ljava/io/InputStream;
    :try_start_13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x100

    new-array v1, v6, [B

    .line 118
    .local v1, buffer:[B
    :goto_1c
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_2c

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_1c

    .line 123
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v5           #len:I
    :catchall_27
    move-exception v6

    .line 124
    :try_start_28
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_53

    .line 127
    :goto_2b
    throw v6

    .line 121
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #len:I
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_27

    .line 124
    :try_start_32
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_48

    .line 131
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v3           #decryptedDataStream:Ljava/io/InputStream;
    .end local v5           #len:I
    :cond_35
    :goto_35
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v6, :cond_5e

    .line 132
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v6, v6

    new-array v2, v6, [B

    .line 133
    .local v2, decryptedData:[B
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v7, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v7, v7

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v2

    .line 136
    .end local v2           #decryptedData:[B
    :goto_47
    return-object v6

    .line 125
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #decryptedDataStream:Ljava/io/InputStream;
    .restart local v5       #len:I
    :catch_48
    move-exception v4

    .line 126
    .local v4, e:Ljava/io/IOException;
    const-string v6, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v4}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    .line 125
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #len:I
    :catch_53
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/io/IOException;
    const-string v7, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v4}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 136
    .end local v3           #decryptedDataStream:Ljava/io/InputStream;
    .end local v4           #e:Ljava/io/IOException;
    :cond_5e
    const/4 v6, 0x0

    goto :goto_47
.end method

.method public getOriginalData()[B
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRightsAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    if-nez v0, :cond_6

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public installRights([B)V
    .registers 6
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_a

    .line 164
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string v2, "Right data may not be null."

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_a
    const-string v1, "DrmWrapper"

    const-string v2, "Installing DRM rights."

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 170
    .local v0, rightDataStream:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v1

    array-length v2, p1

    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v1, v0, v2, v3}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    .line 173
    return-void
.end method

.method public isAllowedToForward()Z
    .registers 3

    .prologue
    .line 198
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isRightsInstalled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v0, :cond_7

    move v0, v2

    .line 188
    :goto_6
    return v0

    .line 187
    :cond_7
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    .line 188
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method
