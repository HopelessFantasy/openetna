.class public Landroid/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStorageEngine$DayStats;,
        Landroid/content/SyncStorageEngine$SyncHistoryItem;,
        Landroid/content/SyncStorageEngine$AuthorityInfo;,
        Landroid/content/SyncStorageEngine$AccountInfo;,
        Landroid/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field public static final CHANGE_ACTIVE:I = 0x4

.field public static final CHANGE_ALL:I = 0x7fffffff

.field public static final CHANGE_PENDING:I = 0x2

.field public static final CHANGE_SETTINGS:I = 0x1

.field public static final CHANGE_STATUS:I = 0x8

.field private static final DEBUG:Z = false

.field private static final DEBUG_FILE:Z = false

.field public static final ERROR_AUTHENTICATION:I = 0x2

.field public static final ERROR_CONFLICT:I = 0x5

.field public static final ERROR_INTERNAL:I = 0x8

.field public static final ERROR_IO:I = 0x3

.field public static final ERROR_PARSE:I = 0x4

.field public static final ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final EVENTS:[Ljava/lang/String; = null

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0xf

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x1

.field public static final SOURCES:[Ljava/lang/String; = null

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static volatile sSyncStorageEngine:Landroid/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveSync:Landroid/content/ActiveSyncInfo;

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

.field private mListenForTickles:Z

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Lcom/android/internal/os/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Lcom/android/internal/os/AtomicFile;

.field private final mStatusFile:Lcom/android/internal/os/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/SyncStorageEngine;->EVENTS:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    sput-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 202
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 205
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    .line 213
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 219
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 223
    const/16 v3, 0x1c

    new-array v3, v3, [Landroid/content/SyncStorageEngine$DayStats;

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    .line 258
    iput v4, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 260
    iput v4, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 261
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/SyncStorageEngine;->mListenForTickles:Z

    .line 264
    iput-object p1, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 265
    sput-object p0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 267
    const-string v3, "GMT+0"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 269
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v2, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "sync"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .local v1, syncDir:Ljava/io/File;
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "accounts.xml"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    .line 273
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "status.bin"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    .line 274
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "pending.bin"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    .line 275
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "stats.bin"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    .line 277
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 278
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 279
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 280
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 281
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readLegacyAccountInfoLocked()V

    .line 282
    return-void
.end method

.method private appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V
    .registers 8
    .parameter "op"

    .prologue
    .line 1438
    const/4 v2, 0x0

    .line 1440
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1c

    move-result-object v2

    .line 1448
    :try_start_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1449
    .local v3, out:Landroid/os/Parcel;
    invoke-direct {p0, p1, v3}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 1450
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1451
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_31
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_22

    .line 1456
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_36

    .line 1460
    .end local v3           #out:Landroid/os/Parcel;
    :goto_1b
    return-void

    .line 1441
    :catch_1c
    move-exception v4

    move-object v0, v4

    .line 1443
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    goto :goto_1b

    .line 1452
    .end local v0           #e:Ljava/io/IOException;
    :catch_22
    move-exception v4

    move-object v1, v4

    .line 1453
    .local v1, e1:Ljava/io/IOException;
    :try_start_24
    const-string v4, "SyncManager"

    const-string v5, "Error writing pending operations"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_31

    .line 1456
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1b

    .line 1457
    :catch_2f
    move-exception v4

    goto :goto_1b

    .line 1455
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_31
    move-exception v4

    .line 1456
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_38

    .line 1458
    :goto_35
    throw v4

    .line 1457
    .restart local v3       #out:Landroid/os/Parcel;
    :catch_36
    move-exception v4

    goto :goto_1b

    .end local v3           #out:Landroid/os/Parcel;
    :catch_38
    move-exception v5

    goto :goto_35
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .registers 4
    .parameter "bundle"

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, flatData:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1466
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    return-object v0

    .line 1469
    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    const-string v5, "SyncManager"

    .line 962
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 963
    .local v0, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_2d

    .line 964
    if-eqz p3, :cond_2b

    .line 965
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object v2, v4

    .line 977
    :goto_2c
    return-object v2

    .line 969
    :cond_2d
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 970
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_57

    .line 971
    if-eqz p3, :cond_55

    .line 972
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    move-object v2, v4

    .line 974
    goto :goto_2c

    :cond_57
    move-object v2, v1

    .line 977
    goto :goto_2c
.end method

.method private getCurrentDayLocked()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 941
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 942
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 943
    .local v0, dayOfYear:I
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 944
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    .line 945
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 946
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Landroid/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 947
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    .line 949
    :cond_3c
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1159
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "ident"
    .parameter "doWrite"

    .prologue
    .line 982
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 983
    .local v1, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_14

    .line 984
    new-instance v1, Landroid/content/SyncStorageEngine$AccountInfo;

    .end local v1           #account:Landroid/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v1, p1}, Landroid/content/SyncStorageEngine$AccountInfo;-><init>(Ljava/lang/String;)V

    .line 985
    .restart local v1       #account:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    :cond_14
    iget-object v4, v1, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 988
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_4a

    .line 989
    if-gez p3, :cond_36

    .line 991
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 992
    .local v0, N:I
    const/4 p3, 0x0

    .line 993
    const/4 v3, 0x0

    .local v3, i:I
    :goto_28
    if-ge v3, v0, :cond_36

    .line 994
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStorageEngine$AuthorityInfo;

    iget v4, v4, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v4, p3, :cond_4b

    .line 1000
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_36
    new-instance v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine$AuthorityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1001
    .restart local v2       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v1, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    if-eqz p4, :cond_4a

    .line 1004
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1008
    :cond_4a
    return-object v2

    .line 997
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_4b
    add-int/lit8 p3, p3, 0x1

    .line 993
    add-int/lit8 v3, v3, 0x1

    goto :goto_28
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .parameter "authorityId"

    .prologue
    .line 1012
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1013
    .local v0, status:Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_14

    .line 1014
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0           #status:Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1015
    .restart local v0       #status:Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1017
    :cond_14
    return-object v0
.end method

.method public static getSingleton()Landroid/content/SyncStorageEngine;
    .registers 2

    .prologue
    .line 296
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-nez v0, :cond_c

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_c
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 289
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-eqz v0, :cond_c

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_c
    new-instance v0, Landroid/content/SyncStorageEngine;

    invoke-direct {v0, p0}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 293
    return-void
.end method

.method public static newTestInstance(Landroid/content/Context;)Landroid/content/SyncStorageEngine;
    .registers 2
    .parameter "context"

    .prologue
    .line 285
    new-instance v0, Landroid/content/SyncStorageEngine;

    invoke-direct {v0, p0}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private readAccountInfoLocked()V
    .registers 15

    .prologue
    .line 1039
    const/4 v6, 0x0

    .line 1041
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v11, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 1043
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1044
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v9, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1045
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1046
    .local v5, eventType:I
    :goto_13
    const/4 v11, 0x2

    if-eq v5, v11, :cond_1b

    .line 1047
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_13

    .line 1049
    :cond_1b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1050
    .local v10, tagName:Ljava/lang/String;
    const-string v11, "accounts"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 1051
    const/4 v11, 0x0

    const-string v12, "listen-for-tickles"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1053
    .local v8, listen:Ljava/lang/String;
    if-eqz v8, :cond_36

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9f

    :cond_36
    const/4 v11, 0x1

    :goto_37
    iput-boolean v11, p0, Landroid/content/SyncStorageEngine;->mListenForTickles:Z

    .line 1055
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1057
    :cond_3d
    const/4 v11, 0x2

    if-ne v5, v11, :cond_92

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_92

    .line 1059
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1060
    const-string v11, "authority"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_50} :catch_d0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_50} :catch_e1

    move-result v11

    if-eqz v11, :cond_92

    .line 1061
    const/4 v7, -0x1

    .line 1063
    .local v7, id:I
    const/4 v11, 0x0

    :try_start_55
    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_5e} :catch_10a
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_5e} :catch_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_5e} :catch_d0
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_e1

    move-result v7

    .line 1068
    :goto_5f
    if-ltz v7, :cond_92

    .line 1069
    const/4 v11, 0x0

    :try_start_62
    const-string v12, "account"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, accountName:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "authority"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, authorityName:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "enabled"

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1075
    .local v4, enabled:Ljava/lang/String;
    iget-object v11, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1079
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_85

    .line 1081
    const/4 v11, 0x0

    invoke-direct {p0, v0, v2, v7, v11}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1084
    :cond_85
    if-eqz v1, :cond_a3

    .line 1085
    if-eqz v4, :cond_8f

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a1

    :cond_8f
    const/4 v11, 0x1

    :goto_90
    iput-boolean v11, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1095
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #authorityName:Ljava/lang/String;
    .end local v4           #enabled:Ljava/lang/String;
    .end local v7           #id:I
    :cond_92
    :goto_92
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_95
    .catchall {:try_start_62 .. :try_end_95} :catchall_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_95} :catch_d0
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_95} :catch_e1

    move-result v5

    .line 1096
    const/4 v11, 0x1

    if-ne v5, v11, :cond_3d

    .line 1104
    .end local v8           #listen:Ljava/lang/String;
    :cond_99
    if-eqz v6, :cond_9e

    .line 1106
    :try_start_9b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_103

    .line 1111
    .end local v5           #eventType:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tagName:Ljava/lang/String;
    :cond_9e
    :goto_9e
    return-void

    .line 1053
    .restart local v5       #eventType:I
    .restart local v8       #listen:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #tagName:Ljava/lang/String;
    :cond_9f
    const/4 v11, 0x0

    goto :goto_37

    .line 1085
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #authorityName:Ljava/lang/String;
    .restart local v4       #enabled:Ljava/lang/String;
    .restart local v7       #id:I
    :cond_a1
    const/4 v11, 0x0

    goto :goto_90

    .line 1088
    :cond_a3
    :try_start_a3
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure adding authority: account="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " auth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " enabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_a3 .. :try_end_cf} :catchall_fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_cf} :catch_d0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_cf} :catch_e1

    goto :goto_92

    .line 1098
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #authorityName:Ljava/lang/String;
    .end local v4           #enabled:Ljava/lang/String;
    .end local v5           #eventType:I
    .end local v7           #id:I
    .end local v8           #listen:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tagName:Ljava/lang/String;
    :catch_d0
    move-exception v11

    move-object v3, v11

    .line 1099
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d2
    const-string v11, "SyncManager"

    const-string v12, "Error reading accounts"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_fc

    .line 1104
    if-eqz v6, :cond_9e

    .line 1106
    :try_start_db
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_9e

    .line 1107
    :catch_df
    move-exception v11

    goto :goto_9e

    .line 1100
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_e1
    move-exception v11

    move-object v3, v11

    .line 1101
    .local v3, e:Ljava/io/IOException;
    if-nez v6, :cond_f4

    :try_start_e5
    const-string v11, "SyncManager"

    const-string v12, "No initial accounts"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_fc

    .line 1104
    :goto_ec
    if-eqz v6, :cond_9e

    .line 1106
    :try_start_ee
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_9e

    .line 1107
    :catch_f2
    move-exception v11

    goto :goto_9e

    .line 1102
    :cond_f4
    :try_start_f4
    const-string v11, "SyncManager"

    const-string v12, "Error reading accounts"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fb
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_fc

    goto :goto_ec

    .line 1104
    .end local v3           #e:Ljava/io/IOException;
    :catchall_fc
    move-exception v11

    if-eqz v6, :cond_102

    .line 1106
    :try_start_ff
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_105

    .line 1108
    :cond_102
    :goto_102
    throw v11

    .line 1107
    .restart local v5       #eventType:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #tagName:Ljava/lang/String;
    :catch_103
    move-exception v11

    goto :goto_9e

    .end local v5           #eventType:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tagName:Ljava/lang/String;
    :catch_105
    move-exception v12

    goto :goto_102

    .line 1066
    .restart local v5       #eventType:I
    .restart local v7       #id:I
    .restart local v8       #listen:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #tagName:Ljava/lang/String;
    :catch_107
    move-exception v11

    goto/16 :goto_5f

    .line 1065
    :catch_10a
    move-exception v11

    goto/16 :goto_5f
.end method

.method private readLegacyAccountInfoLocked()V
    .registers 27

    .prologue
    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string v8, "syncmanager.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 1174
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_12

    .line 1274
    :cond_11
    :goto_11
    return-void

    .line 1177
    :cond_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 1178
    .local v22, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1180
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_19
    move-object/from16 v0, v22

    move-object v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_20} :catch_2c2

    move-result-object v6

    .line 1185
    :goto_21
    if-eqz v6, :cond_11

    .line 1188
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1189
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v7, "stats, status"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1190
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1191
    .local v20, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "_id"

    const-string v8, "status._id as _id"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v7, "account"

    const-string v8, "stats.account as account"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string v7, "authority"

    const-string v8, "stats.authority as authority"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v7, "totalElapsedTime"

    const-string v8, "totalElapsedTime"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v7, "numSyncs"

    const-string v8, "numSyncs"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string v7, "numSourceLocal"

    const-string v8, "numSourceLocal"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string v7, "numSourcePoll"

    const-string v8, "numSourcePoll"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v7, "numSourceServer"

    const-string v8, "numSourceServer"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v7, "numSourceUser"

    const-string v8, "numSourceUser"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v7, "lastSuccessSource"

    const-string v8, "lastSuccessSource"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string v7, "lastSuccessTime"

    const-string v8, "lastSuccessTime"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string v7, "lastFailureSource"

    const-string v8, "lastFailureSource"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string v7, "lastFailureTime"

    const-string v8, "lastFailureTime"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string v7, "lastFailureMesg"

    const-string v8, "lastFailureMesg"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string v7, "pending"

    const-string v8, "pending"

    move-object/from16 v0, v20

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1207
    const-string v7, "stats._id = status.stats_id"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1208
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1209
    .local v16, c:Landroid/database/Cursor;
    :cond_ec
    :goto_ec
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_21a

    .line 1210
    const-string v7, "account"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1211
    .local v13, accountName:Ljava/lang/String;
    const-string v7, "authority"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1212
    .local v15, authorityName:Ljava/lang/String;
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v14

    .line 1214
    .local v14, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v14, :cond_ec

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 1216
    .local v19, i:I
    const/16 v18, 0x0

    .line 1217
    .local v18, found:Z
    const/16 v24, 0x0

    .line 1218
    .local v24, st:Landroid/content/SyncStatusInfo;
    :cond_12d
    if-lez v19, :cond_14a

    .line 1219
    add-int/lit8 v19, v19, -0x1

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #st:Landroid/content/SyncStatusInfo;
    check-cast v24, Landroid/content/SyncStatusInfo;

    .line 1221
    .restart local v24       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move v7, v0

    iget v8, v14, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v7, v8, :cond_12d

    .line 1222
    const/16 v18, 0x1

    .line 1226
    :cond_14a
    if-nez v18, :cond_164

    .line 1227
    new-instance v24, Landroid/content/SyncStatusInfo;

    .end local v24           #st:Landroid/content/SyncStatusInfo;
    iget v7, v14, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v24

    move v1, v7

    invoke-direct {v0, v1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1228
    .restart local v24       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object v7, v0

    iget v8, v14, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1230
    :cond_164
    const-string v7, "totalElapsedTime"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1231
    const-string v7, "numSyncs"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1232
    const-string v7, "numSourceLocal"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 1233
    const-string v7, "numSourcePoll"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 1234
    const-string v7, "numSourceServer"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 1235
    const-string v7, "numSourceUser"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 1236
    const-string v7, "lastSuccessSource"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1237
    const-string v7, "lastSuccessTime"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1238
    const-string v7, "lastFailureSource"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1239
    const-string v7, "lastFailureTime"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1240
    const-string v7, "lastFailureMesg"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1241
    const-string v7, "pending"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_218

    const/4 v7, 0x1

    :goto_211
    move v0, v7

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_ec

    :cond_218
    const/4 v7, 0x0

    goto :goto_211

    .line 1245
    .end local v13           #accountName:Ljava/lang/String;
    .end local v14           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v15           #authorityName:Ljava/lang/String;
    .end local v18           #found:Z
    .end local v19           #i:I
    .end local v24           #st:Landroid/content/SyncStatusInfo;
    :cond_21a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1248
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1249
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v7, "settings"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1250
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1251
    :cond_231
    :goto_231
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2a9

    .line 1252
    const-string v7, "name"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1253
    .local v21, name:Ljava/lang/String;
    const-string v7, "value"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1254
    .local v25, value:Ljava/lang/String;
    if-eqz v21, :cond_231

    .line 1255
    const-string v7, "listen_for_tickles"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_276

    .line 1256
    if-eqz v25, :cond_26c

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_274

    :cond_26c
    const/4 v7, 0x1

    :goto_26d
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->setListenForNetworkTickles(Z)V

    goto :goto_231

    :cond_274
    const/4 v7, 0x0

    goto :goto_26d

    .line 1258
    :cond_276
    const-string v7, "sync_provider_"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_231

    .line 1259
    const-string v7, "sync_provider_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v21

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1261
    .local v23, provider:Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz v25, :cond_29c

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a7

    :cond_29c
    const/4 v8, 0x1

    :goto_29d
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v23

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->setSyncProviderAutomatically(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_231

    :cond_2a7
    const/4 v8, 0x0

    goto :goto_29d

    .line 1266
    .end local v21           #name:Ljava/lang/String;
    .end local v23           #provider:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    :cond_2a9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1268
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1270
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1271
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1272
    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_11

    .line 1182
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v16           #c:Landroid/database/Cursor;
    .end local v20           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2c2
    move-exception v7

    goto/16 :goto_21
.end method

.method private readPendingOperationsLocked()V
    .registers 16

    .prologue
    const-string v14, "SyncManager"

    .line 1351
    :try_start_2
    iget-object v11, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v3

    .line 1352
    .local v3, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 1353
    .local v7, in:Landroid/os/Parcel;
    const/4 v11, 0x0

    array-length v12, v3

    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1354
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1355
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1356
    .local v0, SIZE:I
    :cond_19
    :goto_19
    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ge v11, v0, :cond_44

    .line 1357
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1358
    .local v10, version:I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_45

    .line 1359
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown pending operation version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; dropping all ops"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    .end local v0           #SIZE:I
    .end local v3           #data:[B
    .end local v7           #in:Landroid/os/Parcel;
    .end local v10           #version:I
    :cond_44
    :goto_44
    return-void

    .line 1363
    .restart local v0       #SIZE:I
    .restart local v3       #data:[B
    .restart local v7       #in:Landroid/os/Parcel;
    .restart local v10       #version:I
    :cond_45
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1364
    .local v2, authorityId:I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1365
    .local v9, syncSource:I
    invoke-virtual {v7}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1366
    .local v6, flatExtras:[B
    iget-object v11, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1367
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_19

    .line 1368
    const/4 v5, 0x0

    .line 1369
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v6, :cond_62

    .line 1370
    invoke-static {v6}, Landroid/content/SyncStorageEngine;->unflattenBundle([B)Landroid/os/Bundle;

    move-result-object v5

    .line 1372
    :cond_62
    new-instance v8, Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v11, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct {v8, v11, v9, v12, v5}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1375
    .local v8, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iput v2, v8, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 1376
    iput-object v6, v8, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 1381
    iget-object v11, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_74} :catch_75

    goto :goto_19

    .line 1384
    .end local v0           #SIZE:I
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #authorityId:I
    .end local v3           #data:[B
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v6           #flatExtras:[B
    .end local v7           #in:Landroid/os/Parcel;
    .end local v8           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .end local v9           #syncSource:I
    .end local v10           #version:I
    :catch_75
    move-exception v11

    move-object v4, v11

    .line 1385
    .local v4, e:Ljava/io/IOException;
    const-string v11, "SyncManager"

    const-string v11, "No initial pending operations"

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private readStatisticsLocked()V
    .registers 12

    .prologue
    const/16 v9, 0x64

    const-string v10, "SyncManager"

    .line 1500
    :try_start_4
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1501
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1502
    .local v4, in:Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1503
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1505
    const/4 v5, 0x0

    .line 1506
    .local v5, index:I
    :cond_18
    :goto_18
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, token:I
    if-eqz v6, :cond_71

    .line 1507
    const/16 v7, 0x65

    if-eq v6, v7, :cond_24

    if-ne v6, v9, :cond_59

    .line 1509
    :cond_24
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1510
    .local v1, day:I
    if-ne v6, v9, :cond_30

    .line 1511
    const/16 v7, 0x7d9

    sub-int v7, v1, v7

    add-int/lit16 v1, v7, 0x37a5

    .line 1513
    :cond_30
    new-instance v2, Landroid/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1514
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1515
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1516
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1517
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 1518
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_18

    .line 1519
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 1520
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1524
    .end local v1           #day:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_59
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_71} :catch_72

    .line 1531
    .end local v0           #data:[B
    .end local v4           #in:Landroid/os/Parcel;
    .end local v5           #index:I
    .end local v6           #token:I
    :cond_71
    :goto_71
    return-void

    .line 1528
    :catch_72
    move-exception v7

    move-object v3, v7

    .line 1529
    .local v3, e:Ljava/io/IOException;
    const-string v7, "SyncManager"

    const-string v7, "No initial statistics"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method private readStatusLocked()V
    .registers 10

    .prologue
    const-string v8, "SyncManager"

    .line 1285
    :try_start_2
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1286
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1287
    .local v2, in:Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1288
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1290
    :cond_15
    :goto_15
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, token:I
    if-eqz v4, :cond_42

    .line 1291
    const/16 v5, 0x64

    if-ne v4, v5, :cond_43

    .line 1292
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 1293
    .local v3, status:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_15

    .line 1294
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1297
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_15

    .line 1305
    .end local v0           #data:[B
    .end local v2           #in:Landroid/os/Parcel;
    .end local v3           #status:Landroid/content/SyncStatusInfo;
    .end local v4           #token:I
    :catch_39
    move-exception v5

    move-object v1, v5

    .line 1306
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SyncManager"

    const-string v5, "No initial status"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    .end local v1           #e:Ljava/io/IOException;
    :cond_42
    :goto_42
    return-void

    .line 1301
    .restart local v0       #data:[B
    .restart local v2       #in:Landroid/os/Parcel;
    .restart local v4       #token:I
    :cond_43
    :try_start_43
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5b} :catch_39

    goto :goto_42
.end method

.method private reportChange(I)V
    .registers 9
    .parameter "which"

    .prologue
    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 329
    :try_start_4
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4c

    move-result v0

    .local v0, i:I
    move-object v4, v3

    .line 330
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v4, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_b
    :goto_b
    if-lez v0, :cond_30

    .line 331
    add-int/lit8 v0, v0, -0x1

    .line 332
    :try_start_f
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 333
    .local v2, mask:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, p1

    if-eqz v6, :cond_b

    .line 336
    if-nez v4, :cond_66

    .line 337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_63

    .line 339
    .end local v4           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_25
    :try_start_25
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_4c

    move-object v4, v3

    .line 340
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v4       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_b

    .line 341
    .end local v2           #mask:Ljava/lang/Integer;
    :cond_30
    :try_start_30
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 342
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_63

    .line 346
    if-eqz v4, :cond_4f

    .line 347
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .end local p0
    :goto_3c
    if-lez v0, :cond_4f

    .line 349
    add-int/lit8 v0, v0, -0x1

    .line 351
    :try_start_40
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ISyncStatusObserver;

    invoke-interface {p0, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_3c

    .line 352
    :catch_4a
    move-exception v5

    goto :goto_3c

    .line 342
    .end local v0           #i:I
    .end local v4           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local p0
    :catchall_4c
    move-exception v6

    :goto_4d
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v6

    .line 358
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .end local p0
    .restart local v0       #i:I
    .restart local v4       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_4f
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/backup/IBackupManager;

    move-result-object v1

    .line 360
    .local v1, ibm:Landroid/backup/IBackupManager;
    if-eqz v1, :cond_60

    .line 362
    :try_start_5b
    const-string v5, "com.android.providers.settings"

    invoke-interface {v1, v5}, Landroid/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_61

    .line 367
    :cond_60
    :goto_60
    return-void

    .line 363
    :catch_61
    move-exception v5

    goto :goto_60

    .line 342
    .end local v1           #ibm:Landroid/backup/IBackupManager;
    .restart local p0
    :catchall_63
    move-exception v6

    move-object v3, v4

    .end local v4           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_4d

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #mask:Ljava/lang/Integer;
    .restart local v4       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_66
    move-object v3, v4

    .end local v4           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_25
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .registers 6
    .parameter "flatData"

    .prologue
    .line 1476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1478
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_5
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1479
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1480
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_20
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_15

    move-result-object v0

    .line 1486
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1488
    :goto_14
    return-object v0

    .line 1481
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_15
    move-exception v3

    move-object v1, v3

    .line 1484
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_20

    .line 1486
    .restart local v0       #bundle:Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_14

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_20
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private writeAccountInfoLocked()V
    .registers 10

    .prologue
    const-string v6, "false"

    const-string v6, "accounts"

    const-string v6, "authority"

    .line 1118
    const/4 v3, 0x0

    .line 1121
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_7
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1122
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1123
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1124
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1125
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1127
    const/4 v6, 0x0

    const-string v7, "accounts"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    iget-boolean v6, p0, Landroid/content/SyncStorageEngine;->mListenForTickles:Z

    if-nez v6, :cond_38

    .line 1129
    const/4 v6, 0x0

    const-string v7, "listen-for-tickles"

    const-string v8, "false"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    :cond_38
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1133
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3f
    if-ge v4, v0, :cond_80

    .line 1134
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1135
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v6, 0x0

    const-string v7, "authority"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1136
    const/4 v6, 0x0

    const-string v7, "id"

    iget v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    const/4 v6, 0x0

    const-string v7, "account"

    iget-object v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    const/4 v6, 0x0

    const-string v7, "authority"

    iget-object v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    iget-boolean v6, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v6, :cond_77

    .line 1140
    const/4 v6, 0x0

    const-string v7, "enabled"

    const-string v8, "false"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    :cond_77
    const/4 v6, 0x0

    const-string v7, "authority"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1145
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_80
    const/4 v6, 0x0

    const-string v7, "accounts"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1149
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8e} :catch_8f

    .line 1156
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_8e
    :goto_8e
    return-void

    .line 1150
    :catch_8f
    move-exception v6

    move-object v2, v6

    .line 1151
    .local v2, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing accounts"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    if-eqz v3, :cond_8e

    .line 1153
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_8e
.end method

.method private writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V
    .registers 4
    .parameter "op"
    .parameter "out"

    .prologue
    .line 1390
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    if-nez v0, :cond_1e

    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1e

    .line 1394
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/SyncStorageEngine;->flattenBundle(Landroid/os/Bundle;)[B

    move-result-object v0

    iput-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 1396
    :cond_1e
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1397
    return-void
.end method

.method private writePendingOperationsLocked()V
    .registers 9

    .prologue
    .line 1403
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1404
    .local v0, N:I
    const/4 v2, 0x0

    .line 1406
    .local v2, fos:Ljava/io/FileOutputStream;
    if-nez v0, :cond_f

    .line 1408
    :try_start_9
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->truncate()V

    .line 1430
    :cond_e
    :goto_e
    return-void

    .line 1413
    :cond_f
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1416
    .local v5, out:Landroid/os/Parcel;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_2a

    .line 1417
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 1418
    .local v4, op:Landroid/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v4, v5}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 1416
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1420
    .end local v4           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_2a
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1421
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1423
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_e

    .line 1424
    .end local v3           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_3a
    move-exception v6

    move-object v1, v6

    .line 1425
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1426
    if-eqz v2, :cond_e

    .line 1427
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_e
.end method

.method private writeStatisticsLocked()V
    .registers 9

    .prologue
    .line 1541
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 1543
    const/4 v3, 0x0

    .line 1545
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1547
    .local v5, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 1548
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_13
    if-ge v4, v0, :cond_1b

    .line 1549
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 1550
    .local v1, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_2f

    .line 1560
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_1b
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1562
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1564
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1571
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :cond_2e
    :goto_2e
    return-void

    .line 1553
    .restart local v0       #N:I
    .restart local v1       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v4       #i:I
    .restart local v5       #out:Landroid/os/Parcel;
    :cond_2f
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1557
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4d} :catch_50

    .line 1548
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1565
    .end local v0           #N:I
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_50
    move-exception v6

    move-object v2, v6

    .line 1566
    .local v2, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1567
    if-eqz v3, :cond_2e

    .line 1568
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2e
.end method

.method private writeStatusLocked()V
    .registers 9

    .prologue
    .line 1318
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 1320
    const/4 v2, 0x0

    .line 1322
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1324
    .local v4, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1325
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v0, :cond_2c

    .line 1326
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 1327
    .local v5, status:Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1325
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1330
    .end local v5           #status:Landroid/content/SyncStatusInfo;
    :cond_2c
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1332
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1334
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3f} :catch_40

    .line 1341
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #out:Landroid/os/Parcel;
    :cond_3f
    :goto_3f
    return-void

    .line 1335
    :catch_40
    move-exception v6

    move-object v1, v6

    .line 1336
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    if-eqz v2, :cond_3f

    .line 1338
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3f
.end method


# virtual methods
.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 315
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public clearPending()I
    .registers 7

    .prologue
    .line 545
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 547
    :try_start_3
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 548
    .local v2, num:I
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 550
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_25

    .line 551
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 553
    :cond_25
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 554
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2e

    .line 555
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 556
    return v2

    .line 554
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #num:I
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .registers 13
    .parameter "op"

    .prologue
    .line 498
    const/4 v5, 0x0

    .line 499
    .local v5, res:Z
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 504
    :try_start_4
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 505
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_19

    iget v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_64

    .line 507
    :cond_19
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 508
    const/4 v8, 0x0

    iput v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 513
    :goto_1f
    iget-object v8, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const-string v10, "deleteFromPending"

    invoke-direct {p0, v8, v9, v10}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 515
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_5d

    .line 517
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 518
    .local v0, N:I
    const/4 v4, 0x0

    .line 519
    .local v4, morePending:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_52

    .line 520
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 521
    .local v2, cur:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v8, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    iget-object v8, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 523
    const/4 v4, 0x1

    .line 528
    .end local v2           #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_52
    if-nez v4, :cond_5d

    .line 530
    iget v8, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 531
    .local v6, status:Landroid/content/SyncStatusInfo;
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/content/SyncStatusInfo;->pending:Z

    .line 535
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #morePending:Z
    .end local v6           #status:Landroid/content/SyncStatusInfo;
    :cond_5d
    const/4 v5, 0x1

    .line 537
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_6b

    .line 539
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 540
    return v5

    .line 510
    :cond_64
    :try_start_64
    iget v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    goto :goto_1f

    .line 537
    :catchall_6b
    move-exception v8

    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v8

    .line 519
    .restart local v0       #N:I
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local v3       #i:I
    .restart local v4       #morePending:Z
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33
.end method

.method public doDatabaseCleanup([Ljava/lang/String;)V
    .registers 13
    .parameter "accounts"

    .prologue
    .line 584
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 586
    :try_start_3
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 587
    .local v7, removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 588
    .local v1, accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 590
    .local v0, acc:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 593
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 594
    .local v2, auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_30

    .line 627
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v1           #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2           #auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_42
    move-exception v8

    monitor-exit v9
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v8

    .line 596
    .restart local v0       #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .restart local v1       #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_45
    :try_start_45
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 601
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_49
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 602
    .local v3, i:I
    if-lez v3, :cond_a2

    .line 603
    :cond_4f
    if-lez v3, :cond_96

    .line 604
    add-int/lit8 v3, v3, -0x1

    .line 605
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 606
    .local v5, ident:I
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 607
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 608
    .local v6, j:I
    :cond_62
    :goto_62
    if-lez v6, :cond_7a

    .line 609
    add-int/lit8 v6, v6, -0x1

    .line 610
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_62

    .line 611
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_62

    .line 614
    :cond_7a
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 615
    :cond_80
    :goto_80
    if-lez v6, :cond_4f

    .line 616
    add-int/lit8 v6, v6, -0x1

    .line 617
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_80

    .line 618
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_80

    .line 622
    .end local v5           #ident:I
    .end local v6           #j:I
    :cond_96
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 623
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 624
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 625
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 627
    :cond_a2
    monitor-exit v9
    :try_end_a3
    .catchall {:try_start_45 .. :try_end_a3} :catchall_42

    .line 628
    return-void
.end method

.method public getActiveSync()Landroid/content/ActiveSyncInfo;
    .registers 3

    .prologue
    .line 814
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 815
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mActiveSync:Landroid/content/ActiveSyncInfo;

    monitor-exit v0

    return-object v1

    .line 816
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .parameter "authorityId"

    .prologue
    .line 435
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 436
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object p0

    .line 437
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAuthority(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .registers 5
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 429
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 430
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 431
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;
    .registers 7

    .prologue
    .line 905
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 906
    :try_start_3
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v2, v2

    new-array v0, v2, [Landroid/content/SyncStorageEngine$DayStats;

    .line 907
    .local v0, ds:[Landroid/content/SyncStorageEngine$DayStats;
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    monitor-exit v1

    return-object v0

    .line 909
    .end local v0           #ds:[Landroid/content/SyncStorageEngine$DayStats;
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public getInitialSyncFailureTime()J
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 918
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 919
    :try_start_5
    iget-boolean v6, p0, Landroid/content/SyncStorageEngine;->mListenForTickles:Z

    if-nez v6, :cond_c

    .line 920
    monitor-exit v5

    move-wide v5, v8

    .line 936
    :goto_b
    return-wide v5

    .line 923
    :cond_c
    const-wide/16 v2, 0x0

    .line 924
    .local v2, oldest:J
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 925
    .local v1, i:I
    :cond_14
    :goto_14
    if-lez v1, :cond_3d

    .line 926
    add-int/lit8 v1, v1, -0x1

    .line 927
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 928
    .local v4, stats:Landroid/content/SyncStatusInfo;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 929
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_14

    iget-boolean v6, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_14

    .line 930
    cmp-long v6, v2, v8

    if-eqz v6, :cond_3a

    iget-wide v6, v4, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_14

    .line 931
    :cond_3a
    iget-wide v2, v4, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    goto :goto_14

    .line 936
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #stats:Landroid/content/SyncStatusInfo;
    :cond_3d
    monitor-exit v5

    move-wide v5, v2

    goto :goto_b

    .line 937
    .end local v1           #i:I
    .end local v2           #oldest:J
    :catchall_40
    move-exception v6

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v6
.end method

.method public getListenForNetworkTickles()Z
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 424
    :try_start_3
    iget-boolean v1, p0, Landroid/content/SyncStorageEngine;->mListenForTickles:Z

    monitor-exit v0

    return v1

    .line 425
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPendingOperationCount()I
    .registers 3

    .prologue
    .line 574
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 576
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 566
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 567
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getStatusByAuthority(Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 12
    .parameter "authority"

    .prologue
    .line 842
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 843
    const/4 v2, 0x0

    .line 844
    .local v2, best:Landroid/content/SyncStatusInfo;
    :try_start_4
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 845
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v0, :cond_39

    .line 846
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 847
    .local v3, cur:Landroid/content/SyncStatusInfo;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 848
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2c

    iget-object v6, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 849
    if-nez v2, :cond_2f

    .line 850
    move-object v2, v3

    .line 845
    :cond_2c
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 851
    :cond_2f
    iget-wide v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2c

    .line 852
    move-object v2, v3

    goto :goto_2c

    .line 856
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v3           #cur:Landroid/content/SyncStatusInfo;
    :cond_39
    monitor-exit v5

    return-object v2

    .line 857
    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_3b
    move-exception v6

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v6
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 890
    :try_start_3
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 891
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 892
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 893
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 895
    :cond_1d
    monitor-exit v3

    return-object v2

    .line 896
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_1f
    move-exception v4

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v4
.end method

.method public getSyncProviderAutomatically(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "account"
    .parameter "providerName"

    .prologue
    const/4 v4, 0x0

    .line 370
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 371
    if-eqz p1, :cond_15

    .line 372
    :try_start_6
    const-string v3, "getSyncProviderAutomatically"

    invoke-direct {p0, p1, p2, v3}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 374
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_13

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    :goto_10
    monitor-exit v2

    move v2, v3

    .line 386
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_12
    return v2

    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_13
    move v3, v4

    .line 374
    goto :goto_10

    .line 377
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_15
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 378
    .local v1, i:I
    :cond_1b
    if-lez v1, :cond_37

    .line 379
    add-int/lit8 v1, v1, -0x1

    .line 380
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 381
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v3, :cond_1b

    .line 383
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    goto :goto_12

    .line 386
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_37
    monitor-exit v2

    move v2, v4

    goto :goto_12

    .line 387
    .end local v1           #i:I
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 826
    :try_start_3
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 827
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 829
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 831
    :cond_1d
    monitor-exit v3

    return-object v2

    .line 832
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_1f
    move-exception v4

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 304
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 305
    :try_start_8
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 306
    monitor-exit v0

    .line 312
    :cond_c
    :goto_c
    return-void

    .line 306
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1

    .line 307
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 308
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 309
    :try_start_18
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 310
    monitor-exit v0

    goto :goto_c

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;
    .registers 10
    .parameter "op"

    .prologue
    .line 470
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 476
    :try_start_3
    iget-object v4, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 480
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_13

    .line 481
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    .line 494
    :goto_12
    return-object v3

    .line 484
    :cond_13
    new-instance v1, Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-direct {v1, p1}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/content/SyncStorageEngine$PendingOperation;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_35

    .line 485
    .end local p1
    .local v1, op:Landroid/content/SyncStorageEngine$PendingOperation;
    :try_start_18
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 486
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V

    .line 489
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 490
    .local v2, status:Landroid/content/SyncStatusInfo;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 491
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_38

    .line 493
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-object p1, v1

    .end local v1           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    move-object v3, v1

    .line 494
    goto :goto_12

    .line 491
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #status:Landroid/content/SyncStatusInfo;
    :catchall_35
    move-exception v4

    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    .end local p1
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1       #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :catchall_38
    move-exception v4

    move-object p1, v1

    .end local v1           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    goto :goto_36
.end method

.method public insertStartSyncEvent(Ljava/lang/String;Ljava/lang/String;JI)J
    .registers 14
    .parameter "accountName"
    .parameter "authorityName"
    .parameter "now"
    .parameter "source"

    .prologue
    .line 678
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 681
    :try_start_3
    const-string v5, "insertStartSyncEvent"

    invoke-direct {p0, p1, p2, v5}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 683
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_10

    .line 684
    const-wide/16 v5, -0x1

    monitor-exit v4

    move-wide v4, v5

    .line 702
    :goto_f
    return-wide v4

    .line 686
    :cond_10
    new-instance v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Landroid/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 687
    .local v3, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    iget v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 688
    iget v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 689
    iget v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v5, :cond_28

    const/4 v5, 0x0

    iput v5, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 690
    :cond_28
    iput-wide p3, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 691
    iput p5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 692
    const/4 v5, 0x0

    iput v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 693
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 694
    :goto_35
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_50

    .line 695
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_35

    .line 699
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v3           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_4d
    move-exception v5

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v5

    .line 697
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_50
    :try_start_50
    iget v5, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v1, v5

    .line 699
    .local v1, id:J
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_4d

    .line 701
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-wide v4, v1

    .line 702
    goto :goto_f
.end method

.method public isAuthorityPending(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 864
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 865
    :try_start_3
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 866
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v0, :cond_3d

    .line 867
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 868
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 869
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_23

    .line 866
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 872
    :cond_23
    if-eqz p1, :cond_2d

    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 875
    :cond_2d
    iget-object v5, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-boolean v5, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v5, :cond_20

    .line 876
    const/4 v5, 0x1

    monitor-exit v4

    move v4, v5

    .line 879
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_3c
    return v4

    :cond_3d
    const/4 v5, 0x0

    monitor-exit v4

    move v4, v5

    goto :goto_3c

    .line 880
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_41
    move-exception v5

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v5
.end method

.method public isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v5, 0x1

    .line 445
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 446
    :try_start_4
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 447
    .local v1, i:I
    :cond_a
    if-lez v1, :cond_29

    .line 448
    add-int/lit8 v1, v1, -0x1

    .line 451
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 452
    .local v2, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v4, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 453
    monitor-exit v3

    move v3, v5

    .line 466
    .end local v2           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :goto_28
    return v3

    .line 457
    :cond_29
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mActiveSync:Landroid/content/ActiveSyncInfo;

    if-eqz v4, :cond_4a

    .line 458
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mActiveSync:Landroid/content/ActiveSyncInfo;

    iget v4, v4, Landroid/content/ActiveSyncInfo;->authorityId:I

    invoke-virtual {p0, v4}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 459
    .local v0, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_4a

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 461
    monitor-exit v3

    move v3, v5

    goto :goto_28

    .line 464
    .end local v0           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_4a
    monitor-exit v3

    .line 466
    const/4 v3, 0x0

    goto :goto_28

    .line 464
    .end local v1           #i:I
    :catchall_4d
    move-exception v4

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_4d

    throw v4
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reportActiveChange()V
    .registers 2

    .prologue
    .line 669
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 670
    return-void
.end method

.method public setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V
    .registers 10
    .parameter "activeSyncContext"

    .prologue
    .line 636
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 637
    if-eqz p1, :cond_37

    .line 643
    :try_start_5
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mActiveSync:Landroid/content/ActiveSyncInfo;

    if-eqz v0, :cond_10

    .line 644
    const-string v0, "SyncManager"

    const-string v1, "setActiveSync called with existing active sync!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_10
    iget-object v0, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-object v0, v0, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-object v1, v1, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    const-string v2, "setActiveSync"

    invoke-direct {p0, v0, v1, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 650
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v6, :cond_22

    .line 651
    monitor-exit v7

    .line 663
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_21
    return-void

    .line 653
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_22
    new-instance v0, Landroid/content/ActiveSyncInfo;

    iget v1, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    iget-object v3, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iget-wide v4, p1, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/ActiveSyncInfo;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/content/SyncStorageEngine;->mActiveSync:Landroid/content/ActiveSyncInfo;

    .line 660
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_31
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_3b

    .line 662
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_21

    .line 658
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    iput-object v0, p0, Landroid/content/SyncStorageEngine;->mActiveSync:Landroid/content/ActiveSyncInfo;

    goto :goto_31

    .line 660
    :catchall_3b
    move-exception v0

    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public setListenForNetworkTickles(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 415
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 416
    :try_start_3
    iput-boolean p1, p0, Landroid/content/SyncStorageEngine;->mListenForTickles:Z

    .line 417
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 418
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 420
    return-void

    .line 418
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setSyncProviderAutomatically(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 391
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 392
    if-eqz p1, :cond_18

    .line 393
    :try_start_5
    const-string v3, "setSyncProviderAutomatically"

    invoke-direct {p0, p1, p2, v3}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 395
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_f

    .line 396
    iput-boolean p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 408
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_f
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 409
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_35

    .line 411
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 412
    return-void

    .line 399
    :cond_18
    :try_start_18
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 400
    .local v1, i:I
    :cond_1e
    :goto_1e
    if-lez v1, :cond_f

    .line 401
    add-int/lit8 v1, v1, -0x1

    .line 402
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 403
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 404
    iput-boolean p3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    goto :goto_1e

    .line 409
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v1           #i:I
    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_35

    throw v3
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 30
    .parameter "historyId"
    .parameter "elapsedTime"
    .parameter "resultMessage"
    .parameter "downstreamActivity"
    .parameter "upstreamActivity"

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object v13, v0

    monitor-enter v13

    .line 709
    const/4 v7, 0x0

    .line 710
    .local v7, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 711
    .local v6, i:I
    :goto_10
    if-lez v6, :cond_28

    .line 712
    add-int/lit8 v6, v6, -0x1

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    move-object v7, v0

    .line 714
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v14

    cmp-long v14, v14, p1

    if-nez v14, :cond_47

    .line 720
    :cond_28
    if-nez v7, :cond_49

    .line 721
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "stopSyncEvent: no history for id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    monitor-exit v13

    .line 806
    :goto_46
    return-void

    .line 717
    :cond_47
    const/4 v7, 0x0

    goto :goto_10

    .line 725
    :cond_49
    move-wide/from16 v0, p3

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 726
    const/4 v14, 0x1

    iput v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 727
    move-object/from16 v0, p5

    move-object v1, v7

    iput-object v0, v1, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 728
    move-wide/from16 v0, p6

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 729
    move-wide/from16 v0, p8

    move-object v2, v7

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 731
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v10

    .line 733
    .local v10, status:Landroid/content/SyncStatusInfo;
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 734
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 735
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v14, :pswitch_data_1d8

    .line 750
    :goto_7a
    const/4 v11, 0x0

    .line 751
    .local v11, writeStatisticsNow:Z
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v4

    .line 752
    .local v4, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_11a

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v16, v14, v15

    .line 760
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .line 762
    .local v5, ds:Landroid/content/SyncStorageEngine$DayStats;
    iget-wide v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v8, v14, p3

    .line 763
    .local v8, lastSyncTime:J
    const/4 v12, 0x0

    .line 764
    .local v12, writeStatusNow:Z
    const-string v14, "success"

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_165

    .line 766
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_c1

    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_c2

    .line 767
    :cond_c1
    const/4 v12, 0x1

    .line 769
    :cond_c2
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 770
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 771
    const-wide/16 v14, 0x0

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 772
    const/4 v14, -0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 773
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 774
    const-wide/16 v14, 0x0

    iput-wide v14, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 775
    iget v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 776
    iget-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 791
    :cond_e2
    :goto_e2
    if-eqz v12, :cond_19c

    .line 792
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 797
    :cond_e7
    :goto_e7
    if-eqz v11, :cond_1ba

    .line 798
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 803
    :cond_ec
    :goto_ec
    monitor-exit v13
    :try_end_ed
    .catchall {:try_start_7 .. :try_end_ed} :catchall_ff

    .line 805
    const/16 v13, 0x8

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto/16 :goto_46

    .line 737
    .end local v4           #day:I
    .end local v5           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v8           #lastSyncTime:J
    .end local v11           #writeStatisticsNow:Z
    .end local v12           #writeStatusNow:Z
    :pswitch_f7
    :try_start_f7
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto/16 :goto_7a

    .line 803
    .end local v6           #i:I
    .end local v10           #status:Landroid/content/SyncStatusInfo;
    :catchall_ff
    move-exception v14

    monitor-exit v13
    :try_end_101
    .catchall {:try_start_f7 .. :try_end_101} :catchall_ff

    throw v14

    .line 740
    .restart local v6       #i:I
    .restart local v10       #status:Landroid/content/SyncStatusInfo;
    :pswitch_102
    :try_start_102
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_7a

    .line 743
    :pswitch_10a
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_7a

    .line 746
    :pswitch_112
    iget v14, v10, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_7a

    .line 754
    .restart local v4       #day:I
    .restart local v11       #writeStatisticsNow:Z
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Landroid/content/SyncStorageEngine$DayStats;->day:I

    if-eq v4, v14, :cond_159

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v16, v14, v15

    .line 757
    const/4 v11, 0x1

    goto/16 :goto_99

    .line 758
    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_99

    goto/16 :goto_99

    .line 777
    .restart local v5       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v8       #lastSyncTime:J
    .restart local v12       #writeStatusNow:Z
    :cond_165
    const-string v14, "canceled"

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e2

    .line 778
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_179

    .line 779
    const/4 v12, 0x1

    .line 781
    :cond_179
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 782
    iget v14, v7, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v14, v10, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 783
    move-object/from16 v0, p5

    move-object v1, v10

    iput-object v0, v1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 784
    iget-wide v14, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_18e

    .line 785
    iput-wide v8, v10, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 787
    :cond_18e
    iget v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 788
    iget-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v5, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_e2

    .line 793
    :cond_19c
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_e7

    .line 794
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0x927c0

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_e7

    .line 799
    :cond_1ba
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_ec

    .line 800
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/32 v15, 0x1b7740

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1d6
    .catchall {:try_start_102 .. :try_end_1d6} :catchall_ff

    goto/16 :goto_ec

    .line 735
    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_112
        :pswitch_f7
        :pswitch_102
        :pswitch_10a
    .end packed-switch
.end method

.method public writeAllState()V
    .registers 3

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1024
    :try_start_3
    iget v1, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    if-lez v1, :cond_a

    .line 1026
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1030
    :cond_a
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1031
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1032
    monitor-exit v0

    .line 1033
    return-void

    .line 1032
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
