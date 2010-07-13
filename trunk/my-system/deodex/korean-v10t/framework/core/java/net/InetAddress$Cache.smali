.class Ljava/net/InetAddress$Cache;
.super Ljava/lang/Object;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# static fields
.field private static head:Ljava/net/InetAddress$CacheElement;

.field private static maxSize:I

.field private static size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 701
    const/4 v0, 0x5

    sput v0, Ljava/net/InetAddress$Cache;->maxSize:I

    .line 703
    const/4 v0, 0x0

    sput v0, Ljava/net/InetAddress$Cache;->size:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized add(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 713
    const-class v1, Ljava/net/InetAddress$Cache;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Ljava/net/InetAddress;->cacheElement()Ljava/net/InetAddress$CacheElement;

    move-result-object v0

    .line 714
    .local v0, newElement:Ljava/net/InetAddress$CacheElement;
    sget v2, Ljava/net/InetAddress$Cache;->size:I

    sget v3, Ljava/net/InetAddress$Cache;->maxSize:I

    if-ge v2, v3, :cond_1b

    .line 715
    sget v2, Ljava/net/InetAddress$Cache;->size:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Ljava/net/InetAddress$Cache;->size:I

    .line 719
    :goto_13
    sget-object v2, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;

    iput-object v2, v0, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;

    .line 720
    sput-object v0, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 721
    monitor-exit v1

    return-void

    .line 717
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljava/net/InetAddress$Cache;->deleteTail()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_13

    .line 713
    .end local v0           #newElement:Ljava/net/InetAddress$CacheElement;
    :catchall_1f
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static declared-synchronized clear()V
    .registers 2

    .prologue
    .line 708
    const-class v0, Ljava/net/InetAddress$Cache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput v1, Ljava/net/InetAddress$Cache;->size:I

    .line 709
    const/4 v1, 0x0

    sput-object v1, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 710
    monitor-exit v0

    return-void

    .line 708
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized deleteTail()V
    .registers 5

    .prologue
    .line 740
    const-class v2, Ljava/net/InetAddress$Cache;

    monitor-enter v2

    :try_start_3
    sget v3, Ljava/net/InetAddress$Cache;->size:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-nez v3, :cond_9

    .line 754
    :goto_7
    monitor-exit v2

    return-void

    .line 743
    :cond_9
    const/4 v3, 0x1

    :try_start_a
    sget v4, Ljava/net/InetAddress$Cache;->size:I

    if-ne v3, v4, :cond_11

    .line 744
    const/4 v3, 0x0

    sput-object v3, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;

    .line 747
    :cond_11
    const/4 v1, 0x0

    .line 748
    .local v1, previous:Ljava/net/InetAddress$CacheElement;
    sget-object v0, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;

    .line 749
    .local v0, current:Ljava/net/InetAddress$CacheElement;
    :goto_14
    iget-object v3, v0, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;

    if-eqz v3, :cond_1c

    .line 750
    move-object v1, v0

    .line 751
    iget-object v0, v0, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;

    goto :goto_14

    .line 753
    :cond_1c
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_20

    goto :goto_7

    .line 740
    .end local v0           #current:Ljava/net/InetAddress$CacheElement;
    .end local v1           #previous:Ljava/net/InetAddress$CacheElement;
    :catchall_20
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method static declared-synchronized get(Ljava/lang/String;)Ljava/net/InetAddress$CacheElement;
    .registers 6
    .parameter "name"

    .prologue
    .line 724
    const-class v3, Ljava/net/InetAddress$Cache;

    monitor-enter v3

    const/4 v2, 0x0

    .line 725
    .local v2, previous:Ljava/net/InetAddress$CacheElement;
    :try_start_4
    sget-object v0, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;

    .line 726
    .local v0, current:Ljava/net/InetAddress$CacheElement;
    const/4 v1, 0x1

    .line 728
    .local v1, notFound:Z
    :goto_7
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/net/InetAddress$CacheElement;->hostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    move v1, v4

    :goto_15
    if-eqz v1, :cond_1e

    .line 729
    move-object v2, v0

    .line 730
    iget-object v0, v0, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_28

    goto :goto_7

    .line 728
    :cond_1b
    const/4 v4, 0x0

    move v1, v4

    goto :goto_15

    .line 732
    :cond_1e
    if-eqz v1, :cond_23

    .line 733
    const/4 v4, 0x0

    .line 736
    :goto_21
    monitor-exit v3

    return-object v4

    .line 735
    :cond_23
    :try_start_23
    invoke-static {v0, v2}, Ljava/net/InetAddress$Cache;->moveToHead(Ljava/net/InetAddress$CacheElement;Ljava/net/InetAddress$CacheElement;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_28

    move-object v4, v0

    .line 736
    goto :goto_21

    .line 724
    .end local v0           #current:Ljava/net/InetAddress$CacheElement;
    .end local v1           #notFound:Z
    :catchall_28
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private static declared-synchronized moveToHead(Ljava/net/InetAddress$CacheElement;Ljava/net/InetAddress$CacheElement;)V
    .registers 4
    .parameter "element"
    .parameter "elementPredecessor"

    .prologue
    .line 758
    const-class v0, Ljava/net/InetAddress$Cache;

    monitor-enter v0

    if-nez p1, :cond_9

    .line 759
    :try_start_5
    sput-object p0, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_14

    .line 765
    :goto_7
    monitor-exit v0

    return-void

    .line 761
    :cond_9
    :try_start_9
    iget-object v1, p0, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;

    iput-object v1, p1, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;

    .line 762
    sget-object v1, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;

    iput-object v1, p0, Ljava/net/InetAddress$CacheElement;->next:Ljava/net/InetAddress$CacheElement;

    .line 763
    sput-object p0, Ljava/net/InetAddress$Cache;->head:Ljava/net/InetAddress$CacheElement;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    goto :goto_7

    .line 758
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method
