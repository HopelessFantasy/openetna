.class Ljava/util/concurrent/CopyOnWriteArrayList$SubList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;
    }
.end annotation


# instance fields
.field private final list:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private volatile read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

.field private final start:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    .registers 8
    .parameter "list"
    .parameter "fromIdx"
    .parameter "toIdx"

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 847
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v0

    .line 848
    .local v0, data:[Ljava/lang/Object;
    sub-int v1, p3, p2

    .line 849
    .local v1, size:I
    array-length v2, v0

    invoke-static {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexExlusive(II)V

    .line 850
    array-length v2, v0

    invoke-static {p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 851
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 852
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    .line 853
    return-void
.end method

.method static synthetic access$200(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 831
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    return v0
.end method

.method private checkModifications()V
    .registers 3

    .prologue
    .line 862
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 863
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 865
    :cond_12
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 6
    .parameter "index"
    .parameter "object"

    .prologue
    .line 937
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 939
    :try_start_9
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 940
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 941
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 942
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_38

    .line 944
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 946
    return-void

    .line 944
    :catchall_38
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 949
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 951
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 952
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 953
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_36

    .line 954
    const/4 v0, 0x1

    .line 956
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_36
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 8
    .parameter "index"
    .parameter "collection"

    .prologue
    .line 1089
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1091
    :try_start_9
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexInclusive(II)V

    .line 1092
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 1093
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1094
    .local v0, d:I
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 1095
    .local v1, rt:Z
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v3, v3, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_45

    .line 1099
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .end local v0           #d:I
    .end local v1           #rt:Z
    :catchall_45
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter "c"

    .prologue
    .line 961
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 963
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 964
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 965
    .local v0, d:I
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v3, v3, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    .line 966
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_42

    .line 968
    const/4 v1, 0x1

    .line 970
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .end local v0           #d:I
    :catchall_42
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 975
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 977
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 978
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeRange(II)Ljava/lang/Object;

    .line 979
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2f

    .line 981
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 983
    return-void

    .line 981
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 986
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter "c"

    .prologue
    .line 990
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 991
    .local v0, b:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget v3, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;[Ljava/lang/Object;II)Z

    move-result v1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .parameter "index"

    .prologue
    .line 894
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 895
    .local v0, data:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_3b

    .line 896
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 898
    :try_start_15
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 899
    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_32

    .line 900
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_27

    .line 903
    :catchall_27
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_32
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 906
    :cond_3b
    iget v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexExlusive(II)V

    .line 907
    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .parameter "o"

    .prologue
    .line 995
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 996
    .local v0, b:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget v4, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    sub-int v1, v2, v3

    .line 998
    .local v1, ind:I
    if-gez v1, :cond_14

    const/4 v2, -0x1

    :goto_13
    return v2

    :cond_14
    move v2, v1

    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1002
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 1006
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;ILjava/util/concurrent/CopyOnWriteArrayList$SubListReadData;Ljava/util/concurrent/CopyOnWriteArrayList$1;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .parameter "o"

    .prologue
    .line 1010
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 1011
    .local v0, b:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    iget-object v2, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget v4, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    sub-int v1, v2, v3

    .line 1014
    .local v1, ind:I
    if-gez v1, :cond_14

    const/4 v2, -0x1

    :goto_13
    return v2

    :cond_14
    move v2, v1

    goto :goto_13
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 5

    .prologue
    .line 1018
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;ILjava/util/concurrent/CopyOnWriteArrayList$SubListReadData;Ljava/util/concurrent/CopyOnWriteArrayList$1;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .parameter "startIdx"

    .prologue
    .line 871
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList$SubListIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$SubList;ILjava/util/concurrent/CopyOnWriteArrayList$SubListReadData;Ljava/util/concurrent/CopyOnWriteArrayList$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .parameter "index"

    .prologue
    .line 921
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 923
    :try_start_9
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexExlusive(II)V

    .line 924
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 925
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 926
    .local v0, obj:Ljava/lang/Object;
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_39

    .line 929
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0           #obj:Ljava/lang/Object;
    :catchall_39
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1022
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1024
    :try_start_b
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 1025
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->indexOf(Ljava/lang/Object;)I
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_4d

    move-result v0

    .line 1026
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    .line 1035
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v4

    :goto_1f
    return v2

    .line 1029
    :cond_20
    :try_start_20
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    move v1, v5

    .line 1030
    .local v1, result:Z
    :goto_2c
    if-eqz v1, :cond_40

    .line 1031
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v3, v3, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    sub-int/2addr v3, v5

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_4d

    .line 1035
    :cond_40
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v1

    goto :goto_1f

    .end local v1           #result:Z
    :cond_4b
    move v1, v4

    .line 1029
    goto :goto_2c

    .line 1035
    .end local v0           #i:I
    :catchall_4d
    move-exception v2

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter "c"

    .prologue
    .line 1040
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1042
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 1043
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v3, v3, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;II)I

    move-result v0

    .line 1044
    .local v0, removed:I
    if-lez v0, :cond_37

    .line 1045
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_42

    .line 1047
    const/4 v1, 0x1

    .line 1050
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1052
    :goto_36
    return v1

    .line 1050
    :cond_37
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1052
    const/4 v1, 0x0

    goto :goto_36

    .line 1050
    .end local v0           #removed:I
    :catchall_42
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter "c"

    .prologue
    .line 1056
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1058
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 1059
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v3, v3, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;II)I

    move-result v0

    .line 1060
    .local v0, removed:I
    if-lez v0, :cond_37

    .line 1061
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_42

    .line 1063
    const/4 v1, 0x1

    .line 1067
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_36
    return v1

    .line 1065
    :cond_37
    const/4 v1, 0x0

    .line 1067
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_36

    .end local v0           #removed:I
    :catchall_42
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 878
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 880
    :try_start_9
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v1, v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->checkIndexExlusive(II)V

    .line 881
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->checkModifications()V

    .line 882
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 883
    .local v0, result:Ljava/lang/Object;
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v2, v2, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->getData()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_37

    .line 886
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0           #result:Ljava/lang/Object;
    :catchall_37
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->access$100(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    iget v0, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1072
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1076
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 1077
    .local v0, r:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget v3, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter "a"

    .prologue
    .line 1081
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->read:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;

    .line 1082
    .local v0, r:Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
    iget-object v1, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubList;->start:I

    iget v3, v0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    invoke-static {p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;[Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
