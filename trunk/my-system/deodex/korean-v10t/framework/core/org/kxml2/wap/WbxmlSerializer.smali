.class public Lorg/kxml2/wap/WbxmlSerializer;
.super Ljava/lang/Object;
.source "WbxmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private attrPage:I

.field attrStartTable:Ljava/util/Hashtable;

.field attrValueTable:Ljava/util/Hashtable;

.field attributes:Ljava/util/Vector;

.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private encoding:Ljava/lang/String;

.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field pending:Ljava/lang/String;

.field stringTable:Ljava/util/Hashtable;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .registers 6
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 411
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 414
    .local v1, idx:I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 415
    shr-int/lit8 p1, p1, 0x7

    .line 417
    if-nez p1, :cond_24

    move v1, v2

    .line 419
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_10
    const/4 v3, 0x1

    if-le v1, v3, :cond_1d

    .line 420
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_10

    .line 422
    :cond_1d
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 423
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_24
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_4
.end method

.method private writeStr(Ljava/lang/String;)V
    .registers 13
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x41

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x83

    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, p0:I
    const/4 v0, 0x0

    .line 313
    .local v0, lastCut:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 315
    .local v1, len:I
    :goto_e
    if-ge v2, v1, :cond_79

    .line 316
    :goto_10
    if-ge v2, v1, :cond_1b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v10, :cond_1b

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 319
    :cond_1b
    move v3, v2

    .line 320
    .local v3, p1:I
    :goto_1c
    if-ge v3, v1, :cond_27

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v10, :cond_27

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 324
    :cond_27
    sub-int v4, v3, v2

    const/16 v5, 0xa

    if-le v4, v5, :cond_50

    .line 326
    if-le v2, v0, :cond_52

    sub-int v4, v2, v8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_52

    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_52

    .line 329
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 345
    :goto_4f
    move v0, v3

    .line 347
    :cond_50
    move v2, v3

    .line 348
    goto :goto_e

    .line 334
    :cond_52
    if-le v2, v0, :cond_5e

    sub-int v4, v2, v8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5e

    .line 335
    add-int/lit8 v2, v2, -0x1

    .line 338
    :cond_5e
    if-le v2, v0, :cond_6c

    .line 339
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 342
    :cond_6c
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_4f

    .line 350
    .end local v3           #p1:I
    :cond_79
    if-ge v0, v1, :cond_87

    .line 351
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 354
    :cond_87
    return-void
.end method

.method private final writeStrT(Ljava/lang/String;Z)V
    .registers 12
    .parameter "s"
    .parameter "mayPrependSpace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x20

    .line 433
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 435
    .local v1, idx:Ljava/lang/Integer;
    if-eqz v1, :cond_18

    .line 436
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 462
    :goto_17
    return-void

    .line 439
    :cond_18
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 440
    .local v0, i:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_95

    if-eqz p2, :cond_95

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 442
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 448
    :goto_40
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_60

    .line 450
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_60
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 453
    .local v2, j:I
    if-le v2, v8, :cond_8a

    .line 454
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v0, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v0, v2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_8a
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v3, p1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_17

    .line 445
    .end local v2           #j:I
    :cond_95
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v3, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_40
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .parameter "namespace"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .registers 2
    .parameter "cdsect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    return-void
.end method

.method public checkPending(Z)V
    .registers 11
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 215
    :goto_7
    return-void

    .line 151
    :cond_8
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 153
    .local v3, len:I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .line 156
    .local v2, idx:[I
    if-nez v2, :cond_83

    .line 157
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_7b

    if-eqz p1, :cond_78

    move v5, v8

    :goto_25
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 180
    :goto_2d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v3, :cond_f2

    .line 181
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .line 183
    if-nez v2, :cond_b6

    .line 184
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 185
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 195
    :goto_54
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v2, v0

    .line 196
    if-nez v2, :cond_d4

    .line 197
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 207
    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 157
    .end local v1           #i:I
    :cond_78
    const/16 v5, 0x44

    goto :goto_25

    :cond_7b
    if-eqz p1, :cond_80

    const/16 v5, 0x84

    goto :goto_25

    :cond_80
    const/16 v5, 0xc4

    goto :goto_25

    .line 165
    :cond_83
    aget v4, v2, v6

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    if-eq v4, v5, :cond_99

    .line 166
    aget v4, v2, v6

    iput v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    .line 167
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    :cond_99
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_aa

    if-eqz p1, :cond_a5

    aget v5, v2, v7

    :goto_a1
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2d

    :cond_a5
    aget v5, v2, v7

    or-int/lit8 v5, v5, 0x40

    goto :goto_a1

    :cond_aa
    if-eqz p1, :cond_b1

    aget v5, v2, v7

    or-int/lit16 v5, v5, 0x80

    goto :goto_a1

    :cond_b1
    aget v5, v2, v7

    or-int/lit16 v5, v5, 0xc0

    goto :goto_a1

    .line 188
    .restart local v1       #i:I
    :cond_b6
    aget v4, v2, v6

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    if-eq v4, v5, :cond_cc

    .line 189
    aget v4, v2, v6

    iput v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    .line 190
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    :cond_cc
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_54

    .line 200
    :cond_d4
    aget v4, v2, v6

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    if-eq v4, v5, :cond_ea

    .line 201
    aget v4, v2, v6

    iput v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    .line 202
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    :cond_ea
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_75

    .line 210
    :cond_f2
    if-lez v3, :cond_f9

    .line 211
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 213
    :cond_f9
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 214
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_7
.end method

.method public comment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 81
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .registers 4
    .parameter "docdecl"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot write docdecl for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 128
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 136
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 137
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 362
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 363
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 367
    :goto_8
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    .line 369
    return-object p0

    .line 365
    :cond_e
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_8
.end method

.method public entityRef(Ljava/lang/String;)V
    .registers 4
    .parameter "er"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EntityReference not supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 144
    return-void
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "nsp"
    .parameter "create"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .registers 2
    .parameter "sp"

    .prologue
    .line 120
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .registers 4
    .parameter "pi"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PI NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .registers 7
    .parameter "page"
    .parameter "attrStartTable"

    .prologue
    .line 490
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 491
    aget-object v2, p2, v0

    if-eqz v2, :cond_1a

    .line 492
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 493
    .local v1, idx:[I
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v1           #idx:[I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    :cond_1d
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .registers 7
    .parameter "page"
    .parameter "attrValueTable"

    .prologue
    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 506
    aget-object v2, p2, v0

    if-eqz v2, :cond_1a

    .line 507
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit16 v3, v0, 0x85

    aput v3, v1, v2

    .line 508
    .local v1, idx:[I
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .end local v1           #idx:[I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_1d
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    if-nez p2, :cond_17

    const-string v0, "UTF-8"

    :goto_4
    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    .line 238
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 242
    return-void

    :cond_17
    move-object v0, p2

    .line 235
    goto :goto_4
.end method

.method public setOutput(Ljava/io/Writer;)V
    .registers 4
    .parameter "writer"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wbxml requires an OutputStream!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "nsp"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "property"
    .parameter "value"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .registers 7
    .parameter "page"
    .parameter "tagTable"

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 473
    aget-object v2, p2, v0

    if-eqz v2, :cond_1a

    .line 474
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 475
    .local v1, idx:[I
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v1           #idx:[I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    :cond_1d
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .parameter "s"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 257
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 261
    if-eqz p1, :cond_10

    .line 262
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 265
    :cond_10
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 266
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 272
    :goto_25
    return-void

    .line 267
    :cond_26
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 268
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_25

    .line 270
    :cond_3b
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    if-eqz p1, :cond_12

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NSP NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 283
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 284
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    .line 286
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 302
    invoke-direct {p0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 304
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 293
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 295
    return-object p0
.end method

.method writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 427
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 428
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 429
    return-void
.end method

.method public writeWapExtension(ILjava/lang/Object;)V
    .registers 7
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 377
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    sparse-switch p1, :sswitch_data_32

    .line 403
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 385
    :sswitch_12
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    move-object v1, v0

    .line 386
    .local v1, bytes:[B
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    invoke-static {v2, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 387
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 405
    .end local v1           #bytes:[B
    :goto_23
    :sswitch_23
    return-void

    .line 393
    .restart local p2
    :sswitch_24
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, v2, p2}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_23

    .line 399
    .restart local p2
    :sswitch_2c
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_23

    .line 378
    :sswitch_data_32
    .sparse-switch
        0x40 -> :sswitch_24
        0x41 -> :sswitch_24
        0x42 -> :sswitch_24
        0x80 -> :sswitch_2c
        0x81 -> :sswitch_2c
        0x82 -> :sswitch_2c
        0xc0 -> :sswitch_23
        0xc1 -> :sswitch_23
        0xc2 -> :sswitch_23
        0xc3 -> :sswitch_12
    .end sparse-switch
.end method
