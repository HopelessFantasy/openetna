.class final Ljava/util/HugeEnumSet;
.super Ljava/util/EnumSet;
.source "HugeEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HugeEnumSet$1;,
        Ljava/util/HugeEnumSet$HugeEnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BIT_IN_LONG:I = 0x40


# instance fields
.field private bits:[J

.field private bitsIndex:I

.field private elementInBits:I

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private oldBits:J

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .local p2, enums:[Ljava/lang/Enum;,"[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 46
    iput-object p2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    .line 47
    array-length v0, p2

    add-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    .line 48
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Ljava/util/HugeEnumSet;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic access$210(Ljava/util/HugeEnumSet;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Ljava/util/HugeEnumSet;->size:I

    return v0
.end method

.method private calculateElementIndex(Ljava/lang/Enum;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, element:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 346
    .local v0, elementOrdinal:I
    div-int/lit8 v1, v0, 0x40

    iput v1, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    .line 347
    rem-int/lit8 v1, v0, 0x40

    iput v1, p0, Ljava/util/HugeEnumSet;->elementInBits:I

    .line 348
    iget-object v1, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v2, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v1, v1, v2

    iput-wide v1, p0, Ljava/util/HugeEnumSet;->oldBits:J

    .line 349
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, element:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 119
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 121
    :cond_10
    invoke-direct {p0, p1}, Ljava/util/HugeEnumSet;->calculateElementIndex(Ljava/lang/Enum;)V

    .line 123
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v1, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    iget v6, p0, Ljava/util/HugeEnumSet;->elementInBits:I

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 124
    iget-wide v0, p0, Ljava/util/HugeEnumSet;->oldBits:J

    iget-object v2, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v3, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v2, v2, v3

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 125
    const/4 v0, 0x0

    .line 128
    :goto_2e
    return v0

    .line 127
    :cond_2f
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    .line 128
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/HugeEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_8

    if-ne p0, p1, :cond_a

    .line 134
    :cond_8
    const/4 v5, 0x0

    .line 154
    :goto_9
    return v5

    .line 136
    :cond_a
    instance-of v5, p1, Ljava/util/EnumSet;

    if-eqz v5, :cond_60

    .line 137
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v4, v0

    .line 138
    .local v4, set:Ljava/util/EnumSet;
    iget-object v5, v4, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 139
    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v5

    .line 141
    :cond_20
    move-object v0, v4

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    .line 142
    .local v2, hugeSet:Ljava/util/HugeEnumSet;
    const/4 v1, 0x0

    .line 143
    .local v1, addSuccessful:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_26
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v5, v5

    if-ge v3, v5, :cond_5e

    .line 144
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v5, v3

    iput-wide v5, p0, Ljava/util/HugeEnumSet;->oldBits:J

    .line 145
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v5, v3

    iget-object v8, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v3

    or-long/2addr v6, v8

    aput-wide v6, v5, v3

    .line 146
    iget-wide v5, p0, Ljava/util/HugeEnumSet;->oldBits:J

    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v7, v7, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5b

    .line 147
    const/4 v1, 0x1

    .line 148
    iget v5, p0, Ljava/util/HugeEnumSet;->size:I

    iget-wide v6, p0, Ljava/util/HugeEnumSet;->oldBits:J

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Ljava/util/HugeEnumSet;->size:I

    .line 143
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_5e
    move v5, v1

    .line 152
    goto :goto_9

    .line 154
    .end local v1           #addSuccessful:Z
    .end local v2           #hugeSet:Ljava/util/HugeEnumSet;
    .end local v3           #i:I
    .end local v4           #set:Ljava/util/EnumSet;
    :cond_60
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_9
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 164
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    .line 166
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/util/EnumSet;
    .registers 2

    .prologue
    .line 26
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/HugeEnumSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HugeEnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    .line 204
    .local v1, set:Ljava/util/EnumSet;
    if-eqz v1, :cond_18

    .line 205
    move-object v0, v1

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    iget-object v3, p0, Ljava/util/HugeEnumSet;->bits:[J

    invoke-virtual {v3}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    check-cast p0, [J

    iput-object p0, v2, Ljava/util/HugeEnumSet;->bits:[J

    .line 206
    check-cast v1, Ljava/util/HugeEnumSet;

    .end local v1           #set:Ljava/util/EnumSet;
    move-object v2, v1

    .line 208
    :goto_17
    return-object v2

    .restart local v1       #set:Ljava/util/EnumSet;
    .restart local p0       #this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method protected complement()V
    .registers 11

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const-wide/16 v8, -0x1

    .line 170
    iget-object v2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v2, v2

    if-eqz v2, :cond_57

    .line 171
    iget-object v2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x40

    iput v2, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    .line 173
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/HugeEnumSet;->size:I

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, bitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    iget v2, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    if-gt v1, v2, :cond_30

    .line 176
    iget-object v2, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget-object v3, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v3, v3, v1

    xor-long/2addr v3, v8

    aput-wide v3, v2, v1

    .line 177
    iget-object v2, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 178
    iget v2, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/util/HugeEnumSet;->size:I

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 180
    :cond_30
    iget-object v2, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v3, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v4, v2, v3

    const/16 v6, 0x40

    iget-object v7, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v7, v7

    rem-int/lit8 v7, v7, 0x40

    sub-int/2addr v6, v7

    ushr-long v6, v8, v6

    and-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 182
    iget v2, p0, Ljava/util/HugeEnumSet;->size:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljava/util/HugeEnumSet;->size:I

    .line 183
    iget-object v2, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v3, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 184
    iget v2, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/util/HugeEnumSet;->size:I

    .line 186
    .end local v0           #bitCount:I
    .end local v1           #i:I
    :cond_57
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v5, 0x0

    .line 190
    if-nez p1, :cond_5

    move v0, v5

    .line 197
    .end local p1
    :goto_4
    return v0

    .line 193
    .restart local p1
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v5

    .line 194
    goto :goto_4

    .line 196
    :cond_11
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-direct {p0, p1}, Ljava/util/HugeEnumSet;->calculateElementIndex(Ljava/lang/Enum;)V

    .line 197
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v1, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    iget v4, p0, Ljava/util/HugeEnumSet;->elementInBits:I

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_4

    :cond_2a
    move v0, v5

    goto :goto_4
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_a

    move v3, v7

    .line 228
    :goto_9
    return v3

    .line 216
    :cond_a
    instance-of v3, p1, Ljava/util/HugeEnumSet;

    if-eqz v3, :cond_38

    .line 217
    move-object v0, p1

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    .line 218
    .local v2, set:Ljava/util/HugeEnumSet;
    iget-object v3, v2, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v3, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v3, v3

    if-ge v1, v3, :cond_36

    .line 220
    iget-object v3, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v3, v3, v1

    iget-object v5, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v5, v1

    and-long/2addr v3, v5

    iget-object v5, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v5, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_33

    move v3, v8

    .line 221
    goto :goto_9

    .line 219
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_36
    move v3, v7

    .line 225
    goto :goto_9

    .line 228
    .end local v1           #i:I
    .end local v2           #set:Ljava/util/HugeEnumSet;
    :cond_38
    instance-of v3, p1, Ljava/util/EnumSet;

    if-nez v3, :cond_44

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_44

    move v3, v7

    goto :goto_9

    :cond_44
    move v3, v8

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 233
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    if-nez p1, :cond_4

    .line 234
    const/4 v0, 0x0

    .line 239
    .end local p1
    :goto_3
    return v0

    .line 236
    .restart local p1
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 237
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 239
    :cond_13
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    check-cast p1, Ljava/util/HugeEnumSet;

    .end local p1
    iget-object v1, p1, Ljava/util/HugeEnumSet;->bits:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    new-instance v0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v7, 0x1

    .line 249
    invoke-virtual {p0, p1}, Ljava/util/HugeEnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 250
    const/4 v0, 0x0

    .line 254
    :goto_8
    return v0

    .line 252
    :cond_9
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v1, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    iget v6, p0, Ljava/util/HugeEnumSet;->elementInBits:I

    shl-long/2addr v4, v6

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 253
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    sub-int/2addr v0, v7

    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    move v0, v7

    .line 254
    goto :goto_8
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v7, 0x0

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_9

    move v6, v7

    .line 282
    :goto_8
    return v6

    .line 263
    :cond_9
    instance-of v6, p1, Ljava/util/EnumSet;

    if-eqz v6, :cond_5f

    .line 264
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v5, v0

    .line 265
    .local v5, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v6, v5, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v6}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1b

    move v6, v7

    .line 266
    goto :goto_8

    .line 268
    :cond_1b
    const/4 v4, 0x0

    .line 269
    .local v4, removeSuccessful:Z
    const-wide/16 v2, 0x0

    .line 270
    .local v2, mask:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v6, v6

    if-ge v1, v6, :cond_5d

    .line 271
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v6, v1

    iput-wide v6, p0, Ljava/util/HugeEnumSet;->oldBits:J

    .line 272
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v7, v6, v1

    move-object v0, v5

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v6, v0

    iget-object v6, v6, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v9, v6, v1

    and-long v2, v7, v9

    .line 273
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_5a

    .line 274
    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v7, v6, v1

    sub-long/2addr v7, v2

    aput-wide v7, v6, v1

    .line 275
    iget v6, p0, Ljava/util/HugeEnumSet;->size:I

    iget-wide v7, p0, Ljava/util/HugeEnumSet;->oldBits:J

    invoke-static {v7, v8}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v7, v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Ljava/util/HugeEnumSet;->size:I

    .line 277
    const/4 v4, 0x1

    .line 270
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_5d
    move v6, v4

    .line 280
    goto :goto_8

    .line 282
    .end local v1           #i:I
    .end local v2           #mask:J
    .end local v4           #removeSuccessful:Z
    .end local v5           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :cond_5f
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_8
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v4, p1, Ljava/util/EnumSet;

    if-eqz v4, :cond_59

    .line 288
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v3, v0

    .line 289
    .local v3, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v4, v3, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 290
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clear()V

    .line 291
    const/4 v4, 0x1

    .line 307
    .end local v3           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :goto_14
    return v4

    .line 294
    .restart local v3       #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :cond_15
    const/4 v2, 0x0

    .line 295
    .local v2, retainSuccessful:Z
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Ljava/util/HugeEnumSet;->oldBits:J

    .line 296
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v4, v4

    if-ge v1, v4, :cond_57

    .line 297
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v4, v1

    iput-wide v4, p0, Ljava/util/HugeEnumSet;->oldBits:J

    .line 298
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v5, v1

    move-object v0, v3

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v4, v0

    iget-object v4, v4, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v4, v1

    and-long/2addr v6, v8

    aput-wide v6, v5, v1

    .line 299
    iget-wide v4, p0, Ljava/util/HugeEnumSet;->oldBits:J

    iget-object v6, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v6, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_54

    .line 300
    iget v4, p0, Ljava/util/HugeEnumSet;->size:I

    iget-wide v5, p0, Ljava/util/HugeEnumSet;->oldBits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    .line 302
    const/4 v2, 0x1

    .line 296
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_57
    move v4, v2

    .line 305
    goto :goto_14

    .line 307
    .end local v1           #i:I
    .end local v2           #retainSuccessful:Z
    .end local v3           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :cond_59
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_14
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, start:Ljava/lang/Enum;,"TE;"
    .local p2, end:Ljava/lang/Enum;,"TE;"
    const/16 v12, 0x40

    const-wide/16 v10, -0x1

    .line 312
    invoke-direct {p0, p1}, Ljava/util/HugeEnumSet;->calculateElementIndex(Ljava/lang/Enum;)V

    .line 313
    iget v5, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    .line 314
    .local v5, startBitsIndex:I
    iget v6, p0, Ljava/util/HugeEnumSet;->elementInBits:I

    .line 315
    .local v6, startElementInBits:I
    invoke-direct {p0, p2}, Ljava/util/HugeEnumSet;->calculateElementIndex(Ljava/lang/Enum;)V

    .line 316
    iget v0, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    .line 317
    .local v0, endBitsIndex:I
    iget v1, p0, Ljava/util/HugeEnumSet;->elementInBits:I

    .line 318
    .local v1, endElementInBits:I
    const-wide/16 v3, 0x0

    .line 319
    .local v3, range:J
    if-ne v5, v0, :cond_48

    .line 320
    sub-int v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    sub-int v7, v12, v7

    ushr-long v7, v10, v7

    shl-long v3, v7, v6

    .line 321
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v9, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 322
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v8, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v9, v7, v8

    or-long/2addr v9, v3

    aput-wide v9, v7, v8

    .line 323
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    iget v9, p0, Ljava/util/HugeEnumSet;->bitsIndex:I

    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 342
    :cond_47
    return-void

    .line 325
    :cond_48
    ushr-long v7, v10, v6

    shl-long v3, v7, v6

    .line 326
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 327
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v7, v5

    or-long/2addr v8, v3

    aput-wide v8, v7, v5

    .line 328
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 332
    add-int/lit8 v7, v1, 0x1

    sub-int v7, v12, v7

    ushr-long v7, v10, v7

    const/16 v9, 0x3f

    sub-int/2addr v9, v1

    shl-long v3, v7, v9

    .line 333
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 334
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v7, v0

    or-long/2addr v8, v3

    aput-wide v8, v7, v0

    .line 335
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 336
    add-int/lit8 v2, v5, 0x1

    .local v2, i:I
    :goto_9b
    const/4 v7, 0x1

    sub-int v7, v0, v7

    if-gt v2, v7, :cond_47

    .line 337
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 338
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v10, v7, v2

    .line 339
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v8, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b
.end method

.method public size()I
    .registers 2

    .prologue
    .line 159
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    return v0
.end method
