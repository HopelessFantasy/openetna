.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EnumMapEntrySet;,
        Ljava/util/EnumMap$EnumMapEntryIterator;,
        Ljava/util/EnumMap$EnumMapValueCollection;,
        Ljava/util/EnumMap$EnumMapKeySet;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient entrySet:Ljava/util/EnumMap$EnumMapEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap$EnumMapEntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient enumSize:I

.field transient hasMapping:[Z

.field private keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Enum;

.field private transient mappingsCount:I

.field transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 387
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    .line 388
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, map:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 399
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    .line 400
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 46
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 416
    instance-of v3, p1, Ljava/util/EnumMap;

    if-eqz v3, :cond_10

    .line 417
    check-cast p1, Ljava/util/EnumMap;

    .end local p1           #map:Ljava/util/Map;,"Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    .line 432
    :goto_f
    return-void

    .line 419
    .restart local p1       #map:Ljava/util/Map;,"Ljava/util/Map<TK;+TV;>;"
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 420
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 422
    :cond_1c
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 423
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 424
    .local v1, enumKey:Ljava/lang/Enum;,"TK;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 425
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 426
    invoke-direct {p0, v0}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    .line 430
    :goto_37
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

    goto :goto_f

    .line 428
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    goto :goto_37
.end method

.method private initialization(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 739
    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    .line 740
    iget-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    array-length v0, v0

    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    .line 741
    iget v0, p0, Ljava/util/EnumMap;->enumSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    .line 742
    iget v0, p0, Ljava/util/EnumMap;->enumSize:I

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    .line 743
    return-void
.end method

.method private initialization(Ljava/util/EnumMap;)V
    .registers 3
    .parameter "enumMap"

    .prologue
    .line 729
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 730
    iget-object v0, p1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    .line 731
    iget v0, p1, Ljava/util/EnumMap;->enumSize:I

    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    .line 732
    iget-object v0, p1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    .line 733
    iget-object v0, p1, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    .line 734
    iget v0, p1, Ljava/util/EnumMap;->mappingsCount:I

    iput v0, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 735
    return-void
.end method

.method private isValidKeyType(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 721
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    if-eqz p1, :cond_c

    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 722
    const/4 v0, 0x1

    .line 724
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .registers 6
    .parameter "map"

    .prologue
    .line 747
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 748
    .local v1, iter:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 750
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 752
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_22
    return-void
.end method

.method private putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Enum;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_8

    .line 757
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 759
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 760
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 762
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 763
    .local v0, keyOrdinal:I
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_29

    .line 764
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 765
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 767
    :cond_29
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 768
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 769
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 697
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 698
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-direct {p0, v4}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    .line 699
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 702
    .local v0, elementCount:I
    move v2, v0

    .local v2, i:I
    :goto_d
    if-lez v2, :cond_1f

    .line 703
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 704
    .local v1, enumKey:Ljava/lang/Enum;,"Ljava/lang/Enum<TK;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 705
    .local v3, value:Ljava/lang/Object;
    invoke-direct {p0, v1, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 707
    .end local v1           #enumKey:Ljava/lang/Enum;,"Ljava/lang/Enum<TK;>;"
    .end local v3           #value:Ljava/lang/Object;
    :cond_1f
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 711
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 712
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 713
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 715
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 716
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_10

    .line 718
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2b
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 445
    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 446
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
    .line 30
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    .line 458
    .local v1, enumMap:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {v1, p0}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_b

    move-object v2, v1

    .line 461
    .end local v1           #enumMap:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    :goto_a
    return-object v2

    .line 460
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 461
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 476
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 477
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 478
    .local v0, keyOrdinal:I
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v1, v1, v0

    .line 480
    .end local v0           #keyOrdinal:I
    :goto_10
    return v1

    .restart local p1
    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x1

    .line 494
    if-nez p1, :cond_19

    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget v1, p0, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v1, :cond_33

    .line 496
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_16

    move v1, v2

    .line 507
    :goto_15
    return v1

    .line 495
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 501
    .end local v0           #i:I
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1a
    iget v1, p0, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v1, :cond_33

    .line 502
    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_30

    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v2

    .line 503
    goto :goto_15

    .line 501
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 507
    :cond_33
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    if-nez v0, :cond_b

    .line 521
    new-instance v0, Ljava/util/EnumMap$EnumMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapEntrySet;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    .line 523
    :cond_b
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 540
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 550
    :goto_5
    return v2

    .line 543
    :cond_6
    instance-of v2, p1, Ljava/util/EnumMap;

    if-nez v2, :cond_f

    .line 544
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 546
    :cond_f
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    move-object v1, v0

    .line 547
    .local v1, enumMap:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v3, v1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v2, v3, :cond_23

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/EnumMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    :cond_23
    move v2, v4

    .line 548
    goto :goto_5

    .line 550
    :cond_25
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    iget-object v3, v1, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v5

    goto :goto_5

    :cond_3b
    move v2, v4

    goto :goto_5
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 567
    const/4 v1, 0x0

    .line 570
    .end local p1
    :goto_7
    return-object v1

    .line 569
    .restart local p1
    :cond_8
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 570
    .local v0, keyOrdinal:I
    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_7
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 584
    new-instance v0, Ljava/util/EnumMap$EnumMapKeySet;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapKeySet;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 586
    :cond_b
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Enum;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

    .line 637
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 653
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v4

    .line 663
    .end local p1
    :goto_8
    return-object v2

    .line 656
    .restart local p1
    :cond_9
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 657
    .local v0, keyOrdinal:I
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_20

    .line 658
    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 659
    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    .line 661
    :cond_20
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 662
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aput-object v4, v2, v0

    move-object v2, v1

    .line 663
    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 674
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    iget v0, p0, Ljava/util/EnumMap;->mappingsCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, this:Ljava/util/EnumMap;,"Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 690
    new-instance v0, Ljava/util/EnumMap$EnumMapValueCollection;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapValueCollection;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    .line 692
    :cond_b
    iget-object v0, p0, Ljava/util/EnumMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
