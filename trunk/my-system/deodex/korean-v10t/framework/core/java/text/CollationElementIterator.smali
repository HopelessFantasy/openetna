.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1


# instance fields
.field private icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;


# direct methods
.method constructor <init>(Lcom/ibm/icu4jni/text/CollationElementIterator;)V
    .registers 2
    .parameter "iterator"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    .line 73
    return-void
.end method

.method public static final primaryOrder(I)I
    .registers 2
    .parameter "order"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final secondaryOrder(I)S
    .registers 2
    .parameter "order"

    .prologue
    .line 181
    invoke-static {p0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final tertiaryOrder(I)S
    .registers 2
    .parameter "order"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getMaxExpansion(I)I
    .registers 3
    .parameter "order"

    .prologue
    .line 89
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->next()I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->previous()I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationElementIterator;->reset()V

    .line 169
    return-void
.end method

.method public setOffset(I)V
    .registers 3
    .parameter "newOffset"

    .prologue
    .line 211
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/CollationElementIterator;->setOffset(I)V

    .line 212
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 235
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 223
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Lcom/ibm/icu4jni/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 224
    return-void
.end method
