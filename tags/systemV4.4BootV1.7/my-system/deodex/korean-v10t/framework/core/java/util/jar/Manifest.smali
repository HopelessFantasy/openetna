.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LINE_LENGTH_LIMIT:I = 0x46

.field private static final LINE_SEPARATOR:[B

.field private static final NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private entryAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mainAttributes:Ljava/util/jar/Attributes;

.field private mainAttributesChunk:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    .line 43
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Manifest;->NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

    return-void

    .line 41
    :array_12
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    .line 78
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 79
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .parameter "is"
    .parameter "readChunks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    .line 96
    if-eqz p2, :cond_1a

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 99
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .registers 3
    .parameter "man"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    .line 91
    iget-object v0, p1, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 92
    iget-object v0, p1, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    .line 93
    return-void
.end method

.method static write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .registers 12
    .parameter "manifest"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, charset:Ljava/nio/charset/Charset;
    new-instance v8, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v9, "manifest.write.encoding"

    invoke-direct {v8, v9}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, encoding:Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_18

    .line 256
    const-string v2, "UTF8"

    .line 258
    :cond_18
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 260
    :cond_1c
    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    sget-object v9, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, version:Ljava/lang/String;
    if-eqz v7, :cond_53

    .line 262
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v1, v8, v7}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v8}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 264
    .local v3, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 266
    .local v6, name:Ljava/util/jar/Attributes$Name;
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 267
    iget-object v8, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v8, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v1, v6, v8}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V

    goto :goto_35

    .line 271
    .end local v3           #entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #name:Ljava/util/jar/Attributes$Name;
    :cond_53
    sget-object v8, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 272
    iget-object v8, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 273
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 275
    .local v5, key:Ljava/lang/String;
    sget-object v8, Ljava/util/jar/Manifest;->NAME_ATTRIBUTE:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v1, v8, v5}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V

    .line 276
    iget-object v8, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 277
    .local v0, attrib:Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 278
    .restart local v3       #entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_97

    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 280
    .restart local v6       #name:Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v1, v6, v8}, Ljava/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V

    goto :goto_83

    .line 282
    .end local v6           #name:Ljava/util/jar/Attributes$Name;
    :cond_97
    sget-object v8, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_62

    .line 284
    .end local v0           #attrib:Ljava/util/jar/Attributes;
    .end local v3           #entries:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #key:Ljava/lang/String;
    :cond_9d
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/jar/Attributes$Name;Ljava/lang/String;)V
    .registers 11
    .parameter "os"
    .parameter "charset"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, offset:I
    const/16 v0, 0x46

    .line 290
    .local v0, limit:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "ISO8859_1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 291
    .local v2, out:[B
    array-length p2, v2

    if-le p2, v0, :cond_42

    .line 292
    :goto_23
    array-length p2, v2

    sub-int/2addr p2, v1

    if-lt p2, v0, :cond_42

    .line 293
    array-length p2, v2

    sub-int/2addr p2, v1

    .line 294
    .local p2, len:I
    if-le p2, v0, :cond_2c

    .line 295
    move p2, v0

    .line 297
    :cond_2c
    if-lez v1, :cond_33

    .line 298
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 300
    .end local v0           #limit:I
    :cond_33
    invoke-virtual {p0, v2, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 301
    sget-object v0, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 302
    add-int v0, v1, p2

    .line 303
    .end local v1           #offset:I
    .local v0, offset:I
    const/16 p2, 0x45

    .local p2, limit:I
    move v1, v0

    .end local v0           #offset:I
    .restart local v1       #offset:I
    move v0, p2

    .line 304
    .end local p2           #limit:I
    .local v0, limit:I
    goto :goto_23

    :cond_42
    move p2, v1

    .line 306
    .end local v1           #offset:I
    .local p2, offset:I
    array-length v1, v2

    sub-int/2addr v1, p2

    .line 307
    .local v1, size:I
    const/16 v3, 0x46

    new-array v3, v3, [B

    .line 308
    .local v3, outBuf:[B
    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    const/4 p2, 0x0

    .local p2, i:I
    move v4, v1

    .end local v1           #size:I
    .local v4, size:I
    move v1, v0

    .end local v0           #limit:I
    .local v1, limit:I
    move v0, p2

    .end local v2           #out:[B
    .end local p2           #i:I
    .local v0, i:I
    :goto_51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_b3

    .line 310
    const/4 p2, 0x1

    new-array v2, p2, [C

    .line 311
    .local v2, oneChar:[C
    const/4 p2, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, p2

    .line 313
    const/4 p2, 0x0

    aget-char p2, v2, p2

    const/16 v5, 0x80

    if-lt p2, v5, :cond_6a

    if-nez p1, :cond_9e

    .line 314
    :cond_6a
    const/4 p2, 0x1

    new-array p2, p2, [B

    .line 315
    .local p2, oneByte:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-char v2, v2, v6

    .end local v2           #oneChar:[C
    int-to-byte v2, v2

    aput-byte v2, p2, v5

    .line 316
    move-object p2, p2

    .line 320
    .local p2, buf:[B
    :goto_75
    array-length v2, p2

    add-int/2addr v2, v4

    if-le v2, v1, :cond_c8

    .line 321
    const/16 v2, 0x46

    if-eq v1, v2, :cond_82

    .line 322
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 324
    .end local v1           #limit:I
    :cond_82
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 325
    sget-object v1, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 326
    const/16 v1, 0x45

    .line 327
    .restart local v1       #limit:I
    const/4 v2, 0x0

    .line 329
    .end local v4           #size:I
    .local v2, size:I
    :goto_8e
    array-length v4, p2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ad

    .line 330
    const/4 v4, 0x0

    aget-byte v4, p2, v4

    aput-byte v4, v3, v2

    .line 334
    :goto_97
    array-length p2, p2

    .end local p2           #buf:[B
    add-int/2addr v2, p2

    .line 309
    add-int/lit8 p2, v0, 0x1

    .end local v0           #i:I
    .local p2, i:I
    move v0, p2

    .end local p2           #i:I
    .restart local v0       #i:I
    move v4, v2

    .end local v2           #size:I
    .restart local v4       #size:I
    goto :goto_51

    .line 318
    .local v2, oneChar:[C
    :cond_9e
    const/4 p2, 0x0

    const/4 v5, 0x1

    invoke-static {v2, p2, v5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .local p2, buf:[B
    goto :goto_75

    .line 332
    .end local v4           #size:I
    .local v2, size:I
    :cond_ad
    const/4 v4, 0x0

    array-length v5, p2

    invoke-static {p2, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_97

    .line 336
    .end local v2           #size:I
    .end local p2           #buf:[B
    .restart local v4       #size:I
    :cond_b3
    if-lez v4, :cond_c7

    .line 337
    const/16 p1, 0x46

    if-eq v1, p1, :cond_be

    .line 338
    .end local p1
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 340
    :cond_be
    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 341
    sget-object p1, Ljava/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 343
    :cond_c7
    return-void

    .restart local p1
    .restart local p2       #buf:[B
    :cond_c8
    move v2, v4

    .end local v4           #size:I
    .restart local v2       #size:I
    goto :goto_8e
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 111
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 158
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 214
    if-nez p1, :cond_5

    move v1, v3

    .line 223
    .end local p1
    :goto_4
    return v1

    .line 217
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_11

    move v1, v3

    .line 218
    goto :goto_4

    .line 220
    :cond_11
    iget-object v2, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    move-object v1, v0

    iget-object v1, v1, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v2, v1}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v3

    .line 221
    goto :goto_4

    .line 223
    :cond_21
    iget-object v1, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    check-cast p1, Ljava/util/jar/Manifest;

    .end local p1
    iget-object v2, p1, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 3
    .parameter "name"

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/jar/Attributes;

    return-object p0
.end method

.method getChunk(Ljava/lang/String;)[B
    .registers 3
    .parameter "name"

    .prologue
    .line 227
    iget-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesChunk()[B
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributesChunk:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 8
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/jar/InitManifest;

    iget-object v2, p0, Ljava/util/jar/Manifest;->mainAttributes:Ljava/util/jar/Attributes;

    iget-object v3, p0, Ljava/util/jar/Manifest;->entryAttributes:Ljava/util/HashMap;

    iget-object v4, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/jar/InitManifest;-><init>(Ljava/io/InputStream;Ljava/util/jar/Attributes;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 188
    .local v0, initManifest:Ljava/util/jar/InitManifest;
    invoke-virtual {v0}, Ljava/util/jar/InitManifest;->getMainAttributesChunk()[B

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/Manifest;->mainAttributesChunk:[B

    .line 189
    return-void
.end method

.method removeChunks()V
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 232
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p0, p1}, Ljava/util/jar/Manifest;->write(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 173
    return-void
.end method
