.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipEntry$LittleEndianReader;
    }
.end annotation


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field static final USES_DATA_DESCR:I = 0x8


# instance fields
.field comment:Ljava/lang/String;

.field commentLen:I

.field compressedSize:J

.field compressionMethod:I

.field crc:J

.field extra:[B

.field extraLen:I

.field private mDiskNumberStart:I

.field private mExternalAttrs:J

.field private mGPBitFlag:I

.field private mInternalAttrs:I

.field mLocalHeaderRelOffset:J

.field private mVersionMadeBy:I

.field private mVersionToExtract:I

.field modDate:I

.field name:Ljava/lang/String;

.field nameLen:I

.field size:J

.field time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    const/4 v2, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 52
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 119
    if-nez p1, :cond_1c

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 122
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_2b

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_2b
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 128
    const/16 v0, 0x317

    iput v0, p0, Ljava/util/zip/ZipEntry;->mVersionMadeBy:I

    .line 129
    const/16 v0, 0x14

    iput v0, p0, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    .line 130
    iput v5, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    .line 131
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 132
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 133
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 134
    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 135
    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 136
    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 137
    iput v2, p0, Ljava/util/zip/ZipEntry;->extraLen:I

    .line 138
    iput v2, p0, Ljava/util/zip/ZipEntry;->nameLen:I

    .line 139
    iput v5, p0, Ljava/util/zip/ZipEntry;->mDiskNumberStart:I

    .line 140
    iput v5, p0, Ljava/util/zip/ZipEntry;->mInternalAttrs:I

    .line 141
    const-wide v0, 0x81b60020L

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->mExternalAttrs:J

    .line 142
    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 143
    iput-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 144
    iput-object v6, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 146
    return-void
.end method

.method constructor <init>(Ljava/util/zip/ZipEntry$LittleEndianReader;Ljava/io/InputStream;)V
    .registers 15
    .parameter "ler"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    const-wide v10, 0xffffffffL

    const-string v9, "ISO-8859-1"

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 52
    iput v6, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 480
    iget-object v1, p1, Ljava/util/zip/ZipEntry$LittleEndianReader;->hdrBuf:[B

    .line 481
    .local v1, hdrBuf:[B
    invoke-direct {p0, p2, v1}, Ljava/util/zip/ZipEntry;->myReadFully(Ljava/io/InputStream;[B)V

    .line 483
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v8, 0x3

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long/2addr v8, v10

    or-long v3, v6, v8

    .line 485
    .local v3, sig:J
    const-wide/32 v6, 0x2014b50

    cmp-long v6, v3, v6

    if-eqz v6, :cond_4c

    .line 486
    new-instance v6, Ljava/util/zip/ZipException;

    const-string v7, "Central Directory Entry not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 488
    :cond_4c
    const/4 v6, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x5

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->mVersionMadeBy:I

    .line 489
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x7

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    .line 490
    const/16 v6, 0x8

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x9

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    .line 491
    const/16 v6, 0xa

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xb

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 492
    const/16 v6, 0xc

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xd

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 493
    const/16 v6, 0xe

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xf

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 494
    const/16 v6, 0x10

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x11

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x12

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v8, 0x13

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 497
    const/16 v6, 0x14

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x15

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x16

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v8, 0x17

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 500
    const/16 v6, 0x18

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x19

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x1a

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v8, 0x1b

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 503
    const/16 v6, 0x1c

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x1d

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->nameLen:I

    .line 504
    const/16 v6, 0x1e

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x1f

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->extraLen:I

    .line 505
    const/16 v6, 0x20

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x21

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->commentLen:I

    .line 506
    const/16 v6, 0x22

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x23

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->mDiskNumberStart:I

    .line 507
    const/16 v6, 0x24

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x25

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Ljava/util/zip/ZipEntry;->mInternalAttrs:I

    .line 508
    const/16 v6, 0x26

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x27

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x28

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v8, 0x29

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->mExternalAttrs:J

    .line 511
    const/16 v6, 0x2a

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x2b

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/16 v7, 0x2c

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v8, 0x2d

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x18

    int-to-long v8, v8

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 515
    iget v6, p0, Ljava/util/zip/ZipEntry;->nameLen:I

    new-array v2, v6, [B

    .line 516
    .local v2, nameBytes:[B
    invoke-direct {p0, p2, v2}, Ljava/util/zip/ZipEntry;->myReadFully(Ljava/io/InputStream;[B)V

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, commentBytes:[B
    iget v6, p0, Ljava/util/zip/ZipEntry;->commentLen:I

    if-lez v6, :cond_1ca

    .line 520
    iget v6, p0, Ljava/util/zip/ZipEntry;->commentLen:I

    new-array v0, v6, [B

    .line 521
    invoke-direct {p0, p2, v0}, Ljava/util/zip/ZipEntry;->myReadFully(Ljava/io/InputStream;[B)V

    .line 524
    :cond_1ca
    iget v6, p0, Ljava/util/zip/ZipEntry;->extraLen:I

    if-lez v6, :cond_1d9

    .line 525
    iget v6, p0, Ljava/util/zip/ZipEntry;->extraLen:I

    new-array v6, v6, [B

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 526
    iget-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {p0, p2, v6}, Ljava/util/zip/ZipEntry;->myReadFully(Ljava/io/InputStream;[B)V

    .line 538
    :cond_1d9
    :try_start_1d9
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 539
    if-eqz v0, :cond_1ee

    .line 540
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 547
    :goto_1ed
    return-void

    .line 542
    :cond_1ee
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;
    :try_end_1f1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d9 .. :try_end_1f1} :catch_1f2

    goto :goto_1ed

    .line 544
    :catch_1f2
    move-exception v6

    move-object v5, v6

    .line 545
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/InternalError;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 5
    .parameter "ze"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 52
    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 410
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 411
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 412
    iget v0, p1, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 413
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 414
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 415
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 416
    iget v0, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 417
    iget v0, p1, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 418
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 423
    iget v0, p1, Ljava/util/zip/ZipEntry;->mVersionMadeBy:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->mVersionMadeBy:I

    .line 424
    iget v0, p1, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    .line 425
    iget v0, p1, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    .line 426
    iget v0, p1, Ljava/util/zip/ZipEntry;->extraLen:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->extraLen:I

    .line 427
    iget v0, p1, Ljava/util/zip/ZipEntry;->nameLen:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLen:I

    .line 428
    iget v0, p1, Ljava/util/zip/ZipEntry;->mDiskNumberStart:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->mDiskNumberStart:I

    .line 429
    iget v0, p1, Ljava/util/zip/ZipEntry;->mInternalAttrs:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->mInternalAttrs:I

    .line 430
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->mExternalAttrs:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->mExternalAttrs:J

    .line 431
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 433
    return-void
.end method

.method private myReadFully(Ljava/io/InputStream;[B)V
    .registers 7
    .parameter "in"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    array-length v1, p2

    .line 551
    .local v1, len:I
    const/4 v2, 0x0

    .line 553
    .local v2, off:I
    :goto_2
    if-lez v1, :cond_13

    .line 554
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 555
    .local v0, count:I
    if-gtz v0, :cond_10

    .line 556
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 557
    :cond_10
    add-int/2addr v2, v0

    .line 558
    sub-int/2addr v1, v0

    goto :goto_2

    .line 560
    .end local v0           #count:I
    :cond_13
    return-void
.end method

.method static readIntLE(Ljava/io/RandomAccessFile;)J
    .registers 7
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 610
    .local v0, b0:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 611
    .local v1, b1:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 612
    .local v2, b2:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 613
    .local v3, b3:I
    if-gez v3, :cond_1a

    .line 614
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "in ZipEntry.readIntLE(RandomAccessFile)"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :cond_1a
    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v0

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    or-int/2addr v4, v5

    int-to-long v4, v4

    return-wide v4
.end method

.method static readShortLE(Ljava/io/RandomAccessFile;)I
    .registers 5
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 596
    .local v0, b0:I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 597
    .local v1, b1:I
    if-gez v1, :cond_12

    .line 598
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "in ZipEntry.readShortLE(RandomAccessFile)"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 599
    :cond_12
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2
.end method

.method static writeIntLE(Ljava/io/OutputStream;J)V
    .registers 5
    .parameter "out"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_c

    .line 667
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 668
    :cond_c
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 669
    long-to-int v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 670
    long-to-int v0, p1

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 671
    long-to-int v0, p1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 672
    return-void
.end method

.method static writeShortLE(Ljava/io/OutputStream;I)V
    .registers 3
    .parameter "out"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 656
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 657
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 443
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .registers 3

    .prologue
    .line 168
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .registers 3

    .prologue
    .line 178
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getExtra()[B
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method getGPBitFlag()I
    .registers 2

    .prologue
    .line 567
    iget v0, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    return v0
.end method

.method getLocalHeaderRelOffset()J
    .registers 3

    .prologue
    .line 574
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    return-wide v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 221
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .registers 8

    .prologue
    .line 232
    iget v1, p0, Ljava/util/zip/ZipEntry;->time:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 233
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 234
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 235
    iget v1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    iget v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    and-int/lit8 v3, v3, 0x1f

    iget v4, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v4, v4, 0xb

    and-int/lit8 v4, v4, 0x1f

    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljava/util/zip/ZipEntry;->time:I

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 238
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 240
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :goto_41
    return-wide v1

    :cond_42
    const-wide/16 v1, -0x1

    goto :goto_41
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 4
    .parameter "string"

    .prologue
    .line 262
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_e

    .line 263
    :cond_b
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 267
    return-void

    .line 265
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCompressedSize(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 277
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 278
    return-void
.end method

.method public setCrc(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 291
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 295
    return-void

    .line 293
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setDateTime(II)V
    .registers 3
    .parameter "lastModFileDate"
    .parameter "lastModFileTime"

    .prologue
    .line 581
    iput p2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 582
    iput p1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 583
    return-void
.end method

.method public setExtra([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 307
    if-eqz p1, :cond_8

    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_b

    .line 308
    :cond_8
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 312
    return-void

    .line 310
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setGPBitFlag(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 570
    iput p1, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    .line 571
    return-void
.end method

.method setLocalHeaderRelOffset(J)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 577
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 578
    return-void
.end method

.method public setMethod(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 325
    if-eqz p1, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 328
    :cond_c
    iput p1, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 329
    return-void
.end method

.method public setSize(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 341
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 342
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 346
    return-void

    .line 344
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .registers 9
    .parameter "value"

    .prologue
    const/16 v5, 0x7bc

    const/4 v4, 0x1

    .line 357
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 358
    .local v0, cal:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 359
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 360
    .local v1, year:I
    if-ge v1, v5, :cond_1e

    .line 361
    const/16 v2, 0x21

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 362
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 371
    :goto_1d
    return-void

    .line 364
    :cond_1e
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 365
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 366
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x9

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 367
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 368
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 369
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    goto :goto_1d
.end method

.method setVersionToExtract(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 563
    iput p1, p0, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    .line 564
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method writeCDE(Ljava/io/OutputStream;)I
    .registers 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "ISO-8859-1"

    .line 738
    const-wide/32 v5, 0x2014b50

    invoke-static {p1, v5, v6}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 739
    iget v5, p0, Ljava/util/zip/ZipEntry;->mVersionMadeBy:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 740
    iget v5, p0, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 741
    iget v5, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 742
    iget v5, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 743
    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 744
    iget v5, p0, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 745
    iget-wide v5, p0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {p1, v5, v6}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 746
    iget-wide v5, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-static {p1, v5, v6}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 747
    iget-wide v5, p0, Ljava/util/zip/ZipEntry;->size:J

    invoke-static {p1, v5, v6}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 749
    const/4 v3, 0x0

    .local v3, nameBytes:[B
    const/4 v0, 0x0

    .line 751
    .local v0, commentBytes:[B
    :try_start_37
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 752
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    if-eqz v5, :cond_4b

    .line 753
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_4a} :catch_8c

    move-result-object v0

    .line 759
    :cond_4b
    const/4 v2, 0x0

    .local v2, extraLen:I
    const/4 v1, 0x0

    .line 760
    .local v1, commentLen:I
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v5, :cond_54

    .line 761
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v2, v5

    .line 762
    :cond_54
    if-eqz v0, :cond_57

    .line 763
    array-length v1, v0

    .line 765
    :cond_57
    array-length v5, v3

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 766
    invoke-static {p1, v2}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 767
    invoke-static {p1, v1}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 768
    iget v5, p0, Ljava/util/zip/ZipEntry;->mDiskNumberStart:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 769
    iget v5, p0, Ljava/util/zip/ZipEntry;->mInternalAttrs:I

    invoke-static {p1, v5}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 770
    iget-wide v5, p0, Ljava/util/zip/ZipEntry;->mExternalAttrs:J

    invoke-static {p1, v5, v6}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 771
    iget-wide v5, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    invoke-static {p1, v5, v6}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 772
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 773
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v5, :cond_81

    .line 774
    iget-object v5, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 775
    :cond_81
    if-eqz v0, :cond_86

    .line 776
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 778
    :cond_86
    array-length v5, v3

    add-int/lit8 v5, v5, 0x2e

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    return v5

    .line 755
    .end local v1           #commentLen:I
    .end local v2           #extraLen:I
    :catch_8c
    move-exception v5

    move-object v4, v5

    .line 756
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/InternalError;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method writeDD(Ljava/io/OutputStream;)I
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    const-wide/32 v0, 0x8074b50

    invoke-static {p1, v0, v1}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 726
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {p1, v0, v1}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 727
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-static {p1, v0, v1}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 728
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    invoke-static {p1, v0, v1}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 729
    const/16 v0, 0x10

    return v0
.end method

.method writeLFH(Ljava/io/OutputStream;)I
    .registers 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 680
    iget v3, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-ltz v3, :cond_20

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    if-ltz v3, :cond_20

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    if-ltz v3, :cond_20

    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_20

    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_20

    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    .line 686
    :cond_20
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 688
    :cond_26
    const-wide/32 v3, 0x4034b50

    invoke-static {p1, v3, v4}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 689
    iget v3, p0, Ljava/util/zip/ZipEntry;->mVersionToExtract:I

    invoke-static {p1, v3}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 690
    iget v3, p0, Ljava/util/zip/ZipEntry;->mGPBitFlag:I

    invoke-static {p1, v3}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 691
    iget v3, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    invoke-static {p1, v3}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 692
    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    invoke-static {p1, v3}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 693
    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-static {p1, v3}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 694
    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {p1, v3, v4}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 695
    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-static {p1, v3, v4}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 696
    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->size:J

    invoke-static {p1, v3, v4}, Ljava/util/zip/ZipEntry;->writeIntLE(Ljava/io/OutputStream;J)V

    .line 700
    :try_start_54
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_5b} :catch_7c

    move-result-object v1

    .line 706
    .local v1, nameBytes:[B
    const/4 v0, 0x0

    .line 707
    .local v0, extraLen:I
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_64

    .line 708
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v0, v3

    .line 710
    :cond_64
    array-length v3, v1

    invoke-static {p1, v3}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 711
    invoke-static {p1, v0}, Ljava/util/zip/ZipEntry;->writeShortLE(Ljava/io/OutputStream;I)V

    .line 712
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 713
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_77

    .line 714
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 716
    :cond_77
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v0

    return v3

    .line 702
    .end local v0           #extraLen:I
    .end local v1           #nameBytes:[B
    :catch_7c
    move-exception v3

    move-object v2, v3

    .line 703
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method
