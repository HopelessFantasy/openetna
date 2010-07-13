.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 15
    .parameter "is"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 92
    new-instance v7, Ljava/util/zip/Inflater;

    invoke-direct {v7, v11}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v7, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 41
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    .line 48
    iput-boolean v9, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 93
    const/16 v7, 0xa

    new-array v3, v7, [B

    .line 94
    .local v3, header:[B
    array-length v7, v3

    invoke-direct {p0, v3, v9, v7}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 95
    invoke-direct {p0, v3, v9}, Ljava/util/zip/GZIPInputStream;->getShort([BI)I

    move-result v7

    const v8, 0x8b1f

    if-eq v7, v8, :cond_31

    .line 96
    new-instance v7, Ljava/io/IOException;

    const-string v8, "archive.1F"

    invoke-static {v8}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    :cond_31
    const/4 v7, 0x3

    aget-byte v1, v3, v7

    .line 99
    .local v1, flags:I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_6f

    move v2, v11

    .line 100
    .local v2, hcrc:Z
    :goto_39
    if-eqz v2, :cond_41

    .line 101
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    array-length v8, v3

    invoke-virtual {v7, v3, v9, v8}, Ljava/util/zip/CRC32;->update([BII)V

    .line 103
    :cond_41
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_7e

    .line 104
    invoke-direct {p0, v3, v9, v10}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 105
    if-eqz v2, :cond_4f

    .line 106
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7, v3, v9, v10}, Ljava/util/zip/CRC32;->update([BII)V

    .line 108
    :cond_4f
    invoke-direct {p0, v3, v9}, Ljava/util/zip/GZIPInputStream;->getShort([BI)I

    move-result v4

    .line 109
    .local v4, length:I
    :goto_53
    if-lez v4, :cond_7e

    .line 110
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    array-length v7, v7

    if-le v4, v7, :cond_71

    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    array-length v7, v7

    move v5, v7

    .line 111
    .local v5, max:I
    :goto_5e
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    invoke-virtual {v7, v8, v9, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 112
    .local v6, result:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_73

    .line 113
    new-instance v7, Ljava/io/EOFException;

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v7

    .end local v2           #hcrc:Z
    .end local v4           #length:I
    .end local v5           #max:I
    .end local v6           #result:I
    :cond_6f
    move v2, v9

    .line 99
    goto :goto_39

    .restart local v2       #hcrc:Z
    .restart local v4       #length:I
    :cond_71
    move v5, v4

    .line 110
    goto :goto_5e

    .line 115
    .restart local v5       #max:I
    .restart local v6       #result:I
    :cond_73
    if-eqz v2, :cond_7c

    .line 116
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/zip/CRC32;->update([BII)V

    .line 118
    :cond_7c
    sub-int/2addr v4, v6

    .line 119
    goto :goto_53

    .line 121
    .end local v4           #length:I
    .end local v5           #max:I
    .end local v6           #result:I
    :cond_7e
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_85

    .line 122
    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Z)V

    .line 124
    :cond_85
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_8c

    .line 125
    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Z)V

    .line 127
    :cond_8c
    if-eqz v2, :cond_b5

    .line 128
    invoke-direct {p0, v3, v9, v10}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 129
    invoke-direct {p0, v3, v9}, Ljava/util/zip/GZIPInputStream;->getShort([BI)I

    move-result v0

    .line 130
    .local v0, crc16:I
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    int-to-long v9, v0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b0

    .line 131
    new-instance v7, Ljava/io/IOException;

    const-string v8, "archive.20"

    invoke-static {v8}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 133
    :cond_b0
    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 135
    .end local v0           #crc16:I
    :cond_b5
    return-void
.end method

.method private getLong([BI)J
    .registers 8
    .parameter "buffer"
    .parameter "off"

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    .line 139
    .local v0, l:J
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 140
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 141
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 142
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 143
    return-wide v0
.end method

.method private getShort([BI)I
    .registers 5
    .parameter "buffer"
    .parameter "off"

    .prologue
    .line 147
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readFully([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    :goto_0
    if-lez p3, :cond_14

    .line 200
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 201
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 202
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 204
    :cond_11
    add-int/2addr p2, v0

    .line 205
    sub-int/2addr p3, v0

    goto :goto_0

    .line 207
    .end local v0           #result:I
    :cond_14
    return-void
.end method

.method private readZeroTerminated(Z)V
    .registers 4
    .parameter "hcrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, result:I
    if-lez v0, :cond_10

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    goto :goto_0

    .line 216
    :cond_10
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 217
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 220
    :cond_19
    if-eqz p1, :cond_20

    .line 221
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 223
    :cond_20
    return-void
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
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 193
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 194
    return-void
.end method

.method public read([BII)I
    .registers 13
    .parameter "buffer"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x8

    .line 152
    iget-boolean v5, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-eqz v5, :cond_14

    .line 153
    new-instance v5, Ljava/io/IOException;

    const-string v6, "archive.1E"

    invoke-static {v6}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_14
    iget-boolean v5, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    if-eqz v5, :cond_1a

    move v5, v6

    .line 185
    :goto_19
    return v5

    .line 159
    :cond_1a
    array-length v5, p1

    if-gt p2, v5, :cond_89

    if-ltz p3, :cond_89

    if-ltz p2, :cond_89

    array-length v5, p1

    sub-int/2addr v5, p2

    if-lt v5, p3, :cond_89

    .line 161
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v4

    .line 162
    .local v4, val:I
    if-eq v4, v6, :cond_32

    .line 163
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5, p1, p2, v4}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_30
    move v5, v4

    .line 185
    goto :goto_19

    .line 164
    :cond_32
    iget-boolean v5, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-nez v5, :cond_30

    .line 165
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 169
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    .line 170
    .local v2, size:I
    const/16 v3, 0x8

    .line 172
    .local v3, trailerSize:I
    new-array v0, v7, [B

    .line 173
    .local v0, b:[B
    if-le v2, v7, :cond_6d

    move v1, v7

    .line 175
    .local v1, copySize:I
    :goto_46
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v6, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    sub-int v5, v7, v1

    invoke-direct {p0, v0, v1, v5}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    .line 178
    invoke-direct {p0, v0, v8}, Ljava/util/zip/GZIPInputStream;->getLong([BI)J

    move-result-wide v5

    iget-object v7, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6f

    .line 179
    new-instance v5, Ljava/io/IOException;

    const-string v6, "archive.20"

    invoke-static {v6}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1           #copySize:I
    :cond_6d
    move v1, v2

    .line 173
    goto :goto_46

    .line 181
    .restart local v1       #copySize:I
    :cond_6f
    const/4 v5, 0x4

    invoke-direct {p0, v0, v5}, Ljava/util/zip/GZIPInputStream;->getLong([BI)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v6

    if-eq v5, v6, :cond_30

    .line 182
    new-instance v5, Ljava/io/IOException;

    const-string v6, "archive.21"

    invoke-static {v6}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    .end local v0           #b:[B
    .end local v1           #copySize:I
    .end local v2           #size:I
    .end local v3           #trailerSize:I
    .end local v4           #val:I
    :cond_89
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5
.end method
