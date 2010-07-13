.class Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;
.super Ljava/lang/Object;
.source "ProxyNameAndTypeCache.java"


# instance fields
.field elementSize:I

.field keyTable:[[I

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

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    .line 34
    int-to-float v0, p1

    const v1, 0x3f28f5c3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    .line 35
    new-array v0, p1, [[I

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    .line 36
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    .line 37
    return-void
.end method

.method private rehash()V
    .registers 5

    .prologue
    .line 73
    new-instance v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;-><init>(I)V

    .line 74
    .local v1, newHashtable:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v0, v2

    .local v0, i:I
    :cond_d
    :goto_d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_23

    .line 75
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    .line 76
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->put([II)I

    goto :goto_d

    .line 80
    :cond_23
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    .line 81
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    .line 82
    iget v2, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    iput v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    .line 83
    return-void
.end method


# virtual methods
.method get([I)I
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->hashCode([I)I

    move-result v0

    .line 41
    .local v0, index:I
    :goto_6
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    if-eqz v1, :cond_2d

    .line 42
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    aget v2, p1, v3

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    aget v2, p1, v4

    if-ne v1, v2, :cond_25

    .line 43
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aget v1, v1, v0

    .line 47
    :goto_24
    return v1

    .line 45
    :cond_25
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_6

    .line 47
    :cond_2d
    const/4 v1, -0x1

    goto :goto_24
.end method

.method hashCode([I)I
    .registers 4
    .parameter "key"

    .prologue
    .line 51
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method put([II)I
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->hashCode([I)I

    move-result v0

    .line 56
    .local v0, index:I
    :goto_6
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    if-eqz v1, :cond_2d

    .line 57
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    aget v2, p1, v3

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    aget v2, p1, v4

    if-ne v1, v2, :cond_25

    .line 58
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aput p2, v1, v0

    .line 69
    :cond_24
    :goto_24
    return p2

    .line 60
    :cond_25
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_6

    .line 62
    :cond_2d
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aput-object p1, v1, v0

    .line 63
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aput p2, v1, v0

    .line 66
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->threshold:I

    if-le v1, v2, :cond_24

    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->rehash()V

    goto :goto_24
.end method

.method size()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->size()I

    move-result v2

    .line 92
    .local v2, max:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_36

    .line 95
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v3, v3, v1

    if-eqz v3, :cond_2c

    .line 96
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->keyTable:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->valueTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_2c
    if-ge v1, v2, :cond_33

    .line 99
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 102
    :cond_36
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
