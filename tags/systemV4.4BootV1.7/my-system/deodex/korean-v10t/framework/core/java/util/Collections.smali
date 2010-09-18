.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedListIterator;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$ReverseComparatorWithComparator;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$CopiesList;
    }
.end annotation


# static fields
.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 178
    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/Collections$EmptySet;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 194
    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    return-void
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;[TT;)Z"
        }
    .end annotation

    .prologue
    .line 2634
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 2635
    .local v1, modified:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_f

    .line 2636
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2635
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2638
    :cond_f
    return v1
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    const/4 v8, 0x1

    .line 1451
    if-nez p0, :cond_9

    .line 1452
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1454
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1455
    const/4 v7, -0x1

    .line 1484
    :goto_10
    return v7

    .line 1458
    :cond_11
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v3, v0

    .line 1459
    .local v3, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TT;>;"
    instance-of v7, p0, Ljava/util/RandomAccess;

    if-nez v7, :cond_42

    .line 1460
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1461
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    :cond_1d
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1463
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .local v6, result:I
    if-gtz v6, :cond_1d

    .line 1464
    if-nez v6, :cond_34

    .line 1465
    invoke-interface {v2}, Ljava/util/ListIterator;->previousIndex()I

    move-result v7

    goto :goto_10

    .line 1467
    :cond_34
    invoke-interface {v2}, Ljava/util/ListIterator;->previousIndex()I

    move-result v7

    neg-int v7, v7

    sub-int/2addr v7, v8

    goto :goto_10

    .line 1470
    .end local v6           #result:I
    :cond_3b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    neg-int v7, v7

    sub-int/2addr v7, v8

    goto :goto_10

    .line 1473
    .end local v2           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    :cond_42
    const/4 v4, 0x0

    .local v4, low:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, mid:I
    sub-int v1, v5, v8

    .local v1, high:I
    const/4 v6, -0x1

    .line 1474
    .restart local v6       #result:I
    :goto_4a
    if-gt v4, v1, :cond_64

    .line 1475
    add-int v7, v4, v1

    shr-int/lit8 v5, v7, 0x1

    .line 1476
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_5d

    .line 1477
    add-int/lit8 v4, v5, 0x1

    goto :goto_4a

    .line 1478
    :cond_5d
    if-nez v6, :cond_61

    move v7, v5

    .line 1479
    goto :goto_10

    .line 1481
    :cond_61
    sub-int v1, v5, v8

    goto :goto_4a

    .line 1484
    :cond_64
    neg-int v7, v5

    if-gez v6, :cond_69

    :goto_67
    sub-int/2addr v7, v8

    goto :goto_10

    :cond_69
    const/4 v8, 0x2

    goto :goto_67
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const/4 v6, 0x1

    .line 1511
    if-nez p2, :cond_8

    .line 1512
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    .line 1540
    :goto_7
    return v5

    .line 1515
    :cond_8
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-nez v5, :cond_35

    .line 1516
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1517
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+TT;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1519
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .local v4, result:I
    if-gtz v4, :cond_10

    .line 1520
    if-nez v4, :cond_27

    .line 1521
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    goto :goto_7

    .line 1523
    :cond_27
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v6

    goto :goto_7

    .line 1526
    .end local v4           #result:I
    :cond_2e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v6

    goto :goto_7

    .line 1529
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<+TT;>;"
    :cond_35
    const/4 v2, 0x0

    .local v2, low:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, mid:I
    sub-int v0, v3, v6

    .local v0, high:I
    const/4 v4, -0x1

    .line 1530
    .restart local v4       #result:I
    :goto_3d
    if-gt v2, v0, :cond_57

    .line 1531
    add-int v5, v2, v0

    shr-int/lit8 v3, v5, 0x1

    .line 1532
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_50

    .line 1533
    add-int/lit8 v2, v3, 0x1

    goto :goto_3d

    .line 1534
    :cond_50
    if-nez v4, :cond_54

    move v5, v3

    .line 1535
    goto :goto_7

    .line 1537
    :cond_54
    sub-int v0, v3, v6

    goto :goto_3d

    .line 1540
    :cond_57
    neg-int v5, v3

    if-gez v4, :cond_5c

    :goto_5a
    sub-int/2addr v5, v6

    goto :goto_7

    :cond_5c
    const/4 v6, 0x2

    goto :goto_5a
.end method

.method static checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2681
    .local p0, obj:Ljava/lang/Object;,"TE;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2684
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "luni.05"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2687
    :cond_16
    return-object p0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2516
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2553
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2554
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 2556
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2536
    .local p0, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collections$1;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2573
    .local p0, s:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2593
    .local p0, m:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2611
    .local p0, s:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p0, destination:Ljava/util/List;,"Ljava/util/List<-TT;>;"
    .local p1, source:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 1563
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1565
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1566
    .local v2, srcIt:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1567
    .local v0, destIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<-TT;>;"
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1569
    :try_start_1e
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_21} :catch_29

    .line 1573
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_18

    .line 1570
    :catch_29
    move-exception v1

    .line 1571
    .local v1, e:Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1575
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_30
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2655
    .local p0, c1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, c2:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_8

    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_12

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v2, v3, :cond_15

    .line 2657
    :cond_12
    move-object v1, p0

    .line 2658
    .local v1, tmp:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    move-object p0, p1

    .line 2659
    move-object p1, v1

    .line 2661
    .end local v1           #tmp:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2662
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2663
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2664
    const/4 v2, 0x0

    .line 2667
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x1

    goto :goto_2a
.end method

.method public static final emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2474
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static final emptyMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2498
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final emptySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2486
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1586
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    move-object v0, p0

    .line 1587
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    new-instance v1, Ljava/util/Collections$1;

    invoke-direct {v1, v0}, Ljava/util/Collections$1;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1612
    .local p0, list:Ljava/util/List;,"Ljava/util/List<-TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1613
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<-TT;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1614
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1615
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 1617
    :cond_11
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2448
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-nez p0, :cond_8

    .line 2449
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2451
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2452
    const/4 v3, 0x0

    .line 2462
    :goto_f
    return v3

    .line 2454
    :cond_10
    const/4 v2, 0x0

    .line 2455
    .local v2, result:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2456
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2457
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2458
    .local v0, e:Ljava/lang/Object;
    if-nez p1, :cond_26

    if-nez v0, :cond_15

    .line 2459
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2458
    :cond_26
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_23

    .end local v0           #e:Ljava/lang/Object;
    :cond_2d
    move v3, v2

    .line 2462
    goto :goto_f
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p1, sublist:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 2082
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 2083
    .local v5, size:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2085
    .local v7, sublistSize:I
    if-le v7, v5, :cond_e

    move v8, v9

    .line 2132
    :cond_d
    :goto_d
    return v8

    .line 2089
    :cond_e
    if-eqz v7, :cond_d

    .line 2094
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2095
    .local v2, firstObj:Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2096
    .local v3, index:I
    if-ne v3, v9, :cond_1e

    move v8, v9

    .line 2097
    goto :goto_d

    .line 2130
    .local v4, listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 2100
    .end local v4           #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_1e
    if-ge v3, v5, :cond_6b

    sub-int v8, v5, v3

    if-lt v8, v7, :cond_6b

    .line 2101
    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2103
    .restart local v4       #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    if-nez v2, :cond_48

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1c

    .line 2108
    :goto_30
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 2109
    .local v6, sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .line 2110
    .local v0, difFound:Z
    :cond_36
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 2111
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2112
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_53

    move v8, v9

    .line 2113
    goto :goto_d

    .line 2103
    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_48
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_30

    .line 2115
    .restart local v0       #difFound:Z
    .restart local v1       #element:Ljava/lang/Object;
    .restart local v6       #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_53
    if-nez v1, :cond_60

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_36

    .line 2117
    :goto_5b
    const/4 v0, 0x1

    .line 2123
    .end local v1           #element:Ljava/lang/Object;
    :cond_5c
    if-nez v0, :cond_1c

    move v8, v3

    .line 2124
    goto :goto_d

    .line 2115
    .restart local v1       #element:Ljava/lang/Object;
    :cond_60
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_5b

    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v4           #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_6b
    move v8, v9

    .line 2132
    goto :goto_d
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p1, sublist:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2151
    .local v7, sublistSize:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 2153
    .local v5, size:I
    if-le v7, v5, :cond_e

    move v8, v9

    .line 2197
    :goto_d
    return v8

    .line 2157
    :cond_e
    if-nez v7, :cond_12

    move v8, v5

    .line 2158
    goto :goto_d

    .line 2162
    :cond_12
    sub-int v8, v7, v10

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2163
    .local v3, lastObj:Ljava/lang/Object;
    invoke-interface {p0, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2165
    .local v2, index:I
    :goto_1c
    if-le v2, v9, :cond_71

    add-int/lit8 v8, v2, 0x1

    if-lt v8, v7, :cond_71

    .line 2166
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p0, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2168
    .local v4, listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    if-nez v3, :cond_49

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_53

    .line 2172
    :cond_30
    sub-int v8, v7, v10

    invoke-interface {p1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 2174
    .local v6, sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .line 2175
    .local v0, difFound:Z
    :cond_37
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 2176
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 2177
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-nez v8, :cond_56

    move v8, v9

    .line 2178
    goto :goto_d

    .line 2168
    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_49
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 2195
    :cond_53
    add-int/lit8 v2, v2, -0x1

    .line 2196
    goto :goto_1c

    .line 2180
    .restart local v0       #difFound:Z
    .restart local v1       #element:Ljava/lang/Object;
    .restart local v6       #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_56
    if-nez v1, :cond_66

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_37

    .line 2182
    :goto_5e
    const/4 v0, 0x1

    .line 2188
    .end local v1           #element:Ljava/lang/Object;
    :cond_5f
    if-nez v0, :cond_53

    .line 2189
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v8

    goto :goto_d

    .line 2180
    .restart local v1       #element:Ljava/lang/Object;
    :cond_66
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    goto :goto_5e

    .end local v0           #difFound:Z
    .end local v1           #element:Ljava/lang/Object;
    .end local v4           #listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    .end local v6           #sublistIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_71
    move v8, v9

    .line 2197
    goto :goto_d
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2211
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2212
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_5
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2213
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2215
    :cond_13
    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1633
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1634
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    .local v2, max:Ljava/lang/Object;,"TT;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1636
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1637
    .local v3, next:Ljava/lang/Object;,"TT;"
    move-object v0, v2

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_8

    .line 1638
    move-object v2, v3

    goto :goto_8

    .line 1641
    .end local v3           #next:Ljava/lang/Object;,"TT;"
    :cond_1e
    return-object v2
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1660
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1661
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1662
    .local v1, max:Ljava/lang/Object;,"TT;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1663
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1664
    .local v2, next:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_8

    .line 1665
    move-object v1, v2

    goto :goto_8

    .line 1668
    .end local v2           #next:Ljava/lang/Object;,"TT;"
    :cond_1a
    return-object v1
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1685
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1686
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1687
    .local v2, min:Ljava/lang/Object;,"TT;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1688
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1689
    .local v3, next:Ljava/lang/Object;,"TT;"
    move-object v0, v2

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_8

    .line 1690
    move-object v2, v3

    goto :goto_8

    .line 1693
    .end local v3           #next:Ljava/lang/Object;,"TT;"
    :cond_1e
    return-object v2
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1712
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1713
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1714
    .local v1, min:Ljava/lang/Object;,"TT;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1715
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1716
    .local v2, next:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_8

    .line 1717
    move-object v1, v2

    goto :goto_8

    .line 1720
    .end local v2           #next:Ljava/lang/Object;,"TT;"
    :cond_1a
    return-object v1
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter "length"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1737
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 1998
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    .local p2, obj2:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 2000
    .local v0, found:Z
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    .line 2001
    const/4 v0, 0x1

    .line 2002
    invoke-interface {p0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2004
    :cond_d
    return v0
.end method

.method public static reverse(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1752
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1753
    .local v5, size:I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1754
    .local v2, front:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1756
    .local v0, back:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    div-int/lit8 v6, v5, 0x2

    if-ge v4, v6, :cond_22

    .line 1757
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1758
    .local v3, frontNext:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 1759
    .local v1, backPrev:Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1760
    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1756
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1762
    .end local v1           #backPrev:Ljava/lang/Object;
    .end local v3           #frontNext:Ljava/lang/Object;
    :cond_22
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1775
    new-instance v0, Ljava/util/Collections$ReverseComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Collections$ReverseComparator;-><init>(Ljava/util/Collections$1;)V

    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1794
    .local p0, c:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_7

    .line 1795
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    .line 1797
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/Collections$ReverseComparatorWithComparator;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparatorWithComparator;-><init>(Ljava/util/Comparator;)V

    goto :goto_6
.end method

.method public static rotate(Ljava/util/List;I)V
    .registers 14
    .parameter
    .parameter "dist"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p0, lst:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v11, 0x0

    .line 2024
    move-object v4, p0

    .line 2025
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 2028
    .local v6, size:I
    if-nez v6, :cond_9

    .line 2065
    :cond_8
    :goto_8
    return-void

    .line 2034
    :cond_9
    if-lez p1, :cond_32

    .line 2035
    rem-int v5, p1, v6

    .line 2040
    .local v5, normdist:I
    :goto_d
    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_8

    .line 2044
    instance-of v10, v4, Ljava/util/RandomAccess;

    if-eqz v10, :cond_39

    .line 2047
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2048
    .local v9, temp:Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, index:I
    const/4 v0, 0x0

    .line 2049
    .local v0, beginIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v6, :cond_8

    .line 2050
    add-int v10, v3, v5

    rem-int v3, v10, v6

    .line 2051
    invoke-interface {v4, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 2052
    if-ne v3, v0, :cond_2f

    .line 2053
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 2054
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2049
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2037
    .end local v0           #beginIndex:I
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #normdist:I
    .end local v9           #temp:Ljava/lang/Object;
    :cond_32
    rem-int v10, p1, v6

    mul-int/lit8 v10, v10, -0x1

    sub-int v5, v6, v10

    .restart local v5       #normdist:I
    goto :goto_d

    .line 2058
    :cond_39
    sub-int v10, v6, v5

    rem-int v1, v10, v6

    .line 2059
    .local v1, divideIndex:I
    invoke-interface {v4, v11, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 2060
    .local v7, sublist1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 2061
    .local v8, sublist2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2062
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2063
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_8
.end method

.method public static shuffle(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1811
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 1812
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .registers 11
    .parameter
    .parameter "random"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v8, 0x1

    .line 1829
    instance-of v7, p0, Ljava/util/RandomAccess;

    if-nez v7, :cond_3b

    .line 1830
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1831
    .local v0, array:[Ljava/lang/Object;
    array-length v7, v0

    sub-int v1, v7, v8

    .local v1, i:I
    :goto_c
    if-lez v1, :cond_24

    .line 1832
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    rem-int v3, v7, v8

    .line 1833
    .local v3, index:I
    if-gez v3, :cond_19

    .line 1834
    neg-int v3, v3

    .line 1836
    :cond_19
    aget-object v6, v0, v1

    .line 1837
    .local v6, temp:Ljava/lang/Object;
    aget-object v7, v0, v3

    aput-object v7, v0, v1

    .line 1838
    aput-object v6, v0, v3

    .line 1831
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1841
    .end local v3           #index:I
    .end local v6           #temp:Ljava/lang/Object;
    :cond_24
    const/4 v1, 0x0

    .line 1842
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 1844
    .local v4, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :goto_29
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 1845
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1846
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v7, v0, v1

    invoke-interface {v4, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_29

    .line 1849
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v4           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Object;>;"
    :cond_3b
    move-object v5, p0

    .line 1850
    .local v5, rawList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int v1, v7, v8

    .restart local v1       #i:I
    :goto_42
    if-lez v1, :cond_5d

    .line 1851
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    rem-int v3, v7, v8

    .line 1852
    .restart local v3       #index:I
    if-gez v3, :cond_4f

    .line 1853
    neg-int v3, v3

    .line 1855
    :cond_4f
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1850
    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 1858
    .end local v3           #index:I
    .end local v5           #rawList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5d
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1870
    .local p0, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1883
    .local p0, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1898
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1914
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1915
    .local v0, array:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1916
    const/4 v1, 0x0

    .line 1917
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1918
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local v3, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    :goto_c
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1919
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1920
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object p0, v0, v1

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {v3, p0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_c

    .line 1922
    :cond_20
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1939
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1940
    .local v0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1941
    const/4 v1, 0x0

    .line 1942
    .local v1, i:I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1943
    .local v3, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    :goto_14
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1944
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1945
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_14

    .line 1947
    :cond_26
    return-void
.end method

.method public static swap(Ljava/util/List;II)V
    .registers 5
    .parameter
    .parameter "index1"
    .parameter "index2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 1967
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    if-nez p0, :cond_8

    .line 1968
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1970
    :cond_8
    if-ne p1, p2, :cond_b

    .line 1975
    :goto_a
    return-void

    .line 1973
    :cond_b
    move-object v0, p0

    .line 1974
    .local v0, rawList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2229
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_8

    .line 2230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2232
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2245
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-nez p0, :cond_8

    .line 2246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2248
    :cond_8
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_12

    .line 2249
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2251
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    goto :goto_11
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2264
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_8

    .line 2265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2267
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2280
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez p0, :cond_8

    .line 2281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2283
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2297
    .local p0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    if-nez p0, :cond_8

    .line 2298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2300
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2313
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_8

    .line 2314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2316
    :cond_8
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2332
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-nez p0, :cond_8

    .line 2333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2335
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2350
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    if-nez p0, :cond_8

    .line 2351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2353
    :cond_8
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_12

    .line 2354
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2356
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    goto :goto_11
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2372
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    if-nez p0, :cond_8

    .line 2373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2375
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2390
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    if-nez p0, :cond_8

    .line 2391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2393
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2409
    .local p0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    if-nez p0, :cond_8

    .line 2410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2412
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2426
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    if-nez p0, :cond_8

    .line 2427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2429
    :cond_8
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
