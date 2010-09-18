.class Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;
.super Ljava/lang/Object;
.source "ProxyObjectCache.java"


# instance fields
.field elementSize:I

.field keyTable:[Ljava/lang/Object;

.field threshold:I

.field valueTable:[I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0xd

    if-ge p1, v0, :cond_9

    .line 31
    const/16 p1, 0xd

    .line 33
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->elementSize:I

    .line 34
    int-to-float v0, p1

    const v1, 0x3f28f5c3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->threshold:I

    .line 35
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    .line 36
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    .line 37
    return-void
.end method

.method private rehash()V
    .registers 5

    .prologue
    .line 73
    new-instance v1, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    .line 75
    .local v1, newHashtable:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v0, v2

    .local v0, i:I
    :cond_d
    :goto_d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_23

    .line 76
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    .line 77
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    goto :goto_d

    .line 81
    :cond_23
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    .line 82
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    .line 83
    iget v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->threshold:I

    iput v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->threshold:I

    .line 84
    return-void
.end method


# virtual methods
.method get(Ljava/lang/Object;)I
    .registers 5
    .parameter "key"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 41
    .local v0, index:I
    :goto_4
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 42
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 43
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    aget v1, v1, v0

    .line 47
    :goto_18
    return v1

    .line 45
    :cond_19
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_4

    .line 47
    :cond_21
    const/4 v1, -0x1

    goto :goto_18
.end method

.method hashCode(Ljava/lang/Object;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method put(Ljava/lang/Object;I)I
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 56
    .local v0, index:I
    :goto_4
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 57
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 58
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    aput p2, v1, v0

    .line 69
    :cond_18
    :goto_18
    return p2

    .line 60
    :cond_19
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_4

    .line 62
    :cond_21
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 63
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    aput p2, v1, v0

    .line 66
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->elementSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->elementSize:I

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->threshold:I

    if-le v1, v2, :cond_18

    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->rehash()V

    goto :goto_18
.end method

.method size()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->size()I

    move-result v2

    .line 93
    .local v2, max:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_36

    .line 96
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2c

    .line 97
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->keyTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->valueTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    :cond_2c
    if-ge v1, v2, :cond_33

    .line 100
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 103
    :cond_36
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
