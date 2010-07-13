.class public Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;
.super Lcom/ibm/icu4jni/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# instance fields
.field private addr:I

.field private charIter:Ljava/text/CharacterIterator;


# direct methods
.method constructor <init>(II)V
    .registers 5
    .parameter "iterAddr"
    .parameter "type"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ibm/icu4jni/text/BreakIterator;-><init>()V

    .line 29
    iput p1, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    .line 30
    iput p2, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->type:I

    .line 31
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 32
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 36
    iget v2, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v2}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->cloneImpl(I)I

    move-result v0

    .line 37
    .local v0, cloneAddr:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    iget v2, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->type:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    .line 40
    .local v1, rbbi:Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;
    iget-object v2, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    iput-object v2, v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 42
    return-object v1
.end method

.method public current()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->currentImpl(I)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    if-nez p1, :cond_6

    move v3, v5

    .line 59
    .end local p1
    :goto_5
    return v3

    .line 51
    .restart local p1
    :cond_6
    instance-of v3, p1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    if-nez v3, :cond_c

    move v3, v5

    .line 52
    goto :goto_5

    .line 55
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    move-object v3, v0

    iget-object v1, v3, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 57
    .local v1, iter:Ljava/text/CharacterIterator;
    iget v3, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->type:I

    check-cast p1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    .end local p1
    iget v4, p1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->type:I

    if-ne v3, v4, :cond_27

    move v2, v6

    .line 59
    .local v2, result:Z
    :goto_1b
    if-eqz v2, :cond_29

    iget-object v3, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v3, v6

    goto :goto_5

    .end local v2           #result:Z
    :cond_27
    move v2, v5

    .line 57
    goto :goto_1b

    .restart local v2       #result:Z
    :cond_29
    move v3, v5

    .line 59
    goto :goto_5
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->closeBreakIteratorImpl(I)V

    .line 121
    return-void
.end method

.method public first()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->firstImpl(I)I

    move-result v0

    return v0
.end method

.method public following(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 74
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->followingImpl(II)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .registers 3

    .prologue
    .line 79
    iget v1, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->currentImpl(I)I

    move-result v0

    .line 80
    .local v0, newLoc:I
    iget-object v1, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 81
    iget-object v1, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    return-object v1
.end method

.method public isBoundary(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 125
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->isBoundaryImpl(II)Z

    move-result v0

    return v0
.end method

.method public last()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->lastImpl(I)I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->nextImpl(II)I

    move-result v0

    return v0
.end method

.method public next(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 91
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->nextImpl(II)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 130
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->precedingImpl(II)I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->previousImpl(I)I

    move-result v0

    return v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 6
    .parameter "newText"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    .line 111
    .local v0, c:C
    :goto_b
    const v2, 0xffff

    if-eq v0, v2, :cond_18

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_b

    .line 116
    :cond_18
    iget v2, p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;->addr:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->setTextImpl(ILjava/lang/String;)V

    .line 117
    return-void
.end method
