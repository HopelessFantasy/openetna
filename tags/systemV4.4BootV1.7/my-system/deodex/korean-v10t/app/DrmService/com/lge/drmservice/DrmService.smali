.class public Lcom/lge/drmservice/DrmService;
.super Landroid/app/Service;
.source "DrmService.java"


# static fields
.field private static final INTENT_PATH:Ljava/lang/String; = "/data/lgdrm/INTENT"

.field private static final LGDRM_CERT_PATH:Ljava/lang/String; = "/lgdrm"

.field private static final LGDRM_DB_PATH:Ljava/lang/String; = "/data/lgdrm/SQLDB"

.field private static final LIBLGDRM_PATH:Ljava/lang/String; = "/system/lib/liblgdrm.so"

.field private static final LOG_TAG:Ljava/lang/String; = "DrmService"

.field private static final SECCLK_OMA_OFFSET_PATH:Ljava/lang/String; = "/data/lgdrm/omasecclk.dat"

.field private static final SECDRM_HASH_PATH:Ljava/lang/String; = "/data/lgdrm/liblgdrm.dat"

.field private static final UPDATE_INTERVAL:J = 0x2710L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOffset:J

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private prevUtc:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/drmservice/DrmService;->mHandler:Landroid/os/Handler;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/drmservice/DrmService;->prevUtc:J

    .line 218
    new-instance v0, Lcom/lge/drmservice/DrmService$1;

    invoke-direct {v0, p0}, Lcom/lge/drmservice/DrmService$1;-><init>(Lcom/lge/drmservice/DrmService;)V

    iput-object v0, p0, Lcom/lge/drmservice/DrmService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/drmservice/DrmService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/drmservice/DrmService;->getDrmClockUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/drmservice/DrmService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/drmservice/DrmService;->sendRightsUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/drmservice/DrmService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/drmservice/DrmService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private compareHash()Z
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "DrmService"

    const-string v9, "/data/lgdrm/liblgdrm.dat"

    .line 261
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/lib/liblgdrm.so"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 263
    const-string v9, "DrmService"

    const-string v9, "file not exist /system/lib/liblgdrm.so"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 321
    :goto_1b
    return v9

    .line 267
    :cond_1c
    const/4 v1, 0x0

    .line 270
    .local v1, buf:[B
    :try_start_1d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 272
    .local v6, in:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v1, v9, [B

    .line 273
    if-nez v1, :cond_2f

    .line 275
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    move v9, v11

    .line 276
    goto :goto_1b

    .line 279
    :cond_2f
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 280
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_35} :catch_62
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_35} :catch_69

    .line 295
    :try_start_35
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 296
    .local v0, algorithm:Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 297
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 298
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 301
    .local v7, messageDigest:[B
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/lgdrm/liblgdrm.dat"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v4, hashfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_79

    .line 303
    const-string v9, "/data/lgdrm/liblgdrm.dat"

    invoke-direct {p0, v9}, Lcom/lge/drmservice/DrmService;->readHashcode(Ljava/lang/String;)[B

    move-result-object v5

    .line 304
    .local v5, hashvalue:[B
    if-eqz v5, :cond_77

    .line 305
    invoke-static {v5, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z
    :try_end_5d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_5d} :catch_80

    move-result v9

    if-eqz v9, :cond_70

    move v9, v12

    .line 306
    goto :goto_1b

    .line 282
    .end local v0           #algorithm:Ljava/security/MessageDigest;
    .end local v4           #hashfile:Ljava/io/File;
    .end local v5           #hashvalue:[B
    .end local v6           #in:Ljava/io/FileInputStream;
    .end local v7           #messageDigest:[B
    :catch_62
    move-exception v9

    move-object v2, v9

    .line 284
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v9, v11

    .line 285
    goto :goto_1b

    .line 287
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_69
    move-exception v9

    move-object v2, v9

    .line 289
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v9, v11

    .line 290
    goto :goto_1b

    .line 308
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #algorithm:Ljava/security/MessageDigest;
    .restart local v4       #hashfile:Ljava/io/File;
    .restart local v5       #hashvalue:[B
    .restart local v6       #in:Ljava/io/FileInputStream;
    .restart local v7       #messageDigest:[B
    :cond_70
    :try_start_70
    const-string v9, "DrmService"

    const-string v10, "hash code not equal"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    move v9, v11

    .line 311
    goto :goto_1b

    .line 314
    .end local v5           #hashvalue:[B
    :cond_79
    const-string v9, "/data/lgdrm/liblgdrm.dat"

    invoke-direct {p0, v9, v7}, Lcom/lge/drmservice/DrmService;->writeHashcode(Ljava/lang/String;[B)Z
    :try_end_7e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_70 .. :try_end_7e} :catch_80

    move v9, v12

    .line 315
    goto :goto_1b

    .line 317
    .end local v0           #algorithm:Ljava/security/MessageDigest;
    .end local v4           #hashfile:Ljava/io/File;
    .end local v7           #messageDigest:[B
    :catch_80
    move-exception v9

    move-object v8, v9

    .line 318
    .local v8, nsae:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move v9, v12

    .line 321
    goto :goto_1b
.end method

.method private doIntegrityCheck()V
    .registers 11

    .prologue
    const-string v9, "DrmService"

    const-string v8, " is deleted"

    .line 227
    invoke-direct {p0}, Lcom/lge/drmservice/DrmService;->compareHash()Z

    move-result v6

    if-nez v6, :cond_9c

    .line 229
    new-instance v0, Ljava/io/File;

    const-string v6, "/lgdrm"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, CertDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 231
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_5a

    array-length v6, v3

    if-lez v6, :cond_5a

    .line 232
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1b
    array-length v6, v3

    if-ge v4, v6, :cond_5a

    .line 234
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_57

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".cer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 236
    const-string v6, "DrmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is deleted"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 232
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 243
    .end local v4           #i:I
    :cond_5a
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/lgdrm/SQLDB"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, DBDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 245
    .local v2, DBfiles:[Ljava/io/File;
    if-eqz v2, :cond_9c

    array-length v6, v2

    if-lez v6, :cond_9c

    .line 246
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6b
    array-length v6, v2

    if-ge v5, v6, :cond_9c

    .line 248
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_99

    .line 249
    const-string v6, "DrmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is deleted"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 246
    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 255
    .end local v0           #CertDir:Ljava/io/File;
    .end local v1           #DBDir:Ljava/io/File;
    .end local v2           #DBfiles:[Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v5           #j:I
    :cond_9c
    return-void
.end method

.method private getDrmClockUpdate()V
    .registers 11

    .prologue
    const-string v9, "DrmService"

    const-string v8, "/data/lgdrm/omasecclk.dat"

    .line 70
    iget-wide v4, p0, Lcom/lge/drmservice/DrmService;->prevUtc:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_13

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/drmservice/DrmService;->prevUtc:J

    .line 93
    :goto_12
    return-void

    .line 75
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, currUtc:J
    iget-wide v4, p0, Lcom/lge/drmservice/DrmService;->prevUtc:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 79
    .local v2, diff:J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    cmp-long v4, v4, v6

    if-lez v4, :cond_75

    .line 81
    const-string v4, "DrmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time changed diff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v4, "/data/lgdrm/omasecclk.dat"

    invoke-direct {p0, v8}, Lcom/lge/drmservice/DrmService;->readSecureClockOffset(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 85
    iget-wide v4, p0, Lcom/lge/drmservice/DrmService;->mOffset:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/lge/drmservice/DrmService;->mOffset:J

    .line 86
    const-string v4, "/data/lgdrm/omasecclk.dat"

    iget-wide v4, p0, Lcom/lge/drmservice/DrmService;->mOffset:J

    invoke-direct {p0, v8, v4, v5}, Lcom/lge/drmservice/DrmService;->writeSecureClockOffset(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 87
    const-string v4, "DrmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "udated seclock offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/lge/drmservice/DrmService;->mOffset:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_75
    iput-wide v0, p0, Lcom/lge/drmservice/DrmService;->prevUtc:J

    goto :goto_12
.end method

.method private readHashcode(Ljava/lang/String;)[B
    .registers 8
    .parameter "filepath"

    .prologue
    const/4 v5, 0x0

    .line 345
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 347
    const/4 v0, 0x0

    .line 350
    .local v0, buf:[B
    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 352
    .local v3, in:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 353
    if-nez v0, :cond_1f

    .line 355
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v4, v5

    .line 373
    .end local v0           #buf:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    :goto_1e
    return-object v4

    .line 359
    .restart local v0       #buf:[B
    .restart local v3       #in:Ljava/io/FileInputStream;
    :cond_1f
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 360
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_25} :catch_2e

    move-object v4, v0

    .line 362
    goto :goto_1e

    .line 364
    .end local v3           #in:Ljava/io/FileInputStream;
    :catch_27
    move-exception v4

    move-object v1, v4

    .line 366
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2c
    :goto_2c
    move-object v4, v5

    .line 373
    goto :goto_1e

    .line 368
    .restart local v0       #buf:[B
    :catch_2e
    move-exception v4

    move-object v1, v4

    .line 370
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c
.end method

.method private readSecureClockOffset(Ljava/lang/String;)Z
    .registers 11
    .parameter "offsetPath"

    .prologue
    const/4 v8, 0x0

    .line 96
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 98
    const/4 v0, 0x0

    .line 101
    .local v0, buf:[B
    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v3, in:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 104
    if-nez v0, :cond_1f

    .line 106
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move v4, v8

    .line 125
    .end local v0           #buf:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    :goto_1e
    return v4

    .line 110
    .restart local v0       #buf:[B
    .restart local v3       #in:Ljava/io/FileInputStream;
    :cond_1f
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 111
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 112
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/drmservice/DrmService;->mOffset:J

    .line 113
    const-string v4, "DrmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readSecureClockOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lge/drmservice/DrmService;->mOffset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_4e} :catch_50
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_4e} :catch_57

    .line 114
    const/4 v4, 0x1

    goto :goto_1e

    .line 116
    .end local v3           #in:Ljava/io/FileInputStream;
    :catch_50
    move-exception v4

    move-object v1, v4

    .line 118
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_55
    :goto_55
    move v4, v8

    .line 125
    goto :goto_1e

    .line 120
    .restart local v0       #buf:[B
    :catch_57
    move-exception v4

    move-object v1, v4

    .line 122
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55
.end method

.method private sendRightsUpdate()V
    .registers 9

    .prologue
    .line 155
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/lgdrm/INTENT"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, intentDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 158
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_68

    array-length v5, v1

    if-lez v5, :cond_68

    .line 159
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v5, v1

    if-ge v2, v5, :cond_68

    .line 160
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 161
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.lge.lgdrm.action.UPDATE_DRM_STATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.lge.lgdrm.extra.CID"

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v5, "DrmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendRightsUpdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_4c
    invoke-virtual {p0, v3}, Lcom/lge/drmservice/DrmService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_57

    .line 170
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 159
    .end local v3           #intent:Landroid/content/Intent;
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 166
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_57
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    :try_start_58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_61

    .line 170
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_54

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_61
    move-exception v5

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v5

    .line 175
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_68
    return-void
.end method

.method private writeHashcode(Ljava/lang/String;[B)Z
    .registers 6
    .parameter "filename"
    .parameter "digest"

    .prologue
    .line 327
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_14

    .line 330
    const/4 v2, 0x1

    .line 341
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_c
    return v2

    .line 332
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 334
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 341
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_12
    const/4 v2, 0x0

    goto :goto_c

    .line 336
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 338
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method private writeSecureClockOffset(Ljava/lang/String;J)Z
    .registers 11
    .parameter "offsetPath"
    .parameter "offset"

    .prologue
    .line 129
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 135
    :cond_e
    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, out:Ljava/io/FileOutputStream;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, offsetStr:Ljava/lang/String;
    const-string v4, "DrmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeSecureClockOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_39} :catch_3b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_39} :catch_42

    .line 140
    const/4 v4, 0x1

    .line 151
    .end local v2           #offsetStr:Ljava/lang/String;
    .end local v3           #out:Ljava/io/FileOutputStream;
    :goto_3a
    return v4

    .line 142
    :catch_3b
    move-exception v4

    move-object v0, v4

    .line 144
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 151
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_40
    const/4 v4, 0x0

    goto :goto_3a

    .line 146
    :catch_42
    move-exception v4

    move-object v0, v4

    .line 148
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "i"

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Drm Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 193
    const-string v0, "DrmService"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/lge/drmservice/DrmService;->doIntegrityCheck()V

    .line 195
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 212
    const-string v0, "DrmService"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/lge/drmservice/DrmService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/drmservice/DrmService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 202
    const-string v0, "DrmService"

    const-string v1, "Service onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/lge/drmservice/DrmService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/drmservice/DrmService;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method
