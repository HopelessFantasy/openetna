.class public abstract Landroid/syncml/pim/VParser;
.super Ljava/lang/Object;
.source "VParser.java"


# static fields
.field public static DEFAULT_CHARSET:Ljava/lang/String;


# instance fields
.field protected final PARSE_ERROR:I

.field protected mBuffer:Ljava/lang/String;

.field protected mBuilder:Landroid/syncml/pim/VBuilder;

.field protected final mDefaultEncoding:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "iso-8859-1"

    sput-object v0, Landroid/syncml/pim/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/syncml/pim/VParser;->mBuilder:Landroid/syncml/pim/VBuilder;

    .line 42
    iput-object v0, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/syncml/pim/VParser;->PARSE_ERROR:I

    .line 46
    const-string v0, "8BIT"

    iput-object v0, p0, Landroid/syncml/pim/VParser;->mDefaultEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getWord(I)Ljava/lang/String;
    .registers 5
    .parameter "offset"

    .prologue
    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v1, word:Ljava/lang/StringBuilder;
    :goto_5
    :try_start_5
    iget-object v2, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 505
    .local v0, ch:C
    invoke-virtual {p0, v0}, Landroid/syncml/pim/VParser;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1c

    .line 506
    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_18} :catch_1b

    .line 507
    add-int/lit8 p1, p1, 0x1

    .line 511
    goto :goto_5

    .line 512
    .end local v0           #ch:C
    :catch_1b
    move-exception v2

    .line 515
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isLetter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 491
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    .line 492
    :cond_10
    const/4 v0, 0x1

    .line 494
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isLetterOrDigit(C)Z
    .registers 4
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 469
    const/16 v0, 0x30

    if-lt p1, v0, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    move v0, v1

    .line 475
    :goto_a
    return v0

    .line 471
    :cond_b
    const/16 v0, 0x61

    if-lt p1, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_15

    move v0, v1

    .line 472
    goto :goto_a

    .line 473
    :cond_15
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1f

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1f

    move v0, v1

    .line 474
    goto :goto_a

    .line 475
    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected isPrintable(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 482
    const/16 v0, 0x20

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_a

    .line 483
    const/4 v0, 0x1

    .line 484
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public parse(Ljava/io/InputStream;Landroid/syncml/pim/VBuilder;)Z
    .registers 4
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Landroid/syncml/pim/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Landroid/syncml/pim/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z
    .registers 8
    .parameter "is"
    .parameter "encoding"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/syncml/pim/VParser;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    iput-object p3, p0, Landroid/syncml/pim/VParser;->mBuilder:Landroid/syncml/pim/VBuilder;

    .line 81
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, offset:I
    const/4 v2, 0x0

    .line 83
    .local v2, sum:I
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_11

    .line 84
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3}, Landroid/syncml/pim/VBuilder;->start()V

    .line 87
    :cond_11
    :goto_11
    invoke-virtual {p0, v0}, Landroid/syncml/pim/VParser;->parseVFile(I)I

    move-result v1

    .line 88
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2b

    .line 95
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_21

    .line 96
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3}, Landroid/syncml/pim/VBuilder;->end()V

    .line 98
    :cond_21
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_2e

    const/4 v3, 0x1

    :goto_2a
    return v3

    .line 91
    :cond_2b
    add-int/2addr v0, v1

    .line 92
    add-int/2addr v2, v1

    goto :goto_11

    .line 98
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method protected parse8bit(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, index:I
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 313
    if-ne v0, v3, :cond_12

    move v1, v3

    .line 316
    :goto_11
    return v1

    :cond_12
    move v1, v0

    goto :goto_11
.end method

.method protected parseBase64(I)I
    .registers 8
    .parameter "offset"

    .prologue
    .line 411
    const/4 v3, 0x0

    .line 415
    .local v3, sum:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 417
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_17

    .line 418
    const-string v4, "\r\n\r\n"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_1c

    move-result v2

    .line 419
    .local v2, ret:I
    add-int/2addr v3, v2

    .line 430
    add-int/lit8 v3, v3, -0x2

    move v4, v3

    .line 431
    .end local v0           #ch:C
    .end local v2           #ret:I
    :goto_16
    return v4

    .line 423
    .restart local v0       #ch:C
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 424
    add-int/lit8 p1, p1, 0x1

    .line 426
    goto :goto_1

    .line 427
    .end local v0           #ch:C
    :catch_1c
    move-exception v4

    move-object v1, v4

    .line 428
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, -0x1

    goto :goto_16
.end method

.method protected parseCharsetVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 613
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 615
    .local v1, sum:I
    const-string v2, "us-ascii"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 616
    if-eq v0, v3, :cond_f

    .line 617
    add-int/2addr v1, v0

    move v2, v1

    .line 681
    :goto_e
    return v2

    .line 621
    :cond_f
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 622
    if-eq v0, v3, :cond_1a

    .line 623
    add-int/2addr v1, v0

    move v2, v1

    .line 624
    goto :goto_e

    .line 627
    :cond_1a
    const-string v2, "iso-8859-2"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 628
    if-eq v0, v3, :cond_25

    .line 629
    add-int/2addr v1, v0

    move v2, v1

    .line 630
    goto :goto_e

    .line 633
    :cond_25
    const-string v2, "iso-8859-3"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 634
    if-eq v0, v3, :cond_30

    .line 635
    add-int/2addr v1, v0

    move v2, v1

    .line 636
    goto :goto_e

    .line 639
    :cond_30
    const-string v2, "iso-8859-4"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 640
    if-eq v0, v3, :cond_3b

    .line 641
    add-int/2addr v1, v0

    move v2, v1

    .line 642
    goto :goto_e

    .line 645
    :cond_3b
    const-string v2, "iso-8859-5"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 646
    if-eq v0, v3, :cond_46

    .line 647
    add-int/2addr v1, v0

    move v2, v1

    .line 648
    goto :goto_e

    .line 651
    :cond_46
    const-string v2, "iso-8859-6"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 652
    if-eq v0, v3, :cond_51

    .line 653
    add-int/2addr v1, v0

    move v2, v1

    .line 654
    goto :goto_e

    .line 657
    :cond_51
    const-string v2, "iso-8859-7"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 658
    if-eq v0, v3, :cond_5c

    .line 659
    add-int/2addr v1, v0

    move v2, v1

    .line 660
    goto :goto_e

    .line 663
    :cond_5c
    const-string v2, "iso-8859-8"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 664
    if-eq v0, v3, :cond_67

    .line 665
    add-int/2addr v1, v0

    move v2, v1

    .line 666
    goto :goto_e

    .line 669
    :cond_67
    const-string v2, "iso-8859-9"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 670
    if-eq v0, v3, :cond_72

    .line 671
    add-int/2addr v1, v0

    move v2, v1

    .line 672
    goto :goto_e

    .line 675
    :cond_72
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 676
    if-eq v0, v3, :cond_7b

    .line 677
    add-int/2addr v1, v0

    move v2, v1

    .line 678
    goto :goto_e

    :cond_7b
    move v2, v3

    .line 681
    goto :goto_e
.end method

.method protected parseCrlf(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 52
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_b

    move v1, v2

    .line 62
    :goto_a
    return v1

    .line 54
    :cond_b
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 55
    .local v0, ch:C
    const/16 v1, 0xd

    if-ne v0, v1, :cond_23

    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 58
    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    .line 59
    const/4 v1, 0x2

    goto :goto_a

    :cond_23
    move v1, v2

    .line 62
    goto :goto_a
.end method

.method protected parseLangVal(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 689
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 691
    .local v1, sum:I
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseTag(I)I

    move-result v0

    .line 692
    if-ne v4, v0, :cond_b

    move v2, v4

    .line 713
    :goto_a
    return v2

    .line 695
    :cond_b
    add-int/2addr p1, v0

    .line 696
    add-int/2addr v1, v0

    .line 699
    :goto_d
    const-string v2, "-"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 700
    if-ne v4, v0, :cond_18

    :cond_16
    move v2, v1

    .line 713
    goto :goto_a

    .line 703
    :cond_18
    add-int/2addr p1, v0

    .line 704
    add-int/2addr v1, v0

    .line 706
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseTag(I)I

    move-result v0

    .line 707
    if-eq v4, v0, :cond_16

    .line 710
    add-int/2addr p1, v0

    .line 711
    add-int/2addr v1, v0

    goto :goto_d
.end method

.method protected parseOctet(I)I
    .registers 12
    .parameter "offset"

    .prologue
    const/16 v9, 0x46

    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v5, -0x1

    .line 379
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 381
    .local v2, sum:I
    const-string v3, "="

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 382
    if-ne v5, v1, :cond_16

    move v3, v5

    .line 403
    :goto_15
    return v3

    .line 384
    :cond_16
    add-int/2addr p1, v1

    .line 385
    add-int/2addr v2, v1

    .line 388
    :try_start_18
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 389
    .local v0, ch:I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_26

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2a

    .line 390
    :cond_26
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_15

    .line 391
    :cond_2a
    if-lt v0, v6, :cond_2e

    if-le v0, v7, :cond_32

    :cond_2e
    if-lt v0, v8, :cond_49

    if-gt v0, v9, :cond_49

    .line 392
    :cond_32
    add-int/lit8 p1, p1, 0x1

    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_3b} :catch_48

    move-result v0

    .line 395
    if-lt v0, v6, :cond_40

    if-le v0, v7, :cond_44

    :cond_40
    if-lt v0, v8, :cond_49

    if-gt v0, v9, :cond_49

    .line 396
    :cond_44
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 397
    goto :goto_15

    .line 400
    .end local v0           #ch:I
    :catch_48
    move-exception v3

    :cond_49
    move v3, v5

    .line 403
    goto :goto_15
.end method

.method protected parsePEncodingVal(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v7, "BASE64"

    const-string v6, "8BIT"

    const-string v5, "7BIT"

    .line 568
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 570
    .local v1, sum:I
    const-string v2, "7BIT"

    invoke-virtual {p0, p1, v5, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 571
    if-eq v0, v3, :cond_19

    .line 572
    const-string v2, "7BIT"

    iput-object v5, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 573
    add-int/2addr v1, v0

    move v2, v1

    .line 605
    :goto_18
    return v2

    .line 577
    :cond_19
    const-string v2, "8BIT"

    invoke-virtual {p0, p1, v6, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 578
    if-eq v0, v3, :cond_28

    .line 579
    const-string v2, "8BIT"

    iput-object v6, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 580
    add-int/2addr v1, v0

    move v2, v1

    .line 581
    goto :goto_18

    .line 584
    :cond_28
    const-string v2, "QUOTED-PRINTABLE"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 585
    if-eq v0, v3, :cond_37

    .line 586
    const-string v2, "QUOTED-PRINTABLE"

    iput-object v2, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 587
    add-int/2addr v1, v0

    move v2, v1

    .line 588
    goto :goto_18

    .line 591
    :cond_37
    const-string v2, "BASE64"

    invoke-virtual {p0, p1, v7, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 592
    if-eq v0, v3, :cond_46

    .line 593
    const-string v2, "BASE64"

    iput-object v7, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 594
    add-int/2addr v1, v0

    move v2, v1

    .line 595
    goto :goto_18

    .line 598
    :cond_46
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 599
    if-eq v0, v3, :cond_5c

    .line 600
    iget-object v2, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 601
    add-int/2addr v1, v0

    move v2, v1

    .line 602
    goto :goto_18

    :cond_5c
    move v2, v3

    .line 605
    goto :goto_18
.end method

.method protected parsePValueVal(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v5, "INLINE"

    .line 522
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 524
    .local v1, sum:I
    const-string v2, "INLINE"

    invoke-virtual {p0, p1, v5, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 525
    if-eq v0, v3, :cond_11

    .line 526
    add-int/2addr v1, v0

    move v2, v1

    .line 560
    :goto_10
    return v2

    .line 530
    :cond_11
    const-string v2, "URL"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 531
    if-eq v0, v3, :cond_1c

    .line 532
    add-int/2addr v1, v0

    move v2, v1

    .line 533
    goto :goto_10

    .line 536
    :cond_1c
    const-string v2, "CONTENT-ID"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 537
    if-eq v0, v3, :cond_27

    .line 538
    add-int/2addr v1, v0

    move v2, v1

    .line 539
    goto :goto_10

    .line 542
    :cond_27
    const-string v2, "CID"

    invoke-virtual {p0, p1, v2, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 543
    if-eq v0, v3, :cond_32

    .line 544
    add-int/2addr v1, v0

    move v2, v1

    .line 545
    goto :goto_10

    .line 548
    :cond_32
    const-string v2, "INLINE"

    invoke-virtual {p0, p1, v5, v4}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 549
    if-eq v0, v3, :cond_3d

    .line 550
    add-int/2addr v1, v0

    move v2, v1

    .line 551
    goto :goto_10

    .line 554
    :cond_3d
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 555
    if-eq v0, v3, :cond_46

    .line 556
    add-int/2addr v1, v0

    move v2, v1

    .line 557
    goto :goto_10

    :cond_46
    move v2, v3

    .line 560
    goto :goto_10
.end method

.method protected parsePtext(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, ret:I
    :try_start_2
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, ch:C
    invoke-virtual {p0, v0}, Landroid/syncml/pim/VParser;->isPrintable(C)Z
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_b} :catch_1c

    move-result v3

    if-eqz v3, :cond_20

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_20

    const/16 v3, 0x20

    if-eq v0, v3, :cond_20

    const/16 v3, 0x9

    if-eq v0, v3, :cond_20

    .line 361
    const/4 v3, 0x1

    .line 371
    .end local v0           #ch:C
    :goto_1b
    return v3

    .line 363
    :catch_1c
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    move v3, v4

    .line 364
    goto :goto_1b

    .line 367
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #ch:C
    :cond_20
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseOctet(I)I

    move-result v2

    .line 368
    if-eq v2, v4, :cond_28

    move v3, v2

    .line 369
    goto :goto_1b

    :cond_28
    move v3, v4

    .line 371
    goto :goto_1b
.end method

.method protected parseQuotedPrintable(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 325
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 327
    .local v1, sum:I
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->removeWs(I)I

    move-result v0

    .line 328
    add-int/2addr p1, v0

    .line 329
    add-int/2addr v1, v0

    .line 332
    :goto_9
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parsePtext(I)I

    move-result v0

    .line 333
    if-ne v4, v0, :cond_1a

    .line 343
    const-string v2, "="

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 344
    if-eq v0, v4, :cond_19

    .line 346
    add-int/2addr v1, v0

    .line 349
    :cond_19
    return v1

    .line 335
    :cond_1a
    add-int/2addr p1, v0

    .line 336
    add-int/2addr v1, v0

    .line 338
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->removeWs(I)I

    move-result v0

    .line 339
    add-int/2addr p1, v0

    .line 340
    add-int/2addr v1, v0

    goto :goto_9
.end method

.method protected parseString(ILjava/lang/String;Z)I
    .registers 10
    .parameter "offset"
    .parameter "tar"
    .parameter "ignoreCase"

    .prologue
    const/4 v5, -0x1

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, sum:I
    if-nez p2, :cond_6

    move v3, v5

    .line 233
    :goto_5
    return v3

    .line 213
    :cond_6
    if-eqz p3, :cond_23

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, len:I
    :try_start_c
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int v4, p1, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_17} :catch_1f

    move-result v3

    if-eqz v3, :cond_1d

    .line 218
    move v2, v1

    .end local v1           #len:I
    :goto_1b
    move v3, v2

    .line 233
    goto :goto_5

    .restart local v1       #len:I
    :cond_1d
    move v3, v5

    .line 220
    goto :goto_5

    .line 222
    :catch_1f
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    move v3, v5

    .line 223
    goto :goto_5

    .line 227
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #len:I
    :cond_23
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1b

    :cond_30
    move v3, v5

    .line 230
    goto :goto_5
.end method

.method protected parseTag(I)I
    .registers 6
    .parameter "offset"

    .prologue
    .line 720
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 723
    .local v1, i:I
    const/4 v1, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v1, v3, :cond_13

    .line 724
    :try_start_7
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 725
    .local v0, ch:C
    invoke-virtual {p0, v0}, Landroid/syncml/pim/VParser;->isLetter(C)Z
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_10} :catch_20

    move-result v3

    if-nez v3, :cond_17

    .line 734
    .end local v0           #ch:C
    :cond_13
    :goto_13
    if-nez v1, :cond_1e

    .line 735
    const/4 v3, -0x1

    .line 737
    :goto_16
    return v3

    .line 728
    .restart local v0       #ch:C
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 729
    add-int/lit8 p1, p1, 0x1

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #ch:C
    :cond_1e
    move v3, v2

    .line 737
    goto :goto_16

    .line 731
    :catch_20
    move-exception v3

    goto :goto_13
.end method

.method protected abstract parseVFile(I)I
.end method

.method protected parseValue(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, ret:I
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v2, "7BIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v2, "8BIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 280
    :cond_28
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parse8bit(I)I

    move-result v0

    .line 281
    if-eq v0, v3, :cond_30

    move v1, v0

    .line 302
    :goto_2f
    return v1

    :cond_30
    move v1, v3

    .line 284
    goto :goto_2f

    .line 287
    :cond_32
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v2, "QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 288
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseQuotedPrintable(I)I

    move-result v0

    .line 289
    if-eq v0, v3, :cond_44

    move v1, v0

    .line 290
    goto :goto_2f

    :cond_44
    move v1, v3

    .line 292
    goto :goto_2f

    .line 295
    :cond_46
    iget-object v1, p0, Landroid/syncml/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v2, "BASE64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 296
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseBase64(I)I

    move-result v0

    .line 297
    if-eq v0, v3, :cond_58

    move v1, v0

    .line 298
    goto :goto_2f

    :cond_58
    move v1, v3

    .line 300
    goto :goto_2f

    :cond_5a
    move v1, v3

    .line 302
    goto :goto_2f
.end method

.method protected parseWord(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/16 v4, 0x3b

    .line 438
    const/4 v1, 0x0

    .line 441
    .local v1, sum:I
    :goto_3
    :try_start_3
    iget-object v2, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 442
    .local v0, ch:C
    invoke-virtual {p0, v0}, Landroid/syncml/pim/VParser;->isPrintable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 460
    .end local v0           #ch:C
    :cond_f
    :goto_f
    if-nez v1, :cond_40

    .line 461
    const/4 v2, -0x1

    .line 462
    :goto_12
    return v2

    .line 444
    .restart local v0       #ch:C
    :cond_13
    const/16 v2, 0x20

    if-eq v0, v2, :cond_f

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_f

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_f

    .line 447
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3b

    .line 448
    iget-object v2, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_34} :catch_42

    move-result v0

    .line 449
    if-ne v0, v4, :cond_3b

    .line 450
    add-int/lit8 p1, p1, 0x1

    .line 451
    add-int/lit8 v1, v1, 0x1

    .line 454
    :cond_3b
    add-int/lit8 p1, p1, 0x1

    .line 455
    add-int/lit8 v1, v1, 0x1

    .line 456
    goto :goto_3

    .end local v0           #ch:C
    :cond_40
    move v2, v1

    .line 462
    goto :goto_12

    .line 457
    :catch_42
    move-exception v2

    goto :goto_f
.end method

.method protected parseWsls(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x9

    const/4 v4, -0x1

    .line 162
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 165
    .local v2, sum:I
    :try_start_7
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 166
    .local v0, ch:C
    if-eq v0, v6, :cond_11

    if-ne v0, v5, :cond_24

    .line 167
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 168
    add-int/lit8 p1, p1, 0x1

    .line 176
    :goto_15
    iget-object v3, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    if-eq v0, v6, :cond_1f

    if-ne v0, v5, :cond_2f

    .line 178
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 179
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 169
    :cond_24
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseCrlf(I)I

    move-result v1

    if-eq v1, v4, :cond_2d

    .line 170
    add-int/2addr p1, v1

    .line 171
    add-int/2addr v2, v1

    goto :goto_15

    :cond_2d
    move v3, v4

    .line 192
    .end local v0           #ch:C
    :goto_2e
    return v3

    .line 180
    .restart local v0       #ch:C
    :cond_2f
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseCrlf(I)I
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_32} :catch_38

    move-result v1

    if-eq v1, v4, :cond_39

    .line 181
    add-int/2addr p1, v1

    .line 182
    add-int/2addr v2, v1

    goto :goto_15

    .line 187
    .end local v0           #ch:C
    :catch_38
    move-exception v3

    .line 190
    :cond_39
    if-lez v2, :cond_3d

    move v3, v2

    .line 191
    goto :goto_2e

    :cond_3d
    move v3, v4

    .line 192
    goto :goto_2e
.end method

.method protected parseXWord(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 255
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 256
    .local v1, sum:I
    const-string v2, "X-"

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/syncml/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 257
    if-ne v4, v0, :cond_e

    move v2, v4

    .line 267
    :goto_d
    return v2

    .line 259
    :cond_e
    add-int/2addr p1, v0

    .line 260
    add-int/2addr v1, v0

    .line 262
    invoke-virtual {p0, p1}, Landroid/syncml/pim/VParser;->parseWord(I)I

    move-result v0

    .line 263
    if-ne v4, v0, :cond_18

    move v2, v4

    .line 264
    goto :goto_d

    .line 266
    :cond_18
    add-int/2addr v1, v0

    move v2, v1

    .line 267
    goto :goto_d
.end method

.method protected removeWs(I)I
    .registers 5
    .parameter "offset"

    .prologue
    .line 240
    iget-object v2, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 241
    const/4 v2, -0x1

    .line 248
    :goto_9
    return v2

    .line 242
    :cond_a
    const/4 v1, 0x0

    .line 244
    .local v1, sum:I
    :goto_b
    iget-object v2, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_19

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1e

    .line 245
    :cond_19
    add-int/lit8 p1, p1, 0x1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    move v2, v1

    .line 248
    goto :goto_9
.end method

.method protected setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 120
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 121
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, b:Ljava/lang/StringBuilder;
    :goto_b
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v5, :cond_38

    .line 126
    const/16 v4, 0xd

    if-ne v1, v4, :cond_44

    .line 127
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 128
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3f

    .line 129
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 130
    const/16 v4, 0x20

    if-eq v1, v4, :cond_29

    const/16 v4, 0x9

    if-ne v1, v4, :cond_31

    .line 131
    :cond_29
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 145
    .end local v1           #ch:I
    :catch_2e
    move-exception v4

    move-object v2, v4

    .line 148
    :goto_30
    return-void

    .line 134
    .restart local v1       #ch:I
    :cond_31
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    if-ne v1, v5, :cond_44

    .line 144
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/syncml/pim/VParser;->mBuffer:Ljava/lang/String;

    goto :goto_30

    .line 139
    :cond_3f
    const-string v4, "\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_44
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_2e

    goto :goto_b
.end method
