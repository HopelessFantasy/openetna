.class public final Landroid/database/sqlite/SQLiteDebug;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDebug$PagerStats;
    }
.end annotation


# static fields
.field public static final DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

.field public static final DEBUG_LOCK_TIME_TRACKING:Z

.field public static final DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

.field public static final DEBUG_SQL_STATEMENTS:Z

.field private static sNumActiveCursorsFinalized:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput v0, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static native getHeapAllocatedSize()J
.end method

.method public static native getHeapDirtyPages([I)V
.end method

.method public static native getHeapFreeSize()J
.end method

.method public static native getHeapSize()J
.end method

.method public static getNumActiveCursorsFinalized()I
    .registers 1

    .prologue
    .line 101
    sget v0, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    return v0
.end method

.method public static native getPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V
.end method

.method static declared-synchronized notifyActiveCursorFinalized()V
    .registers 2

    .prologue
    .line 105
    const-class v0, Landroid/database/sqlite/SQLiteDebug;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/database/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 106
    monitor-exit v0

    return-void

    .line 105
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method
