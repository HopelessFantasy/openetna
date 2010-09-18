.class public Lcom/android/providers/downloads/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/Helpers$Lexer;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static rnd:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->rnd:Ljava/util/Random;

    .line 58
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .registers 10
    .parameter "mimeType"
    .parameter "destination"
    .parameter "filename"
    .parameter "dotIndex"

    .prologue
    const-string v5, "DownloadManager"

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_33

    .line 375
    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 376
    .local v1, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, typeFromExt:Ljava/lang/String;
    if-eqz v2, :cond_21

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 379
    :cond_21
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_45

    .line 381
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_33

    .line 382
    const-string v3, "DownloadManager"

    const-string v3, "substituting extension from type"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v1           #lastDotIndex:I
    .end local v2           #typeFromExt:Ljava/lang/String;
    :cond_33
    :goto_33
    if-nez v0, :cond_44

    .line 392
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_40

    .line 393
    const-string v3, "DownloadManager"

    const-string v3, "keeping extension"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_40
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_44
    return-object v0

    .line 385
    .restart local v1       #lastDotIndex:I
    .restart local v2       #typeFromExt:Ljava/lang/String;
    :cond_45
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_33

    .line 386
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find extension for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .parameter "mimeType"
    .parameter "useDefaults"

    .prologue
    const-string v4, "."

    const-string v3, "DownloadManager"

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_2f

    .line 323
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_55

    .line 325
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1c

    .line 326
    const-string v1, "DownloadManager"

    const-string v1, "adding extension from type"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_2f
    :goto_2f
    if-nez v0, :cond_54

    .line 347
    if-eqz p0, :cond_a7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 348
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 349
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_52

    .line 350
    const-string v1, "DownloadManager"

    const-string v1, "adding default html extension"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_52
    const-string v0, ".html"

    .line 366
    :cond_54
    :goto_54
    return-object v0

    .line 331
    :cond_55
    invoke-static {}, Lcom/android/providers/downloads/MimeTypeLgeMap;->getSingleton()Lcom/android/providers/downloads/MimeTypeLgeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/providers/downloads/MimeTypeLgeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_7a

    .line 333
    const-string v1, "DownloadManager"

    const-string v1, "[download] adding extension from LGE mime type"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 338
    :cond_7a
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_2f

    .line 339
    const-string v1, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[download] couldn\'t find extension for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 353
    :cond_97
    if-eqz p1, :cond_54

    .line 354
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_a4

    .line 355
    const-string v1, "DownloadManager"

    const-string v1, "adding default text extension"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_a4
    const-string v0, ".txt"

    goto :goto_54

    .line 359
    :cond_a7
    if-eqz p1, :cond_54

    .line 360
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_b4

    .line 361
    const-string v1, "DownloadManager"

    const-string v1, "adding default binary extension"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_b4
    const-string v0, ".bin"

    goto :goto_54
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "destination"

    .prologue
    const/16 v8, 0x3f

    const/16 v6, 0x2f

    const-string v7, "/"

    const-string v5, "DownloadManager"

    .line 244
    const/4 v2, 0x0

    .line 247
    .local v2, filename:Ljava/lang/String;
    if-nez v2, :cond_2c

    if-eqz p1, :cond_2c

    const-string v4, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 248
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_20

    .line 249
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from hint"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_20
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 252
    .local v3, index:I
    if-lez v3, :cond_c1

    .line 253
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .end local v3           #index:I
    :cond_2c
    :goto_2c
    if-nez v2, :cond_4d

    if-eqz p2, :cond_4d

    .line 261
    invoke-static {p2}, Lcom/android/providers/downloads/Helpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_4d

    .line 263
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_41

    .line 264
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from content-disposition"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_41
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 267
    .restart local v3       #index:I
    if-lez v3, :cond_4d

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    .end local v3           #index:I
    :cond_4d
    if-nez v2, :cond_7c

    if-eqz p3, :cond_7c

    .line 275
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_7c

    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_7c

    .line 279
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_70

    .line 280
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from content-location"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_70
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 283
    .restart local v3       #index:I
    if-lez v3, :cond_c4

    .line 284
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v3           #index:I
    :cond_7c
    :goto_7c
    if-nez v2, :cond_a9

    .line 293
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_a9

    const-string v4, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a9

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_a9

    .line 296
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 297
    .restart local v3       #index:I
    if-lez v3, :cond_a9

    .line 298
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_a5

    .line 299
    const-string v4, "DownloadManager"

    const-string v4, "getting filename from uri"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_a5
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v3           #index:I
    :cond_a9
    if-nez v2, :cond_b8

    .line 308
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_b6

    .line 309
    const-string v4, "DownloadManager"

    const-string v4, "using default filename"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_b6
    const-string v2, "downloadfile"

    .line 314
    :cond_b8
    const-string v4, "[^a-zA-Z0-9\\.\\-_]+"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    return-object v2

    .line 255
    .restart local v3       #index:I
    :cond_c1
    move-object v2, p1

    goto/16 :goto_2c

    .line 286
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    :cond_c4
    move-object v2, v0

    goto :goto_7c
.end method

.method private static chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .parameter "destination"
    .parameter "filename"
    .parameter "extension"
    .parameter "recoveryDir"

    .prologue
    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    if-eqz p3, :cond_27

    const/4 v4, 0x1

    if-eq p0, v4, :cond_29

    const/4 v4, 0x2

    if-eq p0, v4, :cond_29

    const/4 v4, 0x3

    if-eq p0, v4, :cond_29

    :cond_27
    move-object v4, v0

    .line 438
    :goto_28
    return-object v4

    .line 410
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    const/4 v3, 0x1

    .line 426
    .local v3, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_3e
    const v4, 0x3b9aca00

    if-ge v2, v4, :cond_9b

    .line 427
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_44
    const/16 v4, 0x9

    if-ge v1, v4, :cond_98

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6a

    move-object v4, v0

    .line 430
    goto :goto_28

    .line 432
    :cond_6a
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_8c

    .line 433
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file with sequence number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_8c
    sget-object v4, Lcom/android/providers/downloads/Helpers;->rnd:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 426
    :cond_98
    mul-int/lit8 v2, v2, 0xa

    goto :goto_3e

    .line 438
    .end local v1           #iteration:I
    :cond_9b
    const/4 v4, 0x0

    goto :goto_28
.end method

.method public static final discardPurgeableFiles(Landroid/content/Context;J)Z
    .registers 11
    .parameter "context"
    .parameter "targetBytes"

    .prologue
    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "( status = \'200\' AND destination = \'2\' )"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 456
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_14

    .line 457
    const/4 p0, 0x0

    .line 484
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local p0
    .end local p1
    :goto_13
    return p0

    .line 459
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0
    .restart local p1
    :cond_14
    const-wide/16 v1, 0x0

    .line 461
    .local v1, totalFreed:J
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_8e

    move-wide v2, v1

    .line 462
    .end local v1           #totalFreed:J
    .local v2, totalFreed:J
    :goto_1a
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_95

    cmp-long v1, v2, p1

    if-gez v1, :cond_95

    .line 463
    new-instance v1, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, file:Ljava/io/File;
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_67

    .line 465
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "purging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_67
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_6a
    .catchall {:try_start_1a .. :try_end_6a} :catchall_d6

    move-result-wide v4

    add-long v3, v2, v4

    .line 469
    .end local v2           #totalFreed:J
    .local v3, totalFreed:J
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 470
    const-string v1, "_id"

    .end local v1           #file:Ljava/io/File;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 471
    .local v1, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .end local v1           #id:J
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_da

    move-wide v2, v3

    .line 474
    .end local v3           #totalFreed:J
    .restart local v2       #totalFreed:J
    goto :goto_1a

    .line 476
    .end local v2           #totalFreed:J
    .local v1, totalFreed:J
    :catchall_8e
    move-exception p0

    move-object p2, p0

    move-wide p0, v1

    .end local v1           #totalFreed:J
    .end local p1
    .local p0, totalFreed:J
    :goto_91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p2

    .restart local v2       #totalFreed:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 478
    sget-boolean p0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    .end local p0           #context:Landroid/content/Context;
    if-eqz p0, :cond_ca

    .line 479
    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-lez p0, :cond_ca

    .line 480
    .end local v0           #cursor:Landroid/database/Cursor;
    const-string p0, "DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purged files, freed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string p2, " requested"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_ca
    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-lez p0, :cond_d3

    const/4 p0, 0x1

    goto/16 :goto_13

    :cond_d3
    const/4 p0, 0x0

    goto/16 :goto_13

    .line 476
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1
    :catchall_d6
    move-exception p0

    move-object p2, p0

    move-wide p0, v2

    .end local v2           #totalFreed:J
    .end local p1
    .local p0, totalFreed:J
    goto :goto_91

    .restart local v3       #totalFreed:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catchall_da
    move-exception p0

    move-object p2, p0

    move-wide p0, v3

    .end local v3           #totalFreed:J
    .end local p1
    .local p0, totalFreed:J
    goto :goto_91
.end method

.method public static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/providers/downloads/DownloadFileInfo;
    .registers 22
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p6, :cond_8

    const/4 v5, 0x2

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_86

    .line 100
    :cond_8
    if-nez p5, :cond_1c

    .line 102
    const-string p0, "DownloadManager"

    .end local p0
    const-string p1, "external download with no mime type not allowed"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x196

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    .line 238
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_1b
    return-object p0

    .line 108
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_1c
    const-string v5, "application/vnd.oma.drm.message"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string v5, "application/vnd.oma.drm.content"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string v5, "application/vnd.oma.drm.dcf"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 115
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 125
    .local v6, pm:Landroid/content/pm/PackageManager;
    const-string v7, "file"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 129
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_86

    .line 131
    const-string p0, "DownloadManager"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no handler found for type "

    .end local p2
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x196

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_1b

    .line 137
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_86
    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 142
    .local p3, filename:Ljava/lang/String;
    const/4 p1, 0x0

    .line 143
    .local p1, extension:Ljava/lang/String;
    const/16 p1, 0x2e

    move-object/from16 v0, p3

    move v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .end local p1           #extension:Ljava/lang/String;
    move-result p1

    .line 144
    .local p1, dotIndex:I
    if-gez p1, :cond_176

    .line 145
    const/4 p1, 0x1

    move-object/from16 v0, p5

    move v1, p1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    .end local p1           #dotIndex:I
    move-result-object p1

    .local p1, extension:Ljava/lang/String;
    move-object/from16 p4, p1

    .end local p1           #extension:Ljava/lang/String;
    .local p4, extension:Ljava/lang/String;
    move-object/from16 p5, p3

    .line 156
    .end local p2
    .end local p3           #filename:Ljava/lang/String;
    .local p5, filename:Ljava/lang/String;
    :goto_ab
    const/4 p1, 0x0

    .line 157
    .local p1, base:Ljava/io/File;
    const/4 p1, 0x0

    .line 161
    .local p1, stat:Landroid/os/StatFs;
    const/4 p1, 0x1

    move/from16 v0, p6

    move v1, p1

    if-eq v0, v1, :cond_bf

    .end local p1           #stat:Landroid/os/StatFs;
    const/4 p1, 0x2

    move/from16 v0, p6

    move v1, p1

    if-eq v0, v1, :cond_bf

    const/4 p1, 0x3

    move/from16 v0, p6

    move v1, p1

    if-ne v0, v1, :cond_1c2

    .line 166
    :cond_bf
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object p2

    .line 167
    .local p2, base:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 173
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result p3

    .line 175
    .local p3, blockSize:I
    :goto_d0
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    .line 176
    .local p1, availableBlocks:I
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v6, v0

    int-to-long v8, p1

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    mul-long/2addr v6, v8

    move/from16 v0, p7

    int-to-long v0, v0

    move-wide v8, v0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_192

    move-object p1, v5

    .end local v5           #stat:Landroid/os/StatFs;
    .local p1, stat:Landroid/os/StatFs;
    move-object/from16 p0, p2

    .line 222
    .end local p2           #base:Ljava/io/File;
    .end local p3           #blockSize:I
    .local p0, base:Ljava/io/File;
    :cond_e8
    const-string p1, "recovery"

    .end local p1           #stat:Landroid/os/StatFs;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 224
    .local p1, recoveryDir:Z
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #base:Ljava/io/File;
    move-object/from16 v0, p2

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 229
    .end local p5           #filename:Ljava/lang/String;
    .local p0, filename:Ljava/lang/String;
    sget-boolean p2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz p2, :cond_152

    .line 230
    const-string p2, "DownloadManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "target file: "

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_152
    move/from16 v0, p6

    move-object v1, p0

    move-object/from16 v2, p4

    move v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/Helpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 235
    .local p0, fullFilename:Ljava/lang/String;
    if-eqz p0, :cond_272

    .line 236
    new-instance p1, Lcom/android/providers/downloads/DownloadFileInfo;

    .end local p1           #recoveryDir:Z
    new-instance p2, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    move-object v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p3, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    move-object p0, p1

    goto/16 :goto_1b

    .line 147
    .local p0, context:Landroid/content/Context;
    .local p1, dotIndex:I
    .local p2, hint:Ljava/lang/String;
    .local p3, filename:Ljava/lang/String;
    .local p4, contentLocation:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    :cond_176
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p3

    move v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 149
    .local p2, extension:Ljava/lang/String;
    const/16 p4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p4           #contentLocation:Ljava/lang/String;
    move-result-object p1

    .end local p3           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    move-object/from16 p4, p2

    .end local p2           #extension:Ljava/lang/String;
    .local p4, extension:Ljava/lang/String;
    move-object/from16 p5, p1

    .end local p1           #filename:Ljava/lang/String;
    .local p5, filename:Ljava/lang/String;
    goto/16 :goto_ab

    .line 179
    .restart local v5       #stat:Landroid/os/StatFs;
    .local p1, availableBlocks:I
    .local p2, base:Ljava/io/File;
    .local p3, blockSize:I
    :cond_192
    move/from16 v0, p7

    int-to-long v0, v0

    move-wide v6, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v8, v0

    int-to-long v10, p1

    const-wide/16 v12, 0x4

    sub-long/2addr v10, v12

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {p0, v6, v7}, Lcom/android/providers/downloads/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z

    move-result p1

    .end local p1           #availableBlocks:I
    if-nez p1, :cond_1b9

    .line 182
    const-string p0, "DownloadManager"

    .end local p0           #context:Landroid/content/Context;
    const-string p1, "download aborted - not enough free space in internal storage"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x1ec

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_1b

    .line 187
    .restart local p0       #context:Landroid/content/Context;
    :cond_1b9
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    goto/16 :goto_d0

    .line 191
    .end local v5           #stat:Landroid/os/StatFs;
    .end local p2           #base:Ljava/io/File;
    .end local p3           #blockSize:I
    :cond_1c2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    const-string p1, "mounted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25f

    .line 192
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 193
    .local p1, root:Ljava/lang/String;
    new-instance p0, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #root:Ljava/lang/String;
    const-string p2, "/download"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local p0, base:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_228

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_228

    .line 196
    const-string p1, "DownloadManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "download aborted - can\'t create base directory "

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #base:Ljava/io/File;
    move-object/from16 v0, p2

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x1ec

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_1b

    .line 201
    .restart local p0       #base:Ljava/io/File;
    :cond_228
    new-instance p1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct/range {p1 .. p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 213
    .local p1, stat:Landroid/os/StatFs;
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p2

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 p2, v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    mul-long p2, p2, v5

    move/from16 v0, p7

    int-to-long v0, v0

    move-wide v5, v0

    cmp-long p2, p2, v5

    if-gez p2, :cond_e8

    .line 215
    const-string p0, "DownloadManager"

    .end local p0           #base:Ljava/io/File;
    const-string p1, "download aborted - not enough free space"

    .end local p1           #stat:Landroid/os/StatFs;
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x1ec

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_1b

    .line 204
    :cond_25f
    const-string p0, "DownloadManager"

    const-string p1, "download aborted - no external storage"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x1ec

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_1b

    .line 238
    .end local p5           #filename:Ljava/lang/String;
    .local p0, fullFilename:Ljava/lang/String;
    .local p1, recoveryDir:Z
    :cond_272
    new-instance p0, Lcom/android/providers/downloads/DownloadFileInfo;

    .end local p0           #fullFilename:Ljava/lang/String;
    const/4 p1, 0x0

    const/16 p2, 0x0

    const/16 p3, 0x1ec

    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_1b
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .registers 5
    .parameter "filename"

    .prologue
    .line 548
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 549
    .local v0, dir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_35
    const/4 v1, 0x1

    :goto_36
    return v1

    :cond_37
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const-string v5, "DownloadManager"

    .line 491
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 493
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_20

    .line 494
    const-string v3, "DownloadManager"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_13
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_1e

    .line 509
    const-string v3, "DownloadManager"

    const-string v3, "network is not available"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3

    .line 496
    :cond_20
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 497
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_13

    .line 498
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 499
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_41

    .line 500
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3f

    .line 501
    const-string v3, "DownloadManager"

    const-string v3, "network is available"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_3f
    const/4 v3, 0x1

    goto :goto_1f

    .line 498
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const-string v3, "DownloadManager"

    .line 518
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 520
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_15

    .line 521
    const-string v2, "DownloadManager"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_13
    :goto_13
    const/4 v2, 0x0

    :goto_14
    return v2

    .line 523
    :cond_15
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 524
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_44

    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 526
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_36

    .line 527
    const-string v2, "DownloadManager"

    const-string v2, "network is roaming"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_36
    const/4 v2, 0x1

    goto :goto_14

    .line 531
    :cond_38
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_13

    .line 532
    const-string v2, "DownloadManager"

    const-string v2, "network is not roaming"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 536
    :cond_44
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_13

    .line 537
    const-string v2, "DownloadManager"

    const-string v2, "not using mobile network"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "contentDisposition"

    .prologue
    .line 72
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 73
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 79
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_11
    return-object v1

    .line 76
    :catch_12
    move-exception v1

    .line 79
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .registers 3
    .parameter "lexer"

    .prologue
    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 584
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 585
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1c
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 594
    :goto_1f
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    .line 599
    return-void

    .line 592
    :cond_27
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V

    goto :goto_1f

    .line 597
    :cond_2b
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .registers 3
    .parameter "lexer"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_f
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 611
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    .line 612
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 613
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2b

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_2b
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 627
    :goto_2e
    return-void

    .line 621
    :cond_2f
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4d

    .line 622
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 623
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_49

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_49
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_2e

    .line 631
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "DownloadManager"

    .line 559
    if-nez p0, :cond_5

    .line 576
    :cond_4
    return-void

    .line 562
    :cond_5
    :try_start_5
    new-instance v1, Lcom/android/providers/downloads/Helpers$Lexer;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/downloads/Helpers$Lexer;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 563
    .local v1, lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 564
    invoke-virtual {v1}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    .line 565
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_1d} :catch_1d

    .line 567
    .end local v1           #lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 568
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_46

    .line 569
    const-string v2, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid selection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] triggered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_45
    throw v0

    .line 571
    :cond_46
    const-string v2, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid selection triggered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method
