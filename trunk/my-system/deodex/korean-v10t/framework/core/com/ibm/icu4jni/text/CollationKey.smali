.class public final Lcom/ibm/icu4jni/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final UNSIGNED_BYTE_MASK_:I = 0xff


# instance fields
.field private m_bytes_:[B

.field private m_hash_:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    .line 162
    return-void
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    .line 171
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu4jni/text/CollationKey;)I
    .registers 12
    .parameter "target"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 32
    iget-object v4, p1, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    .line 34
    .local v4, tgtbytes:[B
    iget-object v5, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v5, v5

    if-nez v5, :cond_17

    .line 35
    :cond_e
    if-eqz v4, :cond_13

    array-length v5, v4

    if-nez v5, :cond_15

    :cond_13
    move v5, v9

    .line 74
    :goto_14
    return v5

    :cond_15
    move v5, v7

    .line 38
    goto :goto_14

    .line 41
    :cond_17
    if-eqz v4, :cond_1c

    array-length v5, v4

    if-nez v5, :cond_1e

    :cond_1c
    move v5, v8

    .line 42
    goto :goto_14

    .line 46
    :cond_1e
    iget-object v5, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v0, v5

    .line 47
    .local v0, count:I
    array-length v5, v4

    if-ge v5, v0, :cond_25

    .line 48
    array-length v0, v4

    .line 53
    :cond_25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-ge v1, v0, :cond_3d

    .line 56
    iget-object v5, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    aget-byte v5, v5, v1

    and-int/lit16 v2, v5, 0xff

    .line 57
    .local v2, s:I
    aget-byte v5, v4, v1

    and-int/lit16 v3, v5, 0xff

    .line 58
    .local v3, t:I
    if-ge v2, v3, :cond_36

    move v5, v7

    .line 59
    goto :goto_14

    .line 61
    :cond_36
    if-le v2, v3, :cond_3a

    move v5, v8

    .line 62
    goto :goto_14

    .line 53
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 66
    .end local v2           #s:I
    .end local v3           #t:I
    :cond_3d
    iget-object v5, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v5, v5

    iget-object v6, p1, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v6, v6

    if-ge v5, v6, :cond_47

    move v5, v7

    .line 67
    goto :goto_14

    .line 70
    :cond_47
    iget-object v5, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v5, v5

    iget-object v6, p1, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v6, v6

    if-le v5, v6, :cond_51

    move v5, v8

    .line 71
    goto :goto_14

    :cond_51
    move v5, v9

    .line 74
    goto :goto_14
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "target"

    .prologue
    .line 87
    check-cast p1, Lcom/ibm/icu4jni/text/CollationKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/text/CollationKey;->compareTo(Lcom/ibm/icu4jni/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "target"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p0, p1, :cond_6

    move v0, v3

    .line 108
    .end local p1
    :goto_5
    return v0

    .line 104
    .restart local p1
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_14

    :cond_12
    move v0, v2

    .line 105
    goto :goto_5

    .line 108
    :cond_14
    check-cast p1, Lcom/ibm/icu4jni/text/CollationKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/text/CollationKey;->compareTo(Lcom/ibm/icu4jni/text/CollationKey;)I

    move-result v0

    if-nez v0, :cond_1e

    move v0, v3

    goto :goto_5

    :cond_1e
    move v0, v2

    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 123
    iget v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    if-nez v3, :cond_2f

    .line 125
    iget-object v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v3, v3

    if-eqz v3, :cond_28

    .line 127
    :cond_d
    iget-object v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v2, v3

    .line 128
    .local v2, len:I
    const/16 v3, 0x20

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x20

    add-int/lit8 v1, v3, 0x1

    .line 129
    .local v1, inc:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_28

    .line 131
    iget v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    mul-int/lit8 v3, v3, 0x25

    iget-object v4, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    .line 132
    add-int/2addr v0, v1

    goto :goto_19

    .line 135
    .end local v0           #i:I
    .end local v1           #inc:I
    .end local v2           #len:I
    :cond_28
    iget v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    if-nez v3, :cond_2f

    .line 136
    const/4 v3, 0x1

    iput v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    .line 138
    :cond_2f
    iget v3, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_hash_:I

    return v3
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    array-length v0, v0

    if-nez v0, :cond_b

    .line 149
    :cond_9
    const/4 v0, 0x0

    .line 151
    .end local p0
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu4jni/text/CollationKey;->m_bytes_:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    move-object v0, p0

    goto :goto_a
.end method
