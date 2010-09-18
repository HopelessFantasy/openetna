.class final Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/CellLayout$CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VacantCell"
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x64

.field private static sAcquiredCount:I

.field private static final sLock:Ljava/lang/Object;

.field private static sRoot:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;


# instance fields
.field cellX:I

.field cellY:I

.field private next:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

.field spanX:I

.field spanY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 889
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    .line 891
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    .registers 4

    .prologue
    .line 897
    sget-object v1, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_3
    sget-object v2, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    if-nez v2, :cond_f

    .line 899
    new-instance v2, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    invoke-direct {v2}, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;-><init>()V

    monitor-exit v1

    move-object v1, v2

    .line 906
    :goto_e
    return-object v1

    .line 902
    :cond_f
    sget-object v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 903
    .local v0, info:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    iget-object v2, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->next:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    sput-object v2, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 904
    sget v2, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    .line 906
    monitor-exit v1

    move-object v1, v0

    goto :goto_e

    .line 907
    .end local v0           #info:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method


# virtual methods
.method release()V
    .registers 4

    .prologue
    .line 911
    sget-object v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_3
    sget v1, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_15

    .line 913
    sget v1, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    .line 914
    sget-object v1, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    iput-object v1, p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->next:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 915
    sput-object p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 917
    :cond_15
    monitor-exit v0

    .line 918
    return-void

    .line 917
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VacantCell[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
