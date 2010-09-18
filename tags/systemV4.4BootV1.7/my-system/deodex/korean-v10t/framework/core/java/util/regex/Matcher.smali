.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private anchoringBounds:Z

.field private appendPos:I

.field private findPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private nativePattern:I

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private searching:Z

.field private transparentBounds:Z


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "pattern"
    .parameter "input"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 126
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 127
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 128
    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 9
    .parameter "buffer"
    .parameter "s"

    .prologue
    const/16 v5, 0x30

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, escape:Z
    const/4 v1, 0x0

    .line 673
    .local v1, dollar:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 674
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 675
    .local v0, c:C
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_19

    if-nez v2, :cond_19

    .line 676
    const/4 v2, 0x1

    .line 673
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 677
    :cond_19
    const/16 v4, 0x24

    if-ne v0, v4, :cond_21

    if-nez v2, :cond_21

    .line 678
    const/4 v1, 0x1

    goto :goto_16

    .line 679
    :cond_21
    if-lt v0, v5, :cond_34

    const/16 v4, 0x39

    if-gt v0, v4, :cond_34

    if-eqz v1, :cond_34

    .line 680
    sub-int v4, v0, v5

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    const/4 v1, 0x0

    goto :goto_16

    .line 683
    :cond_34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 684
    const/4 v1, 0x0

    .line 685
    const/4 v2, 0x0

    goto :goto_16

    .line 690
    .end local v0           #c:C
    :cond_3a
    if-eqz v2, :cond_46

    .line 691
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 693
    :cond_46
    return-void
.end method

.method private ensureMatch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-nez v0, :cond_c

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_c
    return-void
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 754
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 756
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 757
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 758
    .local v1, c:C
    if-eq v1, v4, :cond_1c

    const/16 v3, 0x24

    if-ne v1, v3, :cond_1f

    .line 759
    :cond_1c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 761
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 764
    .end local v1           #c:C
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .registers 8
    .parameter "input"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 147
    if-nez p1, :cond_9

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_9
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1b

    if-le p2, p3, :cond_21

    .line 153
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 159
    :cond_21
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    .line 162
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->setText(ILjava/lang/String;)V

    .line 164
    iput v3, p0, Ljava/util/regex/Matcher;->regionStart:I

    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    .line 168
    :cond_3e
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    if-ne p2, v0, :cond_46

    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-eq p3, v0, :cond_53

    .line 169
    :cond_46
    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    .line 170
    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    .line 172
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/regex/NativeRegEx;->setRegion(III)V

    .line 175
    :cond_53
    iput-boolean v3, p0, Ljava/util/regex/Matcher;->searching:Z

    .line 176
    iput-boolean v3, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 177
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 178
    iput v3, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 180
    return-object p0
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 6
    .parameter "buffer"
    .parameter "replacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 634
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "buffer"

    .prologue
    .line 652
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-ge v0, v1, :cond_13

    .line 653
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :cond_13
    return-object p1
.end method

.method public end()I
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .registers 4
    .parameter "group"

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 536
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 770
    :try_start_0
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    if-eqz v0, :cond_9

    .line 771
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->close(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 775
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 777
    return-void

    .line 775
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public find()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->searching:Z

    if-nez v0, :cond_24

    .line 396
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->searching:Z

    .line 397
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->find(II)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 402
    :goto_10
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_21

    .line 403
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->startEnd(I[I)V

    .line 404
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    aget v0, v0, v2

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 407
    :cond_21
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 399
    :cond_24
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->findNext(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    goto :goto_10
.end method

.method public find(I)Z
    .registers 5
    .parameter "start"

    .prologue
    const/4 v2, 0x0

    .line 423
    iput p1, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 425
    iget v0, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionStart:I

    if-ge v0, v1, :cond_2c

    .line 426
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 432
    :cond_d
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget v1, p0, Ljava/util/regex/Matcher;->findPos:I

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->find(II)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 433
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_29

    .line 434
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->startEnd(I[I)V

    .line 435
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 438
    :cond_29
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    :goto_2b
    return v0

    .line 427
    :cond_2c
    iget v0, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-lt v0, v1, :cond_d

    .line 428
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->matchFound:Z

    move v0, v2

    .line 429
    goto :goto_2b
.end method

.method public group()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .registers 7
    .parameter "group"

    .prologue
    const/4 v4, -0x1

    .line 563
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 564
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    .line 565
    .local v0, from:I
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    .line 566
    .local v1, to:I
    if-eq v0, v4, :cond_16

    if-ne v1, v4, :cond_18

    .line 567
    :cond_16
    const/4 v2, 0x0

    .line 569
    :goto_17
    return-object v2

    :cond_18
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_17
.end method

.method public groupCount()I
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget v0, v0, Ljava/util/regex/Pattern;->mGroupCount:I

    return v0
.end method

.method public hasAnchoringBounds()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public hasTransparentBounds()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public hitEnd()Z
    .registers 2

    .prologue
    .line 580
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->hitEnd(I)Z

    move-result v0

    return v0
.end method

.method public lookingAt()Z
    .registers 3

    .prologue
    .line 470
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->lookingAt(II)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 471
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_1b

    .line 472
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->startEnd(I[I)V

    .line 473
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 476
    :cond_1b
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public matches()Z
    .registers 3

    .prologue
    .line 451
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->matches(II)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 452
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_1b

    .line 453
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->startEnd(I[I)V

    .line 454
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 457
    :cond_1b
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 285
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public regionEnd()I
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    return v0
.end method

.method public regionStart()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "replacement"

    .prologue
    const/4 v2, 0x0

    .line 705
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 707
    .local v0, buffer:Ljava/lang/StringBuffer;
    iput v2, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 708
    iput v2, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 709
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 710
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->searching:Z

    .line 712
    :goto_14
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 713
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_14

    .line 716
    :cond_1e
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "replacement"

    .prologue
    const/4 v2, 0x0

    .line 729
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 731
    .local v0, buffer:Ljava/lang/StringBuffer;
    iput v2, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 732
    iput v2, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 733
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 734
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->searching:Z

    .line 736
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 737
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 740
    :cond_1d
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requireEnd()Z
    .registers 2

    .prologue
    .line 592
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->requireEnd(I)Z

    move-result v0

    return v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 4
    .parameter "input"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .registers 4
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 506
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .registers 4

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 607
    new-instance v0, Ljava/util/regex/MatchResultImpl;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/MatchResultImpl;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .parameter "value"

    .prologue
    .line 322
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 323
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->useAnchoringBounds(IZ)V

    .line 324
    return-object p0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .registers 5
    .parameter "pattern"

    .prologue
    .line 227
    if-nez p1, :cond_8

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 231
    :cond_8
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    .line 233
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    if-eqz v0, :cond_13

    .line 234
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->close(I)V

    .line 236
    :cond_13
    iget v0, p1, Ljava/util/regex/Pattern;->mNativePattern:I

    invoke-static {v0}, Lcom/ibm/icu4jni/regex/NativeRegEx;->clone(I)I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    .line 238
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 239
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->setText(ILjava/lang/String;)V

    .line 240
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2}, Lcom/ibm/icu4jni/regex/NativeRegEx;->setRegion(III)V

    .line 241
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->useAnchoringBounds(IZ)V

    .line 242
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->useTransparentBounds(IZ)V

    .line 245
    :cond_3d
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget v0, v0, Ljava/util/regex/Pattern;->mGroupCount:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 247
    return-object p0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .parameter "value"

    .prologue
    .line 352
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 353
    iget v0, p0, Ljava/util/regex/Matcher;->nativePattern:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/regex/NativeRegEx;->useTransparentBounds(IZ)V

    .line 354
    return-object p0
.end method
