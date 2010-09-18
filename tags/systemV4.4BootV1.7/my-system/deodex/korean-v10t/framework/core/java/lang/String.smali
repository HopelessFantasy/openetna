.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$1;,
        Ljava/lang/String$CaseInsensitiveComparator;,
        Ljava/lang/String$ConsolePrintStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static DefaultCharset:Ljava/nio/charset/Charset; = null

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final ascii:[C = null

.field private static lastCharset:Ljava/nio/charset/Charset; = null

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL

.field private static final upperValues:[C


# instance fields
.field private final count:I

.field private hashCode:I

.field private final offset:I

.field private final value:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 144
    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 161
    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Ljava/lang/String;->ascii:[C

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    sget-object v1, Ljava/lang/String;->ascii:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 163
    sget-object v1, Ljava/lang/String;->ascii:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1656
    :cond_1c
    const-string v1, "SS\u0000\u02bcN\u0000J\u030c\u0000\u0399\u0308\u0301\u03a5\u0308\u0301\u0535\u0552\u0000H\u0331\u0000T\u0308\u0000W\u030a\u0000Y\u030a\u0000A\u02be\u0000\u03a5\u0313\u0000\u03a5\u0313\u0300\u03a5\u0313\u0301\u03a5\u0313\u0342\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1fba\u0399\u0000\u0391\u0399\u0000\u0386\u0399\u0000\u0391\u0342\u0000\u0391\u0342\u0399\u0391\u0399\u0000\u1fca\u0399\u0000\u0397\u0399\u0000\u0389\u0399\u0000\u0397\u0342\u0000\u0397\u0342\u0399\u0397\u0399\u0000\u0399\u0308\u0300\u0399\u0308\u0301\u0399\u0342\u0000\u0399\u0308\u0342\u03a5\u0308\u0300\u03a5\u0308\u0301\u03a1\u0313\u0000\u03a5\u0342\u0000\u03a5\u0308\u0342\u1ffa\u0399\u0000\u03a9\u0399\u0000\u038f\u0399\u0000\u03a9\u0342\u0000\u03a9\u0342\u0399\u03a9\u0399\u0000FF\u0000FI\u0000FL\u0000FFIFFLST\u0000ST\u0000\u0544\u0546\u0000\u0544\u0535\u0000\u0544\u053b\u0000\u054e\u0546\u0000\u0544\u053d\u0000"

    iget-object v1, v1, Ljava/lang/String;->value:[C

    sput-object v1, Ljava/lang/String;->upperValues:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-array v0, v1, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 174
    iput v1, p0, Ljava/lang/String;->offset:I

    .line 175
    iput v1, p0, Ljava/lang/String;->count:I

    .line 176
    return-void
.end method

.method constructor <init>(II[C)V
    .registers 4
    .parameter "start"
    .parameter "length"
    .parameter "data"

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p3, p0, Ljava/lang/String;->value:[C

    .line 526
    iput p1, p0, Ljava/lang/String;->offset:I

    .line 527
    iput p2, p0, Ljava/lang/String;->count:I

    .line 528
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 539
    iget v0, p1, Ljava/lang/String;->offset:I

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 540
    iget v0, p1, Ljava/lang/String;->count:I

    iput v0, p0, Ljava/lang/String;->count:I

    .line 541
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;C)V
    .registers 8
    .parameter "s"
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 181
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 182
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 183
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->count:I

    aput-char p2, v0, v1

    .line 185
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .parameter "s1"
    .parameter "v1"

    .prologue
    const/4 v6, 0x0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    if-nez p1, :cond_8

    .line 620
    const-string p1, "null"

    .line 622
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, s2:Ljava/lang/String;
    iget v2, p1, Ljava/lang/String;->count:I

    iget v3, v1, Ljava/lang/String;->count:I

    add-int v0, v2, v3

    .line 624
    .local v0, len:I
    new-array v2, v0, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 625
    iput v6, p0, Ljava/lang/String;->offset:I

    .line 626
    iget-object v2, p1, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iget-object v2, v1, Ljava/lang/String;->value:[C

    iget v3, v1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    iget v6, v1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iput v0, p0, Ljava/lang/String;->count:I

    .line 629
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "stringbuffer"

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 553
    monitor-enter p1

    .line 554
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->shareValue()[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 555
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 556
    monitor-exit p1

    .line 557
    return-void

    .line 556
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "sb"

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    if-nez p1, :cond_c

    .line 606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 608
    :cond_c
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 609
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 610
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 611
    iget v0, p0, Ljava/lang/String;->count:I

    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 612
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 198
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 199
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5
    .parameter "data"
    .parameter "high"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 216
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 9
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    if-ltz p2, :cond_30

    if-ltz p3, :cond_30

    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_30

    .line 238
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 239
    invoke-direct {p0}, Ljava/lang/String;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 241
    .local v1, charset:Ljava/nio/charset/Charset;
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 243
    .local v0, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v2

    .local v2, result:I
    if-lez v2, :cond_29

    .line 244
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    iput-object v3, p0, Ljava/lang/String;->value:[C

    .line 245
    iput v2, p0, Ljava/lang/String;->count:I

    .line 253
    :goto_28
    return-void

    .line 247
    :cond_29
    iput v4, p0, Ljava/lang/String;->count:I

    .line 248
    new-array v3, v4, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    goto :goto_28

    .line 251
    .end local v0           #cb:Ljava/nio/CharBuffer;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #result:I
    :cond_30
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public constructor <init>([BIII)V
    .registers 9
    .parameter "data"
    .parameter "high"
    .parameter "start"
    .parameter "length"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    if-eqz p1, :cond_33

    .line 279
    if-ltz p3, :cond_2d

    if-ltz p4, :cond_2d

    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p4, v2, :cond_2d

    .line 280
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/String;->offset:I

    .line 281
    new-array v2, p4, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 282
    iput p4, p0, Ljava/lang/String;->count:I

    .line 283
    shl-int/lit8 p2, p2, 0x8

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_39

    .line 285
    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, start:I
    aget-byte v3, p1, p3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    .end local v1           #start:I
    .restart local p3
    goto :goto_19

    .line 288
    .end local v0           #i:I
    :cond_2d
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 291
    :cond_33
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 293
    .restart local v0       #i:I
    :cond_39
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .registers 35
    .parameter "data"
    .parameter "start"
    .parameter "length"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 315
    if-nez p4, :cond_b

    .line 316
    new-instance v27, Ljava/lang/NullPointerException;

    invoke-direct/range {v27 .. v27}, Ljava/lang/NullPointerException;-><init>()V

    throw v27

    .line 319
    :cond_b
    if-ltz p2, :cond_2ad

    if-ltz p3, :cond_2ad

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, p2

    move/from16 v0, p3

    move/from16 v1, v27

    if-gt v0, v1, :cond_2ad

    .line 320
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 323
    const-string v27, "ISO-8859-1"

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_3c

    const-string v27, "ISO8859_1"

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_76

    .line 325
    :cond_3c
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 326
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 327
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v27, v0

    move v0, v12

    move/from16 v1, v27

    if-ge v0, v1, :cond_15f

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v27, v0

    add-int/lit8 v20, p2, 0x1

    .end local p2
    .local v20, start:I
    aget-byte v28, p1, p2

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    aput-char v28, v27, v12

    .line 327
    add-int/lit8 v12, v12, 0x1

    move/from16 p2, v20

    .end local v20           #start:I
    .restart local p2
    goto :goto_4f

    .line 331
    .end local v12           #i:I
    :cond_76
    const-string v27, "utf8"

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a6

    const-string v27, "utf-8"

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a6

    const-string v27, "UTF8"

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a6

    const-string v27, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25c

    .line 338
    :cond_a6
    move-object/from16 v9, p1

    .line 339
    .local v9, d:[B
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    .line 341
    .local v23, v:[C
    move/from16 v13, p2

    .local v13, idx:I
    add-int v15, p2, p3

    .local v15, last:I
    const/16 v18, 0x0

    .local v18, s:I
    move/from16 v19, v18

    .end local v18           #s:I
    .local v19, s:I
    move v14, v13

    .line 343
    .end local v13           #idx:I
    .local v14, idx:I
    :goto_b7
    if-ge v14, v15, :cond_2b3

    .line 344
    add-int/lit8 v13, v14, 0x1

    .end local v14           #idx:I
    .restart local v13       #idx:I
    aget-byte v6, v9, v14

    .line 345
    .local v6, b0:B
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    if-nez v27, :cond_d6

    .line 348
    move v0, v6

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 349
    .local v24, val:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v23, v19

    .end local v24           #val:I
    :goto_d2
    move/from16 v19, v18

    .end local v18           #s:I
    .restart local v19       #s:I
    move v14, v13

    .line 431
    .end local v13           #idx:I
    .restart local v14       #idx:I
    goto :goto_b7

    .line 350
    .end local v14           #idx:I
    .restart local v13       #idx:I
    :cond_d6
    move v0, v6

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    const/16 v28, 0xc0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_117

    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v28, 0xe0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_117

    move v0, v6

    and-int/lit16 v0, v0, 0xf8

    move/from16 v27, v0

    const/16 v28, 0xf0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_117

    move v0, v6

    and-int/lit16 v0, v0, 0xfc

    move/from16 v27, v0

    const/16 v28, 0xf8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_117

    move v0, v6

    and-int/lit16 v0, v0, 0xfe

    move/from16 v27, v0

    const/16 v28, 0xfc

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_253

    .line 355
    :cond_117
    const/16 v22, 0x1

    .line 356
    .local v22, utfCount:I
    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v27, v0

    const/16 v28, 0xe0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_160

    const/16 v22, 0x2

    .line 368
    :cond_128
    :goto_128
    add-int v27, v13, v22

    move/from16 v0, v27

    move v1, v15

    if-le v0, v1, :cond_190

    .line 369
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    const v27, 0xfffd

    aput-char v27, v23, v19

    .line 434
    .end local v6           #b0:B
    .end local v22           #utfCount:I
    :goto_136
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 435
    move/from16 v0, v18

    new-array v0, v0, [C

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 436
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    .end local v9           #d:[B
    .end local v13           #idx:I
    .end local v15           #last:I
    .end local v18           #s:I
    .end local v23           #v:[C
    :cond_15f
    :goto_15f
    return-void

    .line 357
    .restart local v6       #b0:B
    .restart local v9       #d:[B
    .restart local v13       #idx:I
    .restart local v15       #last:I
    .restart local v19       #s:I
    .restart local v22       #utfCount:I
    .restart local v23       #v:[C
    :cond_160
    move v0, v6

    and-int/lit16 v0, v0, 0xf8

    move/from16 v27, v0

    const/16 v28, 0xf0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_170

    const/16 v22, 0x3

    goto :goto_128

    .line 358
    :cond_170
    move v0, v6

    and-int/lit16 v0, v0, 0xfc

    move/from16 v27, v0

    const/16 v28, 0xf8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_180

    const/16 v22, 0x4

    goto :goto_128

    .line 359
    :cond_180
    move v0, v6

    and-int/lit16 v0, v0, 0xfe

    move/from16 v27, v0

    const/16 v28, 0xfc

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_128

    const/16 v22, 0x5

    goto :goto_128

    .line 374
    :cond_190
    const/16 v27, 0x1f

    const/16 v28, 0x1

    sub-int v28, v22, v28

    shr-int v27, v27, v28

    and-int v24, v6, v27

    .line 375
    .restart local v24       #val:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    move v14, v13

    .end local v13           #idx:I
    .restart local v14       #idx:I
    :goto_19c
    move v0, v12

    move/from16 v1, v22

    if-ge v0, v1, :cond_1ca

    .line 376
    add-int/lit8 v13, v14, 0x1

    .end local v14           #idx:I
    .restart local v13       #idx:I
    aget-byte v5, v9, v14

    .line 377
    .local v5, b:B
    move v0, v5

    and-int/lit16 v0, v0, 0xc0

    move/from16 v27, v0

    const/16 v28, 0x80

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c0

    .line 378
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    const v27, 0xfffd

    aput-char v27, v23, v19

    .line 379
    add-int/lit8 v13, v13, -0x1

    move/from16 v19, v18

    .end local v18           #s:I
    .restart local v19       #s:I
    move v14, v13

    .line 380
    .end local v13           #idx:I
    .restart local v14       #idx:I
    goto/16 :goto_b7

    .line 383
    .end local v14           #idx:I
    .restart local v13       #idx:I
    :cond_1c0
    shl-int/lit8 v24, v24, 0x6

    .line 384
    and-int/lit8 v27, v5, 0x3f

    or-int v24, v24, v27

    .line 375
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    .end local v13           #idx:I
    .restart local v14       #idx:I
    goto :goto_19c

    .line 402
    .end local v5           #b:B
    :cond_1ca
    const/16 v27, 0x2

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_1ef

    const v27, 0xd800

    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_1ef

    const v27, 0xdfff

    move/from16 v0, v24

    move/from16 v1, v27

    if-gt v0, v1, :cond_1ef

    .line 404
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    const v27, 0xfffd

    aput-char v27, v23, v19

    move/from16 v19, v18

    .line 405
    .end local v18           #s:I
    .restart local v19       #s:I
    goto/16 :goto_b7

    .line 410
    :cond_1ef
    const v27, 0x10ffff

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_203

    .line 411
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    const v27, 0xfffd

    aput-char v27, v23, v19

    move/from16 v19, v18

    .line 412
    .end local v18           #s:I
    .restart local v19       #s:I
    goto/16 :goto_b7

    .line 416
    :cond_203
    const/high16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_217

    .line 417
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v23, v19

    :goto_214
    move v13, v14

    .line 427
    .end local v14           #idx:I
    .restart local v13       #idx:I
    goto/16 :goto_d2

    .line 419
    .end local v13           #idx:I
    .end local v18           #s:I
    .restart local v14       #idx:I
    .restart local v19       #s:I
    :cond_217
    const v27, 0xffff

    and-int v26, v24, v27

    .line 420
    .local v26, x:I
    shr-int/lit8 v27, v24, 0x10

    and-int/lit8 v21, v27, 0x1f

    .line 421
    .local v21, u:I
    const/16 v27, 0x1

    sub-int v27, v21, v27

    const v28, 0xffff

    and-int v25, v27, v28

    .line 422
    .local v25, w:I
    const v27, 0xd800

    shl-int/lit8 v28, v25, 0x6

    or-int v27, v27, v28

    shr-int/lit8 v28, v26, 0xa

    or-int v11, v27, v28

    .line 423
    .local v11, hi:I
    const v27, 0xdc00

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v28, v0

    or-int v16, v27, v28

    .line 424
    .local v16, lo:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    move v0, v11

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v23, v19

    .line 425
    add-int/lit8 v19, v18, 0x1

    .end local v18           #s:I
    .restart local v19       #s:I
    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v27, v0

    aput-char v27, v23, v18

    move/from16 v18, v19

    .end local v19           #s:I
    .restart local v18       #s:I
    goto :goto_214

    .line 429
    .end local v11           #hi:I
    .end local v12           #i:I
    .end local v14           #idx:I
    .end local v16           #lo:I
    .end local v18           #s:I
    .end local v21           #u:I
    .end local v22           #utfCount:I
    .end local v24           #val:I
    .end local v25           #w:I
    .end local v26           #x:I
    .restart local v13       #idx:I
    .restart local v19       #s:I
    :cond_253
    add-int/lit8 v18, v19, 0x1

    .end local v19           #s:I
    .restart local v18       #s:I
    const v27, 0xfffd

    aput-char v27, v23, v19

    goto/16 :goto_d2

    .line 440
    .end local v6           #b0:B
    .end local v9           #d:[B
    .end local v13           #idx:I
    .end local v15           #last:I
    .end local v18           #s:I
    .end local v23           #v:[C
    :cond_25c
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/lang/String;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    .line 445
    .local v8, charset:Ljava/nio/charset/Charset;
    :try_start_264
    invoke-static/range {p1 .. p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_26e} :catch_287

    move-result-object v7

    .line 451
    .local v7, cb:Ljava/nio/CharBuffer;
    :goto_26f
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->length()I

    move-result v17

    .local v17, result:I
    if-lez v17, :cond_295

    .line 452
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 453
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    goto/16 :goto_15f

    .line 446
    .end local v7           #cb:Ljava/nio/CharBuffer;
    .end local v17           #result:I
    :catch_287
    move-exception v27

    move-object/from16 v10, v27

    .line 449
    .local v10, e:Ljava/lang/Exception;
    const-string v27, "?"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v7

    .restart local v7       #cb:Ljava/nio/CharBuffer;
    goto :goto_26f

    .line 455
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v17       #result:I
    :cond_295
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 456
    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [C

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    goto/16 :goto_15f

    .line 459
    .end local v7           #cb:Ljava/nio/CharBuffer;
    .end local v8           #charset:Ljava/nio/charset/Charset;
    .end local v17           #result:I
    :cond_2ad
    new-instance v27, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v27

    .restart local v9       #d:[B
    .restart local v14       #idx:I
    .restart local v15       #last:I
    .restart local v19       #s:I
    .restart local v23       #v:[C
    :cond_2b3
    move/from16 v18, v19

    .end local v19           #s:I
    .restart local v18       #s:I
    move v13, v14

    .end local v14           #idx:I
    .restart local v13       #idx:I
    goto/16 :goto_136
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 5
    .parameter "data"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 476
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .parameter "data"

    .prologue
    .line 488
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 489
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 7
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1c

    .line 511
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 512
    new-array v0, p3, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 513
    iput p3, p0, Ljava/lang/String;->count:I

    .line 514
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    return-void

    .line 516
    :cond_1c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public constructor <init>([III)V
    .registers 11
    .parameter "codePoints"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    if-nez p1, :cond_b

    .line 580
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 582
    :cond_b
    if-ltz p2, :cond_18

    if-ltz p3, :cond_18

    int-to-long v3, p2

    int-to-long v5, p3

    add-long/2addr v3, v5

    array-length v5, p1

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1e

    .line 584
    :cond_18
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 586
    :cond_1e
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/String;->offset:I

    .line 587
    mul-int/lit8 v3, p3, 0x2

    new-array v3, v3, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    .line 588
    add-int v1, p2, p3

    .line 589
    .local v1, end:I
    const/4 v0, 0x0

    .line 590
    .local v0, c:I
    move v2, p2

    .local v2, i:I
    :goto_2b
    if-ge v2, v1, :cond_39

    .line 591
    aget v3, p1, v2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    invoke-static {v3, v4, v0}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v3

    add-int/2addr v0, v3

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 593
    :cond_39
    iput v0, p0, Ljava/lang/String;->count:I

    .line 594
    return-void
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 748
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 769
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private defaultCharset()Ljava/nio/charset/Charset;
    .registers 5

    .prologue
    .line 773
    sget-object v1, Ljava/lang/String;->DefaultCharset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_25

    .line 774
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "file.encoding"

    const-string v3, "ISO8859_1"

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 780
    .local v0, encoding:Ljava/lang/String;
    :try_start_13
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Ljava/lang/String;->DefaultCharset:Ljava/nio/charset/Charset;
    :try_end_19
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_13 .. :try_end_19} :catch_2a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_13 .. :try_end_19} :catch_28

    .line 787
    :goto_19
    sget-object v1, Ljava/lang/String;->DefaultCharset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_25

    .line 788
    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Ljava/lang/String;->DefaultCharset:Ljava/nio/charset/Charset;

    .line 791
    .end local v0           #encoding:Ljava/lang/String;
    :cond_25
    sget-object v1, Ljava/lang/String;->DefaultCharset:Ljava/nio/charset/Charset;

    return-object v1

    .line 783
    .restart local v0       #encoding:Ljava/lang/String;
    :catch_28
    move-exception v1

    goto :goto_19

    .line 781
    :catch_2a
    move-exception v1

    goto :goto_19
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "format"
    .parameter "args"

    .prologue
    .line 2214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "loc"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 2241
    if-nez p1, :cond_a

    .line 2242
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null format argument"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2244
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p2, :cond_26

    const/4 v3, 0x0

    :goto_11
    add-int v0, v2, v3

    .line 2246
    .local v0, bufferSize:I
    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 2247
    .local v1, f:Ljava/util/Formatter;
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2244
    .end local v0           #bufferSize:I
    .end local v1           #f:Ljava/util/Formatter;
    :cond_26
    array-length v3, p2

    mul-int/lit8 v3, v3, 0xa

    goto :goto_11
.end method

.method private getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 954
    sget-object v0, Ljava/lang/String;->lastCharset:Ljava/nio/charset/Charset;

    .line 955
    .local v0, charset:Ljava/nio/charset/Charset;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 957
    :cond_e
    :try_start_e
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_11
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_e .. :try_end_11} :catch_15
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_e .. :try_end_11} :catch_24

    move-result-object v0

    .line 965
    sput-object v0, Ljava/lang/String;->lastCharset:Ljava/nio/charset/Charset;

    .line 967
    :cond_14
    return-object v0

    .line 958
    :catch_15
    move-exception v1

    .line 959
    .local v1, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 961
    .end local v1           #e:Ljava/nio/charset/IllegalCharsetNameException;
    .restart local p0
    :catch_24
    move-exception v1

    .line 962
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .registers 14
    .parameter "haystackString"
    .parameter "needleString"
    .parameter "cache"
    .parameter "md2"
    .parameter "lastChar"

    .prologue
    .line 2262
    iget-object v0, p0, Ljava/lang/String;->value:[C

    .line 2263
    .local v0, haystack:[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 2264
    .local v1, haystackOffset:I
    iget p0, p0, Ljava/lang/String;->count:I

    .line 2265
    .local p0, haystackLength:I
    iget-object v3, p1, Ljava/lang/String;->value:[C

    .line 2266
    .local v3, needle:[C
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 2267
    .local v5, needleOffset:I
    iget p1, p1, Ljava/lang/String;->count:I

    .line 2268
    .local p1, needleLength:I
    const/4 v2, 0x1

    sub-int v4, p1, v2

    .line 2269
    .local v4, needleLengthMinus1:I
    add-int/2addr p0, v1

    .line 2270
    .local p0, haystackEnd:I
    add-int p1, v1, v4

    .local p1, i:I
    :goto_12
    if-ge p1, p0, :cond_47

    .line 2271
    aget-char v2, v0, p1

    if-ne p4, v2, :cond_3c

    .line 2272
    const/4 v2, 0x0

    .local v2, j:I
    :goto_19
    if-ge v2, v4, :cond_38

    .line 2273
    add-int v6, v2, v5

    aget-char v6, v3, v6

    add-int v7, p1, v2

    sub-int/2addr v7, v4

    aget-char v7, v0, v7

    if-eq v6, v7, :cond_35

    .line 2275
    const/4 v6, 0x1

    .line 2276
    .local v6, skip:I
    const/4 v7, 0x1

    aget-char v8, v0, p1

    shl-int/2addr v7, v8

    and-int/2addr v7, p2

    if-nez v7, :cond_49

    .line 2277
    add-int/2addr v2, v6

    .line 2279
    .end local v6           #skip:I
    .local v2, skip:I
    :goto_2f
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v2           #skip:I
    add-int/2addr p1, v2

    .line 2280
    goto :goto_12

    .line 2272
    .local v2, j:I
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2283
    :cond_38
    sub-int p0, p1, v4

    sub-int/2addr p0, v1

    .line 2291
    .end local v2           #j:I
    .end local p0           #haystackEnd:I
    :goto_3b
    return p0

    .line 2286
    .restart local p0       #haystackEnd:I
    :cond_3c
    const/4 v2, 0x1

    aget-char v6, v0, p1

    shl-int/2addr v2, v6

    and-int/2addr v2, p2

    if-nez v2, :cond_44

    .line 2287
    add-int/2addr p1, v4

    .line 2289
    :cond_44
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 2291
    :cond_47
    const/4 p0, -0x1

    goto :goto_3b

    .restart local v2       #j:I
    .restart local v6       #skip:I
    :cond_49
    move v2, v6

    .end local v6           #skip:I
    .local v2, skip:I
    goto :goto_2f
.end method

.method private upperIndex(I)I
    .registers 8
    .parameter "ch"

    .prologue
    const/16 v5, 0x390

    const/16 v4, 0x1f0

    const/16 v3, 0x149

    const/16 v1, 0xdf

    const/16 v2, 0x587

    .line 1670
    const/4 v0, -0x1

    .line 1671
    .local v0, index:I
    if-lt p1, v1, :cond_12

    .line 1672
    if-gt p1, v2, :cond_35

    .line 1673
    if-ne p1, v1, :cond_13

    .line 1674
    const/4 v0, 0x0

    .line 1713
    :cond_12
    :goto_12
    return v0

    .line 1675
    :cond_13
    if-gt p1, v3, :cond_19

    .line 1676
    if-ne p1, v3, :cond_12

    .line 1677
    const/4 v0, 0x1

    goto :goto_12

    .line 1679
    :cond_19
    if-gt p1, v4, :cond_1f

    .line 1680
    if-ne p1, v4, :cond_12

    .line 1681
    const/4 v0, 0x2

    goto :goto_12

    .line 1683
    :cond_1f
    if-gt p1, v5, :cond_25

    .line 1684
    if-ne p1, v5, :cond_12

    .line 1685
    const/4 v0, 0x3

    goto :goto_12

    .line 1687
    :cond_25
    const/16 v1, 0x3b0

    if-gt p1, v1, :cond_2f

    .line 1688
    const/16 v1, 0x3b0

    if-ne p1, v1, :cond_12

    .line 1689
    const/4 v0, 0x4

    goto :goto_12

    .line 1691
    :cond_2f
    if-gt p1, v2, :cond_12

    .line 1692
    if-ne p1, v2, :cond_12

    .line 1693
    const/4 v0, 0x5

    goto :goto_12

    .line 1696
    :cond_35
    const/16 v1, 0x1e96

    if-lt p1, v1, :cond_12

    .line 1697
    const/16 v1, 0x1e9a

    if-gt p1, v1, :cond_44

    .line 1698
    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x1e96

    sub-int v0, v1, v2

    goto :goto_12

    .line 1699
    :cond_44
    const/16 v1, 0x1f50

    if-lt p1, v1, :cond_5a

    const/16 v1, 0x1ffc

    if-gt p1, v1, :cond_5a

    .line 1700
    const-string v1, "\u000b\u0000\u000c\u0000\r\u0000\u000e\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>\u0000\u0000?@A\u0000BC\u0000\u0000\u0000\u0000D\u0000\u0000\u0000\u0000\u0000EFG\u0000HI\u0000\u0000\u0000\u0000J\u0000\u0000\u0000\u0000\u0000KL\u0000\u0000MN\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000OPQ\u0000RS\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000TUV\u0000WX\u0000\u0000\u0000\u0000Y"

    iget-object v1, v1, Ljava/lang/String;->value:[C

    const/16 v2, 0x1f50

    sub-int v2, p1, v2

    aget-char v0, v1, v2

    .line 1701
    if-nez v0, :cond_12

    .line 1702
    const/4 v0, -0x1

    goto :goto_12

    .line 1704
    :cond_5a
    const v1, 0xfb00

    if-lt p1, v1, :cond_12

    .line 1705
    const v1, 0xfb06

    if-gt p1, v1, :cond_6c

    .line 1706
    add-int/lit8 v1, p1, 0x5a

    const v2, 0xfb00

    sub-int v0, v1, v2

    goto :goto_12

    .line 1707
    :cond_6c
    const v1, 0xfb13

    if-lt p1, v1, :cond_12

    const v1, 0xfb17

    if-gt p1, v1, :cond_12

    .line 1708
    add-int/lit8 v1, p1, 0x61

    const v2, 0xfb13

    sub-int v0, v1, v2

    goto :goto_12
.end method

.method public static valueOf(C)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1850
    const/16 v1, 0x80

    if-ge p0, v1, :cond_10

    .line 1851
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->ascii:[C

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .line 1855
    .local v0, s:Ljava/lang/String;
    :goto_d
    iput p0, v0, Ljava/lang/String;->hashCode:I

    .line 1856
    return-object v0

    .line 1853
    .end local v0           #s:Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [C

    aput-char p0, v1, v3

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_d
.end method

.method public static valueOf(D)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 1868
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1880
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1892
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 1904
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1918
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "null"

    goto :goto_6
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 1932
    if-eqz p0, :cond_5

    const-string v0, "true"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "false"

    goto :goto_4
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 1816
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1837
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method _getChars(II[CI)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 1006
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    return-void
.end method

.method public charAt(I)C
    .registers 4
    .parameter "index"

    .prologue
    .line 642
    if-ltz p1, :cond_e

    iget v0, p0, Ljava/lang/String;->count:I

    if-ge p1, v0, :cond_e

    .line 643
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0

    .line 645
    :cond_e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public codePointAt(I)I
    .registers 6
    .parameter "index"

    .prologue
    .line 2108
    if-ltz p1, :cond_6

    iget v1, p0, Ljava/lang/String;->count:I

    if-lt p1, v1, :cond_c

    .line 2109
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2111
    :cond_c
    iget v1, p0, Ljava/lang/String;->offset:I

    add-int v0, p1, v1

    .line 2112
    .local v0, s:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    return v1
.end method

.method public codePointBefore(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 2129
    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    iget v1, p0, Ljava/lang/String;->count:I

    if-le p1, v1, :cond_d

    .line 2130
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2132
    :cond_d
    iget v1, p0, Ljava/lang/String;->offset:I

    add-int v0, p1, v1

    .line 2133
    .local v0, s:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v1

    return v1
.end method

.method public codePointCount(II)I
    .registers 6
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 2153
    if-ltz p1, :cond_8

    iget v1, p0, Ljava/lang/String;->count:I

    if-gt p2, v1, :cond_8

    if-le p1, p2, :cond_e

    .line 2154
    :cond_8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2156
    :cond_e
    iget v1, p0, Ljava/lang/String;->offset:I

    add-int v0, p1, v1

    .line 2157
    .local v0, s:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    sub-int v2, p2, p1

    invoke-static {v1, v0, v2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/String;)I
    .registers 12
    .parameter "string"

    .prologue
    .line 669
    iget v1, p0, Ljava/lang/String;->offset:I

    .local v1, o1:I
    iget v3, p1, Ljava/lang/String;->offset:I

    .line 670
    .local v3, o2:I
    iget v7, p0, Ljava/lang/String;->offset:I

    iget v8, p0, Ljava/lang/String;->count:I

    iget v9, p1, Ljava/lang/String;->count:I

    if-ge v8, v9, :cond_26

    iget v8, p0, Ljava/lang/String;->count:I

    :goto_e
    add-int v0, v7, v8

    .line 671
    .local v0, end:I
    iget-object v6, p1, Ljava/lang/String;->value:[C

    .local v6, target:[C
    move v4, v3

    .end local v3           #o2:I
    .local v4, o2:I
    move v2, v1

    .line 672
    .end local v1           #o1:I
    .local v2, o1:I
    :goto_14
    if-ge v2, v0, :cond_29

    .line 673
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #o1:I
    .restart local v1       #o1:I
    aget-char v7, v7, v2

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o2:I
    .restart local v3       #o2:I
    aget-char v8, v6, v4

    sub-int v5, v7, v8

    .local v5, result:I
    if-eqz v5, :cond_31

    move v7, v5

    .line 677
    .end local v5           #result:I
    :goto_25
    return v7

    .line 670
    .end local v0           #end:I
    .end local v6           #target:[C
    :cond_26
    iget v8, p1, Ljava/lang/String;->count:I

    goto :goto_e

    .line 677
    .end local v1           #o1:I
    .end local v3           #o2:I
    .restart local v0       #end:I
    .restart local v2       #o1:I
    .restart local v4       #o2:I
    .restart local v6       #target:[C
    :cond_29
    iget v7, p0, Ljava/lang/String;->count:I

    iget v8, p1, Ljava/lang/String;->count:I

    sub-int/2addr v7, v8

    move v3, v4

    .end local v4           #o2:I
    .restart local v3       #o2:I
    move v1, v2

    .end local v2           #o1:I
    .restart local v1       #o1:I
    goto :goto_25

    .restart local v5       #result:I
    :cond_31
    move v4, v3

    .end local v3           #o2:I
    .restart local v4       #o2:I
    move v2, v1

    .end local v1           #o1:I
    .restart local v2       #o1:I
    goto :goto_14
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .registers 14
    .parameter "string"

    .prologue
    .line 700
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 701
    .local v5, o2:I
    iget v9, p0, Ljava/lang/String;->offset:I

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-ge v10, v11, :cond_25

    iget v10, p0, Ljava/lang/String;->count:I

    :goto_e
    add-int v2, v9, v10

    .line 703
    .local v2, end:I
    iget-object v8, p1, Ljava/lang/String;->value:[C

    .local v8, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 704
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_14
    if-ge v4, v2, :cond_3e

    .line 705
    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v9, v4

    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v8, v6

    .local v1, c2:C
    if-ne v0, v1, :cond_28

    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .line 706
    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_14

    .line 701
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #end:I
    .end local v4           #o1:I
    .end local v6           #o2:I
    .end local v8           #target:[C
    .restart local v3       #o1:I
    .restart local v5       #o2:I
    :cond_25
    iget v10, p1, Ljava/lang/String;->count:I

    goto :goto_e

    .line 708
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #end:I
    .restart local v8       #target:[C
    :cond_28
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 709
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 710
    sub-int v7, v0, v1

    .local v7, result:I
    if-eqz v7, :cond_46

    move v9, v7

    .line 714
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v7           #result:I
    :goto_3d
    return v9

    .end local v3           #o1:I
    .end local v5           #o2:I
    .restart local v4       #o1:I
    .restart local v6       #o2:I
    :cond_3e
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p1, Ljava/lang/String;->count:I

    sub-int/2addr v9, v10

    move v5, v6

    .end local v6           #o2:I
    .restart local v5       #o2:I
    move v3, v4

    .end local v4           #o1:I
    .restart local v3       #o1:I
    goto :goto_3d

    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v7       #result:I
    :cond_46
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_14
.end method

.method public concat(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 727
    iget v1, p1, Ljava/lang/String;->count:I

    if-lez v1, :cond_2b

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_2b

    .line 728
    iget v1, p0, Ljava/lang/String;->count:I

    iget v2, p1, Ljava/lang/String;->count:I

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 729
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 730
    iget-object v1, p1, Ljava/lang/String;->value:[C

    iget v2, p1, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget v4, p1, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    invoke-direct {v1, v5, v2, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 734
    .end local v0           #buffer:[C
    :goto_2a
    return-object v1

    :cond_2b
    iget v1, p0, Ljava/lang/String;->count:I

    if-nez v1, :cond_31

    move-object v1, p1

    goto :goto_2a

    :cond_31
    move-object v1, p0

    goto :goto_2a
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "cs"

    .prologue
    .line 2171
    if-nez p1, :cond_8

    .line 2172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2174
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "cs"

    .prologue
    const/4 v2, 0x0

    .line 1967
    if-nez p1, :cond_9

    .line 1968
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1971
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1973
    .local v0, len:I
    iget v1, p0, Ljava/lang/String;->count:I

    if-eq v0, v1, :cond_13

    move v1, v2

    .line 1981
    :goto_12
    return v1

    .line 1977
    :cond_13
    if-nez v0, :cond_1b

    iget v1, p0, Ljava/lang/String;->count:I

    if-nez v1, :cond_1b

    .line 1978
    const/4 v1, 0x1

    goto :goto_12

    .line 1981
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_12
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .registers 7
    .parameter "strbuf"

    .prologue
    const/4 v2, 0x0

    .line 1947
    monitor-enter p1

    .line 1948
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1949
    .local v0, size:I
    iget v1, p0, Ljava/lang/String;->count:I

    if-eq v1, v0, :cond_d

    .line 1950
    monitor-exit p1

    move v1, v2

    .line 1952
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>(II[C)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    monitor-exit p1

    goto :goto_c

    .line 1954
    .end local v0           #size:I
    :catchall_1f
    move-exception v1

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 5
    .parameter "suffix"

    .prologue
    .line 805
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15
    .parameter "object"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 822
    if-ne p1, p0, :cond_6

    move v9, v12

    .line 847
    :goto_5
    return v9

    .line 825
    :cond_6
    instance-of v9, p1, Ljava/lang/String;

    if-eqz v9, :cond_3e

    .line 826
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 828
    .local v6, s:Ljava/lang/String;
    iget v1, p0, Ljava/lang/String;->hashCode:I

    .line 829
    .local v1, hashCode1:I
    iget v2, v6, Ljava/lang/String;->hashCode:I

    .line 830
    .local v2, hashCode2:I
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, v6, Ljava/lang/String;->count:I

    if-ne v9, v10, :cond_1e

    if-eq v1, v2, :cond_20

    if-eqz v1, :cond_20

    if-eqz v2, :cond_20

    :cond_1e
    move v9, v11

    .line 832
    goto :goto_5

    .line 836
    :cond_20
    iget v4, p0, Ljava/lang/String;->offset:I

    .local v4, o1:I
    iget v5, v6, Ljava/lang/String;->offset:I

    .line 837
    .local v5, o2:I
    iget-object v7, p0, Ljava/lang/String;->value:[C

    .line 838
    .local v7, value1:[C
    iget-object v8, v6, Ljava/lang/String;->value:[C

    .line 839
    .local v8, value2:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_29
    iget v9, p0, Ljava/lang/String;->count:I

    if-ge v3, v9, :cond_3c

    .line 840
    add-int v9, v4, v3

    aget-char v9, v7, v9

    add-int v10, v5, v3

    aget-char v10, v8, v10

    if-eq v9, v10, :cond_39

    move v9, v11

    .line 841
    goto :goto_5

    .line 839
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_3c
    move v9, v12

    .line 844
    goto :goto_5

    .end local v1           #hashCode1:I
    .end local v2           #hashCode2:I
    .end local v3           #i:I
    .end local v4           #o1:I
    .end local v5           #o2:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #value1:[C
    .end local v8           #value2:[C
    :cond_3e
    move v9, v11

    .line 847
    goto :goto_5
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 14
    .parameter "string"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 861
    if-ne p1, p0, :cond_6

    move v8, v11

    .line 880
    :goto_5
    return v8

    .line 864
    :cond_6
    if-eqz p1, :cond_e

    iget v8, p0, Ljava/lang/String;->count:I

    iget v9, p1, Ljava/lang/String;->count:I

    if-eq v8, v9, :cond_10

    :cond_e
    move v8, v10

    .line 865
    goto :goto_5

    .line 868
    :cond_10
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 869
    .local v5, o2:I
    iget v8, p0, Ljava/lang/String;->offset:I

    iget v9, p0, Ljava/lang/String;->count:I

    add-int v2, v8, v9

    .line 871
    .local v2, end:I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .local v7, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 872
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_1e
    if-ge v4, v2, :cond_42

    .line 873
    iget-object v8, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v8, v4

    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v7, v6

    .local v1, c2:C
    if-eq v0, v1, :cond_44

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    if-eq v8, v9, :cond_44

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-eq v8, v9, :cond_44

    move v8, v10

    .line 877
    goto :goto_5

    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v3           #o1:I
    .end local v5           #o2:I
    .restart local v4       #o1:I
    .restart local v6       #o2:I
    :cond_42
    move v8, v11

    .line 880
    goto :goto_5

    .end local v4           #o1:I
    .end local v6           #o2:I
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v3       #o1:I
    .restart local v5       #o2:I
    :cond_44
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1e
.end method

.method public getBytes(II[BI)V
    .registers 9
    .parameter "start"
    .parameter "end"
    .parameter "data"
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    if-ltz p1, :cond_27

    if-gt p1, p2, :cond_27

    iget v3, p0, Ljava/lang/String;->count:I

    if-gt p2, v3, :cond_27

    .line 921
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v3

    .line 923
    :try_start_b
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int v1, v3, p1

    .local v1, i:I
    move v2, p4

    .end local p4
    .local v2, index:I
    :goto_10
    if-ge v1, p2, :cond_2d

    .line 924
    add-int/lit8 p4, v2, 0x1

    .end local v2           #index:I
    .restart local p4
    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_1b} :catch_1f

    .line 923
    add-int/lit8 v1, v1, 0x1

    move v2, p4

    .end local p4
    .restart local v2       #index:I
    goto :goto_10

    .line 926
    .end local v1           #i:I
    .end local v2           #index:I
    .restart local p4
    :catch_1f
    move-exception v3

    move-object v0, v3

    .line 927
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 930
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_27
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 932
    .end local p4
    .restart local v1       #i:I
    .restart local v2       #index:I
    :cond_2d
    return-void
.end method

.method public getBytes()[B
    .registers 7

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/String;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/String;->value:[C

    iget v4, p0, Ljava/lang/String;->offset:I

    iget v5, p0, Ljava/lang/String;->count:I

    invoke-static {v3, v4, v5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 895
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 896
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 897
    return-object v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 8
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-direct {p0, p1}, Ljava/lang/String;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/String;->value:[C

    iget v4, p0, Ljava/lang/String;->offset:I

    iget v5, p0, Ljava/lang/String;->count:I

    invoke-static {v3, v4, v5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 947
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 948
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 949
    return-object v1
.end method

.method public getChars(II[CI)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 991
    if-ltz p1, :cond_13

    if-gt p1, p2, :cond_13

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_13

    .line 992
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    return-void

    .line 994
    :cond_13
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method getValue()[C
    .registers 2

    .prologue
    .line 2298
    iget-object v0, p0, Ljava/lang/String;->value:[C

    return-object v0
.end method

.method public hashCode()I
    .registers 10

    .prologue
    .line 1013
    iget v3, p0, Ljava/lang/String;->hashCode:I

    .line 1014
    .local v3, hash:I
    if-nez v3, :cond_1f

    .line 1015
    const/4 v5, 0x1

    .line 1016
    .local v5, multiplier:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1017
    .local v1, _offset:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1018
    .local v0, _count:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1019
    .local v2, _value:[C
    add-int v7, v1, v0

    const/4 v8, 0x1

    sub-int v4, v7, v8

    .local v4, i:I
    :goto_10
    if-lt v4, v1, :cond_1d

    .line 1020
    aget-char v7, v2, v4

    mul-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 1021
    shl-int/lit8 v6, v5, 0x5

    .line 1022
    .local v6, shifted:I
    sub-int v5, v6, v5

    .line 1019
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 1024
    .end local v6           #shifted:I
    :cond_1d
    iput v3, p0, Ljava/lang/String;->hashCode:I

    .line 1026
    .end local v0           #_count:I
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v4           #i:I
    .end local v5           #multiplier:I
    :cond_1f
    return v3
.end method

.method public indexOf(I)I
    .registers 8
    .parameter "c"

    .prologue
    .line 1043
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1044
    .local v0, _count:I
    if-lez v0, :cond_17

    .line 1045
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1046
    .local v1, _offset:I
    add-int v4, v1, v0

    .line 1047
    .local v4, last:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1048
    .local v2, _value:[C
    move v3, v1

    .local v3, i:I
    :goto_b
    if-ge v3, v4, :cond_17

    .line 1049
    aget-char v5, v2, v3

    if-ne v5, p1, :cond_14

    .line 1050
    sub-int v5, v3, v1

    .line 1054
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v3           #i:I
    .end local v4           #last:I
    :goto_13
    return v5

    .line 1048
    .restart local v1       #_offset:I
    .restart local v2       #_value:[C
    .restart local v3       #i:I
    .restart local v4       #last:I
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1054
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v3           #i:I
    .end local v4           #last:I
    :cond_17
    const/4 v5, -0x1

    goto :goto_13
.end method

.method public indexOf(II)I
    .registers 9
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1073
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1074
    .local v0, _count:I
    if-ge p2, v0, :cond_1d

    .line 1075
    if-gez p2, :cond_7

    .line 1076
    const/4 p2, 0x0

    .line 1078
    :cond_7
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1079
    .local v1, _offset:I
    iget v5, p0, Ljava/lang/String;->count:I

    add-int v4, v1, v5

    .line 1080
    .local v4, last:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1081
    .local v2, _value:[C
    add-int v3, v1, p2

    .local v3, i:I
    :goto_11
    if-ge v3, v4, :cond_1d

    .line 1082
    aget-char v5, v2, v3

    if-ne v5, p1, :cond_1a

    .line 1083
    sub-int v5, v3, v1

    .line 1087
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v3           #i:I
    .end local v4           #last:I
    :goto_19
    return v5

    .line 1081
    .restart local v1       #_offset:I
    .restart local v2       #_value:[C
    .restart local v3       #i:I
    .restart local v4       #last:I
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1087
    .end local v1           #_offset:I
    .end local v2           #_value:[C
    .end local v3           #i:I
    .end local v4           #last:I
    :cond_1d
    const/4 v5, -0x1

    goto :goto_19
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 16
    .parameter "string"

    .prologue
    const/4 v13, -0x1

    .line 1104
    const/4 v7, 0x0

    .line 1105
    .local v7, start:I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 1106
    .local v8, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1107
    .local v0, _count:I
    if-lez v8, :cond_3a

    .line 1108
    if-le v8, v0, :cond_c

    move v11, v13

    .line 1131
    :goto_b
    return v11

    .line 1111
    :cond_c
    iget-object v10, p1, Ljava/lang/String;->value:[C

    .line 1112
    .local v10, target:[C
    iget v9, p1, Ljava/lang/String;->offset:I

    .line 1113
    .local v9, subOffset:I
    aget-char v3, v10, v9

    .line 1114
    .local v3, firstChar:C
    add-int v2, v9, v8

    .line 1116
    .local v2, end:I
    :goto_14
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1117
    .local v4, i:I
    if-eq v4, v13, :cond_1e

    add-int v11, v8, v4

    if-le v11, v0, :cond_20

    :cond_1e
    move v11, v13

    .line 1118
    goto :goto_b

    .line 1120
    :cond_20
    iget v11, p0, Ljava/lang/String;->offset:I

    add-int v5, v11, v4

    .local v5, o1:I
    move v6, v9

    .line 1121
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1122
    .local v1, _value:[C
    :cond_27
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_33

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v1, v5

    aget-char v12, v10, v6

    if-eq v11, v12, :cond_27

    .line 1125
    :cond_33
    if-ne v6, v2, :cond_37

    move v11, v4

    .line 1126
    goto :goto_b

    .line 1128
    :cond_37
    add-int/lit8 v7, v4, 0x1

    .line 1129
    goto :goto_14

    .line 1131
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v9           #subOffset:I
    .end local v10           #target:[C
    :cond_3a
    if-ge v7, v0, :cond_3e

    move v11, v7

    goto :goto_b

    :cond_3e
    move v11, v0

    goto :goto_b
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 16
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v12, -0x1

    .line 1150
    if-gez p2, :cond_4

    .line 1151
    const/4 p2, 0x0

    .line 1153
    :cond_4
    iget v7, p1, Ljava/lang/String;->count:I

    .line 1154
    .local v7, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1155
    .local v0, _count:I
    if-lez v7, :cond_3e

    .line 1156
    add-int v10, v7, p2

    if-le v10, v0, :cond_10

    move v10, v12

    .line 1179
    :goto_f
    return v10

    .line 1159
    :cond_10
    iget-object v9, p1, Ljava/lang/String;->value:[C

    .line 1160
    .local v9, target:[C
    iget v8, p1, Ljava/lang/String;->offset:I

    .line 1161
    .local v8, subOffset:I
    aget-char v3, v9, v8

    .line 1162
    .local v3, firstChar:C
    add-int v2, v8, v7

    .line 1164
    .local v2, end:I
    :goto_18
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1165
    .local v4, i:I
    if-eq v4, v12, :cond_22

    add-int v10, v7, v4

    if-le v10, v0, :cond_24

    :cond_22
    move v10, v12

    .line 1166
    goto :goto_f

    .line 1168
    :cond_24
    iget v10, p0, Ljava/lang/String;->offset:I

    add-int v5, v10, v4

    .local v5, o1:I
    move v6, v8

    .line 1169
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1170
    .local v1, _value:[C
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_37

    add-int/lit8 v5, v5, 0x1

    aget-char v10, v1, v5

    aget-char v11, v9, v6

    if-eq v10, v11, :cond_2b

    .line 1173
    :cond_37
    if-ne v6, v2, :cond_3b

    move v10, v4

    .line 1174
    goto :goto_f

    .line 1176
    :cond_3b
    add-int/lit8 p2, v4, 0x1

    .line 1177
    goto :goto_18

    .line 1179
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v8           #subOffset:I
    .end local v9           #target:[C
    :cond_3e
    if-ge p2, v0, :cond_42

    move v10, p2

    goto :goto_f

    :cond_42
    move v10, v0

    goto :goto_f
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public lastIndexOf(I)I
    .registers 8
    .parameter "c"

    .prologue
    .line 1208
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1209
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1210
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1211
    .local v2, _value:[C
    add-int v4, v1, v0

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .local v3, i:I
    :goto_b
    if-lt v3, v1, :cond_17

    .line 1212
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_14

    .line 1213
    sub-int v4, v3, v1

    .line 1216
    :goto_13
    return v4

    .line 1211
    :cond_14
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 1216
    :cond_17
    const/4 v4, -0x1

    goto :goto_13
.end method

.method public lastIndexOf(II)I
    .registers 8
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1235
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1236
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1237
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1238
    .local v2, _value:[C
    if-ltz p2, :cond_1b

    .line 1239
    if-lt p2, v0, :cond_d

    .line 1240
    const/4 v4, 0x1

    sub-int p2, v0, v4

    .line 1242
    :cond_d
    add-int v3, v1, p2

    .local v3, i:I
    :goto_f
    if-lt v3, v1, :cond_1b

    .line 1243
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_18

    .line 1244
    sub-int v4, v3, v1

    .line 1248
    .end local v3           #i:I
    :goto_17
    return v4

    .line 1242
    .restart local v3       #i:I
    :cond_18
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 1248
    .end local v3           #i:I
    :cond_1b
    const/4 v4, -0x1

    goto :goto_17
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 1265
    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 14
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v10, -0x1

    .line 1282
    iget v5, p1, Ljava/lang/String;->count:I

    .line 1283
    .local v5, subCount:I
    iget v8, p0, Ljava/lang/String;->count:I

    if-gt v5, v8, :cond_48

    if-ltz p2, :cond_48

    .line 1284
    if-lez v5, :cond_3f

    .line 1285
    iget v8, p0, Ljava/lang/String;->count:I

    sub-int/2addr v8, v5

    if-le p2, v8, :cond_14

    .line 1286
    iget v8, p0, Ljava/lang/String;->count:I

    sub-int p2, v8, v5

    .line 1289
    :cond_14
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 1290
    .local v7, target:[C
    iget v6, p1, Ljava/lang/String;->offset:I

    .line 1291
    .local v6, subOffset:I
    aget-char v1, v7, v6

    .line 1292
    .local v1, firstChar:C
    add-int v0, v6, v5

    .line 1294
    .local v0, end:I
    :goto_1c
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 1295
    .local v2, i:I
    if-ne v2, v10, :cond_24

    move v8, v10

    .line 1310
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :goto_23
    return v8

    .line 1298
    .restart local v0       #end:I
    .restart local v1       #firstChar:C
    .restart local v2       #i:I
    .restart local v6       #subOffset:I
    .restart local v7       #target:[C
    :cond_24
    iget v8, p0, Ljava/lang/String;->offset:I

    add-int v3, v8, v2

    .local v3, o1:I
    move v4, v6

    .line 1299
    .local v4, o2:I
    :cond_29
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_37

    iget-object v8, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v8, v8, v3

    aget-char v9, v7, v4

    if-eq v8, v9, :cond_29

    .line 1302
    :cond_37
    if-ne v4, v0, :cond_3b

    move v8, v2

    .line 1303
    goto :goto_23

    .line 1305
    :cond_3b
    const/4 v8, 0x1

    sub-int p2, v2, v8

    .line 1306
    goto :goto_1c

    .line 1308
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :cond_3f
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge p2, v8, :cond_45

    move v8, p2

    goto :goto_23

    :cond_45
    iget v8, p0, Ljava/lang/String;->count:I

    goto :goto_23

    :cond_48
    move v8, v10

    .line 1310
    goto :goto_23
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1320
    iget v0, p0, Ljava/lang/String;->count:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 3
    .parameter "expr"

    .prologue
    .line 1996
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 8
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2193
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v1, p1, v2

    .line 2194
    .local v1, s:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    .line 2196
    .local v0, r:I
    iget v2, p0, Ljava/lang/String;->offset:I

    sub-int v2, v0, v2

    return v2
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .registers 14
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1341
    if-nez p2, :cond_a

    .line 1342
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1344
    :cond_a
    if-ltz p3, :cond_11

    iget v5, p2, Ljava/lang/String;->count:I

    sub-int/2addr v5, p3

    if-ge v5, p4, :cond_13

    :cond_11
    move v5, v7

    .line 1363
    :goto_12
    return v5

    .line 1347
    :cond_13
    if-ltz p1, :cond_1a

    iget v5, p0, Ljava/lang/String;->count:I

    sub-int/2addr v5, p1

    if-ge v5, p4, :cond_1c

    :cond_1a
    move v5, v7

    .line 1348
    goto :goto_12

    .line 1350
    :cond_1c
    if-gtz p4, :cond_20

    move v5, v8

    .line 1351
    goto :goto_12

    .line 1353
    :cond_20
    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v5, p1

    .local v1, o1:I
    iget v5, p2, Ljava/lang/String;->offset:I

    add-int v2, v5, p3

    .line 1355
    .local v2, o2:I
    iget-object v3, p0, Ljava/lang/String;->value:[C

    .line 1356
    .local v3, value1:[C
    iget-object v4, p2, Ljava/lang/String;->value:[C

    .line 1357
    .local v4, value2:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    if-ge v0, p4, :cond_3e

    .line 1358
    add-int v5, v1, v0

    aget-char v5, v3, v5

    add-int v6, v2, v0

    aget-char v6, v4, v6

    if-eq v5, v6, :cond_3b

    move v5, v7

    .line 1359
    goto :goto_12

    .line 1357
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3e
    move v5, v8

    .line 1363
    goto :goto_12
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .registers 15
    .parameter "ignoreCase"
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v8, 0x0

    .line 1387
    if-nez p1, :cond_8

    .line 1388
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    .line 1414
    :goto_7
    return v6

    .line 1391
    :cond_8
    if-eqz p3, :cond_50

    .line 1392
    if-ltz p2, :cond_11

    iget v6, p0, Ljava/lang/String;->count:I

    sub-int/2addr v6, p2

    if-le p5, v6, :cond_13

    :cond_11
    move v6, v8

    .line 1393
    goto :goto_7

    .line 1395
    :cond_13
    if-ltz p4, :cond_1a

    iget v6, p3, Ljava/lang/String;->count:I

    sub-int/2addr v6, p4

    if-le p5, v6, :cond_1c

    :cond_1a
    move v6, v8

    .line 1396
    goto :goto_7

    .line 1399
    :cond_1c
    iget v6, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v6

    .line 1400
    iget v6, p3, Ljava/lang/String;->offset:I

    add-int/2addr p4, v6

    .line 1401
    add-int v2, p2, p5

    .line 1403
    .local v2, end:I
    iget-object v4, p3, Ljava/lang/String;->value:[C

    .local v4, target:[C
    move v3, p4

    .end local p4
    .local v3, start:I
    move v5, p2

    .line 1404
    .end local p2
    .local v5, thisStart:I
    :goto_28
    if-ge v5, v2, :cond_4c

    .line 1405
    iget-object v6, p0, Ljava/lang/String;->value:[C

    add-int/lit8 p2, v5, 0x1

    .end local v5           #thisStart:I
    .restart local p2
    aget-char v0, v6, v5

    .local v0, c1:C
    add-int/lit8 p4, v3, 0x1

    .end local v3           #start:I
    .restart local p4
    aget-char v1, v4, v3

    .local v1, c2:C
    if-eq v0, v1, :cond_56

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v6, v7, :cond_56

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_56

    move v6, v8

    .line 1411
    goto :goto_7

    .line 1414
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local p2
    .end local p4
    .restart local v3       #start:I
    .restart local v5       #thisStart:I
    :cond_4c
    const/4 v6, 0x1

    move p4, v3

    .end local v3           #start:I
    .restart local p4
    move p2, v5

    .end local v5           #thisStart:I
    .restart local p2
    goto :goto_7

    .line 1416
    .end local v2           #end:I
    .end local v4           #target:[C
    :cond_50
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #end:I
    .restart local v4       #target:[C
    :cond_56
    move v3, p4

    .end local p4
    .restart local v3       #start:I
    move v5, p2

    .end local p2
    .restart local v5       #thisStart:I
    goto :goto_28
.end method

.method public replace(CC)Ljava/lang/String;
    .registers 13
    .parameter "oldChar"
    .parameter "newChar"

    .prologue
    const/4 v9, 0x0

    .line 1432
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1433
    .local v2, buffer:[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1434
    .local v1, _offset:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1436
    .local v0, _count:I
    move v4, v1

    .line 1437
    .local v4, idx:I
    add-int v5, v1, v0

    .line 1438
    .local v5, last:I
    const/4 v3, 0x0

    .line 1439
    .local v3, copied:Z
    :goto_b
    if-ge v4, v5, :cond_21

    .line 1440
    aget-char v7, v2, v4

    if-ne v7, p1, :cond_1e

    .line 1441
    if-nez v3, :cond_1c

    .line 1442
    new-array v6, v0, [C

    .line 1443
    .local v6, newBuffer:[C
    invoke-static {v2, v1, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1444
    move-object v2, v6

    .line 1445
    sub-int/2addr v4, v1

    .line 1446
    sub-int/2addr v5, v1

    .line 1447
    const/4 v3, 0x1

    .line 1449
    .end local v6           #newBuffer:[C
    :cond_1c
    aput-char p2, v2, v4

    .line 1451
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1454
    :cond_21
    if-eqz v3, :cond_2b

    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v2}, Ljava/lang/String;-><init>(II[C)V

    :goto_2a
    return-object v7

    :cond_2b
    move-object v7, p0

    goto :goto_2a
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 13
    .parameter "target"
    .parameter "replacement"

    .prologue
    const/4 v9, -0x1

    .line 1471
    if-nez p1, :cond_b

    .line 1472
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "target should not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1474
    :cond_b
    if-nez p2, :cond_15

    .line 1475
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "replacement should not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1477
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1478
    .local v5, ts:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1480
    .local v1, index:I
    if-ne v1, v9, :cond_22

    move-object v6, p0

    .line 1495
    :goto_21
    return-object v6

    .line 1483
    :cond_22
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1484
    .local v2, rs:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1485
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1486
    .local v4, tl:I
    const/4 v3, 0x0

    .line 1488
    .local v3, tail:I
    :cond_32
    iget-object v6, p0, Ljava/lang/String;->value:[C

    iget v7, p0, Ljava/lang/String;->offset:I

    add-int/2addr v7, v3

    sub-int v8, v1, v3

    invoke-virtual {v0, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    add-int v3, v1, v4

    .line 1491
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_32

    .line 1493
    iget-object v6, p0, Ljava/lang/String;->value:[C

    iget v7, p0, Ljava/lang/String;->offset:I

    add-int/2addr v7, v3

    iget v8, p0, Ljava/lang/String;->count:I

    sub-int/2addr v8, v3

    invoke-virtual {v0, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_21
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "expr"
    .parameter "substitute"

    .prologue
    .line 2015
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "expr"
    .parameter "substitute"

    .prologue
    .line 2034
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "expr"

    .prologue
    .line 2051
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .parameter "expr"
    .parameter "max"

    .prologue
    .line 2072
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 3
    .parameter "prefix"

    .prologue
    .line 1509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .registers 5
    .parameter "prefix"
    .parameter "start"

    .prologue
    .line 1525
    const/4 v0, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, p2, p1, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2091
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 6
    .parameter "start"

    .prologue
    .line 1540
    if-nez p1, :cond_4

    move-object v0, p0

    .line 1544
    :goto_3
    return-object v0

    .line 1543
    :cond_4
    if-ltz p1, :cond_18

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p1, v0, :cond_18

    .line 1544
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->count:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_3

    .line 1546
    :cond_18
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1563
    if-nez p1, :cond_8

    iget v0, p0, Ljava/lang/String;->count:I

    if-ne p2, v0, :cond_8

    move-object v0, p0

    .line 1569
    :goto_7
    return-object v0

    .line 1568
    :cond_8
    if-ltz p1, :cond_1d

    if-gt p1, p2, :cond_1d

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_1d

    .line 1569
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_7

    .line 1571
    :cond_1d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toCharArray()[C
    .registers 6

    .prologue
    .line 1581
    iget v1, p0, Ljava/lang/String;->count:I

    new-array v0, v1, [C

    .line 1582
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1583
    return-object v0
.end method

.method public toLowerCase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1595
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 12
    .parameter "locale"

    .prologue
    const/4 v9, 0x0

    .line 1609
    iget v5, p0, Ljava/lang/String;->offset:I

    .local v5, o:I
    iget v7, p0, Ljava/lang/String;->offset:I

    iget v8, p0, Ljava/lang/String;->count:I

    add-int v2, v7, v8

    .local v2, end:I
    :goto_9
    if-ge v5, v2, :cond_6b

    .line 1610
    iget-object v7, p0, Ljava/lang/String;->value:[C

    aget-char v1, v7, v5

    .line 1611
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v1, v7, :cond_68

    .line 1612
    iget v7, p0, Ljava/lang/String;->count:I

    new-array v0, v7, [C

    .line 1613
    .local v0, buffer:[C
    iget v7, p0, Ljava/lang/String;->offset:I

    sub-int v3, v5, v7

    .line 1615
    .local v3, i:I
    iget-object v7, p0, Ljava/lang/String;->value:[C

    iget v8, p0, Ljava/lang/String;->offset:I

    invoke-static {v7, v8, v0, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1617
    const-string v7, "tr"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 1618
    :goto_30
    iget v7, p0, Ljava/lang/String;->count:I

    if-ge v3, v7, :cond_60

    .line 1619
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5           #o:I
    .local v6, o:I
    aget-char v7, v7, v5

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    aput-char v7, v0, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    move v5, v6

    .end local v6           #o:I
    .restart local v5       #o:I
    goto :goto_30

    .line 1623
    .end local v3           #i:I
    .end local v5           #o:I
    .restart local v4       #i:I
    .restart local v6       #o:I
    :cond_45
    const/16 v7, 0x131

    :goto_47
    aput-char v7, v0, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    move v5, v6

    .line 1622
    .end local v6           #o:I
    .restart local v5       #o:I
    :cond_4b
    iget v7, p0, Ljava/lang/String;->count:I

    if-ge v3, v7, :cond_60

    .line 1623
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5           #o:I
    .restart local v6       #o:I
    aget-char v1, v7, v5

    const/16 v7, 0x49

    if-eq v1, v7, :cond_45

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    goto :goto_47

    .line 1627
    .end local v4           #i:I
    .end local v6           #o:I
    .restart local v3       #i:I
    .restart local v5       #o:I
    :cond_60
    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 1630
    .end local v0           #buffer:[C
    .end local v1           #ch:C
    .end local v3           #i:I
    :goto_67
    return-object v7

    .line 1609
    .restart local v1       #ch:C
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .end local v1           #ch:C
    :cond_6b
    move-object v7, p0

    .line 1630
    goto :goto_67
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1641
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1653
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 23
    .parameter "locale"

    .prologue
    .line 1727
    const-string v18, "tr"

    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1728
    .local v14, turkish:Z
    const/4 v12, 0x0

    .line 1729
    .local v12, output:[C
    const/4 v7, 0x0

    .line 1730
    .local v7, i:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->offset:I

    move v11, v0

    .local v11, o:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->offset:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .local v6, end:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_20
    if-ge v11, v6, :cond_162

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v18, v0

    aget-char v5, v18, v11

    .line 1732
    .local v5, ch:C
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;->upperIndex(I)I

    move-result v9

    .line 1733
    .local v9, index:I
    const/16 v18, -0x1

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_c8

    .line 1734
    if-eqz v12, :cond_6c

    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-lt v0, v1, :cond_6c

    .line 1735
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x6

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object v10, v0

    .line 1736
    .local v10, newoutput:[C
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v10

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1737
    move-object v12, v10

    .line 1739
    .end local v10           #newoutput:[C
    :cond_6c
    if-nez v14, :cond_ae

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v15, v18

    .line 1742
    .local v15, upch:C
    :goto_74
    if-eq v5, v15, :cond_c1

    .line 1743
    if-nez v12, :cond_19d

    .line 1744
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object v12, v0

    .line 1745
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->offset:I

    move/from16 v18, v0

    sub-int v7, v11, v18

    .line 1746
    .end local v8           #i:I
    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->offset:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v12

    move/from16 v3, v20

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1749
    :goto_a4
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    aput-char v15, v12, v7

    move v7, v8

    .line 1730
    .end local v8           #i:I
    .end local v15           #upch:C
    .restart local v7       #i:I
    :cond_a9
    :goto_a9
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto/16 :goto_20

    .line 1739
    :cond_ae
    const/16 v18, 0x69

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_bc

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v15, v18

    goto :goto_74

    :cond_bc
    const/16 v18, 0x130

    move/from16 v15, v18

    goto :goto_74

    .line 1750
    .restart local v15       #upch:C
    :cond_c1
    if-eqz v12, :cond_122

    .line 1751
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    aput-char v5, v12, v8

    goto :goto_a9

    .line 1754
    .end local v7           #i:I
    .end local v15           #upch:C
    .restart local v8       #i:I
    :cond_c8
    mul-int/lit8 v13, v9, 0x3

    .line 1755
    .local v13, target:I
    sget-object v18, Ljava/lang/String;->upperValues:[C

    add-int/lit8 v19, v13, 0x2

    aget-char v17, v18, v19

    .line 1756
    .local v17, val3:C
    if-nez v12, :cond_124

    .line 1757
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x6

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object v12, v0

    .line 1758
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->offset:I

    move/from16 v18, v0

    sub-int v7, v11, v18

    .line 1759
    .end local v8           #i:I
    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->offset:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v12

    move/from16 v3, v20

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1766
    :goto_10a
    sget-object v18, Ljava/lang/String;->upperValues:[C

    aget-char v16, v18, v13

    .line 1767
    .local v16, val:C
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    aput-char v16, v12, v7

    .line 1768
    sget-object v18, Ljava/lang/String;->upperValues:[C

    add-int/lit8 v19, v13, 0x1

    aget-char v16, v18, v19

    .line 1769
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    aput-char v16, v12, v8

    .line 1770
    if-eqz v17, :cond_a9

    .line 1771
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    aput-char v17, v12, v7

    .end local v13           #target:I
    .end local v16           #val:C
    .end local v17           #val3:C
    :cond_122
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_a9

    .line 1760
    .end local v7           #i:I
    .restart local v8       #i:I
    .restart local v13       #target:I
    .restart local v17       #val3:C
    :cond_124
    if-nez v17, :cond_15f

    const/16 v18, 0x1

    :goto_128
    add-int v18, v18, v8

    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_19a

    .line 1761
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x6

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object v10, v0

    .line 1762
    .restart local v10       #newoutput:[C
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v10

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1763
    move-object v12, v10

    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_10a

    .line 1760
    .end local v7           #i:I
    .end local v10           #newoutput:[C
    .restart local v8       #i:I
    :cond_15f
    const/16 v18, 0x2

    goto :goto_128

    .line 1775
    .end local v5           #ch:C
    .end local v9           #index:I
    .end local v13           #target:I
    .end local v17           #val3:C
    :cond_162
    if-nez v12, :cond_167

    move-object/from16 v18, p0

    .line 1778
    :goto_166
    return-object v18

    :cond_167
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v8

    if-eq v0, v1, :cond_17e

    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v8

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18c

    :cond_17e
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v8

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_166

    :cond_18c
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v12

    move/from16 v2, v19

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_166

    .restart local v5       #ch:C
    .restart local v9       #index:I
    .restart local v13       #target:I
    .restart local v17       #val3:C
    :cond_19a
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto/16 :goto_10a

    .end local v7           #i:I
    .end local v13           #target:I
    .end local v17           #val3:C
    .restart local v8       #i:I
    .restart local v15       #upch:C
    :cond_19d
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto/16 :goto_a4
.end method

.method public trim()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x20

    .line 1791
    iget v2, p0, Ljava/lang/String;->offset:I

    .local v2, start:I
    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 1792
    .local v1, last:I
    move v0, v1

    .line 1793
    .local v0, end:I
    :goto_d
    if-gt v2, v0, :cond_18

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v2

    if-gt v3, v5, :cond_18

    .line 1794
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1796
    :cond_18
    :goto_18
    if-lt v0, v2, :cond_23

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    if-gt v3, v5, :cond_23

    .line 1797
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1799
    :cond_23
    iget v3, p0, Ljava/lang/String;->offset:I

    if-ne v2, v3, :cond_2b

    if-ne v0, v1, :cond_2b

    move-object v3, p0

    .line 1802
    :goto_2a
    return-object v3

    :cond_2b
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljava/lang/String;->value:[C

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_2a
.end method
