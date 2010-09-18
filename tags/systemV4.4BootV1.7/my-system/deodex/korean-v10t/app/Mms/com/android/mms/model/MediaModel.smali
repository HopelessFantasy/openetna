.class public abstract Lcom/android/mms/model/MediaModel;
.super Lcom/android/mms/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/MediaModel$MediaAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaModel"


# instance fields
.field protected mBegin:I

.field protected mContent:Landroid/lge/lgdrm/DrmContent;

.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

.field protected mDuration:I

.field protected mFileName:Ljava/lang/String;

.field protected mFill:S

.field private final mMediaActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .parameter "context"
    .parameter "tag"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 82
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/lge/lgdrm/DrmContentSession;)V
    .registers 8
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 138
    iput-object p6, p0, Lcom/android/mms/model/MediaModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 139
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 88
    if-nez p5, :cond_d

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_d
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 97
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/lge/lgdrm/DrmContentSession;)V
    .registers 9
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "session"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 116
    if-nez p5, :cond_d

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_d
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 125
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 126
    iput-object p6, p0, Lcom/android/mms/model/MediaModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 128
    return-void
.end method

.method private initMediaSize()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-string v8, "IOException caught while closing stream"

    const-string v7, "MediaModel"

    .line 337
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 338
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 340
    .local v4, input:Ljava/io/InputStream;
    :try_start_b
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 341
    instance-of v5, v4, Ljava/io/FileInputStream;

    if-eqz v5, :cond_2a

    .line 343
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 344
    .local v3, f:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_24} :catch_38

    .line 358
    .end local v3           #f:Ljava/io/FileInputStream;
    :cond_24
    if-eqz v4, :cond_29

    .line 360
    :try_start_26
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_56

    .line 367
    :cond_29
    :goto_29
    return-void

    .line 346
    :cond_2a
    :goto_2a
    const/4 v5, -0x1

    :try_start_2b
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v5, v6, :cond_24

    .line 347
    iget v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_38

    goto :goto_2a

    .line 351
    :catch_38
    move-exception v5

    move-object v2, v5

    .line 353
    .local v2, e:Ljava/io/IOException;
    :try_start_3a
    const-string v5, "MediaModel"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    instance-of v5, v2, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_5f

    .line 355
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_4f

    .line 358
    .end local v2           #e:Ljava/io/IOException;
    :catchall_4f
    move-exception v5

    if-eqz v4, :cond_55

    .line 360
    :try_start_52
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_6e

    .line 364
    :cond_55
    :goto_55
    throw v5

    .line 361
    :catch_56
    move-exception v2

    .line 363
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "MediaModel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 358
    :cond_5f
    if-eqz v4, :cond_29

    .line 360
    :try_start_61
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_29

    .line 361
    :catch_65
    move-exception v2

    .line 363
    const-string v5, "MediaModel"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 361
    .end local v2           #e:Ljava/io/IOException;
    :catch_6e
    move-exception v2

    .line 363
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "MediaModel"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public getBegin()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 383
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 385
    .end local p0
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/MediaModel$MediaAction;

    move-object v0, p0

    goto :goto_a
.end method

.method public getData()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    if-eqz v1, :cond_14

    .line 217
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 218
    .local v0, data:[B
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 221
    .end local v0           #data:[B
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getDrmContent()Landroid/lge/lgdrm/DrmContent;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContent:Landroid/lge/lgdrm/DrmContent;

    return-object v0
.end method

.method public getDrmSession()Landroid/lge/lgdrm/DrmContentSession;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFill()S
    .registers 2

    .prologue
    .line 242
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    return v0
.end method

.method public getMediaSize()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return v0
.end method

.method public getSeekTo()I
    .registers 2

    .prologue
    .line 374
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected initMediaDuration()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-string v2, "initMediaDuration() :"

    const-string v2, "Unexpected IOException."

    const-string v3, "MediaModel"

    .line 296
    const-string v2, "MediaModel"

    const-string v2, "initMediaDuration()"

    invoke-static {v3, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mDrmSession:Landroid/lge/lgdrm/DrmContentSession;

    if-eqz v2, :cond_83

    .line 299
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 301
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_16
    const-string v2, "MediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMediaDuration() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 304
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 306
    const-string v2, "MediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMediaDuration() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_16 .. :try_end_62} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_62} :catch_66

    .line 313
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 334
    :goto_65
    return-void

    .line 307
    :catch_66
    move-exception v2

    move-object v0, v2

    .line 308
    .local v0, e:Ljava/io/IOException;
    :try_start_68
    const-string v2, "MediaModel"

    const-string v3, "Unexpected IOException."

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    const-string v2, "MediaModel"

    const-string v3, "Set default Duration 5sec"

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_7e

    .line 313
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_65

    .end local v0           #e:Ljava/io/IOException;
    :catchall_7e
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2

    .line 318
    .end local v1           #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_83
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_8f

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_8f
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 324
    .restart local v1       #mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_94
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 325
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 326
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_b7
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a4} :catch_a8

    .line 331
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_65

    .line 327
    :catch_a8
    move-exception v2

    move-object v0, v2

    .line 328
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_aa
    const-string v2, "MediaModel"

    const-string v3, "Unexpected IOException."

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_b7
    .catchall {:try_start_aa .. :try_end_b7} :catchall_b7

    .line 331
    .end local v0           #e:Ljava/io/IOException;
    :catchall_b7
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2
.end method

.method public isAllowedToForward()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 288
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 289
    const/4 v0, 0x0

    .line 292
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isAudio()Z
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDrmProtected()Z
    .registers 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v0

    if-eqz v0, :cond_12

    .line 278
    const/4 v0, 0x1

    .line 281
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isImage()Z
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPlayable()Z
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBegin(I)V
    .registers 3
    .parameter "begin"

    .prologue
    .line 148
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 150
    return-void
.end method

.method public setDrmContent(Landroid/lge/lgdrm/DrmContent;)V
    .registers 2
    .parameter "dc"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContent:Landroid/lge/lgdrm/DrmContent;

    .line 419
    return-void
.end method

.method public setDuration(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-gez p1, :cond_1b

    .line 160
    :try_start_8
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V
    :try_end_b
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_b} :catch_10

    .line 169
    :goto_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 170
    :goto_f
    return-void

    .line 161
    :catch_10
    move-exception v0

    .line 163
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MediaModel"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 167
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_1b
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_b
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .parameter "fname"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mFileName:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setFill(S)V
    .registers 3
    .parameter "fill"

    .prologue
    .line 249
    iput-short p1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 251
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 229
    return-void
.end method
