.class Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;
.super Ljava/lang/Object;
.source "ProxyCharArrayCache.java"


# instance fields
.field private elementSize:I

.field private keyTable:[[C

.field private threshold:I

.field private valueTable:[I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0xd

    if-ge p1, v0, :cond_9

    .line 52
    const/16 p1, 0xd

    .line 54
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->elementSize:I

    .line 55
    int-to-float v0, p1

    const v1, 0x3f28f5c3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->threshold:I

    .line 56
    new-array v0, p1, [[C

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    .line 57
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    .line 58
    return-void
.end method

.method static equals([C[C)Z
    .registers 7
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 37
    :goto_5
    return v1

    .line 25
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v1, v3

    .line 26
    goto :goto_5

    .line 28
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_12

    move v1, v3

    .line 29
    goto :goto_5

    .line 32
    :cond_12
    array-length v0, p0

    .local v0, i:I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1f

    .line 33
    aget-char v1, p0, v0

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_13

    move v1, v3

    .line 34
    goto :goto_5

    :cond_1f
    move v1, v4

    .line 37
    goto :goto_5
.end method

.method private hashCodeChar([C)I
    .registers 8
    .parameter "val"

    .prologue
    .line 72
    array-length v2, p1

    .line 73
    .local v2, length:I
    const/4 v0, 0x0

    .line 74
    .local v0, hash:I
    const/4 v3, 0x2

    .line 75
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v2, :cond_b

    .line 76
    aget-char v4, p1, v1

    add-int/2addr v0, v4

    .line 75
    add-int/2addr v1, v3

    goto :goto_4

    .line 78
    :cond_b
    const v4, 0x7fffffff

    and-int/2addr v4, v0

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    array-length v5, v5

    rem-int/2addr v4, v5

    return v4
.end method

.method private rehash()V
    .registers 5

    .prologue
    .line 100
    new-instance v1, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    .line 102
    .local v1, newHashtable:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    array-length v0, v2

    .local v0, i:I
    :cond_d
    :goto_d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_23

    .line 103
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    .line 104
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    goto :goto_d

    .line 108
    :cond_23
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    .line 109
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    .line 110
    iget v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->threshold:I

    iput v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->threshold:I

    .line 111
    return-void
.end method


# virtual methods
.method get([C)I
    .registers 5
    .parameter "key"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->hashCodeChar([C)I

    move-result v0

    .line 62
    .local v0, index:I
    :goto_4
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 63
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 64
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    aget v1, v1, v0

    .line 68
    :goto_18
    return v1

    .line 66
    :cond_19
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_4

    .line 68
    :cond_21
    const/4 v1, -0x1

    goto :goto_18
.end method

.method put([CI)I
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->hashCodeChar([C)I

    move-result v0

    .line 83
    .local v0, index:I
    :goto_4
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 84
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 85
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    aput p2, v1, v0

    .line 96
    :cond_18
    :goto_18
    return p2

    .line 87
    :cond_19
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_4

    .line 89
    :cond_21
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aput-object p1, v1, v0

    .line 90
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    aput p2, v1, v0

    .line 93
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->elementSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->elementSize:I

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->threshold:I

    if-le v1, v2, :cond_18

    .line 94
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->rehash()V

    goto :goto_18
.end method

.method size()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->size()I

    move-result v2

    .line 120
    .local v2, max:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_36

    .line 123
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v3, v3, v1

    if-eqz v3, :cond_2c

    .line 124
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->keyTable:[[C

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->valueTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    :cond_2c
    if-ge v1, v2, :cond_33

    .line 127
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 130
    :cond_36
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
