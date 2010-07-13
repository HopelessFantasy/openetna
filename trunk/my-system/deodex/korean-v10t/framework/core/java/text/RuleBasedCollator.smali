.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu4jni/text/Collator;)V
    .registers 2
    .parameter "wrapper"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Lcom/ibm/icu4jni/text/Collator;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "rules"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    .line 326
    if-nez p1, :cond_b

    .line 327
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 337
    :cond_b
    :try_start_b
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-direct {v1, p1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .line 339
    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/ibm/icu4jni/text/Collator;->setDecomposition(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1a

    .line 352
    return-void

    .line 342
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 343
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_23

    .line 344
    check-cast v0, Ljava/text/ParseException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 350
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_23
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 418
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 419
    .local v0, clone:Ljava/text/RuleBasedCollator;
    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "source"
    .parameter "target"

    .prologue
    .line 447
    if-eqz p1, :cond_4

    if-nez p2, :cond_10

    .line 449
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text.08"

    invoke-static {v1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_10
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu4jni/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 493
    instance-of v0, p1, Ljava/text/Collator;

    if-nez v0, :cond_6

    .line 494
    const/4 v0, 0x0

    .line 496
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .registers 4
    .parameter "source"

    .prologue
    .line 383
    if-nez p1, :cond_8

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 386
    :cond_8
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object p0, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu4jni/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Lcom/ibm/icu4jni/text/CollationElementIterator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .registers 4
    .parameter "source"

    .prologue
    .line 366
    if-nez p1, :cond_8

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 369
    :cond_8
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object p0, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getCollationElementIterator(Ljava/text/CharacterIterator;)Lcom/ibm/icu4jni/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Lcom/ibm/icu4jni/text/CollationElementIterator;)V

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .registers 4
    .parameter "source"

    .prologue
    .line 464
    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    invoke-virtual {v1, p1}, Lcom/ibm/icu4jni/text/Collator;->getCollationKey(Ljava/lang/String;)Lcom/ibm/icu4jni/text/CollationKey;

    move-result-object v0

    .line 466
    .local v0, icuKey:Lcom/ibm/icu4jni/text/CollationKey;
    if-nez v0, :cond_a

    .line 467
    const/4 v1, 0x0

    .line 469
    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/text/CollationKey;

    invoke-direct {v1, p1, v0}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;Lcom/ibm/icu4jni/text/CollationKey;)V

    goto :goto_9
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    iget-object p0, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 474
    iget-object p0, p0, Ljava/text/RuleBasedCollator;->icuColl:Lcom/ibm/icu4jni/text/Collator;

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-virtual {p0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
