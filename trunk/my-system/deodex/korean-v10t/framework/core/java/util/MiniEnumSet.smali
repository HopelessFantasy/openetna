.class final Ljava/util/MiniEnumSet;
.super Ljava/util/EnumSet;
.source "MiniEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MiniEnumSet$1;,
        Ljava/util/MiniEnumSet$MiniEnumSetIterator;
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
.field private static final MAX_ELEMENTS:I = 0x40


# instance fields
.field private bits:J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 3
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
    .line 44
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .local p2, enums:[Ljava/lang/Enum;,"[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 45
    iput-object p2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    .line 46
    return-void
.end method

.method static synthetic access$000(Ljava/util/MiniEnumSet;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    return-wide v0
.end method

.method static synthetic access$074(Ljava/util/MiniEnumSet;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    return-wide v0
.end method

.method static synthetic access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/MiniEnumSet;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Ljava/util/MiniEnumSet;->size:I

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, element:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 112
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 114
    :cond_10
    const-wide/16 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    shl-long v0, v2, v4

    .line 115
    .local v0, mask:J
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_21

    .line 116
    const/4 v2, 0x0

    .line 121
    :goto_20
    return v2

    .line 118
    :cond_21
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 120
    iget v2, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/MiniEnumSet;->size:I

    .line 121
    const/4 v2, 0x1

    goto :goto_20
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->add(Ljava/lang/Enum;)Z

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
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_9

    move v5, v9

    .line 140
    :goto_8
    return v5

    .line 129
    :cond_9
    instance-of v5, p1, Ljava/util/EnumSet;

    if-eqz v5, :cond_3e

    .line 130
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v4, v0

    .line 131
    .local v4, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v5, v4, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 132
    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v5

    .line 134
    :cond_1f
    move-object v0, v4

    check-cast v0, Ljava/util/MiniEnumSet;

    move-object v1, v0

    .line 135
    .local v1, miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 136
    .local v2, oldBits:J
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v7, v1, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 137
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    iput v5, p0, Ljava/util/MiniEnumSet;->size:I

    .line 138
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v5, v2, v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    goto :goto_8

    :cond_3c
    move v5, v9

    goto :goto_8

    .line 140
    .end local v1           #miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    .end local v2           #oldBits:J
    .end local v4           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_3e
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_8
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 105
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 107
    return-void
.end method

.method complement()V
    .registers 7

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v4, -0x1

    .line 235
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_21

    .line 236
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 237
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    const/16 v2, 0x40

    iget-object v3, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v3, v3

    sub-int/2addr v2, v3

    ushr-long v2, v4, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 238
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 240
    :cond_21
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const/4 v7, 0x0

    .line 145
    if-nez p1, :cond_5

    move v3, v7

    .line 153
    :goto_4
    return v3

    .line 148
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v7

    .line 149
    goto :goto_4

    .line 151
    :cond_11
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    move-object v1, v0

    .line 152
    .local v1, element:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 153
    .local v2, ordinal:I
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    goto :goto_4

    :cond_27
    move v3, v7

    goto :goto_4
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_a

    move v2, v6

    .line 165
    :goto_9
    return v2

    .line 161
    :cond_a
    instance-of v2, p1, Ljava/util/MiniEnumSet;

    if-eqz v2, :cond_29

    .line 162
    move-object v0, p1

    check-cast v0, Ljava/util/MiniEnumSet;

    move-object v1, v0

    .line 163
    .local v1, set:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    iget-object v2, v1, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v4, v1, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v2, v4

    iget-wide v4, v1, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    move v2, v6

    goto :goto_9

    :cond_27
    move v2, v7

    goto :goto_9

    .line 165
    .end local v1           #set:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    :cond_29
    instance-of v2, p1, Ljava/util/EnumSet;

    if-nez v2, :cond_35

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v6

    goto :goto_9

    :cond_35
    move v2, v7

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    instance-of v2, p1, Ljava/util/EnumSet;

    if-nez v2, :cond_b

    .line 224
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 230
    :goto_a
    return v2

    .line 226
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v1, v0

    .line 227
    .local v1, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v2, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 228
    iget v2, p0, Ljava/util/MiniEnumSet;->size:I

    if-nez v2, :cond_23

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v2

    if-nez v2, :cond_23

    move v2, v7

    goto :goto_a

    :cond_23
    move v2, v6

    goto :goto_a

    .line 230
    :cond_25
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v1, Ljava/util/MiniEnumSet;

    .end local v1           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-wide v4, v1, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    move v2, v7

    goto :goto_a

    :cond_31
    move v2, v6

    goto :goto_a
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
    .line 95
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    new-instance v0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const/4 v7, 0x1

    .line 211
    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 212
    const/4 v3, 0x0

    .line 218
    :goto_8
    return v3

    .line 214
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    move-object v1, v0

    .line 215
    .local v1, element:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 216
    .local v2, ordinal:I
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 217
    iget v3, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v3, v7

    iput v3, p0, Ljava/util/MiniEnumSet;->size:I

    move v3, v7

    .line 218
    goto :goto_8
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .line 170
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 171
    const/4 v5, 0x0

    .line 186
    :goto_7
    return v5

    .line 173
    :cond_8
    instance-of v5, p1, Ljava/util/EnumSet;

    if-eqz v5, :cond_37

    .line 174
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v4, v0

    .line 175
    .local v4, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    const/4 v3, 0x0

    .line 176
    .local v3, removeSuccessful:Z
    iget-object v5, v4, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 177
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v4, Ljava/util/MiniEnumSet;

    .end local v4           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-wide v7, v4, Ljava/util/MiniEnumSet;->bits:J

    and-long v1, v5, v7

    .line 178
    .local v1, mask:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_35

    .line 179
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 180
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    iput v5, p0, Ljava/util/MiniEnumSet;->size:I

    .line 181
    const/4 v3, 0x1

    .end local v1           #mask:J
    :cond_35
    move v5, v3

    .line 184
    goto :goto_7

    .line 186
    .end local v3           #removeSuccessful:Z
    :cond_37
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_7
.end method

.method public retainAll(Ljava/util/Collection;)Z
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
    .line 191
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v5, p1, Ljava/util/EnumSet;

    if-eqz v5, :cond_32

    .line 192
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v4, v0

    .line 193
    .local v4, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v5, v4, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 194
    invoke-virtual {p0}, Ljava/util/MiniEnumSet;->clear()V

    .line 195
    const/4 v5, 0x1

    .line 206
    .end local v4           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :goto_14
    return v5

    .line 197
    .restart local v4       #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :cond_15
    const/4 v3, 0x0

    .line 198
    .local v3, retainSuccessful:Z
    iget-wide v1, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 199
    .local v1, oldBits:J
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v4, Ljava/util/MiniEnumSet;

    .end local v4           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-wide v7, v4, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 200
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v5, v1, v5

    if-eqz v5, :cond_30

    .line 201
    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    iput v5, p0, Ljava/util/MiniEnumSet;->size:I

    .line 202
    const/4 v3, 0x1

    :cond_30
    move v5, v3

    .line 204
    goto :goto_14

    .line 206
    .end local v1           #oldBits:J
    .end local v3           #retainSuccessful:Z
    :cond_32
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_14
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, start:Ljava/lang/Enum;,"TE;"
    .local p2, end:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 245
    .local v0, length:I
    const-wide/16 v3, -0x1

    const/16 v5, 0x40

    sub-int/2addr v5, v0

    ushr-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long v1, v3, v5

    .line 246
    .local v1, range:J
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 247
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    iput v3, p0, Ljava/util/MiniEnumSet;->size:I

    .line 248
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 100
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    iget v0, p0, Ljava/util/MiniEnumSet;->size:I

    return v0
.end method
