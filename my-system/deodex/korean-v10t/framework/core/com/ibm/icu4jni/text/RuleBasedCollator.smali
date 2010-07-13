.class public final Lcom/ibm/icu4jni/text/RuleBasedCollator;
.super Lcom/ibm/icu4jni/text/Collator;
.source "RuleBasedCollator.java"


# instance fields
.field private m_collator_:I

.field private m_hashcode_:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/Collator;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 657
    invoke-static {}, Lcom/ibm/icu4jni/text/NativeCollation;->openCollator()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    .line 658
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter "collatoraddress"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/Collator;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 717
    iput p1, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    .line 718
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "rules"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/Collator;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 264
    if-nez p1, :cond_e

    .line 265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 270
    :cond_e
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/ibm/icu4jni/text/NativeCollation;->openCollatorFromRules(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "rules"
    .parameter "strength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/Collator;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 293
    if-nez p1, :cond_e

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 299
    :cond_e
    invoke-static {p2}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkStrength(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 300
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 302
    :cond_1a
    const/16 v0, 0x10

    invoke-static {p1, v0, p2}, Lcom/ibm/icu4jni/text/NativeCollation;->openCollatorFromRules(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter "rules"
    .parameter "normalizationmode"
    .parameter "strength"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/Collator;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 333
    if-nez p1, :cond_e

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 337
    :cond_e
    invoke-static {p3}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkStrength(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p2}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkNormalization(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 339
    :cond_1a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 342
    :cond_20
    invoke-static {p1, p2, p3}, Lcom/ibm/icu4jni/text/NativeCollation;->openCollatorFromRules(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    .line 344
    return-void
.end method

.method constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/Collator;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 676
    if-nez p1, :cond_f

    .line 677
    invoke-static {}, Lcom/ibm/icu4jni/text/NativeCollation;->openCollator()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    .line 682
    :goto_e
    return-void

    .line 680
    :cond_f
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->openCollator(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    goto :goto_e
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, result:Lcom/ibm/icu4jni/text/RuleBasedCollator;
    iget v2, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v2}, Lcom/ibm/icu4jni/text/NativeCollation;->safeClone(I)I

    move-result v0

    .line 357
    .local v0, collatoraddress:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    .end local v1           #result:Lcom/ibm/icu4jni/text/RuleBasedCollator;
    invoke-direct {v1, v0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;-><init>(I)V

    .line 358
    .restart local v1       #result:Lcom/ibm/icu4jni/text/RuleBasedCollator;
    return-object v1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 386
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0, p1, p2}, Lcom/ibm/icu4jni/text/NativeCollation;->compare(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 627
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 635
    :goto_5
    return v2

    .line 629
    :cond_6
    if-nez p1, :cond_a

    move v2, v4

    .line 630
    goto :goto_5

    .line 631
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_16

    move v2, v4

    .line 632
    goto :goto_5

    .line 634
    :cond_16
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    move-object v1, v0

    .line 635
    .local v1, tgtcoll:Lcom/ibm/icu4jni/text/RuleBasedCollator;
    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getStrength()I

    move-result v2

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getStrength()I

    move-result v3

    if-ne v2, v3, :cond_3e

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getDecomposition()I

    move-result v2

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getDecomposition()I

    move-result v3

    if-ne v2, v3, :cond_3e

    move v2, v5

    goto :goto_5

    :cond_3e
    move v2, v4

    goto :goto_5
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 692
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->closeCollator(I)V

    .line 693
    return-void
.end method

.method public getAttribute(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 505
    invoke-static {p1}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkType(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 506
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 507
    :cond_c
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu4jni/text/CollationElementIterator;
    .registers 4
    .parameter "source"

    .prologue
    .line 575
    new-instance v0, Lcom/ibm/icu4jni/text/CollationElementIterator;

    iget v1, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v1, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->getCollationElementIterator(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/text/CollationElementIterator;-><init>(I)V

    .line 578
    .local v0, result:Lcom/ibm/icu4jni/text/CollationElementIterator;
    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Lcom/ibm/icu4jni/text/CollationElementIterator;
    .registers 5
    .parameter "source"

    .prologue
    .line 594
    new-instance v0, Lcom/ibm/icu4jni/text/CollationElementIterator;

    iget v1, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ibm/icu4jni/text/NativeCollation;->getCollationElementIterator(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/text/CollationElementIterator;-><init>(I)V

    .line 598
    .local v0, result:Lcom/ibm/icu4jni/text/CollationElementIterator;
    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Lcom/ibm/icu4jni/text/CollationKey;
    .registers 5
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 530
    if-nez p1, :cond_5

    move-object v1, v2

    .line 537
    :goto_4
    return-object v1

    .line 533
    :cond_5
    iget v1, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v1, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->getSortKey(ILjava/lang/String;)[B

    move-result-object v0

    .line 534
    .local v0, key:[B
    if-nez v0, :cond_f

    move-object v1, v2

    .line 535
    goto :goto_4

    .line 537
    :cond_f
    new-instance v1, Lcom/ibm/icu4jni/text/CollationKey;

    invoke-direct {v1, v0}, Lcom/ibm/icu4jni/text/CollationKey;-><init>([B)V

    goto :goto_4
.end method

.method public getDecomposition()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->getNormalization(I)I

    move-result v0

    return v0
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->getRules(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)[B
    .registers 3
    .parameter "source"

    .prologue
    .line 550
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->getSortKey(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getStrength()I
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeCollation;->getAttribute(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 611
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    if-nez v0, :cond_13

    .line 612
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->hashCode(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 613
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    if-nez v0, :cond_13

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    .line 616
    :cond_13
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_hashcode_:I

    return v0
.end method

.method public setAttribute(II)V
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 492
    invoke-static {p1, p2}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkAttribute(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 493
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 494
    :cond_c
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    invoke-static {v0, p1, p2}, Lcom/ibm/icu4jni/text/NativeCollation;->setAttribute(III)V

    .line 495
    return-void
.end method

.method public setDecomposition(I)V
    .registers 4
    .parameter "decompositionmode"

    .prologue
    .line 413
    invoke-static {p1}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkNormalization(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 414
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 415
    :cond_c
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->setAttribute(III)V

    .line 418
    return-void
.end method

.method public setStrength(I)V
    .registers 4
    .parameter "strength"

    .prologue
    .line 468
    invoke-static {p1}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkStrength(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 469
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu4jni/common/ErrorCode;->getException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 470
    :cond_c
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;->m_collator_:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->setAttribute(III)V

    .line 472
    return-void
.end method
