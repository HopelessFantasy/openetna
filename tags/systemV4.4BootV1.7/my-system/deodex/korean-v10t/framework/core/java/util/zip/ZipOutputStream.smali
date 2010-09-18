.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field static final ZIPDataDescriptorFlag:I = 0x8

.field static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private cDir:Ljava/io/ByteArrayOutputStream;

.field private comment:Ljava/lang/String;

.field private compressLevel:I

.field private compressMethod:I

.field private final crc:Ljava/util/zip/CRC32;

.field private curOffset:I

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private final entries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nameBytes:[B

.field private nameLength:I

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "p1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 96
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    .line 75
    iput v2, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    .line 81
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 83
    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 97
    return-void
.end method

.method static toUTF8Bytes(Ljava/lang/String;I)[B
    .registers 7
    .parameter "value"
    .parameter "length"

    .prologue
    .line 439
    new-array v3, p1, [B

    .line 440
    .local v3, result:[B
    array-length v2, v3

    .line 441
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4e

    .line 442
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 443
    .local v0, ch:C
    const/16 v4, 0x80

    if-ge v0, v4, :cond_19

    .line 444
    add-int/lit8 v2, v2, -0x1

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    goto :goto_7

    .line 445
    :cond_19
    const/16 v4, 0x800

    if-ge v0, v4, :cond_30

    .line 446
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 447
    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto :goto_7

    .line 449
    :cond_30
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 450
    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 451
    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v4, v0, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto :goto_7

    .line 454
    .end local v0           #ch:C
    :cond_4e
    return-object v3
.end method

.method static utf8Count(Ljava/lang/String;)I
    .registers 5
    .parameter "value"

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, total:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    .line 426
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 427
    .local v0, ch:C
    const/16 v3, 0x80

    if-ge v0, v3, :cond_14

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 429
    :cond_14
    const/16 v3, 0x800

    if-ge v0, v3, :cond_1b

    .line 430
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 432
    :cond_1b
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 435
    .end local v0           #ch:C
    :cond_1e
    return v2
.end method

.method private writeLong(Ljava/io/OutputStream;J)J
    .registers 6
    .parameter "os"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 388
    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 389
    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 390
    const/16 v0, 0x18

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 391
    return-wide p2
.end method

.method private writeShort(Ljava/io/OutputStream;I)I
    .registers 4
    .parameter "os"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 396
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 397
    return p2
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_f

    .line 110
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 111
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 114
    :cond_f
    return-void
.end method

.method public closeEntry()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x14

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 125
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_16

    .line 126
    new-instance v1, Ljava/io/IOException;

    const-string v2, "archive.1E"

    invoke-static {v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_16
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v1, :cond_1b

    .line 200
    :goto_1a
    return-void

    .line 131
    :cond_1b
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-ne v1, v5, :cond_26

    .line 132
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 136
    :cond_26
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_60

    .line 137
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_48

    .line 138
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive.20"

    invoke-static {v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_48
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v3, v3, Ljava/util/zip/CRC32;->tbytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_60

    .line 141
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive.21"

    invoke-static {v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_60
    const/16 v1, 0x1e

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 147
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-eqz v1, :cond_a9

    .line 148
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 149
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v2, 0x8074b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 150
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v1, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 151
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-direct {p0, v1, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 152
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v1, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 155
    :cond_a9
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x2014b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 156
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 157
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 158
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_1a0

    move v2, v6

    :goto_c6
    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 160
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 161
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v2, v2, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 162
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v2, v2, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 163
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 164
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-ne v1, v5, :cond_1a3

    .line 165
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v1, v1

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 166
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 171
    :goto_119
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 172
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v1, :cond_1bf

    .line 173
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 178
    :goto_13c
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_1c6

    .line 179
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 183
    :goto_14d
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 184
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 185
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 186
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 187
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 189
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v1, :cond_17e

    .line 190
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    :cond_17e
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    .line 193
    if-eqz v0, :cond_190

    .line 194
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    :cond_190
    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 197
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 198
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 199
    iput-boolean v6, p0, Ljava/util/zip/ZipOutputStream;->done:Z

    goto/16 :goto_1a

    .end local v0           #c:Ljava/lang/String;
    :cond_1a0
    move v2, v5

    .line 158
    goto/16 :goto_c6

    .line 168
    :cond_1a3
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v1, v1

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v4, v4, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 169
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v2, v2, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto/16 :goto_119

    .line 175
    :cond_1bf
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto/16 :goto_13c

    .line 181
    .restart local v0       #c:Ljava/lang/String;
    :cond_1c6
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_14d
.end method

.method public finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_11

    .line 213
    new-instance v1, Ljava/io/IOException;

    const-string v2, "archive.1E"

    invoke-static {v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_11
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_16

    .line 243
    :goto_15
    return-void

    .line 218
    :cond_16
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2a

    .line 219
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive.28"

    invoke-static {v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_2a
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_31

    .line 222
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 224
    :cond_31
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 226
    .local v0, cdirSize:I
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 227
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 228
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 229
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 230
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 231
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 232
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 233
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    if-eqz v1, :cond_96

    .line 234
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 235
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 240
    :goto_87
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    goto :goto_15

    .line 237
    :cond_96
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_87
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 13
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const-string v10, "archive.21"

    .line 259
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_f

    .line 260
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 262
    :cond_f
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    if-nez v0, :cond_69

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-ne v0, v8, :cond_69

    .line 264
    :cond_1f
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_31

    .line 266
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive.20"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_31
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_49

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_49

    .line 270
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive.21"

    invoke-static {v10}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_49
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_69

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_69

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_69

    .line 275
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive.21"

    invoke-static {v10}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_69
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_79

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string v1, "archive.1E"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_79
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 284
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive.29"

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_91
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->utf8Count(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    .line 287
    iget v0, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    const v1, 0xffff

    if-le v0, v1, :cond_ae

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "archive.2A"

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_ae
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 293
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 294
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-ne v0, v8, :cond_cf

    .line 296
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v1, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 298
    :cond_cf
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v1, 0x4034b50

    invoke-direct {p0, v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 299
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 300
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_189

    move v1, v9

    :goto_e9
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 302
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 303
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10a

    .line 304
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 306
    :cond_10a
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v1, v1, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 307
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v1, v1, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 309
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_19e

    .line 310
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_18d

    .line 311
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 315
    :cond_134
    :goto_134
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 316
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 317
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 323
    :goto_14f
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget v1, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 324
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v0, v0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v0, :cond_1ae

    .line 325
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 329
    :goto_166
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v0, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget v1, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-static {v0, v1}, Ljava/util/zip/ZipOutputStream;->toUTF8Bytes(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 330
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 331
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v0, v0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v0, :cond_188

    .line 332
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 334
    :cond_188
    return-void

    .line 300
    :cond_189
    const/16 v1, 0x8

    goto/16 :goto_e9

    .line 312
    :cond_18d
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_134

    .line 313
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->compressedSize:J

    goto :goto_134

    .line 319
    :cond_19e
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 320
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 321
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto :goto_14f

    .line 327
    :cond_1ae
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_166
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 4
    .parameter "comment"

    .prologue
    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_15

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "archive.2B"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_15
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setLevel(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 361
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x9

    if-le p1, v0, :cond_d

    .line 363
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 365
    :cond_d
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    .line 366
    return-void
.end method

.method public setMethod(I)V
    .registers 3
    .parameter "method"

    .prologue
    .line 378
    if-eqz p1, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 381
    :cond_c
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    .line 383
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    array-length v0, p1

    if-gt p2, v0, :cond_b

    if-ltz p3, :cond_b

    if-ltz p2, :cond_b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_11

    .line 407
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 410
    :cond_11
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_21

    .line 412
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive.2C"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_21
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_34

    .line 416
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 420
    :goto_2e
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 421
    return-void

    .line 418
    :cond_34
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    goto :goto_2e
.end method
