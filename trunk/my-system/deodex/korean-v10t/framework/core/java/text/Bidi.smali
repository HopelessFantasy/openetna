.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private baseLevel:I

.field private direction:I

.field private length:I

.field private offsetLevel:[B

.field private runs:[Lorg/apache/harmony/text/BidiRun;

.field private unidirectional:Z


# direct methods
.method private constructor <init>(J)V
    .registers 3
    .parameter "pBidi"

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/text/Bidi;->readBidiInfo(J)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .parameter "paragraph"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    if-nez p1, :cond_f

    move-object v1, v3

    :goto_5
    if-nez p1, :cond_15

    move v5, v2

    :goto_8
    move-object v0, p0

    move v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 246
    return-void

    .line 244
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    goto :goto_8
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 21
    .parameter "paragraph"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_11

    .line 106
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "text.14"

    invoke-static {v5}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_11
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v9

    .line 110
    .local v9, begin:I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v13

    .line 111
    .local v13, end:I
    sub-int v7, v13, v9

    .line 112
    .local v7, length:I
    add-int/lit8 v4, v7, 0x1

    new-array v3, v4, [C

    .line 115
    .local v3, text:[C
    if-eqz v7, :cond_74

    .line 116
    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v5

    aput-char v5, v3, v4

    .line 122
    :goto_28
    const/4 v8, -0x2

    .line 123
    .local v8, flags:I
    sget-object v4, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v10

    .line 124
    .local v10, direction:Ljava/lang/Object;
    if-eqz v10, :cond_41

    instance-of v4, v10, Ljava/lang/Boolean;

    if-eqz v4, :cond_41

    .line 125
    sget-object v4, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 126
    const/4 v8, 0x0

    .line 133
    :cond_41
    :goto_41
    const/4 v5, 0x0

    .line 134
    .local v5, embeddings:[B
    const/16 v18, 0x1

    .local v18, textLimit:I
    const/4 v14, 0x1

    .local v14, i:I
    :goto_45
    if-ge v14, v7, :cond_95

    .line 137
    sget-object v4, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v12

    .line 139
    .local v12, embedding:Ljava/lang/Object;
    if-eqz v12, :cond_7a

    instance-of v4, v12, Ljava/lang/Integer;

    if-eqz v4, :cond_7a

    .line 140
    check-cast v12, Ljava/lang/Integer;

    .end local v12           #embedding:Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 142
    .local v11, embLevel:I
    if-nez v5, :cond_60

    .line 143
    new-array v5, v7, [B

    .line 146
    :cond_60
    :goto_60
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_88

    .line 147
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v4

    aput-char v4, v3, v14

    .line 148
    const/4 v4, 0x1

    sub-int v4, v14, v4

    int-to-byte v6, v11

    aput-byte v6, v5, v4

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto :goto_60

    .line 118
    .end local v5           #embeddings:[B
    .end local v8           #flags:I
    .end local v10           #direction:Ljava/lang/Object;
    .end local v11           #embLevel:I
    .end local v14           #i:I
    .end local v18           #textLimit:I
    :cond_74
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    goto :goto_28

    .line 128
    .restart local v8       #flags:I
    .restart local v10       #direction:Ljava/lang/Object;
    :cond_78
    const/4 v8, 0x1

    goto :goto_41

    .line 151
    .restart local v5       #embeddings:[B
    .restart local v12       #embedding:Ljava/lang/Object;
    .restart local v14       #i:I
    .restart local v18       #textLimit:I
    :cond_7a
    :goto_7a
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_88

    .line 152
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v4

    aput-char v4, v3, v14

    .line 151
    add-int/lit8 v14, v14, 0x1

    goto :goto_7a

    .line 134
    .end local v12           #embedding:Ljava/lang/Object;
    :cond_88
    sget-object v4, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    sub-int/2addr v4, v9

    add-int/lit8 v18, v4, 0x1

    goto :goto_45

    .line 158
    :cond_95
    sget-object v4, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v15

    .line 160
    .local v15, numericShaper:Ljava/lang/Object;
    if-eqz v15, :cond_aa

    instance-of v4, v15, Ljava/awt/font/NumericShaper;

    if-eqz v4, :cond_aa

    .line 161
    check-cast v15, Ljava/awt/font/NumericShaper;

    .end local v15           #numericShaper:Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4, v7}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 164
    :cond_aa
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v16

    .line 165
    .local v16, pBidi:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/text/Bidi;->readBidiInfo(J)V

    .line 166
    invoke-static/range {v16 .. v17}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_close(J)V

    .line 167
    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .registers 11
    .parameter "text"
    .parameter "textStart"
    .parameter "embeddings"
    .parameter "embStart"
    .parameter "paragraphLength"
    .parameter "flags"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    if-gez p2, :cond_11

    .line 207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text.0D"

    invoke-static {v3, p2}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_11
    if-gez p4, :cond_1f

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text.10"

    invoke-static {v3, p4}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_1f
    if-gez p5, :cond_2d

    .line 217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "text.11"

    invoke-static {v3, p5}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_2d
    invoke-static/range {p1 .. p6}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v0

    .line 222
    .local v0, pBidi:J
    invoke-direct {p0, v0, v1}, Ljava/text/Bidi;->readBidiInfo(J)V

    .line 223
    invoke-static {v0, v1}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_close(J)V

    .line 224
    return-void
.end method

.method private static createUBiDi([CI[BIII)J
    .registers 16
    .parameter "text"
    .parameter "textStart"
    .parameter "embeddings"
    .parameter "embStart"
    .parameter "paragraphLength"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 251
    const/4 v9, 0x0

    .line 253
    .local v9, realText:[C
    const/4 v6, 0x0

    .line 255
    .local v6, realEmbeddings:[B
    if-eqz p0, :cond_9

    array-length v3, p0

    sub-int/2addr v3, p1

    if-ge v3, p4, :cond_f

    .line 256
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 258
    :cond_f
    new-array v9, p4, [C

    .line 259
    invoke-static {p0, p1, v9, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    if-eqz p2, :cond_50

    .line 262
    array-length v3, p2

    sub-int/2addr v3, p3

    if-ge v3, p4, :cond_20

    .line 263
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 265
    :cond_20
    if-lez p4, :cond_50

    .line 266
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 268
    .end local v6           #realEmbeddings:[B
    .local v0, temp:Ljava/text/Bidi;
    new-array v6, p4, [B

    .line 269
    .restart local v6       #realEmbeddings:[B
    iget-object v3, v0, Ljava/text/Bidi;->offsetLevel:[B

    invoke-static {v3, v4, v6, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    const/4 v8, 0x0

    .local v8, i:I
    :goto_34
    if-ge v8, p4, :cond_50

    .line 272
    aget-byte v7, p2, v8

    .line 273
    .local v7, e:B
    if-gez v7, :cond_43

    .line 274
    const/16 v3, 0x80

    sub-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v6, v8

    .line 271
    :goto_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 275
    :cond_43
    if-lez v7, :cond_48

    .line 276
    aput-byte v7, v6, v8

    goto :goto_40

    .line 278
    :cond_48
    aget-byte v3, v6, v8

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v6, v8

    goto :goto_40

    .line 284
    .end local v0           #temp:Ljava/text/Bidi;
    .end local v7           #e:B
    .end local v8           #i:I
    :cond_50
    const/4 v3, 0x1

    if-gt p5, v3, :cond_56

    const/4 v3, -0x2

    if-ge p5, v3, :cond_57

    .line 285
    :cond_56
    const/4 p5, 0x0

    .line 288
    :cond_57
    invoke-static {}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_open()J

    move-result-wide v1

    .line 289
    .local v1, bidi:J
    int-to-byte v5, p5

    move-object v3, v9

    move v4, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_setPara(J[CIB[B)V

    .line 291
    return-wide v1
.end method

.method private readBidiInfo(J)V
    .registers 8
    .parameter "pBidi"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-static {p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_getLength(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->length:I

    .line 304
    iget v1, p0, Ljava/text/Bidi;->length:I

    if-nez v1, :cond_26

    move-object v1, v3

    :goto_d
    iput-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    .line 306
    invoke-static {p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_getParaLevel(J)B

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->baseLevel:I

    .line 308
    invoke-static {p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_countRuns(J)I

    move-result v0

    .line 309
    .local v0, runCount:I
    if-nez v0, :cond_2b

    .line 310
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 311
    iput-object v3, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    .line 324
    :cond_1f
    :goto_1f
    invoke-static {p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_getDirection(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->direction:I

    .line 325
    return-void

    .line 304
    .end local v0           #runCount:I
    :cond_26
    invoke-static {p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_getLevels(J)[B

    move-result-object v1

    goto :goto_d

    .line 312
    .restart local v0       #runCount:I
    :cond_2b
    if-gez v0, :cond_30

    .line 313
    iput-object v3, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    goto :goto_1f

    .line 315
    :cond_30
    invoke-static {p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_getRuns(J)[Lorg/apache/harmony/text/BidiRun;

    move-result-object v1

    iput-object v1, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    .line 318
    if-ne v0, v4, :cond_1f

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/harmony/text/BidiRun;->getLevel()I

    move-result v1

    iget v2, p0, Ljava/text/Bidi;->baseLevel:I

    if-ne v1, v2, :cond_1f

    .line 319
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 320
    iput-object v3, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    goto :goto_1f
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 14
    .parameter "levels"
    .parameter "levelStart"
    .parameter "objects"
    .parameter "objectStart"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 533
    if-ltz p4, :cond_f

    if-ltz p1, :cond_f

    if-ltz p3, :cond_f

    array-length v4, p0

    sub-int/2addr v4, p1

    if-gt p4, v4, :cond_f

    array-length v4, p2

    sub-int/2addr v4, p3

    if-le p4, v4, :cond_42

    .line 538
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "text.13"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 542
    :cond_42
    new-array v2, p4, [B

    .line 543
    .local v2, realLevels:[B
    invoke-static {p0, p1, v2, v8, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    invoke-static {v2, p4}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_reorderVisual([BI)[I

    move-result-object v1

    .line 547
    .local v1, indices:[I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 548
    .local v3, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    if-ge v0, p4, :cond_5e

    .line 549
    aget v4, v1, v0

    add-int/2addr v4, p3

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 552
    :cond_5e
    invoke-virtual {v3}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    return-void
.end method

.method public static requiresBidi([CII)Z
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    .line 574
    array-length v7, p0

    .line 575
    .local v7, length:I
    if-ltz p2, :cond_a

    if-ltz p1, :cond_a

    if-gt p1, p2, :cond_a

    if-le p2, v7, :cond_10

    .line 576
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 578
    :cond_10
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x0

    sub-int v5, p2, p1

    move-object v1, p0

    move v2, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 579
    .local v0, bidi:Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    :goto_22
    return v1

    :cond_23
    move v1, v4

    goto :goto_22
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .registers 15
    .parameter "lineStart"
    .parameter "lineLimit"

    .prologue
    .line 366
    if-ltz p1, :cond_a

    if-ltz p2, :cond_a

    iget v1, p0, Ljava/text/Bidi;->length:I

    if-gt p2, v1, :cond_a

    if-le p1, p2, :cond_30

    .line 369
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text.12"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Ljava/text/Bidi;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_30
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v0, v1, [C

    .line 373
    .local v0, text:[C
    const/16 v1, 0x61

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 374
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v2, v1, [B

    .line 375
    .local v2, embeddings:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3e
    array-length v1, v2

    if-ge v6, v1, :cond_4c

    .line 376
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 379
    :cond_4c
    invoke-virtual {p0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v1, 0x0

    move v5, v1

    .line 382
    .local v5, dir:I
    :goto_54
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-static/range {v0 .. v5}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v9

    .line 384
    .local v9, parent:J
    invoke-static {v9, v10, p1, p2}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_setLine(JII)J

    move-result-wide v7

    .line 385
    .local v7, line:J
    new-instance v11, Ljava/text/Bidi;

    invoke-direct {v11, v7, v8}, Ljava/text/Bidi;-><init>(J)V

    .line 386
    .local v11, result:Ljava/text/Bidi;
    invoke-static {v7, v8}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_close(J)V

    .line 387
    invoke-static {v9, v10}, Lorg/apache/harmony/text/BidiWrapper;->ubidi_close(J)V

    .line 388
    return-object v11

    .line 379
    .end local v5           #dir:I
    .end local v7           #line:J
    .end local v9           #parent:J
    .end local v11           #result:Ljava/text/Bidi;
    :cond_6c
    const/4 v1, 0x1

    move v5, v1

    goto :goto_54
.end method

.method public getBaseLevel()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Ljava/text/Bidi;->length:I

    return v0
.end method

.method public getLevelAt(I)I
    .registers 4
    .parameter "offset"

    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_7

    and-int/lit16 v1, v1, -0x81

    .line 423
    :goto_6
    return v1

    .line 422
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 423
    .local v0, e:Ljava/lang/RuntimeException;
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    goto :goto_6
.end method

.method public getRunCount()I
    .registers 2

    .prologue
    .line 434
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    array-length v0, v0

    goto :goto_5
.end method

.method public getRunLevel(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 446
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/harmony/text/BidiRun;->getLevel()I

    move-result v0

    goto :goto_6
.end method

.method public getRunLimit(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 458
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/text/Bidi;->length:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/harmony/text/BidiRun;->getLimit()I

    move-result v0

    goto :goto_6
.end method

.method public getRunStart(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 470
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/harmony/text/BidiRun;->getStart()I

    move-result v0

    goto :goto_5
.end method

.method public isLeftToRight()Z
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Ljava/text/Bidi;->direction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMixed()Z
    .registers 3

    .prologue
    .line 493
    iget v0, p0, Ljava/text/Bidi;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isRightToLeft()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 505
    iget v0, p0, Ljava/text/Bidi;->direction:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baselevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v1, :cond_4c

    const-string v1, "null"

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4c
    iget-object v1, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d
.end method
