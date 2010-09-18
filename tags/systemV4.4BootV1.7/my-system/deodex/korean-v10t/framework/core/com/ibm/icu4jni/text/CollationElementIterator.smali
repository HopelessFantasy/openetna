.class public final Lcom/ibm/icu4jni/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1

.field private static final PRIMARY_ORDER_MASK_:I = -0x10000

.field private static final PRIMARY_ORDER_SHIFT_:I = 0x10

.field private static final SECONDARY_ORDER_MASK_:I = 0xff00

.field private static final SECONDARY_ORDER_SHIFT_:I = 0x8

.field private static final TERTIARY_ORDER_MASK_:I = 0xff

.field private static final UNSIGNED_16_BIT_MASK_:I = 0xffff


# instance fields
.field private m_collelemiterator_:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "collelemiteratoraddress"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p1, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    .line 185
    return-void
.end method

.method public static primaryOrder(I)I
    .registers 3
    .parameter "order"

    .prologue
    .line 148
    const/high16 v0, -0x1

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static secondaryOrder(I)I
    .registers 2
    .parameter "order"

    .prologue
    .line 160
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static tertiaryOrder(I)I
    .registers 2
    .parameter "order"

    .prologue
    .line 171
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->closeElements(I)V

    .line 197
    return-void
.end method

.method public getMaxExpansion(I)I
    .registers 3
    .parameter "order"

    .prologue
    .line 97
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->getMaxExpansion(II)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->getOffset(I)I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->next(I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->previous(I)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0}, Lcom/ibm/icu4jni/text/NativeCollation;->reset(I)V

    .line 60
    return-void
.end method

.method public setOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 137
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->setOffset(II)V

    .line 138
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 107
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-static {v0, p1}, Lcom/ibm/icu4jni/text/NativeCollation;->setText(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 113
    iget v0, p0, Lcom/ibm/icu4jni/text/CollationElementIterator;->m_collelemiterator_:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu4jni/text/NativeCollation;->setText(ILjava/lang/String;)V

    .line 114
    return-void
.end method
