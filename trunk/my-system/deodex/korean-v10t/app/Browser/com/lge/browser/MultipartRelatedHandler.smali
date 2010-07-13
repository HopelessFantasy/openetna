.class public Lcom/lge/browser/MultipartRelatedHandler;
.super Ljava/lang/Object;
.source "MultipartRelatedHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Download (MP)"

.field public static final MULTIPART_MAX_BOUNDARY_SIZE:I = 0x100

.field public static final MULTIPART_READ_BUFFER_SIZE:I = 0x1000

.field private static final MULTIPART_STATE_EXTRACT_BOUNDARY:I = 0x0

.field private static final MULTIPART_STATE_EXTRACT_CONTENT:I = 0x2

.field private static final MULTIPART_STATE_EXTRACT_HEADER:I = 0x1

.field public static final MULTIPART_STATUS_CONTINUE:I = 0x1

.field public static final MULTIPART_STATUS_DONE:I = 0x3

.field public static final MULTIPART_STATUS_DRM_PROCESS_ERROR:I = -0x5

.field public static final MULTIPART_STATUS_ERROR:I = -0x1

.field public static final MULTIPART_STATUS_HTTP_DATA_ERROR:I = -0x4

.field public static final MULTIPART_STATUS_HTTP_HEADER_ERROR:I = -0x3

.field public static final MULTIPART_STATUS_INSUFFICIENT_MEM:I = -0x7

.field public static final MULTIPART_STATUS_PART_DONE:I = 0x4

.field public static final MULTIPART_STATUS_READ_DATA:I = 0x2

.field public static final MULTIPART_STATUS_USER_CANCELED:I = -0x2


# instance fields
.field private mBoundary:Ljava/lang/String;

.field private mBytesNotified:I

.field private mBytesSoFar:I

.field private mBytesToRead:I

.field private mCurrentContentHeader:Lorg/apache/http/message/HeaderGroup;

.field private mCurrentContentLength:I

.field private mCurrentMimeType:Ljava/lang/String;

.field private mDownloadCanceledbyUser:Z

.field private mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

.field private mExtractState:I

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mInputStream:Ljava/io/InputStream;

.field private mJumpBuf:[B

.field private mLineLen:I

.field private mLinePos:I

.field private mMainBuf:[B

.field private mMainBufEmpty:Z

.field private mMainEndPos:I

.field private mMpBuffOffset:I

.field private mMpEndPos:I

.field private mMpStartPos:I

.field private mMultiPartStatus:I

.field private mNeedProcessInit:Z

.field private mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

.field private mPostData:Landroid/lge/lgdrm/DrmDldRequest;

.field private mReadPos:I

.field private mStrError:I

.field private mTimeLastNotification:J

.field private mWriteLen:I

.field private mWritePos:I


# direct methods
.method public constructor <init>(Lcom/lge/browser/OmaDrmHandlerV2;Ljava/lang/String;Ljava/io/InputStream;Landroid/lge/lgdrm/DrmObjectSession;)V
    .registers 14
    .parameter "handler"
    .parameter "mimeType"
    .parameter "is"
    .parameter "drmSession"

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 55
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mExtractState:I

    .line 58
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    .line 62
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mInputStream:Ljava/io/InputStream;

    .line 65
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 66
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 67
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 68
    iput-boolean v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mNeedProcessInit:Z

    .line 71
    iput-boolean v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBufEmpty:Z

    .line 73
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    .line 74
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 75
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 76
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesToRead:I

    .line 77
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    .line 80
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    .line 81
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 82
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    .line 85
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    .line 86
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    .line 90
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    .line 91
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    .line 92
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    .line 93
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentHeader:Lorg/apache/http/message/HeaderGroup;

    .line 96
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    .line 97
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesNotified:I

    .line 98
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mTimeLastNotification:J

    .line 101
    iput-boolean v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDownloadCanceledbyUser:Z

    .line 104
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mStrError:I

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, boundaryLen:I
    invoke-direct {p0, p2}, Lcom/lge/browser/MultipartRelatedHandler;->getBoundary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, mpBoundary:Ljava/lang/String;
    if-nez v2, :cond_4c

    .line 112
    iput-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    .line 140
    :cond_4b
    :goto_4b
    return-void

    .line 115
    :cond_4c
    if-eqz p4, :cond_4b

    .line 118
    iput-object p4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 120
    iput-object p1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mInputStream:Ljava/io/InputStream;

    .line 124
    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    .line 125
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 126
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 127
    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    .line 129
    new-array v3, v8, [B

    iput-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mJumpBuf:[B

    .line 131
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_85
    if-ge v1, v8, :cond_8f

    .line 133
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mJumpBuf:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 135
    :cond_8f
    const/4 v1, 0x0

    :goto_90
    sub-int v3, v0, v7

    if-ge v1, v3, :cond_a7

    .line 136
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mJumpBuf:[B

    iget-object v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    sub-int v5, v0, v1

    sub-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 139
    :cond_a7
    new-instance v3, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v3}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    iput-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentHeader:Lorg/apache/http/message/HeaderGroup;

    goto :goto_4b
.end method

.method private addHeaderFromTextLine([BII)Lorg/apache/http/Header;
    .registers 9
    .parameter "byteStr"
    .parameter "startPos"
    .parameter "len"

    .prologue
    .line 269
    new-instance v2, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v2}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    .line 270
    .local v2, lineParser:Lorg/apache/http/message/BasicLineParser;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, p3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 273
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 274
    invoke-virtual {v2, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v1

    .line 275
    .local v1, header:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 276
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    .line 277
    :cond_23
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 278
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    .line 279
    :cond_39
    return-object v1
.end method

.method private downloadAbort(I)V
    .registers 4
    .parameter "strId"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v0}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbInfo()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 905
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->uiUpdateDownloadAborted()V

    .line 907
    :cond_b
    iget v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mStrError:I

    if-nez v0, :cond_11

    .line 908
    iput p1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mStrError:I

    .line 910
    :cond_11
    if-eqz p1, :cond_22

    .line 911
    const-string v0, "Download (MP)"

    iget-object v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_22
    return-void
.end method

.method private extractTextBoundary()I
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, endBoundaryStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 287
    .local v0, boundaryLen:I
    :cond_27
    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->readOneLine(Z)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 288
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 290
    .local v2, lineStr:Ljava/lang/String;
    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    if-lt v3, v0, :cond_27

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    .line 291
    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    add-int/lit8 v4, v0, 0x2

    if-lt v3, v4, :cond_5f

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5f

    .line 292
    const/4 v3, 0x3

    .line 301
    .end local v2           #lineStr:Ljava/lang/String;
    :goto_5e
    return v3

    .line 294
    .restart local v2       #lineStr:Ljava/lang/String;
    :cond_5f
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentHeader:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v3}, Lorg/apache/http/message/HeaderGroup;->clear()V

    .line 295
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentHeader:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v3, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->addBasicHeaders(Lorg/apache/http/message/HeaderGroup;)V

    .line 297
    iput v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mExtractState:I

    move v3, v7

    .line 298
    goto :goto_5e

    .line 301
    .end local v2           #lineStr:Ljava/lang/String;
    :cond_6f
    const/4 v3, 0x2

    goto :goto_5e
.end method

.method private extractTextContent()I
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 322
    const/4 v7, 0x0

    .line 323
    .local v7, writeLen:I
    const/4 v6, 0x0

    .line 324
    .local v6, pos:I
    iget-object v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 325
    .local v0, boundaryLen:I
    const/4 v1, 0x0

    .line 329
    .local v1, end_of_content:Z
    move v5, v0

    .line 332
    .local v5, m:I
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v8, v5

    sub-int v4, v8, v11

    .line 334
    .local v4, k:I
    :goto_11
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    if-ge v4, v8, :cond_34

    .line 335
    sub-int v3, v5, v11

    .line 336
    .local v3, j:I
    move v2, v4

    .line 339
    .local v2, i:I
    :goto_18
    if-ltz v3, :cond_2f

    iget-object v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    add-int/2addr v9, v2

    aget-byte v8, v8, v9

    iget-object v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    if-ne v8, v9, :cond_2f

    .line 340
    add-int/lit8 v3, v3, -0x1

    .line 341
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 343
    :cond_2f
    if-ne v3, v12, :cond_72

    .line 344
    add-int/lit8 v6, v2, 0x1

    .line 345
    const/4 v1, 0x1

    .line 351
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_34
    if-nez v1, :cond_3a

    .line 352
    sub-int v8, v4, v5

    add-int/lit8 v6, v8, 0x1

    .line 357
    :cond_3a
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    sub-int v7, v6, v8

    .line 359
    if-ne v1, v11, :cond_66

    .line 360
    sub-int v4, v6, v11

    .line 362
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    if-lt v4, v8, :cond_55

    iget-object v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    const/16 v9, 0xa

    if-ne v8, v9, :cond_55

    .line 363
    add-int/lit8 v7, v7, -0x1

    .line 364
    add-int/lit8 v4, v4, -0x1

    .line 366
    :cond_55
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    if-lt v4, v8, :cond_66

    iget-object v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    const/16 v9, 0xd

    if-ne v8, v9, :cond_66

    .line 367
    add-int/lit8 v7, v7, -0x1

    .line 371
    :cond_66
    iput v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    .line 373
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->writeDataToStream()V

    .line 375
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    if-gt v8, v12, :cond_81

    .line 376
    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 383
    :goto_71
    return v8

    .line 348
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_72
    iget-object v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mJumpBuf:[B

    iget-object v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v10, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    add-int/2addr v10, v4

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    add-int/2addr v4, v8

    .line 349
    goto :goto_11

    .line 378
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_81
    if-eqz v1, :cond_90

    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    if-nez v8, :cond_90

    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    if-ne v8, v11, :cond_90

    .line 379
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mExtractState:I

    .line 380
    const/4 v8, 0x4

    goto :goto_71

    .line 383
    :cond_90
    const/4 v8, 0x2

    goto :goto_71
.end method

.method private extractTextHeaders()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 306
    :cond_2
    :goto_2
    invoke-direct {p0, v3}, Lcom/lge/browser/MultipartRelatedHandler;->readOneLine(Z)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 308
    iget v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    if-lez v0, :cond_19

    .line 309
    iget-object v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/browser/MultipartRelatedHandler;->addHeaderFromTextLine([BII)Lorg/apache/http/Header;

    goto :goto_2

    .line 311
    :cond_19
    iget v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    if-nez v0, :cond_2

    .line 312
    iput v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mExtractState:I

    move v0, v3

    .line 317
    :goto_20
    return v0

    :cond_21
    move v0, v4

    goto :goto_20
.end method

.method private getBoundary(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "mimeType"

    .prologue
    const/16 v7, 0x22

    const/4 v6, -0x1

    .line 766
    const/4 v1, 0x0

    .line 768
    .local v1, mpBoundary:Ljava/lang/String;
    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 769
    .local v4, semicolonIndex:I
    if-eq v4, v6, :cond_2d

    .line 770
    const/4 v0, -0x1

    .line 771
    .local v0, boundaryIndex:I
    const/4 v2, -0x1

    .line 772
    .local v2, quotationmarkIndex1:I
    const/4 v3, -0x1

    .line 774
    .local v3, quotationmarkIndex2:I
    const-string v5, "boundary"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 775
    if-eq v0, v6, :cond_2d

    .line 776
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 777
    if-eq v2, v6, :cond_23

    .line 778
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 780
    :cond_23
    if-eq v2, v6, :cond_2e

    if-eq v3, v6, :cond_2e

    .line 781
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 787
    .end local v0           #boundaryIndex:I
    .end local v2           #quotationmarkIndex1:I
    .end local v3           #quotationmarkIndex2:I
    :cond_2d
    :goto_2d
    return-object v1

    .line 783
    .restart local v0       #boundaryIndex:I
    .restart local v2       #quotationmarkIndex1:I
    .restart local v3       #quotationmarkIndex2:I
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method private multipartProcess()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "Download (MP)"

    .line 389
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    .line 390
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 391
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    .line 395
    :cond_15
    iget-object v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCanceled()Z

    move-result v1

    if-eq v1, v3, :cond_23

    invoke-virtual {p0}, Lcom/lge/browser/MultipartRelatedHandler;->getDownloadCanceled()Z

    move-result v1

    if-ne v1, v3, :cond_27

    .line 396
    :cond_23
    const/4 v1, -0x2

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 430
    :goto_26
    return v1

    .line 399
    :cond_27
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mExtractState:I

    packed-switch v1, :pswitch_data_88

    .line 410
    const-string v1, "Download (MP)"

    const-string v1, "multipartProcess(), mExtractState Error"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_33
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    if-eq v1, v3, :cond_15

    .line 415
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_80

    .line 416
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->partOfcontentIsDone()I

    move-result v0

    .line 417
    .local v0, ret:I
    const/4 v1, -0x1

    if-gt v0, v1, :cond_7d

    .line 418
    iput v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 429
    .end local v0           #ret:I
    :cond_45
    :goto_45
    const-string v1, "Download (MP)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipartProcess return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (1:continue 2:read data 3:done 4:partdone -:error)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_26

    .line 401
    :pswitch_68
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->extractTextBoundary()I

    move-result v1

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_33

    .line 404
    :pswitch_6f
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->extractTextHeaders()I

    move-result v1

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_33

    .line 407
    :pswitch_76
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->extractTextContent()I

    move-result v1

    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_33

    .line 420
    .restart local v0       #ret:I
    :cond_7d
    iput v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_45

    .line 422
    .end local v0           #ret:I
    :cond_80
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_45

    .line 426
    iget v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_26

    .line 399
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_68
        :pswitch_6f
        :pswitch_76
    .end packed-switch
.end method

.method private partOfcontentIsDone()I
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x1

    const-string v10, "Download (MP)"

    .line 621
    const/4 v3, -0x1

    .line 623
    .local v3, retVal:I
    const-string v6, "Download (MP)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "partOfcontentIsDone ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const-string v7, "application/vnd.oma.dd+xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 627
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_36

    .line 629
    :try_start_2f
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_69
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_57

    .line 634
    iput-object v11, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 638
    :cond_36
    :goto_36
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->parseDD1()I

    move-result v3

    .line 639
    if-ne v3, v9, :cond_55

    .line 640
    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v9, :cond_6d

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapTriggerInDD()Z

    move-result v6

    if-ne v6, v9, :cond_6d

    .line 642
    const-string v6, "Download (MP)"

    const-string v6, "partOfcontentIsDone(): DD Display Skipped !"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    move v4, v3

    .line 762
    .end local v3           #retVal:I
    .local v4, retVal:I
    :goto_56
    return v4

    .line 630
    .end local v4           #retVal:I
    .restart local v3       #retVal:I
    :catch_57
    move-exception v6

    move-object v2, v6

    .line 631
    .local v2, ex:Ljava/io/IOException;
    const v6, 0x7f07011e

    :try_start_5c
    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 632
    const-string v6, "Download (MP)"

    const-string v7, "File Close Error !"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_69

    .line 634
    iput-object v11, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    goto :goto_36

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_69
    move-exception v6

    iput-object v11, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    throw v6

    .line 644
    :cond_6d
    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v9, :cond_7b

    .line 645
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->showDDPopup()V

    goto :goto_55

    .line 647
    :cond_7b
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v6

    if-ne v6, v9, :cond_8f

    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v9, :cond_8f

    .line 649
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->uiUpdateDownloadStart()V

    goto :goto_55

    .line 652
    :cond_8f
    const-string v6, "Download (MP)"

    const-string v6, "partOfcontentIsDone(): Coundn\'t be here !"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 655
    :cond_97
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapMimeType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a9

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const-string v7, "application/vnd.oma.drm.dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_238

    .line 658
    :cond_a9
    const/4 v5, 0x2

    .line 659
    .local v5, userResponse:I
    const/4 v0, 0x0

    .line 661
    .local v0, drmRet:I
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v0

    .line 662
    const/4 v6, -0x1

    if-ne v0, v6, :cond_d0

    .line 663
    const v6, 0x7f07011f

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 664
    const-string v6, "Download (MP)"

    const-string v6, "Drm processStatus Error!"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v9, v11}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 667
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 668
    iput-object v11, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    move v4, v3

    .line 669
    .end local v3           #retVal:I
    .restart local v4       #retVal:I
    goto :goto_56

    .line 671
    .end local v4           #retVal:I
    .restart local v3       #retVal:I
    :cond_d0
    if-eq v0, v13, :cond_d4

    if-ne v0, v12, :cond_16a

    .line 672
    :cond_d4
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v6

    if-ne v6, v9, :cond_e4

    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-eq v6, v9, :cond_ec

    :cond_e4
    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v9, :cond_134

    .line 675
    :cond_ec
    const-string v6, "Download (MP)"

    const-string v6, "partOfcontentIsDone(): DRM user consent is skipped !"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_f3
    :goto_f3
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmuserConsentConfirmed()I

    move-result v6

    if-ne v6, v9, :cond_170

    move v5, v13

    .line 698
    :goto_fc
    iput-object v11, p0, Lcom/lge/browser/MultipartRelatedHandler;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 699
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v5, v11}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v0

    .line 700
    iput-boolean v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mNeedProcessInit:Z

    .line 701
    if-eqz v0, :cond_10c

    if-eq v0, v9, :cond_10c

    if-ne v0, v12, :cond_1b7

    .line 702
    :cond_10c
    const-string v6, "Download (MP)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const-string v7, "application/vnd.oma.drm.dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_172

    .line 704
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->uiUpdateDownloadCompleted()V

    .line 705
    const/4 v3, 0x1

    goto/16 :goto_55

    .line 678
    :cond_134
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v7

    const v8, 0x7f070120

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;->showDrmUserConsentPopup(Ljava/lang/String;)V

    .line 679
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6, v12}, Lcom/lge/browser/OmaDrmHandlerV2;->setDrmUserConsentConfirmed(I)V

    .line 681
    :goto_14b
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmuserConsentConfirmed()I

    move-result v6

    if-eq v6, v9, :cond_f3

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmuserConsentConfirmed()I

    move-result v6

    if-eq v6, v13, :cond_f3

    .line 684
    const-wide/16 v6, 0x64

    :try_start_15d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_160
    .catch Ljava/lang/InterruptedException; {:try_start_15d .. :try_end_160} :catch_161

    goto :goto_14b

    .line 685
    :catch_161
    move-exception v1

    .line 686
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v6, "Download (MP)"

    const-string v6, "processMultipartRelated, Sleep Interrupted!"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    .line 693
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_16a
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6, v9}, Lcom/lge/browser/OmaDrmHandlerV2;->setDrmUserConsentConfirmed(I)V

    goto :goto_f3

    :cond_170
    move v5, v12

    .line 696
    goto :goto_fc

    .line 708
    :cond_172
    if-ne v5, v12, :cond_184

    .line 709
    const v6, 0x7f070111

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 710
    const-string v6, "Download (MP)"

    const-string v6, "Drm processEnd! No Confirmed"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v3, -0x1

    goto/16 :goto_55

    .line 714
    :cond_184
    if-ne v0, v12, :cond_1b1

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v6

    if-ne v6, v9, :cond_1b1

    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v9, :cond_1b1

    .line 716
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;->setRoapCnt(I)V

    .line 717
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;->uiUpdateFakeDownloading(I)V

    .line 722
    :goto_1ae
    const/4 v3, 0x1

    goto/16 :goto_55

    .line 720
    :cond_1b1
    const v6, 0x7f070123

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mStrError:I

    goto :goto_1ae

    .line 726
    :cond_1b7
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1ed

    .line 727
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmObjectSession;->getNextRequest()Landroid/lge/lgdrm/DrmDldRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    .line 728
    const/4 v3, 0x2

    .line 729
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v6

    if-ne v6, v9, :cond_55

    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v9, :cond_55

    .line 731
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;->setRoapCnt(I)V

    .line 732
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;->uiUpdateFakeDownloading(I)V

    goto/16 :goto_55

    .line 735
    :cond_1ed
    if-ne v0, v13, :cond_1ff

    .line 736
    const v6, 0x7f070121

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 737
    const-string v6, "Download (MP)"

    const-string v6, "Drm processEnd Error! Not a domain member"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v3, -0x1

    goto/16 :goto_55

    .line 740
    :cond_1ff
    const/4 v6, -0x1

    if-ne v0, v6, :cond_228

    .line 741
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmObjectSession;->getFailReason()I

    move-result v6

    if-ne v6, v9, :cond_21a

    .line 742
    const v6, 0x7f070122

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 743
    const-string v6, "Download (MP)"

    const-string v6, "Drm processEnd Error! Domain Full"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_217
    const/4 v3, -0x1

    goto/16 :goto_55

    .line 746
    :cond_21a
    const v6, 0x7f07011f

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 747
    const-string v6, "Download (MP)"

    const-string v6, "Drm processEnd Error!"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_217

    .line 752
    :cond_228
    const v6, 0x7f07011f

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 753
    const-string v6, "Download (MP)"

    const-string v6, "Drm processEnd Unknown Error!"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v3, -0x1

    goto/16 :goto_55

    .line 758
    .end local v0           #drmRet:I
    .end local v5           #userResponse:I
    :cond_238
    const v6, 0x7f070118

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 759
    const-string v6, "Download (MP)"

    const-string v6, "Unsupported mimetype to process DRM 2.0"

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55
.end method

.method private readDataFromStream()V
    .registers 11

    .prologue
    const/16 v9, 0x1000

    const/4 v8, -0x1

    const-string v5, "Download (MP)"

    .line 441
    :try_start_5
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 442
    .local v2, pos:I
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    sub-int v3, v5, v2

    .line 443
    .local v3, rem_data:I
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    if-lt v2, v5, :cond_3c

    .line 444
    const/4 v4, 0x0

    .line 445
    .local v4, startpos:I
    const/16 v5, 0x1000

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesToRead:I

    .line 446
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    .line 447
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 448
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 449
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 462
    :cond_20
    :goto_20
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesToRead:I

    invoke-virtual {v5, v6, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 463
    .local v1, n:I
    if-ne v1, v8, :cond_77

    .line 464
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3b

    .line 465
    const-string v5, "Download (MP)"

    const-string v6, "readDataFromStream, the stream is closed by network!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v5, -0x4

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 490
    .end local v1           #n:I
    .end local v2           #pos:I
    .end local v3           #rem_data:I
    .end local v4           #startpos:I
    :cond_3b
    :goto_3b
    return-void

    .line 452
    .restart local v2       #pos:I
    .restart local v3       #rem_data:I
    :cond_3c
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    const/4 v7, 0x0

    invoke-static {v5, v2, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 454
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    .line 455
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 456
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 457
    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 458
    .restart local v4       #startpos:I
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    sub-int v5, v9, v5

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesToRead:I
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5f} :catch_8a

    goto :goto_20

    .line 478
    .end local v2           #pos:I
    .end local v3           #rem_data:I
    .end local v4           #startpos:I
    :catch_60
    move-exception v5

    move-object v0, v5

    .line 479
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const v5, 0x7f07011d

    :try_start_65
    invoke-direct {p0, v5}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 480
    const-string v5, "Download (MP)"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v5, -0x1

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_75

    goto :goto_3b

    .line 488
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_75
    move-exception v5

    throw v5

    .line 470
    .restart local v1       #n:I
    .restart local v2       #pos:I
    .restart local v3       #rem_data:I
    .restart local v4       #startpos:I
    :cond_77
    if-lez v1, :cond_20

    .line 471
    const/4 v5, 0x0

    :try_start_7a
    iput-boolean v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBufEmpty:Z

    .line 472
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    .line 473
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 474
    const/4 v5, 0x1

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_89} :catch_60
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_89} :catch_8a

    goto :goto_3b

    .line 483
    .end local v1           #n:I
    .end local v2           #pos:I
    .end local v3           #rem_data:I
    .end local v4           #startpos:I
    :catch_8a
    move-exception v5

    move-object v0, v5

    .line 484
    .local v0, ex:Ljava/io/IOException;
    const v5, 0x7f07011d

    :try_start_8f
    invoke-direct {p0, v5}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 485
    const-string v5, "Download (MP)"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v5, -0x1

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_75

    goto :goto_3b
.end method

.method private readOneLine(Z)Z
    .registers 11
    .parameter "terminate"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v6, "Download (MP)"

    .line 220
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    if-eq v2, v4, :cond_c4

    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    move v0, v2

    .line 222
    .local v0, pos:I
    :goto_d
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    iput v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    .line 224
    :goto_11
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    if-ge v0, v2, :cond_d1

    .line 225
    iget-object v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #pos:I
    .local v1, pos:I
    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_ea

    .line 226
    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 227
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    if-eq v2, v4, :cond_c7

    .line 228
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    sub-int/2addr v2, v7

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    .line 230
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    if-gtz v2, :cond_4e

    .line 231
    const-string v2, "Download (MP)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readOneLine, mLineLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4e
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v8

    if-gez v2, :cond_74

    .line 233
    const-string v2, "Download (MP)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readOneLine, mMpBuffOffset + mMpStartPos - 2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_74
    iget-object v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v8

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_87

    .line 236
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    .line 238
    :cond_87
    if-eqz p1, :cond_bf

    .line 239
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    add-int/2addr v2, v3

    if-gez v2, :cond_b3

    .line 240
    const-string v2, "Download (MP)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMpBuffOffset + mLinePos + mLineLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_b3
    iget-object v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLinePos:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    add-int/2addr v3, v4

    aput-byte v5, v2, v3

    .line 250
    :cond_bf
    :goto_bf
    iput v1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    move v0, v1

    .end local v1           #pos:I
    .restart local v0       #pos:I
    move v2, v7

    .line 264
    :goto_c3
    return v2

    .end local v0           #pos:I
    :cond_c4
    move v0, v5

    .line 220
    goto/16 :goto_d

    .line 245
    .restart local v1       #pos:I
    :cond_c7
    const-string v2, "Download (MP)"

    const-string v2, "readOneLine, mLineLen == -1"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mLineLen:I

    goto :goto_bf

    .line 255
    .end local v1           #pos:I
    .restart local v0       #pos:I
    :cond_d1
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    sub-int/2addr v2, v3

    const/16 v3, 0x1000

    if-le v2, v3, :cond_e0

    .line 256
    iput v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 257
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    iput v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 260
    :cond_e0
    iget v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpEndPos:I

    if-le v2, v3, :cond_e8

    .line 261
    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    :cond_e8
    move v2, v5

    .line 264
    goto :goto_c3

    .end local v0           #pos:I
    .restart local v1       #pos:I
    :cond_ea
    move v0, v1

    .end local v1           #pos:I
    .restart local v0       #pos:I
    goto/16 :goto_11
.end method

.method private uiUpdateDownloadAborted()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 890
    iget-object v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v2}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    .line 891
    .local v0, activity:Lcom/android/browser/BrowserActivity;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 893
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "external_control"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 894
    iget-object v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v2}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v2

    if-ne v2, v4, :cond_2d

    sget-object v2, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v2}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v2

    if-ne v2, v4, :cond_2d

    .line 895
    const-string v2, "mimetype"

    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_2d
    const-string v2, "status"

    const/16 v3, 0x1eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v3}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbInfo()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 899
    const-string v2, "Download (MP)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download UI Aborted... Download DB ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v4}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method private uiUpdateDownloadCompleted()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 871
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v3}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    .line 872
    .local v0, activity:Lcom/android/browser/BrowserActivity;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 874
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "external_control"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 875
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v3}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v3

    if-ne v3, v5, :cond_2d

    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    if-ne v3, v5, :cond_2d

    .line 876
    const-string v3, "mimetype"

    iget-object v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_2d
    const-string v3, "status"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    iget-object v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v3}, Lcom/lge/browser/OmaDrmHandlerV2;->getDrmCid()Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, cid:Ljava/lang/String;
    if-eqz v1, :cond_45

    .line 882
    const-string v3, "cid"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_45
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v4}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbInfo()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 886
    const-string v3, "Download (MP)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download UI Completed... Download DB ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v5}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void
.end method

.method private uiUpdateDownloadStart()V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const-string v11, "mimetype"

    .line 792
    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    .line 793
    .local v0, activity:Lcom/android/browser/BrowserActivity;
    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 794
    .local v6, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getDDParser()Lcom/lge/browser/DDParser;

    move-result-object v7

    iget-object v7, v7, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    const-string v8, "[^a-zA-Z0-9\\.\\-_]+"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, fileName:Ljava/lang/String;
    const-string v7, "uri"

    iget-object v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v8, v8, Lcom/lge/browser/OmaDrmHandlerV2;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v7

    if-ne v7, v10, :cond_a6

    sget-object v7, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v7}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v7

    if-ne v7, v10, :cond_a6

    .line 803
    const-string v7, "mimetype"

    const-string v7, "application/vnd.oma.drm.dcf"

    invoke-virtual {v6, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_3f
    const-string v7, "hint"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    if-lez v7, :cond_54

    .line 810
    const-string v7, "total_bytes"

    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 813
    :cond_54
    const-string v7, "external_control"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 815
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 816
    .local v5, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 819
    .local v1, dbID:I
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, str:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 821
    .local v3, index:I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 822
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 823
    const-string v7, "Download (MP)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download UI Started... Download DB ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7, v5}, Lcom/lge/browser/OmaDrmHandlerV2;->setDownloadDbInfo(Landroid/net/Uri;)V

    .line 826
    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->setDownloadDbID(I)V

    .line 828
    invoke-virtual {v0, v5}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    .line 829
    return-void

    .line 805
    .end local v1           #dbID:I
    .end local v3           #index:I
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_a6
    const-string v7, "mimetype"

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method private uiUpdateDownloading()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 833
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v6

    if-ne v6, v10, :cond_1f

    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v10, :cond_1f

    .line 835
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCnt()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    if-ge v6, v7, :cond_1f

    .line 867
    :cond_1e
    :goto_1e
    return-void

    .line 839
    :cond_1f
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesNotified:I

    if-lez v6, :cond_ba

    const/4 v6, 0x0

    move v1, v6

    .line 840
    .local v1, bInit:Z
    :goto_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 841
    .local v3, now:J
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    iget v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesNotified:I

    sub-int/2addr v6, v7

    const/16 v7, 0x1000

    if-lt v6, v7, :cond_1e

    iget-wide v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mTimeLastNotification:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1e

    .line 845
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesNotified:I

    .line 846
    iput-wide v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mTimeLastNotification:J

    .line 848
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    .line 849
    .local v0, activity:Lcom/android/browser/BrowserActivity;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 851
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "external_control"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 852
    const-string v6, "current_bytes"

    iget v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    if-eqz v1, :cond_ab

    .line 855
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    if-lez v6, :cond_73

    .line 856
    const-string v6, "total_bytes"

    iget v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 858
    :cond_73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getDDParser()Lcom/lge/browser/DDParser;

    move-result-object v7

    iget-object v7, v7, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    const-string v8, "[^a-zA-Z0-9\\.\\-_]+"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".odf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, fileName:Ljava/lang/String;
    const-string v6, "_data"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    .end local v2           #fileName:Ljava/lang/String;
    :cond_ab
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbInfo()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1e

    .end local v0           #activity:Lcom/android/browser/BrowserActivity;
    .end local v1           #bInit:Z
    .end local v3           #now:J
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_ba
    move v1, v10

    .line 839
    goto/16 :goto_25
.end method

.method private writeDataToStream()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const-string v6, "Download (MP)"

    .line 494
    const/4 v3, 0x0

    .line 496
    .local v3, r:I
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    if-lez v6, :cond_40

    .line 498
    :try_start_8
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const-string v7, "application/vnd.oma.dd+xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 499
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-nez v6, :cond_1f

    .line 500
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/data/data/com.android.browser/temp.dd"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 502
    :cond_1f
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 598
    :cond_2d
    :goto_2d
    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    .line 600
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    .line 601
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 603
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    .line 604
    const/4 v6, 0x1

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 617
    :cond_40
    :goto_40
    return-void

    .line 505
    :cond_41
    iget-boolean v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mNeedProcessInit:Z

    if-ne v6, v12, :cond_194

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, fileName:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const-string v7, "application/vnd.oma.drm.dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_167

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, base:Ljava/io/File;
    const/4 v4, 0x0

    .line 516
    .local v4, stat:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, status:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 518
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v0       #base:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_b0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_b0

    .line 520
    const v6, 0x7f0700d0

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 521
    const-string v6, "Download (MP)"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download aborted - can\'t create base directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v6, -0x7

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_9a
    .catchall {:try_start_8 .. :try_end_9a} :catchall_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_9a} :catch_9b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_9a} :catch_e0

    goto :goto_40

    .line 605
    .end local v0           #base:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #status:Ljava/lang/String;
    :catch_9b
    move-exception v6

    move-object v1, v6

    .line 606
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const v6, 0x7f07011e

    :try_start_a0
    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 607
    const-string v6, "Download (MP)"

    const-string v7, "Write Data Error 1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_ad
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_ae

    goto :goto_40

    .line 613
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_ae
    move-exception v6

    throw v6

    .line 525
    .restart local v0       #base:Ljava/io/File;
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #stat:Landroid/os/StatFs;
    .restart local v5       #status:Ljava/lang/String;
    :cond_b0
    :try_start_b0
    new-instance v4, Landroid/os/StatFs;

    .end local v4           #stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 538
    .restart local v4       #stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    mul-long/2addr v6, v8

    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentContentLength:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_115

    .line 539
    const v6, 0x7f0700d0

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 540
    const-string v6, "Download (MP)"

    const-string v7, "download aborted - not enough free space"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v6, -0x7

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_de
    .catchall {:try_start_b0 .. :try_end_de} :catchall_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_de} :catch_9b
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_de} :catch_e0

    goto/16 :goto_40

    .line 609
    .end local v0           #base:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #status:Ljava/lang/String;
    :catch_e0
    move-exception v6

    move-object v1, v6

    .line 610
    .local v1, ex:Ljava/io/IOException;
    const v6, 0x7f07011e

    :try_start_e5
    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 611
    const-string v6, "Download (MP)"

    const-string v7, "Write Data Error 2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I
    :try_end_f2
    .catchall {:try_start_e5 .. :try_end_f2} :catchall_ae

    goto/16 :goto_40

    .line 528
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #base:Ljava/io/File;
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #stat:Landroid/os/StatFs;
    .restart local v5       #status:Ljava/lang/String;
    :cond_f4
    :try_start_f4
    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 529
    const v6, 0x7f0700c4

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 533
    :goto_102
    const-string v6, "Download (MP)"

    const-string v7, "download aborted - no external storage"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v6, -0x7

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto/16 :goto_40

    .line 531
    :cond_10e
    const v6, 0x7f0700c2

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    goto :goto_102

    .line 545
    :cond_115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v7}, Lcom/lge/browser/OmaDrmHandlerV2;->getDDParser()Lcom/lge/browser/DDParser;

    move-result-object v7

    iget-object v7, v7, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    const-string v8, "[^a-zA-Z0-9\\.\\-_]+"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".odf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6, v2}, Lcom/lge/browser/OmaDrmHandlerV2;->setFullFilePath(Ljava/lang/String;)V

    .line 550
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/browser/OmaDrmHandlerV2;->showRoapPopup(Z)V

    .line 552
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    .line 553
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesNotified:I

    .line 554
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mTimeLastNotification:J

    .line 555
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v6}, Lcom/lge/browser/OmaDrmHandlerV2;->IsOmaDrm20CD()Z

    move-result v6

    if-ne v6, v12, :cond_18d

    sget-object v6, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM2_CD_ROAP_PROGRESS_BAR:Lcom/lge/browser/OpCfgItem;

    invoke-static {v6}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v6

    if-ne v6, v12, :cond_18d

    .line 562
    .end local v0           #base:Ljava/io/File;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #status:Ljava/lang/String;
    :cond_167
    :goto_167
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v2, v8}, Landroid/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_191

    .line 564
    const v6, 0x7f07011f

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 565
    const-string v6, "Download (MP)"

    const-string v7, "Drm processInit Error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 568
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 569
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    goto/16 :goto_40

    .line 559
    .restart local v0       #base:Ljava/io/File;
    .restart local v4       #stat:Landroid/os/StatFs;
    .restart local v5       #status:Ljava/lang/String;
    :cond_18d
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->uiUpdateDownloadStart()V

    goto :goto_167

    .line 572
    .end local v0           #base:Ljava/io/File;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #status:Ljava/lang/String;
    :cond_191
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mNeedProcessInit:Z

    .line 579
    .end local v2           #fileName:Ljava/lang/String;
    :cond_194
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpBuffOffset:I

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMpStartPos:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BII)I

    move-result v6

    if-eqz v6, :cond_1c7

    .line 582
    const v6, 0x7f07011f

    invoke-direct {p0, v6}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 583
    const-string v6, "Download (MP)"

    const-string v7, "Drm processUpdate Error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    .line 586
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 587
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 588
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDrmObjSession:Landroid/lge/lgdrm/DrmObjectSession;

    goto/16 :goto_40

    .line 592
    :cond_1c7
    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mCurrentMimeType:Ljava/lang/String;

    const-string v7, "application/vnd.oma.drm.dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 593
    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    iget v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWriteLen:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBytesSoFar:I

    .line 594
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->uiUpdateDownloading()V
    :try_end_1db
    .catchall {:try_start_f4 .. :try_end_1db} :catchall_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f4 .. :try_end_1db} :catch_9b
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_1db} :catch_e0

    goto/16 :goto_2d
.end method


# virtual methods
.method public getDownloadCanceled()Z
    .registers 4

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDownloadCanceledbyUser:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 918
    const-string v0, "Download (MP)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content(.odf) Download Canceled Flag is checked =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDownloadCanceledbyUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_1f
    iget-boolean v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDownloadCanceledbyUser:Z

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 930
    iget v0, p0, Lcom/lge/browser/MultipartRelatedHandler;->mStrError:I

    return v0
.end method

.method public processMultipartRelated()I
    .registers 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const-string v10, "Download (MP)"

    .line 144
    const/4 v4, -0x1

    .line 145
    .local v4, result:I
    const/4 v2, 0x0

    .line 147
    .local v2, nDDConfirmed:I
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mBoundary:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_1e

    .line 148
    :cond_16
    const v5, 0x7f07011c

    invoke-direct {p0, v5}, Lcom/lge/browser/MultipartRelatedHandler;->downloadAbort(I)V

    .line 149
    const/4 v5, -0x3

    .line 214
    :goto_1d
    return v5

    .line 152
    :cond_1e
    const/4 v3, 0x1

    .line 153
    .local v3, process_result:I
    :cond_1f
    :goto_1f
    if-ne v3, v8, :cond_3b

    .line 156
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v5}, Lcom/lge/browser/OmaDrmHandlerV2;->getDDConfirmed()I

    move-result v2

    .line 157
    if-ne v2, v9, :cond_38

    .line 159
    const-wide/16 v5, 0x64

    :try_start_2b
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1f

    .line 160
    :catch_2f
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "Download (MP)"

    const-string v5, "processMultipartRelated, Sleep Interrupted!"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 165
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_38
    if-ne v2, v12, :cond_40

    .line 166
    const/4 v3, -0x2

    .line 203
    :cond_3b
    if-ne v3, v9, :cond_9c

    .line 204
    const/4 v4, 0x1

    :goto_3e
    move v5, v4

    .line 214
    goto :goto_1d

    .line 170
    :cond_40
    iget-boolean v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBufEmpty:Z

    if-eqz v5, :cond_45

    .line 171
    const/4 v3, 0x2

    .line 173
    :cond_45
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    if-le v5, v6, :cond_72

    if-ne v3, v8, :cond_72

    .line 174
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->multipartProcess()I

    move-result v3

    .line 175
    if-eq v3, v8, :cond_56

    const/4 v5, 0x4

    if-ne v3, v5, :cond_45

    .line 176
    :cond_56
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    sub-int v1, v5, v6

    .line 177
    .local v1, n:I
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    iget-object v7, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBuf:[B

    invoke-static {v5, v6, v7, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    .line 179
    iput v11, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    .line 180
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    iput v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainEndPos:I

    .line 184
    .end local v1           #n:I
    :cond_72
    iget v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mReadPos:I

    iget v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mWritePos:I

    if-ne v5, v6, :cond_7a

    .line 185
    iput-boolean v8, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMainBufEmpty:Z

    .line 188
    :cond_7a
    if-ne v3, v12, :cond_92

    .line 190
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    invoke-virtual {v5}, Lcom/lge/browser/OmaDrmHandlerV2;->getRoapCanceled()Z

    move-result v5

    if-eq v5, v8, :cond_8a

    invoke-virtual {p0}, Lcom/lge/browser/MultipartRelatedHandler;->getDownloadCanceled()Z

    move-result v5

    if-ne v5, v8, :cond_8c

    .line 191
    :cond_8a
    const/4 v3, -0x2

    goto :goto_1f

    .line 194
    :cond_8c
    invoke-direct {p0}, Lcom/lge/browser/MultipartRelatedHandler;->readDataFromStream()V

    .line 195
    iget v3, p0, Lcom/lge/browser/MultipartRelatedHandler;->mMultiPartStatus:I

    goto :goto_1f

    .line 198
    :cond_92
    if-ne v3, v9, :cond_1f

    .line 199
    iget-object v5, p0, Lcom/lge/browser/MultipartRelatedHandler;->mOmaDrmHandlerV2:Lcom/lge/browser/OmaDrmHandlerV2;

    iget-object v6, p0, Lcom/lge/browser/MultipartRelatedHandler;->mPostData:Landroid/lge/lgdrm/DrmDldRequest;

    invoke-virtual {v5, v6}, Lcom/lge/browser/OmaDrmHandlerV2;->setPostData(Landroid/lge/lgdrm/DrmDldRequest;)V

    goto :goto_1f

    .line 205
    :cond_9c
    const/4 v5, -0x2

    if-ne v3, v5, :cond_a8

    .line 206
    const/4 v4, -0x2

    .line 207
    const-string v5, "Download (MP)"

    const-string v5, "processMultipartRelated, User Canceled !"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 210
    :cond_a8
    move v4, v3

    .line 211
    const-string v5, "Download (MP)"

    const-string v5, "processMultipartRelated, Aborted"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public setDownloadCanceled(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/lge/browser/MultipartRelatedHandler;->mDownloadCanceledbyUser:Z

    .line 925
    const-string v0, "Download (MP)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content(.odf) Download Canceled Flag is set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void
.end method
