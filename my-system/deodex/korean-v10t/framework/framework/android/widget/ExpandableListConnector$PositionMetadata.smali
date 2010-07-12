.class public Landroid/widget/ExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

.field public position:Landroid/widget/ExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 935
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 4

    .prologue
    .line 980
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 981
    :try_start_3
    sget-object v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 982
    sget-object v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 986
    .local v0, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_22

    .line 987
    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    move-object v1, v0

    .line 988
    .end local v0           #pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_19
    return-object v1

    .line 984
    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/widget/ExpandableListConnector$PositionMetadata;

    invoke-direct {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v1

    move-object v1, v2

    goto :goto_19

    .line 986
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v2
.end method

.method static obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 8
    .parameter "flatListPos"
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "groupMetadata"
    .parameter "groupInsertIndex"

    .prologue
    .line 971
    invoke-static {}, Landroid/widget/ExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 972
    .local v0, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 973
    iput-object p4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 974
    iput p5, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 975
    return-object v0
.end method

.method private resetState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 958
    iput-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 959
    iput-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 960
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 961
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .registers 2

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 992
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 993
    :try_start_3
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_11

    .line 994
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_11
    monitor-exit v0

    .line 997
    return-void

    .line 996
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
