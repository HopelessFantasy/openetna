.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$SubMapValuesCollection;,
        Ljava/util/TreeMap$SubMapKeySet;,
        Ljava/util/TreeMap$SubMapEntrySet;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$ComparableBoundedValueIterator;,
        Ljava/util/TreeMap$ComparableBoundedKeyIterator;,
        Ljava/util/TreeMap$ComparableBoundedEntryIterator;,
        Ljava/util/TreeMap$ComparableBoundedIterator;,
        Ljava/util/TreeMap$ComparatorBoundedValueIterator;,
        Ljava/util/TreeMap$ComparatorBoundedKeyIterator;,
        Ljava/util/TreeMap$ComparatorBoundedEntryIterator;,
        Ljava/util/TreeMap$ComparatorBoundedIterator;,
        Ljava/util/TreeMap$UnboundedValueIterator;,
        Ljava/util/TreeMap$UnboundedKeyIterator;,
        Ljava/util/TreeMap$UnboundedEntryIterator;,
        Ljava/util/TreeMap$AbstractMapIterator;,
        Ljava/util/TreeMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient root:Ljava/util/TreeMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 668
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 669
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 680
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 681
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
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
    .line 696
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 697
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 698
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 710
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 711
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Map$Entry<TK;+TV;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 713
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+TV;>;"
    new-instance v2, Ljava/util/TreeMap$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 714
    .local v2, last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iput-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 715
    const/4 v4, 0x1

    iput v4, p0, Ljava/util/TreeMap;->size:I

    .line 716
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 717
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+TV;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 718
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+TV;>;"
    new-instance v3, Ljava/util/TreeMap$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 719
    .local v3, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iput-object v2, v3, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 720
    iput-object v3, v2, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 721
    iget v4, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/TreeMap;->size:I

    .line 722
    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->balance(Ljava/util/TreeMap$Entry;)V

    .line 723
    move-object v2, v3

    .line 724
    goto :goto_2d

    .line 726
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;+TV;>;"
    .end local v2           #last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .end local v3           #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_55
    return-void
.end method

.method static synthetic access$000(Ljava/util/TreeMap;)Ljava/util/Comparator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/Comparable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method private containsValue(Ljava/util/TreeMap$Entry;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    const/4 v1, 0x1

    .line 848
    if-nez p2, :cond_9

    iget-object v0, p1, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    if-nez v0, :cond_11

    :cond_7
    move v0, v1

    .line 861
    :goto_8
    return v0

    .line 848
    :cond_9
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 851
    :cond_11
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_1f

    .line 852
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v0, p2}, Ljava/util/TreeMap;->containsValue(Ljava/util/TreeMap$Entry;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    .line 853
    goto :goto_8

    .line 856
    :cond_1f
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_2d

    .line 857
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v0, p2}, Ljava/util/TreeMap;->containsValue(Ljava/util/TreeMap$Entry;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 858
    goto :goto_8

    .line 861
    :cond_2d
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private find(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;
    .registers 8
    .parameter "keyObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 910
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    move-object v0, p1

    .line 911
    .local v0, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x0

    .line 912
    .local v1, object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v4, :cond_a

    .line 913
    invoke-static {v0}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 915
    :cond_a
    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 916
    .local v3, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_c
    if-eqz v3, :cond_2f

    .line 917
    if-eqz v1, :cond_1b

    iget-object v4, v3, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 919
    .local v2, result:I
    :goto_17
    if-nez v2, :cond_25

    move-object v4, v3

    .line 924
    .end local v2           #result:I
    :goto_1a
    return-object v4

    .line 917
    :cond_1b
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v5, v3, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    goto :goto_17

    .line 922
    .restart local v2       #result:I
    :cond_25
    if-gez v2, :cond_2b

    iget-object v4, v3, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    move-object v3, v4

    :goto_2a
    goto :goto_c

    :cond_2b
    iget-object v4, v3, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    move-object v3, v4

    goto :goto_2a

    .line 924
    .end local v2           #result:I
    :cond_2f
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method private fixup(Ljava/util/TreeMap$Entry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 989
    :goto_2
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eq p1, v1, :cond_e1

    iget-boolean v1, p1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_e1

    .line 990
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-ne p1, v1, :cond_77

    .line 991
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 992
    .local v0, w:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-nez v0, :cond_19

    .line 993
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 994
    goto :goto_2

    .line 996
    :cond_19
    iget-boolean v1, v0, Ljava/util/TreeMap$Entry;->color:Z

    if-eqz v1, :cond_31

    .line 997
    iput-boolean v2, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 998
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 999
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->leftRotate(Ljava/util/TreeMap$Entry;)V

    .line 1000
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 1001
    if-nez v0, :cond_31

    .line 1002
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1003
    goto :goto_2

    .line 1006
    :cond_31
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_3b

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_4a

    :cond_3b
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_45

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_4a

    .line 1008
    :cond_45
    iput-boolean v3, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1009
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    goto :goto_2

    .line 1011
    :cond_4a
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_54

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_61

    .line 1012
    :cond_54
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iput-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1013
    iput-boolean v3, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1014
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rightRotate(Ljava/util/TreeMap$Entry;)V

    .line 1015
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 1017
    :cond_61
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    iput-boolean v1, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1018
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1019
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iput-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1020
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->leftRotate(Ljava/util/TreeMap$Entry;)V

    .line 1021
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    goto :goto_2

    .line 1024
    .end local v0           #w:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_77
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1025
    .restart local v0       #w:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-nez v0, :cond_80

    .line 1026
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1027
    goto :goto_2

    .line 1029
    :cond_80
    iget-boolean v1, v0, Ljava/util/TreeMap$Entry;->color:Z

    if-eqz v1, :cond_99

    .line 1030
    iput-boolean v2, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1031
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1032
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rightRotate(Ljava/util/TreeMap$Entry;)V

    .line 1033
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1034
    if-nez v0, :cond_99

    .line 1035
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1036
    goto/16 :goto_2

    .line 1039
    :cond_99
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_a3

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_b3

    :cond_a3
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_ad

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_b3

    .line 1041
    :cond_ad
    iput-boolean v3, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1042
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    goto/16 :goto_2

    .line 1044
    :cond_b3
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_bd

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v1, :cond_ca

    .line 1045
    :cond_bd
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iput-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1046
    iput-boolean v3, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1047
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->leftRotate(Ljava/util/TreeMap$Entry;)V

    .line 1048
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1050
    :cond_ca
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    iput-boolean v1, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 1051
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1052
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iput-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1053
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rightRotate(Ljava/util/TreeMap$Entry;)V

    .line 1054
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    goto/16 :goto_2

    .line 1058
    .end local v0           #w:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_e1
    iput-boolean v2, p1, Ljava/util/TreeMap$Entry;->color:Z

    .line 1059
    return-void
.end method

.method private leftRotate(Ljava/util/TreeMap$Entry;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 1169
    .local v0, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iput-object v1, p1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 1170
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_e

    .line 1171
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    iput-object p1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1173
    :cond_e
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v1, v0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1174
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    if-nez v1, :cond_1d

    .line 1175
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 1183
    :goto_18
    iput-object p1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1184
    iput-object v0, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1185
    return-void

    .line 1177
    :cond_1d
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-ne p1, v1, :cond_28

    .line 1178
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v0, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    goto :goto_18

    .line 1180
    :cond_28
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v0, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_18
.end method

.method static maximum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1188
    .local p0, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_7

    .line 1189
    iget-object p0, p0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_0

    .line 1191
    :cond_7
    return-object p0
.end method

.method static minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_7

    .line 1196
    iget-object p0, p0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    goto :goto_0

    .line 1198
    :cond_7
    return-object p0
.end method

.method static predecessor(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p0, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_b

    .line 1203
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    invoke-static {v1}, Ljava/util/TreeMap;->maximum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v1

    .line 1210
    :goto_a
    return-object v1

    .line 1205
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1206
    .local v0, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_d
    if-eqz v0, :cond_17

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-ne p0, v1, :cond_17

    .line 1207
    move-object p0, v0

    .line 1208
    iget-object v0, v0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    goto :goto_d

    :cond_17
    move-object v1, v0

    .line 1210
    goto :goto_a
.end method

.method private rbInsert(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1287
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, object:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x0

    .line 1288
    .local v1, result:I
    const/4 v3, 0x0

    .line 1289
    .local v3, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget v5, p0, Ljava/util/TreeMap;->size:I

    if-eqz v5, :cond_35

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v5, :cond_f

    .line 1292
    invoke-static {p1}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    .line 1294
    :cond_f
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 1295
    .local v2, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_11
    if-eqz v2, :cond_35

    .line 1296
    move-object v3, v2

    .line 1297
    if-eqz v0, :cond_21

    iget-object v5, v2, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    move v1, v5

    .line 1299
    :goto_1d
    if-nez v1, :cond_2b

    move-object v5, v2

    .line 1319
    .end local v0           #key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    .end local v2           #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_20
    return-object v5

    .line 1297
    .restart local v0       #key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    .restart local v2       #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_21
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v6, v2, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    move v1, v5

    goto :goto_1d

    .line 1302
    :cond_2b
    if-gez v1, :cond_31

    iget-object v5, v2, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    move-object v2, v5

    :goto_30
    goto :goto_11

    :cond_31
    iget-object v5, v2, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    move-object v2, v5

    goto :goto_30

    .line 1306
    .end local v0           #key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    .end local v2           #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_35
    iget v5, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->size:I

    .line 1307
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    .line 1308
    new-instance v4, Ljava/util/TreeMap$Entry;

    invoke-direct {v4, p1}, Ljava/util/TreeMap$Entry;-><init>(Ljava/lang/Object;)V

    .line 1309
    .local v4, z:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-nez v3, :cond_4c

    .line 1310
    iput-object v4, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    move-object v5, v4

    goto :goto_20

    .line 1312
    :cond_4c
    iput-object v3, v4, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1313
    if-gez v1, :cond_57

    .line 1314
    iput-object v4, v3, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1318
    :goto_52
    invoke-virtual {p0, v4}, Ljava/util/TreeMap;->balance(Ljava/util/TreeMap$Entry;)V

    move-object v5, v4

    .line 1319
    goto :goto_20

    .line 1316
    :cond_57
    iput-object v4, v3, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_52
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1534
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1535
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Ljava/util/TreeMap;->size:I

    .line 1536
    const/4 v1, 0x0

    .line 1537
    .local v1, last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    .local v0, i:I
    :goto_c
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2d

    .line 1538
    new-instance v2, Ljava/util/TreeMap$Entry;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap$Entry;-><init>(Ljava/lang/Object;)V

    .line 1539
    .local v2, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    .line 1540
    if-nez v1, :cond_25

    .line 1541
    iput-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 1547
    :goto_23
    move-object v1, v2

    .line 1548
    goto :goto_c

    .line 1543
    :cond_25
    iput-object v1, v2, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1544
    iput-object v2, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 1545
    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->balance(Ljava/util/TreeMap$Entry;)V

    goto :goto_23

    .line 1549
    .end local v2           #node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_2d
    return-void
.end method

.method private rightRotate(Ljava/util/TreeMap$Entry;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1353
    .local v0, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iput-object v1, p1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 1354
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_e

    .line 1355
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    iput-object p1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1357
    :cond_e
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v1, v0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1358
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    if-nez v1, :cond_1d

    .line 1359
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 1367
    :goto_18
    iput-object p1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 1368
    iput-object v0, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1369
    return-void

    .line 1361
    :cond_1d
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-ne p1, v1, :cond_28

    .line 1362
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v0, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_18

    .line 1364
    :cond_28
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v0, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    goto :goto_18
.end method

.method static successor(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1423
    .local p0, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_b

    .line 1424
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    invoke-static {v1}, Ljava/util/TreeMap;->minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v1

    .line 1431
    :goto_a
    return-object v1

    .line 1426
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1427
    .local v0, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_d
    if-eqz v0, :cond_17

    iget-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-ne p0, v1, :cond_17

    .line 1428
    move-object p0, v0

    .line 1429
    iget-object v0, v0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    goto :goto_d

    :cond_17
    move-object v1, v0

    .line 1431
    goto :goto_a
.end method

.method private static toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Comparable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, obj:Ljava/lang/Object;,"TT;"
    check-cast p0, Ljava/lang/Comparable;

    .end local p0           #obj:Ljava/lang/Object;,"TT;"
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1520
    iget v1, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1521
    iget v1, p0, Ljava/util/TreeMap;->size:I

    if-lez v1, :cond_23

    .line 1522
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-static {v1}, Ljava/util/TreeMap;->minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 1523
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_12
    if-eqz v0, :cond_23

    .line 1524
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1525
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1526
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_12

    .line 1529
    .end local v0           #node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_23
    return-void
.end method


# virtual methods
.method balance(Ljava/util/TreeMap$Entry;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 730
    iput-boolean v4, p1, Ljava/util/TreeMap$Entry;->color:Z

    .line 731
    :goto_4
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eq p1, v1, :cond_8d

    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-boolean v1, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-eqz v1, :cond_8d

    .line 732
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v2, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v2, v2, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v2, v2, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-ne v1, v2, :cond_52

    .line 733
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 734
    .local v0, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_35

    iget-boolean v1, v0, Ljava/util/TreeMap$Entry;->color:Z

    if-eqz v1, :cond_35

    .line 735
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 736
    iput-boolean v3, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 737
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v4, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 738
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object p1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    goto :goto_4

    .line 740
    :cond_35
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-ne p1, v1, :cond_40

    .line 741
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 742
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->leftRotate(Ljava/util/TreeMap$Entry;)V

    .line 744
    :cond_40
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 745
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v4, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 746
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rightRotate(Ljava/util/TreeMap$Entry;)V

    goto :goto_4

    .line 749
    .end local v0           #y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_52
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v0, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 750
    .restart local v0       #y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_6f

    iget-boolean v1, v0, Ljava/util/TreeMap$Entry;->color:Z

    if-eqz v1, :cond_6f

    .line 751
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 752
    iput-boolean v3, v0, Ljava/util/TreeMap$Entry;->color:Z

    .line 753
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v4, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 754
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object p1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    goto :goto_4

    .line 756
    :cond_6f
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-ne p1, v1, :cond_7a

    .line 757
    iget-object p1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 758
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rightRotate(Ljava/util/TreeMap$Entry;)V

    .line 760
    :cond_7a
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 761
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-boolean v4, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 762
    iget-object v1, p1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->leftRotate(Ljava/util/TreeMap$Entry;)V

    goto/16 :goto_4

    .line 766
    .end local v0           #y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_8d
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    iput-boolean v3, v1, Ljava/util/TreeMap$Entry;->color:Z

    .line 767
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 778
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 779
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 780
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 781
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 795
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 796
    .local v0, clone:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/TreeMap;->entrySet:Ljava/util/Set;

    .line 797
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eqz v2, :cond_17

    .line 798
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/TreeMap$Entry;->clone(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v2

    iput-object v2, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_17} :catch_19

    :cond_17
    move-object v2, v0

    .line 802
    .end local v0           #clone:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    :goto_18
    return-object v2

    .line 801
    :catch_19
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/CloneNotSupportedException;
    move-object v2, v4

    .line 802
    goto :goto_18
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 813
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 827
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 841
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_b

    .line 842
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/util/TreeMap$Entry;Ljava/lang/Object;)Z

    move-result v0

    .line 844
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
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
    .line 875
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 876
    new-instance v0, Ljava/util/TreeMap$1;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$1;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/Set;

    .line 904
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method findAfter(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;
    .registers 9
    .parameter "keyObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 929
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    move-object v0, p1

    .line 931
    .local v0, key:Ljava/lang/Object;,"TK;"
    const/4 v2, 0x0

    .line 932
    .local v2, object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v5, :cond_a

    .line 933
    invoke-static {v0}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v2

    .line 935
    :cond_a
    iget-object v4, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .local v4, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    .line 936
    .local v1, last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_d
    if-eqz v4, :cond_2f

    .line 937
    if-eqz v2, :cond_1c

    iget-object v5, v4, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 939
    .local v3, result:I
    :goto_18
    if-nez v3, :cond_26

    move-object v5, v4

    .line 949
    .end local v3           #result:I
    :goto_1b
    return-object v5

    .line 937
    :cond_1c
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v6, v4, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v5, v0, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    goto :goto_18

    .line 942
    .restart local v3       #result:I
    :cond_26
    if-gez v3, :cond_2c

    .line 943
    move-object v1, v4

    .line 944
    iget-object v4, v4, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    goto :goto_d

    .line 946
    :cond_2c
    iget-object v4, v4, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_d

    .end local v3           #result:I
    :cond_2f
    move-object v5, v1

    .line 949
    goto :goto_1b
.end method

.method findBefore(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v1, 0x0

    .line 955
    .local v1, object:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v4, :cond_9

    .line 956
    invoke-static {p1}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 958
    :cond_9
    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .local v3, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .line 959
    .local v0, last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_c
    if-eqz v3, :cond_2a

    .line 960
    if-eqz v1, :cond_1c

    iget-object v4, v3, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 962
    .local v2, result:I
    :goto_17
    if-gtz v2, :cond_26

    .line 963
    iget-object v3, v3, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    goto :goto_c

    .line 960
    .end local v2           #result:I
    :cond_1c
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v5, v3, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    goto :goto_17

    .line 965
    .restart local v2       #result:I
    :cond_26
    move-object v0, v3

    .line 966
    iget-object v3, v3, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_c

    .line 969
    .end local v2           #result:I
    :cond_2a
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_d

    .line 982
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-static {v0}, Ljava/util/TreeMap;->minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v0

    .line 984
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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
    .line 1076
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 1077
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 1078
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    .line 1080
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1108
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, endKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_11

    .line 1109
    invoke-static {p1}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 1113
    :goto_b
    new-instance v0, Ljava/util/TreeMap$SubMap;

    invoke-direct {v0, p0, p1}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;)V

    return-object v0

    .line 1111
    :cond_11
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_b
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
    .line 1126
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 1127
    new-instance v0, Ljava/util/TreeMap$2;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$2;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/Set;

    .line 1149
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1161
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_d

    .line 1162
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-static {v0}, Ljava/util/TreeMap;->maximum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v0

    .line 1164
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1232
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rbInsert(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 1233
    .local v0, entry:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    .line 1234
    .local v1, result:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    .line 1235
    return-object v1
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
    .line 1255
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 1256
    return-void
.end method

.method rbDelete(Ljava/util/TreeMap$Entry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, z:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v2, p1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v2, :cond_8

    iget-object v2, p1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-nez v2, :cond_42

    :cond_8
    move-object v1, p1

    .line 1260
    .local v1, y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_9
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v2, :cond_48

    iget-object v2, v1, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    move-object v0, v2

    .line 1261
    .local v0, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :goto_10
    if-eqz v0, :cond_16

    .line 1262
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v2, v0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 1264
    :cond_16
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    if-nez v2, :cond_4c

    .line 1265
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 1271
    :goto_1c
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/TreeMap;->modCount:I

    .line 1272
    if-eq v1, p1, :cond_2c

    .line 1273
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    .line 1274
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    .line 1276
    :cond_2c
    iget-boolean v2, v1, Ljava/util/TreeMap$Entry;->color:Z

    if-nez v2, :cond_3b

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-eqz v2, :cond_3b

    .line 1277
    if-nez v0, :cond_5c

    .line 1278
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    invoke-direct {p0, v2}, Ljava/util/TreeMap;->fixup(Ljava/util/TreeMap$Entry;)V

    .line 1283
    :cond_3b
    :goto_3b
    iget v2, p0, Ljava/util/TreeMap;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/TreeMap;->size:I

    .line 1284
    return-void

    .line 1259
    .end local v0           #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .end local v1           #y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_42
    invoke-static {p1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v2

    move-object v1, v2

    goto :goto_9

    .line 1260
    .restart local v1       #y:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_48
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    move-object v0, v2

    goto :goto_10

    .line 1266
    .restart local v0       #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    :cond_4c
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iget-object v2, v2, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-ne v1, v2, :cond_57

    .line 1267
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v0, v2, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    goto :goto_1c

    .line 1269
    :cond_57
    iget-object v2, v1, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    iput-object v0, v2, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    goto :goto_1c

    .line 1280
    :cond_5c
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixup(Ljava/util/TreeMap$Entry;)V

    goto :goto_3b
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 1339
    iget v2, p0, Ljava/util/TreeMap;->size:I

    if-nez v2, :cond_7

    move-object v2, v3

    .line 1348
    :goto_6
    return-object v2

    .line 1342
    :cond_7
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    .line 1343
    .local v0, node:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    if-nez v0, :cond_f

    move-object v2, v3

    .line 1344
    goto :goto_6

    .line 1346
    :cond_f
    iget-object v1, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    .line 1347
    .local v1, result:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->rbDelete(Ljava/util/TreeMap$Entry;)V

    move-object v2, v1

    .line 1348
    goto :goto_6
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1379
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1410
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    .local p2, endKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_14

    .line 1411
    invoke-static {p1}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_22

    .line 1412
    new-instance v0, Ljava/util/TreeMap$SubMap;

    invoke-direct {v0, p1, p0, p2}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V

    .line 1416
    :goto_13
    return-object v0

    .line 1415
    :cond_14
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_22

    .line 1416
    new-instance v0, Ljava/util/TreeMap$SubMap;

    invoke-direct {v0, p1, p0, p2}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;Ljava/lang/Object;)V

    goto :goto_13

    .line 1419
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1460
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_11

    .line 1461
    invoke-static {p1}, Ljava/util/TreeMap;->toComparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 1465
    :goto_b
    new-instance v0, Ljava/util/TreeMap$SubMap;

    invoke-direct {v0, p1, p0}, Ljava/util/TreeMap$SubMap;-><init>(Ljava/lang/Object;Ljava/util/TreeMap;)V

    return-object v0

    .line 1463
    :cond_11
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_b
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
    .line 1492
    .local p0, this:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 1493
    new-instance v0, Ljava/util/TreeMap$3;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$3;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->valuesCollection:Ljava/util/Collection;

    .line 1515
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
