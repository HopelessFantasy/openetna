.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation


# static fields
.field private static CACHE_THRESHOLD:J = 0x0L

.field private static CACHE_TRIM_AMOUNT:J = 0x0L

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field private static final PRIVATE:Ljava/lang/String; = "private"

.field private static final TRIM_CACHE_INTERVAL:I = 0x5

.field private static mBaseDir:Ljava/io/File;

.field private static mClearCacheOnInit:Z

.field private static mDataBase:Landroid/webkit/WebViewDatabase;

.field private static mDisabled:Z

.field private static mRefCount:I

.field private static mTrimCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const-wide/32 v0, 0x600000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    .line 58
    const-wide/32 v0, 0x200000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    .line 69
    sput v2, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 76
    sput-boolean v2, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Landroid/webkit/WebViewDatabase;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method private static appendAsHex(ILjava/lang/StringBuffer;)V
    .registers 4
    .parameter "i"
    .parameter "ret"

    .prologue
    .line 562
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 586
    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    return-void

    .line 565
    :pswitch_f
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 568
    :pswitch_15
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 571
    :pswitch_1b
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 574
    :pswitch_21
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 577
    :pswitch_27
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 580
    :pswitch_2d
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 583
    :pswitch_33
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 563
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
    .end packed-switch
.end method

.method public static cacheDisabled()Z
    .registers 1

    .prologue
    .line 223
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    return v0
.end method

.method static cacheEmpty()Z
    .registers 1

    .prologue
    .line 466
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasCache()Z

    move-result v0

    return v0
.end method

.method private static checkCacheRedirect(I)Z
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 481
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_c

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_c

    const/16 v0, 0x133

    if-ne p0, v0, :cond_e

    .line 483
    :cond_c
    const/4 v0, 0x1

    .line 485
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static createCacheDirectory()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 170
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 171
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 172
    const-string v0, "cache"

    const-string v1, "Unable to create webviewCache directory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 188
    :goto_1a
    return v0

    .line 175
    :cond_1b
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 183
    invoke-static {}, Landroid/webkit/WebViewCore;->endCacheTransaction()V

    .line 184
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCache()V

    .line 185
    invoke-static {}, Landroid/webkit/WebViewCore;->startCacheTransaction()V

    .line 186
    const/4 v0, 0x1

    goto :goto_1a

    :cond_33
    move v0, v3

    .line 188
    goto :goto_1a
.end method

.method public static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;
    .registers 11
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "forceCache"

    .prologue
    const/4 v5, 0x0

    .line 346
    if-nez p4, :cond_9

    sget-boolean v3, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v3, :cond_9

    move-object v3, v5

    .line 385
    :goto_8
    return-object v3

    .line 351
    :cond_9
    const/16 v3, 0x12f

    if-ne p1, v3, :cond_f

    move-object v3, v5

    .line 352
    goto :goto_8

    .line 357
    :cond_f
    invoke-static {p1}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p2}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    move-object v3, v5

    .line 358
    goto :goto_8

    .line 361
    :cond_21
    invoke-static {p1, p2, p3}, Landroid/webkit/CacheManager;->parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 362
    .local v2, ret:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v2, :cond_35

    .line 363
    invoke-static {p0, v2}, Landroid/webkit/CacheManager;->setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    .line 365
    :try_start_2a
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, v2, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_33} :catch_37

    .line 382
    :goto_33
    iput-object p3, v2, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    :cond_35
    move-object v3, v2

    .line 385
    goto :goto_8

    .line 366
    :catch_37
    move-exception v3

    move-object v0, v3

    .line 369
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 371
    :try_start_3f
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, v2, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_33

    .line 372
    :catch_49
    move-exception v3

    move-object v1, v3

    .local v1, e2:Ljava/io/FileNotFoundException;
    move-object v3, v5

    .line 375
    goto :goto_8

    .end local v1           #e2:Ljava/io/FileNotFoundException;
    :cond_4d
    move-object v3, v5

    .line 379
    goto :goto_8
.end method

.method static disableTransaction()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 239
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_c

    .line 240
    const-string v0, "cache"

    const-string v1, "disableTransaction is out of sync"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_c
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    sub-int/2addr v0, v2

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_1a

    .line 243
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move v0, v2

    .line 246
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static enableTransaction()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 229
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-ne v0, v1, :cond_10

    .line 230
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move v0, v1

    .line 233
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static endCacheTransaction()Z
    .registers 3

    .prologue
    .line 258
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move-result v0

    .line 259
    .local v0, ret:Z
    sget v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_15

    .line 260
    const/4 v1, 0x0

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 261
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    .line 263
    :cond_15
    return v0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 10
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 277
    sget-boolean v3, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v3, :cond_9

    move-object v3, v7

    .line 328
    :goto_8
    return-object v3

    .line 281
    :cond_9
    sget-object v3, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 282
    .local v1, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_5b

    .line 283
    iget-wide v3, v1, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 284
    iget v3, v1, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v3}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 286
    sget-object v3, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v3, v7

    .line 287
    goto :goto_8

    .line 290
    :cond_26
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v4, v1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v2, src:Ljava/io/File;
    :try_start_2f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, v1, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_36} :catch_52

    .line 309
    .end local v2           #src:Ljava/io/File;
    :cond_36
    if-eqz p1, :cond_73

    iget-wide v3, v1, Landroid/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_73

    iget-wide v3, v1, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_73

    .line 311
    iget-object v3, v1, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v3, :cond_5d

    iget-object v3, v1, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v3, :cond_5d

    move-object v3, v7

    .line 312
    goto :goto_8

    .line 295
    .restart local v2       #src:Ljava/io/File;
    :catch_52
    move-exception v3

    move-object v0, v3

    .line 298
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v3, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v3, v7

    .line 299
    goto :goto_8

    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #src:Ljava/io/File;
    :cond_5b
    move-object v3, v7

    .line 303
    goto :goto_8

    .line 316
    :cond_5d
    iget-object v3, v1, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v3, :cond_68

    .line 317
    const-string v3, "if-none-match"

    iget-object v4, v1, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_68
    iget-object v3, v1, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v3, :cond_73

    .line 320
    const-string v3, "if-modified-since"

    iget-object v4, v1, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    move-object v3, v1

    .line 328
    goto :goto_8
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 198
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 156
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    .line 158
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    if-eqz v0, :cond_23

    .line 159
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    .line 162
    :cond_23
    return-void
.end method

.method private static parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 14
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"

    .prologue
    .line 592
    new-instance v2, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v2}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 593
    .local v2, ret:Landroid/webkit/CacheManager$CacheResult;
    iput p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 595
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object p0

    .line 596
    .local p0, location:Ljava/lang/String;
    if-eqz p0, :cond_f

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 598
    :cond_f
    const-wide/16 v0, -0x1

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 599
    invoke-virtual {p1}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, expires:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 602
    :try_start_19
    invoke-static {v0}, Landroid/webkit/HttpDateTime;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .end local p0           #location:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_23} :catch_54

    .line 614
    .end local v0           #expires:Ljava/lang/String;
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object p0

    .line 615
    .local p0, lastModified:Ljava/lang/String;
    if-eqz p0, :cond_2b

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 617
    :cond_2b
    invoke-virtual {p1}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object p0

    .line 618
    .local p0, etag:Ljava/lang/String;
    if-eqz p0, :cond_33

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 620
    :cond_33
    invoke-virtual {p1}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    .line 621
    .local p0, cacheControl:Ljava/lang/String;
    if-eqz p0, :cond_114

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .end local p0           #cacheControl:Ljava/lang/String;
    const-string v0, "[ ,;]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 623
    .local p0, controls:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_45
    array-length v0, p0

    if-ge v1, v0, :cond_114

    .line 624
    const-string v0, "no-store"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 625
    const/4 p0, 0x0

    .line 717
    .end local v1           #i:I
    .end local p0           #controls:[Ljava/lang/String;
    .end local p1
    .end local p2
    :goto_53
    return-object p0

    .line 603
    .local v0, expires:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :catch_54
    move-exception p0

    .line 605
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "-1"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    const-string p0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 607
    :cond_65
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_23

    .line 609
    :cond_6a
    const-string p0, "cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal expires: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #expires:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 631
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    :cond_83
    const-string v0, "no-cache"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "private"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 632
    :cond_97
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 623
    :cond_9b
    :goto_9b
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_45

    .line 633
    :cond_9f
    aget-object v0, p0, v1

    const-string v3, "max-age"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 634
    aget-object v0, p0, v1

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 635
    .local v0, separator:I
    if-gez v0, :cond_1b3

    .line 636
    aget-object v0, p0, v1

    .end local v0           #separator:I
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #separator:I
    move v6, v0

    .line 638
    .end local v0           #separator:I
    .local v6, separator:I
    :goto_bc
    if-lez v6, :cond_9b

    .line 639
    aget-object v0, p0, v1

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, s:Ljava/lang/String;
    :try_start_c6
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 642
    .local v4, sec:J
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-ltz v0, :cond_9b

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    add-long/2addr v4, v7

    iput-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_da
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_da} :catch_db

    goto :goto_9b

    .line 646
    .end local v4           #sec:J
    :catch_db
    move-exception v0

    .line 647
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v0, "1d"

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .end local v3           #s:Ljava/lang/String;
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_9b

    .line 651
    .restart local v3       #s:Ljava/lang/String;
    :cond_ef
    const-string v0, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #s:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in parseHeaders for max-age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_9b

    .line 665
    .end local v1           #i:I
    .end local v6           #separator:I
    .end local p0           #controls:[Ljava/lang/String;
    :cond_114
    const-string p0, "no-cache"

    invoke-virtual {p1}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_124

    .line 666
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 671
    :cond_124
    iget-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_139

    .line 672
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12d

    if-ne p0, p1, :cond_13c

    .line 675
    const-wide p0, 0x7fffffffffffffffL

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .end local p2
    :cond_139
    :goto_139
    move-object p0, v2

    .line 717
    goto/16 :goto_53

    .line 676
    .restart local p2
    :cond_13c
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12e

    if-eq p0, p1, :cond_148

    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x133

    if-ne p0, p1, :cond_14d

    .line 678
    :cond_148
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_139

    .line 679
    :cond_14d
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez p0, :cond_169

    .line 686
    const-string p0, "text/html"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_164

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_139

    .line 691
    :cond_164
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_139

    .line 700
    :cond_169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long p1, p0, v0

    .line 702
    .end local p2
    .local p1, lastmod:J
    :try_start_172
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-static {p0}, Landroid/webkit/HttpDateTime;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J
    :try_end_17b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_172 .. :try_end_17b} :catch_193

    move-result-wide p0

    .end local p1           #lastmod:J
    .local p0, lastmod:J
    move-wide v0, p0

    .line 706
    .end local p0           #lastmod:J
    .local v0, lastmod:J
    :goto_17d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 707
    .local p0, difference:J
    const-wide/16 v3, 0x0

    cmp-long p2, p0, v3

    if-lez p2, :cond_1b0

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0           #lastmod:J
    const-wide/16 v3, 0x5

    div-long/2addr p0, v3

    .end local p0           #difference:J
    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_139

    .line 703
    .restart local p1       #lastmod:J
    :catch_193
    move-exception p0

    .line 704
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "cache"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal lastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .end local p1           #lastmod:J
    .restart local v0       #lastmod:J
    goto :goto_17d

    .line 712
    .local p0, difference:J
    :cond_1b0
    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_139

    .local v0, separator:I
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    .local p1, headers:Landroid/net/http/Headers;
    .restart local p2
    :cond_1b3
    move v6, v0

    .end local v0           #separator:I
    .restart local v6       #separator:I
    goto/16 :goto_bc
.end method

.method static removeAllCacheFiles()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 432
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    if-nez v1, :cond_9

    .line 435
    sput-boolean v2, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    move v1, v2

    .line 458
    :goto_8
    return v1

    .line 439
    :cond_9
    new-instance v0, Landroid/webkit/CacheManager$1;

    invoke-direct {v0}, Landroid/webkit/CacheManager$1;-><init>()V

    .line 457
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v1, v2

    .line 458
    goto :goto_8
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 7
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    const-wide/16 v3, 0x0

    .line 395
    :try_start_2
    iget-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_10

    .line 400
    iget-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 421
    :goto_f
    return-void

    .line 396
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 397
    .local v0, e:Ljava/io/IOException;
    goto :goto_f

    .line 405
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    iget-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 406
    iget v1, p1, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v1}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 408
    iput-wide v3, p1, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 409
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 410
    iget-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 416
    :cond_31
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1, p0, p1}, Landroid/webkit/WebViewDatabase;->addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_f

    .line 411
    :cond_37
    iget-wide v1, p1, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_31

    .line 412
    iget-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_f
.end method

.method static setCacheDisabled(Z)V
    .registers 2
    .parameter "disabled"

    .prologue
    .line 208
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_5

    .line 215
    :cond_4
    :goto_4
    return-void

    .line 211
    :cond_5
    sput-boolean p0, Landroid/webkit/CacheManager;->mDisabled:Z

    .line 212
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v0, :cond_4

    .line 213
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto :goto_4
.end method

.method private static setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 13
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    const/16 v10, 0x8

    .line 499
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 500
    .local v2, hashCode:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 501
    .local v5, ret:Ljava/lang/StringBuffer;
    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 502
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 505
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 512
    .local v0, checkOldPath:Z
    :goto_1a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 513
    if-eqz v0, :cond_52

    .line 517
    invoke-static {}, Landroid/webkit/WebViewCore;->endCacheTransaction()V

    .line 518
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 519
    .local v3, oldResult:Landroid/webkit/CacheManager$CacheResult;
    invoke-static {}, Landroid/webkit/WebViewCore;->startCacheTransaction()V

    .line 520
    if-eqz v3, :cond_51

    iget-wide v6, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_51

    .line 521
    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 522
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 537
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_42
    :goto_42
    iput-object v4, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 538
    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    .line 559
    return-void

    .line 524
    .restart local v3       #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_47
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 525
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 527
    .restart local v1       #file:Ljava/io/File;
    goto :goto_42

    .line 529
    :cond_51
    const/4 v0, 0x0

    .line 531
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_52
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #ret:Ljava/lang/StringBuffer;
    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 532
    .restart local v5       #ret:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 533
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_1a
.end method

.method public static startCacheTransaction()Z
    .registers 1

    .prologue
    .line 252
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move-result v0

    return v0
.end method

.method static trimCacheIfNeeded()V
    .registers 7

    .prologue
    .line 471
    sget-object v3, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3}, Landroid/webkit/WebViewDatabase;->getCacheTotalSize()J

    move-result-wide v3

    sget-wide v5, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2e

    .line 472
    sget-object v3, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    sget-wide v4, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewDatabase;->trimCache(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 473
    .local v1, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_2e

    .line 475
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 478
    .end local v0           #i:I
    .end local v1           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #size:I
    :cond_2e
    return-void
.end method
