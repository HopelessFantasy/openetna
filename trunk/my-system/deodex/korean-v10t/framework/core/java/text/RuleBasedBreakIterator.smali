.class Ljava/text/RuleBasedBreakIterator;
.super Ljava/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu4jni/text/BreakIterator;)V
    .registers 2
    .parameter "iterator"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/text/BreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    .line 36
    return-void
.end method

.method private validateOffset(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 73
    iget-object v1, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 74
    .local v0, it:Ljava/text/CharacterIterator;
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-lt p1, v1, :cond_12

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt p1, v1, :cond_18

    .line 75
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 77
    :cond_18
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 203
    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedBreakIterator;

    .line 204
    .local v0, cloned:Ljava/text/RuleBasedBreakIterator;
    iget-object v1, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    iput-object p0, v0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    .line 206
    return-object v0
.end method

.method public current()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 170
    instance-of v0, p1, Ljava/text/RuleBasedBreakIterator;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    .line 173
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    check-cast p1, Ljava/text/RuleBasedBreakIterator;

    .end local p1
    iget-object v1, p1, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public first()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->validateOffset(I)V

    .line 66
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->following(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundary(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->validateOffset(I)V

    .line 149
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public last()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/BreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public next(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 116
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->next(I)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->validateOffset(I)V

    .line 160
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/BreakIterator;->previous()I

    move-result v0

    return v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 137
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    .line 138
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
