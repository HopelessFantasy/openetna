.class public abstract Ljava/util/EnumSet;
.super Ljava/util/AbstractSet;
.source "EnumSet.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumSet$1;,
        Ljava/util/EnumSet$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static LANG_BOOTSTRAP:Lorg/apache/harmony/kernel/vm/LangAccess; = null

.field private static final serialVersionUID:J = 0x425e859f54def017L


# instance fields
.field final elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Ljava/util/EnumSet;->LANG_BOOTSTRAP:Lorg/apache/harmony/kernel/vm/LangAccess;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 45
    iput-object p1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method public static allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 86
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    .line 87
    return-object v0
.end method

.method public static complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, s:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 150
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {v0}, Ljava/util/EnumSet;->complement()V

    .line 152
    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    instance-of v3, p0, Ljava/util/EnumSet;

    if-eqz v3, :cond_b

    .line 123
    check-cast p0, Ljava/util/EnumSet;

    .end local p0           #c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v3

    .line 135
    :goto_a
    return-object v3

    .line 125
    .restart local p0       #c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_17

    .line 126
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 128
    :cond_17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 130
    .local v0, element:Ljava/lang/Enum;,"TE;"
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 131
    .local v2, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v2, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3a
    move-object v3, v2

    .line 135
    goto :goto_a
.end method

.method public static copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/EnumSet",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, s:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 104
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-object v0
.end method

.method public static noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_c

    .line 62
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 65
    :cond_c
    sget-object v1, Ljava/util/SpecialAccess;->LANG:Lorg/apache/harmony/kernel/vm/LangAccess;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/kernel/vm/LangAccess;->getEnumValuesInOrder(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 66
    .local v0, enums:[Ljava/lang/Enum;,"[TE;"
    array-length v1, v0

    const/16 v2, 0x40

    if-gt v1, v2, :cond_1f

    .line 67
    new-instance v1, Ljava/util/MiniEnumSet;

    invoke-direct {v1, p0, v0}, Ljava/util/MiniEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 69
    :goto_1e
    return-object v1

    :cond_1f
    new-instance v1, Ljava/util/HugeEnumSet;

    invoke-direct {v1, p0, v0}, Ljava/util/HugeEnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    goto :goto_1e
.end method

.method public static of(Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, e:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 170
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 171
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 189
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    .local p2, e3:Ljava/lang/Enum;,"TE;"
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 210
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 211
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    .local p2, e3:Ljava/lang/Enum;,"TE;"
    .local p3, e4:Ljava/lang/Enum;,"TE;"
    invoke-static {p0, p1, p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 233
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method public static of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;TE;TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, e1:Ljava/lang/Enum;,"TE;"
    .local p1, e2:Ljava/lang/Enum;,"TE;"
    .local p2, e3:Ljava/lang/Enum;,"TE;"
    .local p3, e4:Ljava/lang/Enum;,"TE;"
    .local p4, e5:Ljava/lang/Enum;,"TE;"
    invoke-static {p0, p1, p2, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 258
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 259
    return-object v0
.end method

.method public static varargs of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;[TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, start:Ljava/lang/Enum;,"TE;"
    .local p1, others:[Ljava/lang/Enum;,"[TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 276
    .local v4, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 277
    .local v1, e:Ljava/lang/Enum;,"TE;"
    invoke-virtual {v4, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 279
    .end local v1           #e:Ljava/lang/Enum;,"TE;"
    :cond_11
    return-object v4
.end method

.method public static range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;TE;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, start:Ljava/lang/Enum;,"TE;"
    .local p1, end:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_c

    .line 298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 300
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 301
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/EnumSet;->setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V

    .line 302
    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 320
    .local v1, set:Ljava/lang/Object;
    check-cast v1, Ljava/util/EnumSet;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_8

    .end local v1           #set:Ljava/lang/Object;
    move-object v2, v1

    .line 322
    :goto_7
    return-object v2

    .line 321
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 322
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_7
.end method

.method abstract complement()V
.end method

.method isValidType(Ljava/lang/Class;)Z
    .registers 4
    .parameter "cls"

    .prologue
    .line 328
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method abstract setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 351
    .local p0, this:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    new-instance v0, Ljava/util/EnumSet$SerializationProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/EnumSet$SerializationProxy;-><init>(Ljava/util/EnumSet$1;)V

    .line 352
    .local v0, proxy:Ljava/util/EnumSet$SerializationProxy;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Enum;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v0, v1}, Ljava/util/EnumSet$SerializationProxy;->access$102(Ljava/util/EnumSet$SerializationProxy;[Ljava/lang/Enum;)[Ljava/lang/Enum;

    .line 353
    iget-object v1, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/EnumSet$SerializationProxy;->access$202(Ljava/util/EnumSet$SerializationProxy;Ljava/lang/Class;)Ljava/lang/Class;

    .line 354
    return-object v0
.end method
