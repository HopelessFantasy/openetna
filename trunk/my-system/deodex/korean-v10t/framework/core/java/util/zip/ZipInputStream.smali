.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field static final DEFLATED:I = 0x8

.field static final STORED:I = 0x0

.field static final ZIPDataDescriptorFlag:I = 0x8

.field static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private charBuf:[C

.field private final crc:Ljava/util/zip/CRC32;

.field currentEntry:Ljava/util/zip/ZipEntry;

.field private entriesEnd:Z

.field private entryIn:I

.field private hasDD:Z

.field private final hdrBuf:[B

.field private inRead:I

.field private lastRead:I

.field private nameBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .parameter "stream"

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 91
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 65
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 67
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 69
    iput v3, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 71
    iput v3, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 75
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    .line 77
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 79
    new-array v0, v4, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    .line 81
    new-array v0, v4, [C

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    .line 92
    if-nez p1, :cond_38

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    :cond_38
    return-void
.end method

.method private getLong([BI)J
    .registers 8
    .parameter "buffer"
    .parameter "off"

    .prologue
    .line 407
    const-wide/16 v0, 0x0

    .line 408
    .local v0, l:J
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 409
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 410
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 411
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 412
    return-wide v0
.end method

.method private getShort([BI)I
    .registers 5
    .parameter "buffer"
    .parameter "off"

    .prologue
    .line 403
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v0, :cond_10

    .line 381
    new-instance v0, Ljava/io/IOException;

    const-string v1, "archive.1E"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_10
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_16

    .line 384
    const/4 v0, 0x1

    .line 386
    :goto_15
    return v0

    :cond_16
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    move-result v0

    goto :goto_15
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 108
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 109
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 112
    :cond_b
    return-void
.end method

.method public closeEntry()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 123
    iget-boolean v4, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v4, :cond_13

    .line 124
    new-instance v4, Ljava/io/IOException;

    const-string v5, "archive.1E"

    invoke-static {v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_13
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_18

    .line 172
    :cond_17
    :goto_17
    return-void

    .line 130
    :cond_18
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    instance-of v4, v4, Ljava/util/jar/JarEntry;

    if-eqz v4, :cond_30

    .line 131
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    check-cast v4, Ljava/util/jar/JarEntry;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    .line 132
    .local v3, temp:Ljava/util/jar/Attributes;
    if-eqz v3, :cond_30

    const-string v4, "hidden"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 137
    .end local v3           #temp:Ljava/util/jar/Attributes;
    :cond_30
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipInputStream;->skip(J)J

    .line 139
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-ne v4, v9, :cond_83

    .line 140
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v1

    .line 141
    .local v1, inB:I
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    .line 146
    .local v2, out:I
    :goto_4a
    const/4 v0, 0x0

    .line 148
    .local v0, diff:I
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    sub-int v0, v4, v1

    if-eqz v0, :cond_5d

    .line 149
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v4, Ljava/io/PushbackInputStream;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v6, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v6, v0

    invoke-virtual {v4, v5, v6, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 152
    :cond_5d
    iget-boolean v4, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    if-eqz v4, :cond_a9

    .line 153
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v8, v6}, Ljava/io/InputStream;->read([BII)I

    .line 154
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    invoke-direct {p0, v4, v8}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v4

    const-wide/32 v6, 0x8074b50

    cmp-long v4, v4, v6

    if-eqz v4, :cond_88

    .line 155
    new-instance v4, Ljava/util/zip/ZipException;

    const-string v5, "archive.1F"

    invoke-static {v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v0           #diff:I
    .end local v1           #inB:I
    .end local v2           #out:I
    :cond_83
    iget v1, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 144
    .restart local v1       #inB:I
    iget v2, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .restart local v2       #out:I
    goto :goto_4a

    .line 157
    .restart local v0       #diff:I
    :cond_88
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/4 v6, 0x4

    invoke-direct {p0, v5, v6}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v5

    iput-wide v5, v4, Ljava/util/zip/ZipEntry;->crc:J

    .line 158
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    invoke-direct {p0, v5, v9}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v5

    iput-wide v5, v4, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 159
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v5

    iput-wide v5, v4, Ljava/util/zip/ZipEntry;->size:J

    .line 161
    :cond_a9
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_c3

    .line 162
    new-instance v4, Ljava/util/zip/ZipException;

    const-string v5, "archive.20"

    invoke-static {v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_c3
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->compressedSize:J

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_d5

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e1

    .line 165
    :cond_d5
    new-instance v4, Ljava/util/zip/ZipException;

    const-string v5, "archive.21"

    invoke-static {v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :cond_e1
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->reset()V

    .line 169
    iput v8, p0, Ljava/util/zip/ZipInputStream;->len:I

    iput v8, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iput v8, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iput v8, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 170
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 171
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    goto/16 :goto_17
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 3
    .parameter "name"

    .prologue
    .line 399
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 186
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 188
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    .line 189
    const/16 v22, 0x0

    .line 272
    :goto_15
    return-object v22

    .line 192
    :cond_16
    const/16 v21, 0x0

    .local v21, x:I
    const/4 v13, 0x0

    .line 193
    .local v13, count:I
    :cond_19
    const/16 v22, 0x4

    move v0, v13

    move/from16 v1, v22

    if-eq v0, v1, :cond_48

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v23, v0

    const/16 v24, 0x4

    sub-int v24, v24, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move v2, v13

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    add-int v13, v13, v21

    .line 195
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 196
    const/16 v22, 0x0

    goto :goto_15

    .line 199
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v18

    .line 200
    .local v18, hdr:J
    const-wide/32 v22, 0x2014b50

    cmp-long v22, v18, v22

    if-nez v22, :cond_6c

    .line 201
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 202
    const/16 v22, 0x0

    goto :goto_15

    .line 204
    :cond_6c
    const-wide/32 v22, 0x4034b50

    cmp-long v22, v18, v22

    if-eqz v22, :cond_76

    .line 205
    const/16 v22, 0x0

    goto :goto_15

    .line 209
    :cond_76
    const/4 v13, 0x0

    .line 210
    :cond_77
    const/16 v22, 0x1a

    move v0, v13

    move/from16 v1, v22

    if-eq v0, v1, :cond_a9

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1a

    sub-int v24, v24, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move v2, v13

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    add-int v13, v13, v21

    .line 212
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_77

    .line 213
    new-instance v22, Ljava/io/EOFException;

    invoke-direct/range {v22 .. v22}, Ljava/io/EOFException;-><init>()V

    throw v22

    .line 216
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 217
    .local v20, version:I
    const/16 v22, 0x14

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_d5

    .line 218
    new-instance v22, Ljava/util/zip/ZipException;

    const-string v23, "archive.22"

    invoke-static/range {v23 .. v23}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 220
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v16

    .line 221
    .local v16, flags:I
    and-int/lit8 v22, v16, 0x8

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_193

    const/16 v22, 0x1

    :goto_f3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v12

    .line 223
    .local v12, cetime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v9

    .line 224
    .local v9, cemodDate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v6

    .line 225
    .local v6, cecompressionMethod:I
    const-wide/16 v7, 0x0

    .local v7, cecrc:J
    const-wide/16 v4, 0x0

    .local v4, cecompressedSize:J
    const-wide/16 v10, -0x1

    .line 226
    .local v10, cesize:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    move/from16 v22, v0

    if-nez v22, :cond_173

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v7

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v4

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getLong([BI)J

    move-result-wide v10

    .line 231
    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v17

    .line 232
    .local v17, flen:I
    if-nez v17, :cond_197

    .line 233
    new-instance v22, Ljava/util/zip/ZipException;

    const-string v23, "archive.23"

    invoke-static/range {v23 .. v23}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 221
    .end local v4           #cecompressedSize:J
    .end local v6           #cecompressionMethod:I
    .end local v7           #cecrc:J
    .end local v9           #cemodDate:I
    .end local v10           #cesize:J
    .end local v12           #cetime:I
    .end local v17           #flen:I
    :cond_193
    const/16 v22, 0x0

    goto/16 :goto_f3

    .line 235
    .restart local v4       #cecompressedSize:J
    .restart local v6       #cecompressionMethod:I
    .restart local v7       #cecrc:J
    .restart local v9       #cemodDate:I
    .restart local v10       #cesize:J
    .restart local v12       #cetime:I
    .restart local v17       #flen:I
    :cond_197
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v22, v0

    const/16 v23, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipInputStream;->getShort([BI)I

    move-result v15

    .line 237
    .local v15, elen:I
    const/4 v13, 0x0

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_1d3

    .line 239
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    .line 240
    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->charBuf:[C

    .line 242
    :cond_1d3
    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_201

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v23, v0

    sub-int v24, v17, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move v2, v13

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    add-int v13, v13, v21

    .line 244
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d3

    .line 245
    new-instance v22, Ljava/io/EOFException;

    invoke-direct/range {v22 .. v22}, Ljava/io/EOFException;-><init>()V

    throw v22

    .line 248
    :cond_201
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/luni/util/Util;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move v0, v12

    move-object/from16 v1, v22

    iput v0, v1, Ljava/util/zip/ZipEntry;->time:I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move v0, v9

    move-object/from16 v1, v22

    iput v0, v1, Ljava/util/zip/ZipEntry;->modDate:I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 253
    const-wide/16 v22, -0x1

    cmp-long v22, v10, v22

    if-eqz v22, :cond_275

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 258
    :cond_275
    if-lez v15, :cond_2aa

    .line 259
    const/4 v13, 0x0

    .line 260
    new-array v14, v15, [B

    .line 261
    .local v14, e:[B
    :cond_27a
    if-eq v13, v15, :cond_29e

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v22, v0

    sub-int v23, v15, v13

    move-object/from16 v0, v22

    move-object v1, v14

    move v2, v13

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    add-int v13, v13, v21

    .line 263
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_27a

    .line 264
    new-instance v22, Ljava/io/EOFException;

    invoke-direct/range {v22 .. v22}, Ljava/io/EOFException;-><init>()V

    throw v22

    .line 267
    :cond_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 270
    .end local v14           #e:[B
    :cond_2aa
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->eof:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v22, v0

    goto/16 :goto_15
.end method

.method public read([BII)I
    .registers 12
    .parameter "buffer"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 280
    iget-boolean v4, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v4, :cond_12

    .line 281
    new-instance v4, Ljava/io/IOException;

    const-string v5, "archive.1E"

    invoke-static {v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_12
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_20

    :cond_1e
    move v4, v6

    .line 336
    :goto_1f
    return v4

    .line 288
    :cond_20
    array-length v4, p1

    if-gt p2, v4, :cond_cd

    if-ltz p3, :cond_cd

    if-ltz p2, :cond_cd

    array-length v4, p1

    sub-int/2addr v4, p2

    if-lt v4, p3, :cond_cd

    .line 290
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-nez v4, :cond_8f

    .line 291
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    long-to-int v0, v4

    .line 292
    .local v0, csize:I
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    if-lt v4, v0, :cond_3e

    .line 294
    iput-boolean v7, p0, Ljava/util/zip/ZipInputStream;->eof:Z

    move v4, v6

    .line 296
    goto :goto_1f

    .line 298
    :cond_3e
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-lt v4, v5, :cond_5e

    .line 299
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 300
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-ne v4, v6, :cond_57

    .line 302
    iput-boolean v7, p0, Ljava/util/zip/ZipInputStream;->eof:Z

    move v4, v6

    .line 304
    goto :goto_1f

    .line 306
    :cond_57
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 309
    :cond_5e
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_8d

    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 311
    .local v3, toRead:I
    :goto_6b
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v4, v0, v4

    if-ge v4, v3, :cond_75

    .line 312
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v3, v0, v4

    .line 314
    :cond_75
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 316
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 317
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    move v4, v3

    .line 318
    goto :goto_1f

    .end local v3           #toRead:I
    :cond_8d
    move v3, p3

    .line 309
    goto :goto_6b

    .line 320
    .end local v0           #csize:I
    :cond_8f
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 321
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->fill()V

    .line 322
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-lez v4, :cond_a5

    .line 323
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 326
    :cond_a5
    const/4 v2, 0x0

    .line 328
    .local v2, read:I
    :try_start_a6
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_ab
    .catch Ljava/util/zip/DataFormatException; {:try_start_a6 .. :try_end_ab} :catch_b9

    move-result v2

    .line 332
    if-nez v2, :cond_c5

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_c5

    move v4, v6

    .line 333
    goto/16 :goto_1f

    .line 329
    :catch_b9
    move-exception v4

    move-object v1, v4

    .line 330
    .local v1, e:Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    .end local v1           #e:Ljava/util/zip/DataFormatException;
    :cond_c5
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    move v4, v2

    .line 336
    goto/16 :goto_1f

    .line 338
    .end local v2           #read:I
    :cond_cd
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public skip(J)J
    .registers 12
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-ltz v6, :cond_29

    .line 354
    const-wide/16 v3, 0x0

    .line 355
    .local v3, skipped:J
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 356
    .local v0, b:[B
    :goto_c
    cmp-long v6, v3, p1

    if-eqz v6, :cond_22

    .line 357
    sub-long v1, p1, v3

    .line 358
    .local v1, rem:J
    const/4 v6, 0x0

    array-length v7, v0

    int-to-long v7, v7

    cmp-long v7, v7, v1

    if-lez v7, :cond_23

    move-wide v7, v1

    :goto_1a
    long-to-int v7, v7

    invoke-virtual {p0, v0, v6, v7}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    .line 359
    .local v5, x:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_26

    .line 364
    .end local v1           #rem:J
    .end local v5           #x:I
    :cond_22
    return-wide v3

    .line 358
    .restart local v1       #rem:J
    :cond_23
    array-length v7, v0

    int-to-long v7, v7

    goto :goto_1a

    .line 362
    .restart local v5       #x:I
    :cond_26
    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 363
    goto :goto_c

    .line 366
    .end local v0           #b:[B
    .end local v1           #rem:J
    .end local v3           #skipped:J
    .end local v5           #x:I
    :cond_29
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
.end method
