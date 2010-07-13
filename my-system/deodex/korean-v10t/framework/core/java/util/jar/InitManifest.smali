.class Ljava/util/jar/InitManifest;
.super Ljava/lang/Object;
.source "InitManifest.java"


# instance fields
.field private final attributeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private buffer:[B

.field private charbuf:[C

.field private encoding:Ljava/lang/String;

.field private final inbuf:[B

.field private inbufCount:I

.field private inbufPos:I

.field private final mainAttributesChunk:[B

.field private final out:Ljava/io/ByteArrayOutputStream;

.field private usingUTF8:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/jar/Attributes;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .registers 16
    .parameter "is"
    .parameter "main"
    .parameter
    .parameter
    .parameter "verString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/jar/Attributes;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local p4, chunks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v6, 0x400

    new-array v6, v6, [B

    iput-object v6, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    .line 38
    iput v8, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    iput v8, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    .line 40
    new-array v6, v9, [B

    iput-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    .line 42
    new-array v6, v8, [C

    iput-object v6, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    .line 44
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    .line 48
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/jar/InitManifest;->usingUTF8:Z

    .line 50
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Ljava/util/jar/InitManifest;->attributeNames:Ljava/util/Map;

    .line 56
    new-instance v6, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v7, "manifest.read.encoding"

    invoke-direct {v6, v7}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Ljava/util/jar/InitManifest;->encoding:Ljava/lang/String;

    .line 58
    const-string v6, ""

    iget-object v7, p0, Ljava/util/jar/InitManifest;->encoding:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 59
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/jar/InitManifest;->encoding:Ljava/lang/String;

    .line 62
    :cond_46
    move-object v1, p2

    .line 63
    .local v1, current:Ljava/util/jar/Attributes;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v4}, Ljava/util/jar/InitManifest;->nextChunk(Ljava/io/InputStream;Ljava/util/List;)[B

    move-result-object v6

    iput-object v6, p0, Ljava/util/jar/InitManifest;->mainAttributesChunk:[B

    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 69
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Ljava/util/jar/InitManifest;->addAttribute(Ljava/lang/String;Ljava/util/jar/Attributes;)V

    goto :goto_56

    .line 74
    :cond_66
    if-eqz p5, :cond_7a

    invoke-virtual {p2, p5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7a

    .line 75
    new-instance v6, Ljava/io/IOException;

    const-string v7, "archive.2D"

    invoke-static {v7, p5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    :cond_7a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, chunk:[B
    :goto_7e
    if-nez p4, :cond_b3

    invoke-direct {p0, p1, v4}, Ljava/util/jar/InitManifest;->readLines(Ljava/io/InputStream;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 82
    :cond_86
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_a7

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ba

    .line 86
    :cond_a7
    new-instance v6, Ljava/io/IOException;

    const-string v7, "archive.23"

    invoke-static {v7}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    .end local v3           #line:Ljava/lang/String;
    :cond_b3
    invoke-direct {p0, p1, v4}, Ljava/util/jar/InitManifest;->nextChunk(Ljava/io/InputStream;Ljava/util/List;)[B

    move-result-object v0

    if-nez v0, :cond_86

    .line 101
    :cond_b9
    return-void

    .line 89
    .restart local v3       #line:Ljava/lang/String;
    :cond_ba
    const/4 v6, 0x6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, name:Ljava/lang/String;
    new-instance v1, Ljava/util/jar/Attributes;

    .end local v1           #current:Ljava/util/jar/Attributes;
    const/16 v6, 0xc

    invoke-direct {v1, v6}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 91
    .restart local v1       #current:Ljava/util/jar/Attributes;
    if-eqz p4, :cond_cf

    .line 92
    invoke-interface {p4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_cf
    invoke-interface {p3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_d2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Ljava/util/jar/InitManifest;->addAttribute(Ljava/lang/String;Ljava/util/jar/Attributes;)V

    goto :goto_d2

    .line 98
    :cond_e2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_7e
.end method

.method private addAttribute(Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .registers 10
    .parameter "line"
    .parameter "current"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "archive.2F"

    .line 275
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 276
    .local v1, hdrIdx:I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_17

    .line 277
    new-instance v4, Ljava/io/IOException;

    const-string v5, "archive.2F"

    invoke-static {v6, p1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_17
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, header:Ljava/lang/String;
    iget-object v4, p0, Ljava/util/jar/InitManifest;->attributeNames:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/Attributes$Name;

    .line 281
    .local v3, name:Ljava/util/jar/Attributes$Name;
    if-nez v3, :cond_30

    .line 283
    :try_start_26
    new-instance v3, Ljava/util/jar/Attributes$Name;

    .end local v3           #name:Ljava/util/jar/Attributes$Name;
    invoke-direct {v3, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2b} :catch_4e

    .line 287
    .restart local v3       #name:Ljava/util/jar/Attributes$Name;
    iget-object v4, p0, Ljava/util/jar/InitManifest;->attributeNames:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_30
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_42

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_5a

    .line 290
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "archive.2F"

    invoke-static {v6, p1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    .end local v3           #name:Ljava/util/jar/Attributes$Name;
    :catch_4e
    move-exception v4

    move-object v0, v4

    .line 285
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #name:Ljava/util/jar/Attributes$Name;
    :cond_5a
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method private addLine(ILjava/util/List;)V
    .registers 13
    .parameter "length"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 108
    iget-object v6, p0, Ljava/util/jar/InitManifest;->encoding:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 109
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Ljava/util/jar/InitManifest;->buffer:[B

    iget-object v8, p0, Ljava/util/jar/InitManifest;->encoding:Ljava/lang/String;

    invoke-direct {v6, v7, v9, p1, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_11
    :goto_11
    return-void

    .line 111
    :cond_12
    iget-boolean v6, p0, Ljava/util/jar/InitManifest;->usingUTF8:Z

    if-eqz v6, :cond_2b

    .line 113
    :try_start_16
    iget-object v6, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    array-length v6, v6

    if-ge v6, p1, :cond_1f

    .line 114
    new-array v6, p1, [C

    iput-object v6, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    .line 116
    :cond_1f
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    iget-object v7, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, p1}, Lorg/apache/harmony/luni/util/Util;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/io/UTFDataFormatException; {:try_start_16 .. :try_end_2b} :catch_53

    .line 122
    :cond_2b
    :goto_2b
    iget-boolean v6, p0, Ljava/util/jar/InitManifest;->usingUTF8:Z

    if-nez v6, :cond_11

    .line 123
    iget-object v6, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    array-length v6, v6

    if-ge v6, p1, :cond_38

    .line 124
    new-array v6, p1, [C

    iput-object v6, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    .line 128
    :cond_38
    const/4 v0, 0x0

    .line 129
    .local v0, charOffset:I
    const/4 v4, 0x0

    .line 130
    .local v4, offset:I
    move v3, p1

    .local v3, i:I
    move v5, v4

    .end local v4           #offset:I
    .local v5, offset:I
    move v1, v0

    .end local v0           #charOffset:I
    .local v1, charOffset:I
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_58

    .line 131
    iget-object v6, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #charOffset:I
    .restart local v0       #charOffset:I
    iget-object v7, p0, Ljava/util/jar/InitManifest;->buffer:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v6, v1

    move v5, v4

    .end local v4           #offset:I
    .restart local v5       #offset:I
    move v1, v0

    .end local v0           #charOffset:I
    .restart local v1       #charOffset:I
    goto :goto_3d

    .line 118
    .end local v1           #charOffset:I
    .end local v3           #i:I
    .end local v5           #offset:I
    :catch_53
    move-exception v6

    move-object v2, v6

    .line 119
    .local v2, e:Ljava/io/UTFDataFormatException;
    iput-boolean v9, p0, Ljava/util/jar/InitManifest;->usingUTF8:Z

    goto :goto_2b

    .line 133
    .end local v2           #e:Ljava/io/UTFDataFormatException;
    .restart local v1       #charOffset:I
    .restart local v3       #i:I
    .restart local v5       #offset:I
    :cond_58
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Ljava/util/jar/InitManifest;->charbuf:[C

    invoke-direct {v6, v7, v9, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private nextChunk(Ljava/io/InputStream;Ljava/util/List;)[B
    .registers 13
    .parameter "in"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    .local p2, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 141
    const/4 v6, 0x0

    .line 189
    :goto_6
    return-object v6

    .line 144
    :cond_7
    const/4 v4, 0x0

    .line 145
    .local v4, pos:I
    const/4 v0, 0x0

    .local v0, blankline:Z
    const/4 v1, 0x0

    .line 146
    .local v1, lastCr:Z
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 148
    :cond_f
    :goto_f
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    iget v7, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    if-ne v6, v7, :cond_52

    .line 149
    iget-object v6, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iput v6, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_36

    .line 150
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_2a

    .line 151
    const/4 v6, 0x0

    goto :goto_6

    .line 153
    :cond_2a
    if-eqz v0, :cond_2f

    .line 154
    invoke-direct {p0, v4, p2}, Ljava/util/jar/InitManifest;->addLine(ILjava/util/List;)V

    .line 156
    :cond_2f
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_6

    .line 158
    :cond_36
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    iget-object v7, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    array-length v7, v7

    if-ne v6, v7, :cond_4f

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_4f

    .line 160
    new-instance v6, Ljava/io/IOException;

    const-string v7, "archive.2E"

    invoke-static {v7}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    :cond_4f
    const/4 v6, 0x0

    iput v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    .line 164
    :cond_52
    iget-object v6, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    iget v7, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    aget-byte v3, v6, v7

    .line 165
    .local v3, next:B
    if-eqz v1, :cond_88

    .line 166
    const/16 v6, 0xa

    if-eq v3, v6, :cond_78

    .line 167
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    .line 168
    const/16 v3, 0xd

    .line 175
    :goto_6a
    const/4 v1, 0x0

    .line 180
    :cond_6b
    if-eqz v0, :cond_ca

    .line 181
    const/16 v6, 0x20

    if-ne v3, v6, :cond_8e

    .line 182
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 183
    const/4 v0, 0x0

    .line 184
    goto :goto_f

    .line 170
    :cond_78
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-eqz v6, :cond_f

    .line 173
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6a

    .line 176
    :cond_88
    const/16 v6, 0xd

    if-ne v3, v6, :cond_6b

    .line 177
    const/4 v1, 0x1

    .line 178
    goto :goto_f

    .line 186
    :cond_8e
    invoke-direct {p0, v4, p2}, Ljava/util/jar/InitManifest;->addLine(ILjava/util/List;)V

    .line 187
    const/16 v6, 0xa

    if-ne v3, v6, :cond_a2

    .line 188
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto/16 :goto_6

    .line 191
    :cond_a2
    const/4 v4, 0x0

    .line 200
    :cond_a3
    const/4 v0, 0x0

    .line 201
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    array-length v6, v6

    if-ne v4, v6, :cond_c1

    .line 203
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 204
    .local v2, newBuf:[B
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ljava/util/jar/InitManifest;->buffer:[B

    array-length v9, v9

    invoke-static {v6, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iput-object v2, p0, Ljava/util/jar/InitManifest;->buffer:[B

    .line 207
    .end local v2           #newBuf:[B
    :cond_c1
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .local v5, pos:I
    aput-byte v3, v6, v4

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto/16 :goto_f

    .line 192
    :cond_ca
    const/16 v6, 0xa

    if-ne v3, v6, :cond_a3

    .line 193
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-eqz v6, :cond_f

    .line 196
    iget-object v6, p0, Ljava/util/jar/InitManifest;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    const/4 v0, 0x1

    .line 198
    goto/16 :goto_f
.end method

.method private readLines(Ljava/io/InputStream;Ljava/util/List;)Z
    .registers 16
    .parameter "in"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, -0x1

    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 213
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    if-ne v6, v12, :cond_b

    move v6, v9

    .line 251
    :goto_a
    return v6

    .line 217
    :cond_b
    const/4 v4, 0x0

    .line 218
    .local v4, pos:I
    const/4 v0, 0x0

    .local v0, blankline:Z
    const/4 v1, 0x0

    .line 220
    .local v1, lastCr:Z
    :cond_e
    :goto_e
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    iget v7, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    if-ne v6, v7, :cond_48

    .line 221
    iget-object v6, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iput v6, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    if-ne v6, v12, :cond_2d

    .line 222
    if-eqz v0, :cond_23

    .line 223
    invoke-direct {p0, v4, p2}, Ljava/util/jar/InitManifest;->addLine(ILjava/util/List;)V

    .line 225
    :cond_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2b

    move v6, v10

    goto :goto_a

    :cond_2b
    move v6, v9

    goto :goto_a

    .line 227
    :cond_2d
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufCount:I

    iget-object v7, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    array-length v7, v7

    if-ne v6, v7, :cond_46

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_46

    .line 229
    new-instance v6, Ljava/io/IOException;

    const-string v7, "archive.2E"

    invoke-static {v7}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 231
    :cond_46
    iput v9, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    .line 233
    :cond_48
    iget-object v6, p0, Ljava/util/jar/InitManifest;->inbuf:[B

    iget v7, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    aget-byte v3, v6, v7

    .line 234
    .local v3, next:B
    if-eqz v1, :cond_66

    .line 235
    if-eq v3, v11, :cond_5d

    .line 236
    iget v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    sub-int/2addr v6, v10

    iput v6, p0, Ljava/util/jar/InitManifest;->inbufPos:I

    .line 237
    const/16 v3, 0xd

    .line 239
    :cond_5d
    const/4 v1, 0x0

    .line 244
    :cond_5e
    if-eqz v0, :cond_94

    .line 245
    const/16 v6, 0x20

    if-ne v3, v6, :cond_6c

    .line 246
    const/4 v0, 0x0

    .line 247
    goto :goto_e

    .line 240
    :cond_66
    const/16 v6, 0xd

    if-ne v3, v6, :cond_5e

    .line 241
    const/4 v1, 0x1

    .line 242
    goto :goto_e

    .line 249
    :cond_6c
    invoke-direct {p0, v4, p2}, Ljava/util/jar/InitManifest;->addLine(ILjava/util/List;)V

    .line 250
    if-ne v3, v11, :cond_73

    move v6, v10

    .line 251
    goto :goto_a

    .line 253
    :cond_73
    const/4 v4, 0x0

    .line 261
    :cond_74
    const/4 v0, 0x0

    .line 262
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    array-length v6, v6

    if-ne v4, v6, :cond_8b

    .line 263
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 264
    .local v2, newBuf:[B
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    iget-object v7, p0, Ljava/util/jar/InitManifest;->buffer:[B

    array-length v7, v7

    invoke-static {v6, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v2, p0, Ljava/util/jar/InitManifest;->buffer:[B

    .line 267
    .end local v2           #newBuf:[B
    :cond_8b
    iget-object v6, p0, Ljava/util/jar/InitManifest;->buffer:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .local v5, pos:I
    aput-byte v3, v6, v4

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto/16 :goto_e

    .line 254
    :cond_94
    if-ne v3, v11, :cond_74

    .line 255
    if-nez v4, :cond_9e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 258
    :cond_9e
    const/4 v0, 0x1

    .line 259
    goto/16 :goto_e
.end method


# virtual methods
.method getMainAttributesChunk()[B
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Ljava/util/jar/InitManifest;->mainAttributesChunk:[B

    return-object v0
.end method
