.class public abstract Ljava/util/prefs/AbstractPreferences;
.super Ljava/util/prefs/Preferences;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;,
        Ljava/util/prefs/AbstractPreferences$NodeAddEvent;,
        Ljava/util/prefs/AbstractPreferences$EventDispatcher;,
        Ljava/util/prefs/AbstractPreferences$Lock;
    }
.end annotation


# static fields
.field private static final dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

.field private static final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cachedNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/prefs/AbstractPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private isRemoved:Z

.field protected final lock:Ljava/lang/Object;

.field protected newNode:Z

.field private nodeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private nodeName:Ljava/lang/String;

.field private parentPref:Ljava/util/prefs/AbstractPreferences;

.field private preferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljava/util/prefs/AbstractPreferences;

.field userNode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    const-string v1, "Preference Event Dispatcher"

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    .line 66
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->setDaemon(Z)V

    .line 67
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->dispatcher:Ljava/util/prefs/AbstractPreferences$EventDispatcher;

    invoke-virtual {v0}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->start()V

    .line 68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/util/prefs/AbstractPreferences$1;

    invoke-direct {v1}, Ljava/util/prefs/AbstractPreferences$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    .line 165
    if-nez p1, :cond_20

    move v0, v3

    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    move v1, v3

    :goto_f
    xor-int/2addr v0, v1

    if-nez v0, :cond_1a

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 166
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_20
    move v0, v2

    .line 165
    goto :goto_8

    :cond_22
    move v1, v2

    goto :goto_f

    .line 168
    :cond_24
    if-nez p1, :cond_53

    move-object v0, p0

    :goto_27
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    .line 171
    iput-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    .line 173
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    .line 174
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    .line 175
    new-instance v0, Ljava/util/prefs/AbstractPreferences$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences$Lock;-><init>(Ljava/util/prefs/AbstractPreferences$1;)V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iget-boolean v0, v0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    .line 177
    return-void

    .line 168
    :cond_53
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    goto :goto_27
.end method

.method static synthetic access$100(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    return-object v0
.end method

.method private checkState()V
    .registers 3

    .prologue
    .line 684
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "prefs.9"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_12
    return-void
.end method

.method private getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 7
    .parameter "createNew"
    .parameter "currentNode"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_14

    .line 632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "prefs.8"

    invoke-static {v2, p3}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :cond_14
    if-eqz p1, :cond_2f

    .line 636
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 637
    .local v0, temp:Ljava/util/prefs/AbstractPreferences;
    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-boolean v1, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz v1, :cond_2e

    iget-object v1, p2, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 639
    invoke-direct {p2, v0}, Ljava/util/prefs/AbstractPreferences;->notifyChildAdded(Ljava/util/prefs/Preferences;)V

    .line 644
    :cond_2e
    :goto_2e
    return-object v0

    .line 642
    .end local v0           #temp:Ljava/util/prefs/AbstractPreferences;
    :cond_2f
    invoke-virtual {p2, p3}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .restart local v0       #temp:Ljava/util/prefs/AbstractPreferences;
    goto :goto_2e
.end method

.method private nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    .registers 10
    .parameter "path"
    .parameter "createNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "/"

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .local v3, st:Ljava/util/StringTokenizer;
    move-object v1, p0

    .line 611
    .local v1, currentNode:Ljava/util/prefs/AbstractPreferences;
    const/4 v4, 0x0

    .line 612
    .local v4, temp:Ljava/util/prefs/AbstractPreferences;
    :goto_9
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2e

    if-eqz v1, :cond_2e

    .line 613
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, name:Ljava/lang/String;
    iget-object v6, v1, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 615
    :try_start_18
    iget-object v5, v1, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v4, v0

    .line 616
    if-nez v4, :cond_28

    .line 617
    invoke-direct {p0, p2, v1, v2}, Ljava/util/prefs/AbstractPreferences;->getNodeFromBackend(ZLjava/util/prefs/AbstractPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v4

    .line 619
    :cond_28
    monitor-exit v6

    .line 621
    move-object v1, v4

    .line 622
    goto :goto_9

    .line 619
    :catchall_2b
    move-exception v5

    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2b

    throw v5

    .line 623
    .end local v2           #name:Ljava/lang/String;
    :cond_2e
    return-object v1
.end method

.method private notifyChildAdded(Ljava/util/prefs/Preferences;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 857
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 858
    .local v0, nce:Ljava/util/prefs/NodeChangeEvent;
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v1

    .line 859
    :try_start_8
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 861
    monitor-exit v1

    .line 862
    return-void

    .line 861
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private notifyChildRemoved(Ljava/util/prefs/Preferences;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 865
    new-instance v0, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    .line 866
    .local v0, nce:Ljava/util/prefs/NodeChangeEvent;
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v1

    .line 867
    :try_start_8
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 869
    monitor-exit v1

    .line 870
    return-void

    .line 869
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 873
    new-instance v0, Ljava/util/prefs/PreferenceChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .local v0, pce:Ljava/util/prefs/PreferenceChangeEvent;
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    monitor-enter v1

    .line 876
    :try_start_8
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->events:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 878
    monitor-exit v1

    .line 879
    return-void

    .line 878
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method private removeNodeImpl()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 765
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 766
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 767
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, childrenNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    array-length v5, v2

    if-ge v3, v5, :cond_28

    .line 769
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_25

    .line 770
    aget-object v5, v2, v3

    invoke-virtual {p0, v5}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 771
    .local v0, child:Ljava/util/prefs/AbstractPreferences;
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    aget-object v6, v2, v3

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .end local v0           #child:Ljava/util/prefs/AbstractPreferences;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 774
    :cond_28
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/prefs/AbstractPreferences;

    .line 776
    .local v1, children:[Ljava/util/prefs/AbstractPreferences;
    const/4 v3, 0x0

    :goto_38
    array-length v5, v1

    if-ge v3, v5, :cond_43

    .line 777
    aget-object v5, v1, v3

    invoke-direct {v5}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    .line 776
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 779
    :cond_43
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    .line 780
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    .line 781
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v5, v5, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    iget-object v6, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_63

    .line 783
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v4, v4, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_62

    .line 784
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v4, p0}, Ljava/util/prefs/AbstractPreferences;->notifyChildRemoved(Ljava/util/prefs/Preferences;)V

    .line 786
    :cond_62
    return-void

    .line 782
    .end local v1           #children:[Ljava/util/prefs/AbstractPreferences;
    .end local v2           #childrenNames:[Ljava/lang/String;
    .end local v3           #i:I
    :catchall_63
    move-exception v5

    :try_start_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v5
.end method

.method private validateName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 596
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1b

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefs.6"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1b
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2f

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefs.7"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_2f
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "/"

    .line 371
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    if-nez v0, :cond_a

    .line 372
    const-string v0, "/"

    move-object v0, v2

    .line 376
    :goto_9
    return-object v0

    .line 373
    :cond_a
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne v0, v1, :cond_26

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 376
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 4
    .parameter "ncl"

    .prologue
    .line 790
    if-nez p1, :cond_8

    .line 791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 793
    :cond_8
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 794
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 795
    :try_start_e
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    monitor-exit v0

    .line 797
    return-void

    .line 796
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 4
    .parameter "pcl"

    .prologue
    .line 801
    if-nez p1, :cond_8

    .line 802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 804
    :cond_8
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 805
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 806
    :try_start_e
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    monitor-exit v0

    .line 808
    return-void

    .line 807
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/util/prefs/AbstractPreferences;

    return-object p0
.end method

.method protected abstract childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public childrenNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 382
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 383
    new-instance v2, Ljava/util/TreeSet;

    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->cachedNode:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 384
    .local v2, result:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v4, v1

    if-ge v0, v4, :cond_21

    .line 386
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 388
    :cond_21
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    monitor-exit v3

    return-object p0

    .line 389
    .end local v0           #i:I
    .end local v1           #names:[Ljava/lang/String;
    .end local v2           #result:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v4

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method protected abstract childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public clear()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, keyList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_13

    .line 397
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 399
    :cond_13
    monitor-exit v2

    .line 400
    return-void

    .line 399
    .end local v0           #i:I
    .end local v1           #keyList:[Ljava/lang/String;
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "ostream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 405
    if-nez p1, :cond_e

    .line 407
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefs.5"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_e
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 410
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    .line 412
    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "ostream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_e

    .line 419
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefs.5"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_e
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 422
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/util/prefs/XMLParser;->exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V

    .line 423
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    .line 429
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    .line 430
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 432
    .local v0, cc:[Ljava/util/prefs/AbstractPreferences;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 433
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/util/prefs/AbstractPreferences;->flush()V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 429
    .end local v0           #cc:[Ljava/util/prefs/AbstractPreferences;
    .end local v1           #i:I
    :catchall_17
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v3

    .line 435
    .restart local v0       #cc:[Ljava/util/prefs/AbstractPreferences;
    .restart local v1       #i:I
    :cond_1a
    return-void
.end method

.method protected abstract flushSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 439
    if-nez p1, :cond_8

    .line 440
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 443
    :cond_8
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 444
    :try_start_b
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1a

    .line 446
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_17

    move-result-object v1

    .line 450
    .local v1, result:Ljava/lang/String;
    :goto_12
    :try_start_12
    monitor-exit v2

    .line 451
    if-nez v1, :cond_1d

    move-object v2, p2

    :goto_16
    return-object v2

    .line 447
    .end local v1           #result:Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_12

    .line 450
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:Ljava/lang/String;
    :catchall_1a
    move-exception v3

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v3

    .restart local v1       #result:Ljava/lang/String;
    :cond_1d
    move-object v2, v1

    .line 451
    goto :goto_16
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 456
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_9

    move v1, p2

    .line 464
    :goto_8
    return v1

    .line 459
    :cond_9
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 460
    const/4 v1, 0x1

    goto :goto_8

    .line 461
    :cond_13
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 462
    const/4 v1, 0x0

    goto :goto_8

    :cond_1d
    move v1, p2

    .line 464
    goto :goto_8
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .registers 8
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 470
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, svalue:Ljava/lang/String;
    if-nez v3, :cond_9

    move-object v4, p2

    .line 487
    :goto_8
    return-object v4

    .line 474
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    .line 475
    const/4 v4, 0x0

    new-array v4, v4, [B

    goto :goto_8

    .line 479
    :cond_13
    :try_start_13
    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 480
    .local v0, bavalue:[B
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_20

    move-object v4, p2

    .line 481
    goto :goto_8

    .line 483
    :cond_20
    invoke-static {v0}, Lorg/apache/harmony/luni/util/Base64;->decode([B)[B
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_26

    move-result-object v1

    .end local v0           #bavalue:[B
    .local v1, dres:[B
    :goto_24
    move-object v4, v1

    .line 487
    goto :goto_8

    .line 484
    .end local v1           #dres:[B
    :catch_26
    move-exception v4

    move-object v2, v4

    .line 485
    .local v2, e:Ljava/lang/Exception;
    move-object v1, p2

    .restart local v1       #dres:[B
    goto :goto_24
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, result:Ljava/util/prefs/AbstractPreferences;
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, childrenNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v4, v0

    if-ge v1, v4, :cond_1b

    .line 216
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 217
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v2

    .line 221
    :cond_1b
    monitor-exit v3

    return-object v2

    .line 215
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 222
    .end local v0           #childrenNames:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #result:Ljava/util/prefs/AbstractPreferences;
    :catchall_20
    move-exception v4

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v4
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 10
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 492
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, result:Ljava/lang/String;
    if-nez v3, :cond_9

    move-wide v4, p2

    .line 502
    :goto_8
    return-wide v4

    .line 498
    :cond_9
    :try_start_9
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_f

    move-result-wide v0

    .local v0, dres:D
    :goto_d
    move-wide v4, v0

    .line 502
    goto :goto_8

    .line 499
    .end local v0           #dres:D
    :catch_f
    move-exception v2

    .line 500
    .local v2, e:Ljava/lang/NumberFormatException;
    move-wide v0, p2

    .restart local v0       #dres:D
    goto :goto_d
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 7
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 507
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, result:Ljava/lang/String;
    if-nez v2, :cond_9

    move v3, p2

    .line 517
    :goto_8
    return v3

    .line 513
    :cond_9
    :try_start_9
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_f

    move-result v1

    .local v1, fres:F
    :goto_d
    move v3, v1

    .line 517
    goto :goto_8

    .line 514
    .end local v1           #fres:F
    :catch_f
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .restart local v1       #fres:F
    goto :goto_d
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 7
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 522
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, result:Ljava/lang/String;
    if-nez v2, :cond_9

    move v3, p2

    .line 532
    :goto_8
    return v3

    .line 528
    :cond_9
    :try_start_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_f

    move-result v1

    .local v1, ires:I
    :goto_d
    move v3, v1

    .line 532
    goto :goto_8

    .line 529
    .end local v1           #ires:I
    :catch_f
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .restart local v1       #ires:I
    goto :goto_d
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 10
    .parameter "key"
    .parameter "deflt"

    .prologue
    .line 537
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, result:Ljava/lang/String;
    if-nez v3, :cond_9

    move-wide v4, p2

    .line 547
    :goto_8
    return-wide v4

    .line 543
    :cond_9
    :try_start_9
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_f

    move-result-wide v1

    .local v1, lres:J
    :goto_d
    move-wide v4, v1

    .line 547
    goto :goto_8

    .line 544
    .end local v1           #lres:J
    :catch_f
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v1, p2

    .restart local v1       #lres:J
    goto :goto_d
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->isRemoved:Z

    monitor-exit v0

    return v1

    .line 237
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isUserNode()Z
    .registers 3

    .prologue
    .line 552
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keys()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 559
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 560
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method protected abstract keysSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .registers 6
    .parameter "name"

    .prologue
    const-string v2, "/"

    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, startNode:Ljava/util/prefs/AbstractPreferences;
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 572
    :try_start_6
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 573
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    .line 574
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 575
    monitor-exit v2

    move-object v2, p0

    .line 592
    :goto_16
    return-object v2

    .line 576
    :cond_17
    const-string v3, "/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 577
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    monitor-exit v2

    move-object v2, v3

    goto :goto_16

    .line 579
    :cond_24
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 580
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 581
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 585
    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_3e

    .line 586
    const/4 v0, 0x0

    .line 588
    .local v0, result:Ljava/util/prefs/Preferences;
    const/4 v2, 0x1

    :try_start_36
    invoke-direct {v1, p1, v2}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_39
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_36 .. :try_end_39} :catch_41

    move-result-object v0

    :goto_3a
    move-object v2, v0

    .line 592
    goto :goto_16

    .line 583
    .end local v0           #result:Ljava/util/prefs/Preferences;
    :cond_3c
    move-object v1, p0

    goto :goto_33

    .line 585
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v3

    .line 589
    .restart local v0       #result:Ljava/util/prefs/Preferences;
    :catch_41
    move-exception v2

    goto :goto_3a
.end method

.method public nodeExists(Ljava/lang/String;)Z
    .registers 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "/"

    const-string v3, ""

    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, startNode:Ljava/util/prefs/AbstractPreferences;
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 651
    :try_start_a
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 652
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 653
    monitor-exit v3

    move v3, v5

    .line 673
    :goto_1a
    return v3

    .line 656
    :cond_1b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "prefs.9"

    invoke-static {v5}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v4

    .line 658
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Ljava/util/prefs/AbstractPreferences;->validateName(Ljava/lang/String;)V

    .line 659
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 660
    :cond_3d
    monitor-exit v3

    move v3, v6

    goto :goto_1a

    .line 662
    :cond_40
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 663
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 664
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 668
    :goto_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_27

    .line 670
    const/4 v3, 0x0

    :try_start_51
    invoke-direct {v2, p1, v3}, Ljava/util/prefs/AbstractPreferences;->nodeImpl(Ljava/lang/String;Z)Ljava/util/prefs/AbstractPreferences;
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_54} :catch_5d

    move-result-object v1

    .line 671
    .local v1, result:Ljava/util/prefs/Preferences;
    if-nez v1, :cond_5b

    move v3, v5

    goto :goto_1a

    .line 666
    .end local v1           #result:Ljava/util/prefs/Preferences;
    :cond_59
    move-object v2, p0

    goto :goto_4f

    .restart local v1       #result:Ljava/util/prefs/Preferences;
    :cond_5b
    move v3, v6

    .line 671
    goto :goto_1a

    .line 672
    .end local v1           #result:Ljava/util/prefs/Preferences;
    :catch_5d
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v3, v5

    .line 673
    goto :goto_1a
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 680
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 692
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 693
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 695
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_20

    .line 696
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 698
    :cond_20
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_23
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 700
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 702
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void

    .line 701
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 707
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 714
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-static {p2, v1}, Lorg/apache/harmony/luni/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    .line 718
    return-void

    .line 715
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 716
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 722
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 728
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 734
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 740
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, sval:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 746
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 748
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    .line 749
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->notifyPreferenceChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void

    .line 749
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeNode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne v0, p0, :cond_10

    .line 757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "prefs.A"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_10
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parentPref:Ljava/util/prefs/AbstractPreferences;

    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_15
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeImpl()V

    .line 761
    monitor-exit v0

    .line 762
    return-void

    .line 761
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .registers 5
    .parameter "ncl"

    .prologue
    .line 812
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 813
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 815
    :try_start_6
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, pos:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 816
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 819
    .end local v0           #pos:I
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v2

    .line 818
    .restart local v0       #pos:I
    :cond_18
    :try_start_18
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 819
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 820
    return-void
.end method

.method protected abstract removeNodeSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .registers 5
    .parameter "pcl"

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 825
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 827
    :try_start_6
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, pos:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 828
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 831
    .end local v0           #pos:I
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v2

    .line 830
    .restart local v0       #pos:I
    :cond_18
    :try_start_18
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->preferenceChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 831
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    .line 832
    return-void
.end method

.method protected abstract removeSpi(Ljava/lang/String;)V
.end method

.method public sync()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 837
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->checkState()V

    .line 838
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    .line 839
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 840
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 842
    .local v0, cc:[Ljava/util/prefs/AbstractPreferences;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 843
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/util/prefs/AbstractPreferences;->sync()V

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 839
    .end local v0           #cc:[Ljava/util/prefs/AbstractPreferences;
    .end local v1           #i:I
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v3

    .line 845
    .restart local v0       #cc:[Ljava/util/prefs/AbstractPreferences;
    .restart local v1       #i:I
    :cond_1d
    return-void
.end method

.method protected abstract syncSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 850
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "User"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    const-string v1, " Preference Node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 850
    :cond_21
    const-string v1, "System"

    goto :goto_d
.end method
