.class public final Ldalvik/system/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# static fields
.field private static final THE_ONE:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ldalvik/system/VMRuntime;

    invoke-direct {v0}, Ldalvik/system/VMRuntime;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getRuntime()Ldalvik/system/VMRuntime;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method private native nativeMinimumHeapSize(JZ)J
.end method

.method private native nativeSetTargetHeapUtilization(F)V
.end method


# virtual methods
.method public native gcSoftReferences()V
.end method

.method public native getExternalBytesAllocated()J
.end method

.method public getMinimumHeapSize()J
    .registers 4

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/VMRuntime;->nativeMinimumHeapSize(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getTargetHeapUtilization()F
.end method

.method public native runFinalizationSync()V
.end method

.method public declared-synchronized setMinimumHeapSize(J)J
    .registers 5
    .parameter "size"

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Ldalvik/system/VMRuntime;->nativeMinimumHeapSize(JZ)J
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTargetHeapUtilization(F)F
    .registers 7
    .parameter "newTarget"

    .prologue
    .line 71
    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_e

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_27

    .line 72
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range (0,1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_27
    monitor-enter p0

    .line 80
    :try_start_28
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v0

    .line 81
    .local v0, oldTarget:F
    invoke-direct {p0, p1}, Ldalvik/system/VMRuntime;->nativeSetTargetHeapUtilization(F)V

    .line 82
    monitor-exit p0

    return v0

    .line 83
    .end local v0           #oldTarget:F
    :catchall_31
    move-exception v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public native trackExternalAllocation(J)Z
.end method

.method public native trackExternalFree(J)V
.end method
