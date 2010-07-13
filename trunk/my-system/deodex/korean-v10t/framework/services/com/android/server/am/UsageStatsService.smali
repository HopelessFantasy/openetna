.class public final Lcom/android/server/am/UsageStatsService;
.super Lcom/android/internal/app/IUsageStats$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;,
        Lcom/android/server/am/UsageStatsService$TimeStats;
    }
.end annotation


# static fields
.field private static final CHECKIN_VERSION:I = 0x4

.field private static final FILE_PREFIX:Ljava/lang/String; = "usage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x1b7740

.field private static final LAUNCH_TIME_BINS:[I = null

.field private static final MAX_NUM_FILES:I = 0x5

.field private static final NUM_LAUNCH_TIME_BINS:I = 0xa

.field public static final SERVICE_NAME:Ljava/lang/String; = "usagestats"

.field private static final TAG:Ljava/lang/String; = "UsageStats"

.field private static final VERSION:I = 0x3ed

.field private static final localLOGV:Z

.field static sService:Lcom/android/internal/app/IUsageStats;


# instance fields
.field private mCal:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private mFileLeaf:Ljava/lang/String;

.field final mFileLock:Ljava/lang/Object;

.field private mIsResumed:Z

.field private mLastResumedComp:Ljava/lang/String;

.field private mLastResumedPkg:Ljava/lang/String;

.field private mLastWriteDay:I

.field private mLastWriteElapsedTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;",
            ">;"
        }
    .end annotation
.end field

.field final mStatsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-void

    :array_a
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xeet 0x2t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "dir"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/internal/app/IUsageStats$Stub;-><init>()V

    .line 217
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    .line 218
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    .line 219
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    .line 220
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    .line 221
    const-string v4, "GMT+0"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    .line 223
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 226
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 227
    .local v2, parentDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, fList:[Ljava/lang/String;
    if-eqz v0, :cond_87

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, prefix:Ljava/lang/String;
    array-length v1, v0

    .line 231
    .local v1, i:I
    :cond_56
    :goto_56
    if-lez v1, :cond_87

    .line 232
    add-int/lit8 v1, v1, -0x1

    .line 233
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 234
    const-string v4, "UsageStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting old usage file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_56

    .line 241
    .end local v1           #i:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_87
    const-string v4, "usage-"

    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 242
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 243
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readStatsFromFile()V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:J

    .line 246
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:I

    .line 247
    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-object v0
.end method

.method private checkFileLimitFLOCK()V
    .registers 9

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .local v2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_7

    .line 362
    :cond_6
    return-void

    .line 348
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    .local v0, count:I
    const/4 v5, 0x5

    if-le v0, v5, :cond_6

    .line 353
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 354
    add-int/lit8 v0, v0, -0x5

    .line 356
    const/4 v4, 0x0

    .local v4, i:I
    :goto_14
    if-ge v4, v0, :cond_6

    .line 357
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 358
    .local v3, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v1, file:Ljava/io/File;
    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting usage file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method private collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V
    .registers 16
    .parameter "pw"
    .parameter "isCompactOutput"
    .parameter "deleteAfterPrint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "ZZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p4, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v9

    .line 623
    .local v9, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_7

    .line 650
    :cond_6
    :goto_6
    return-void

    .line 626
    :cond_7
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 627
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 628
    .local v8, file:Ljava/lang/String;
    if-eqz p3, :cond_24

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 633
    :cond_24
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 634
    .local v6, dFile:Ljava/io/File;
    const-string v0, "usage-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, dateStr:Ljava/lang/String;
    :try_start_35
    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .local v1, in:Landroid/os/Parcel;
    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 637
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V

    .line 639
    if-eqz p3, :cond_e

    .line 641
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_45} :catch_6b

    goto :goto_e

    .line 643
    .end local v1           #in:Landroid/os/Parcel;
    :catch_46
    move-exception v0

    move-object v7, v0

    .line 644
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v0, "UsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when collecting dump info from file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 646
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_6b
    move-exception v0

    move-object v7, v0

    .line 647
    .local v7, e:Ljava/io/IOException;
    const-string v0, "UsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when collecting dump info from file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V
    .registers 22
    .parameter "in"
    .parameter "pw"
    .parameter "date"
    .parameter "isCompactOutput"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p5, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x200

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 655
    .local v11, sb:Ljava/lang/StringBuilder;
    if-eqz p4, :cond_35

    .line 656
    const-string v14, "D:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 658
    const/16 v14, 0x2c

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    :goto_17
    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 666
    .local v13, vers:I
    const/16 v14, 0x3ed

    if-eq v13, v14, :cond_3b

    .line 667
    const-string v14, " (old data version)"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    .end local p3
    :cond_34
    return-void

    .line 660
    .end local v13           #vers:I
    .restart local p3
    :cond_35
    const-string v14, "Date: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 672
    .restart local v13       #vers:I
    :cond_3b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 675
    .end local p3
    .local v3, N:I
    :goto_49
    if-lez v3, :cond_34

    .line 676
    add-int/lit8 v3, v3, -0x1

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, pkgName:Ljava/lang/String;
    if-eqz v9, :cond_34

    .line 681
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 682
    new-instance v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 683
    .local v10, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz p5, :cond_77

    move-object/from16 v0, p5

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_77

    .line 752
    :cond_6c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_49

    .line 686
    :cond_77
    if-eqz p4, :cond_f3

    .line 687
    const-string v14, "P:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const/16 v14, 0x2c

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    iget v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    const/16 v14, 0x2c

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    iget-wide v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 693
    const/16 v14, 0xa

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    iget-object v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 695
    .local v4, NC:I
    if-lez v4, :cond_6c

    .line 696
    iget-object v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_ac
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 697
    .local v5, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    const-string v14, "A:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 700
    .local v12, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    const/16 v14, 0x2c

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    iget v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    const/4 v6, 0x0

    .local v6, i:I
    :goto_da
    const/16 v14, 0xa

    if-ge v6, v14, :cond_ed

    .line 703
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v14, v14, v6

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    .line 706
    :cond_ed
    const/16 v14, 0xa

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 711
    .end local v4           #NC:I
    .end local v5           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_f3
    const-string v14, "  "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v14, ": "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    iget v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    const-string v14, " times, "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-wide v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 717
    const-string v14, " ms"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const/16 v14, 0xa

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    iget-object v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 720
    .restart local v4       #NC:I
    if-lez v4, :cond_6c

    .line 721
    iget-object v14, v10, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_12b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 722
    .restart local v5       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    const-string v14, "    "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 725
    .restart local v12       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    const-string v14, ": "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    const-string v14, " starts"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const/4 v8, 0x0

    .line 729
    .local v8, lastBin:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_15f
    const/16 v14, 0x9

    if-ge v6, v14, :cond_190

    .line 730
    iget-object v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v14, v14, v6

    if-eqz v14, :cond_189

    .line 731
    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    const/16 v14, 0x2d

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    sget-object v14, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v14, v14, v6

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 735
    const-string v14, "ms="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v14, v14, v6

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    :cond_189
    sget-object v14, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v8, v14, v6

    .line 729
    add-int/lit8 v6, v6, 0x1

    goto :goto_15f

    .line 740
    :cond_190
    iget-object v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    if-eqz v14, :cond_1b3

    .line 741
    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v14, ">="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    const-string v14, "ms="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v14, v12, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    :cond_1b3
    const/16 v14, 0xa

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_12b
.end method

.method private getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "prefix"

    .prologue
    const/16 v6, 0xa

    const-string v7, "0"

    .line 253
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_17

    .line 256
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 260
    .local v1, mm:I
    if-ge v1, v6, :cond_33

    .line 261
    const-string v3, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 265
    .local v0, dd:I
    if-ge v0, v6, :cond_44

    .line 266
    const-string v3, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .registers 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 273
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 274
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/am/UsageStatsService;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 275
    .local v1, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    .local v0, in:Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 277
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 278
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 279
    return-object v0
.end method

.method public static getService()Lcom/android/internal/app/IUsageStats;
    .registers 2

    .prologue
    .line 449
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_7

    .line 450
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 454
    :goto_6
    return-object v1

    .line 452
    :cond_7
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 453
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 454
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    goto :goto_6
.end method

.method private getUsageStatsFileListFLOCK()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, fList:[Ljava/lang/String;
    if-nez v1, :cond_a

    .line 325
    const/4 v6, 0x0

    .line 338
    :goto_9
    return-object v6

    .line 327
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v3, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_12
    if-ge v4, v5, :cond_38

    aget-object v2, v0, v4

    .line 329
    .local v2, file:Ljava/lang/String;
    const-string v6, "usage-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 328
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 332
    :cond_21
    const-string v6, ".bak"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 333
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1e

    .line 336
    :cond_34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v2           #file:Ljava/lang/String;
    :cond_38
    move-object v6, v3

    .line 338
    goto :goto_9
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 602
    const/4 v4, 0x0

    .line 603
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 604
    .local v1, avail:I
    new-array v2, v1, [B

    .line 606
    .local v2, data:[B
    :cond_8
    :goto_8
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 607
    .local v0, amt:I
    if-gtz v0, :cond_11

    .line 608
    return-object v2

    .line 610
    :cond_11
    add-int/2addr v4, v0

    .line 611
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 612
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_8

    .line 613
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 614
    .local v3, newData:[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    move-object v2, v3

    goto :goto_8
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .registers 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .line 301
    .local v1, in:Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .local v4, vers:I
    const/16 v5, 0x3ed

    if-eq v4, v5, :cond_14

    .line 303
    const-string v5, "UsageStats"

    const-string v6, "Usage stats version changed; dropping"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_13
    return-void

    .line 306
    :cond_14
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .local v0, N:I
    :goto_18
    if-lez v0, :cond_13

    .line 308
    add-int/lit8 v0, v0, -0x1

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 314
    new-instance v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 315
    .local v3, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 316
    :try_start_2a
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v5

    goto :goto_18

    :catchall_31
    move-exception v6

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v6
.end method

.method private readStatsFromFile()V
    .registers 7

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 284
    .local v1, newFile:Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 287
    invoke-direct {p0, v1}, Lcom/android/server/am/UsageStatsService;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_17

    .line 296
    :goto_e
    :try_start_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_3c

    .line 297
    return-void

    .line 290
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17

    goto :goto_e

    .line 293
    :catch_17
    move-exception v3

    move-object v0, v3

    .line 294
    .local v0, e:Ljava/io/IOException;
    :try_start_19
    const-string v3, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reading data from file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 296
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "args"
    .parameter "value"

    .prologue
    .line 763
    if-eqz p0, :cond_14

    .line 764
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    .line 765
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 766
    const/4 v4, 0x1

    .line 770
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_10
    return v4

    .line 764
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 770
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private static scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "args"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 780
    if-eqz p0, :cond_1b

    .line 781
    array-length v0, p0

    .line 782
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 783
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 784
    add-int/lit8 v1, v1, 0x1

    .line 785
    if-ge v1, v0, :cond_16

    aget-object v2, p0, v1

    .line 789
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_15
    return-object v2

    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_16
    move-object v2, v3

    .line 785
    goto :goto_15

    .line 782
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1b
    move-object v2, v3

    .line 789
    goto :goto_15
.end method

.method private writeStatsFLOCK()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 415
    .local v1, stream:Ljava/io/FileOutputStream;
    :try_start_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    .local v0, out:Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToParcelFLOCK(Landroid/os/Parcel;)V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    .line 421
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 423
    return-void

    .line 421
    .end local v0           #out:Landroid/os/Parcel;
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private writeStatsToFile(Z)V
    .registers 13
    .parameter "force"

    .prologue
    .line 365
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 366
    :try_start_3
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 367
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 371
    .local v1, curDay:I
    iget v7, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:I

    if-eq v1, v7, :cond_2e

    const/4 v7, 0x1

    move v4, v7

    .line 372
    .local v4, dayChanged:Z
    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 373
    .local v2, currElapsedTime:J
    if-nez p1, :cond_31

    .line 374
    iget-wide v7, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:J

    sub-long v7, v2, v7

    const-wide/32 v9, 0x1b7740

    cmp-long v7, v7, v9

    if-gez v7, :cond_31

    if-nez v4, :cond_31

    .line 377
    monitor-exit v6

    .line 410
    :goto_2d
    return-void

    .line 371
    .end local v2           #currElapsedTime:J
    .end local v4           #dayChanged:Z
    :cond_2e
    const/4 v7, 0x0

    move v4, v7

    goto :goto_19

    .line 381
    .restart local v2       #currElapsedTime:J
    .restart local v4       #dayChanged:Z
    :cond_31
    const-string v7, "usage-"

    invoke-direct {p0, v7}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 383
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bak"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, backupFile:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_83

    .line 387
    :try_start_5c
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->writeStatsFLOCK()V

    .line 388
    iput-wide v2, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:J

    .line 389
    if-eqz v4, :cond_7c

    .line 390
    iput v1, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:I

    .line 392
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    monitor-enter v7
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_83
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_89

    .line 393
    :try_start_68
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 394
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_86

    .line 395
    :try_start_6e
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 396
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 399
    :cond_7c
    if-eqz v0, :cond_81

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_83
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_81} :catch_89

    .line 409
    :cond_81
    :goto_81
    :try_start_81
    monitor-exit v6

    goto :goto_2d

    .end local v0           #backupFile:Ljava/io/File;
    .end local v1           #curDay:I
    .end local v2           #currElapsedTime:J
    .end local v4           #dayChanged:Z
    :catchall_83
    move-exception v7

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_83

    throw v7

    .line 394
    .restart local v0       #backupFile:Ljava/io/File;
    .restart local v1       #curDay:I
    .restart local v2       #currElapsedTime:J
    .restart local v4       #dayChanged:Z
    :catchall_86
    move-exception v8

    :try_start_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v8
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_83
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_89} :catch_89

    .line 402
    :catch_89
    move-exception v7

    move-object v5, v7

    .line 403
    .local v5, e:Ljava/io/IOException;
    :try_start_8b
    const-string v7, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed writing stats to file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v0, :cond_81

    .line 405
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 406
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b1
    .catchall {:try_start_8b .. :try_end_b1} :catchall_83

    goto :goto_81
.end method

.method private writeStatsToParcelFLOCK(Landroid/os/Parcel;)V
    .registers 8
    .parameter "out"

    .prologue
    .line 426
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 427
    const/16 v5, 0x3ed

    :try_start_5
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 429
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 432
    .local v3, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_19

    .line 435
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_34
    move-exception v5

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 436
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 797
    const-string v10, "--checkin"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 798
    .local v3, isCheckinRequest:Z
    if-nez v3, :cond_10

    const-string v10, "-c"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4f

    :cond_10
    const/4 v10, 0x1

    move v4, v10

    .line 799
    .local v4, isCompactOutput:Z
    :goto_12
    if-nez v3, :cond_1c

    const-string v10, "-d"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_52

    :cond_1c
    const/4 v10, 0x1

    move v1, v10

    .line 800
    .local v1, deleteAfterPrint:Z
    :goto_1e
    const-string v10, "--packages"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 805
    .local v9, rawPackages:Ljava/lang/String;
    if-nez v1, :cond_2a

    .line 806
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    .line 809
    :cond_2a
    const/4 v8, 0x0

    .line 810
    .local v8, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_55

    .line 811
    const-string v10, "*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    .line 813
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 814
    .local v7, names:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3e
    if-ge v2, v5, :cond_5f

    aget-object v6, v0, v2

    .line 815
    .local v6, n:Ljava/lang/String;
    if-nez v8, :cond_49

    .line 816
    new-instance v8, Ljava/util/HashSet;

    .end local v8           #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 818
    .restart local v8       #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_49
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 798
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #deleteAfterPrint:Z
    .end local v2           #i$:I
    .end local v4           #isCompactOutput:Z
    .end local v5           #len$:I
    .end local v6           #n:Ljava/lang/String;
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9           #rawPackages:Ljava/lang/String;
    :cond_4f
    const/4 v10, 0x0

    move v4, v10

    goto :goto_12

    .line 799
    .restart local v4       #isCompactOutput:Z
    :cond_52
    const/4 v10, 0x0

    move v1, v10

    goto :goto_1e

    .line 821
    .restart local v1       #deleteAfterPrint:Z
    .restart local v8       #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9       #rawPackages:Ljava/lang/String;
    :cond_55
    if-eqz v3, :cond_5f

    .line 824
    const-string v10, "UsageStats"

    const-string v11, "Checkin without packages"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_5e
    return-void

    .line 828
    :cond_5f
    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v10

    .line 829
    :try_start_62
    invoke-direct {p0, p2, v4, v1, v8}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V

    .line 830
    monitor-exit v10

    goto :goto_5e

    :catchall_67
    move-exception v11

    monitor-exit v10
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw v11
.end method

.method public enforceCallingPermission()V
    .registers 6

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 562
    :goto_a
    return-void

    .line 560
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a
.end method

.method public getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 582
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 585
    :try_start_b
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 586
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    .line 587
    .local v6, size:I
    if-gtz v6, :cond_1a

    .line 588
    monitor-exit v7

    move-object v7, v9

    .line 597
    :goto_19
    return-object v7

    .line 590
    :cond_1a
    new-array v5, v6, [Lcom/android/internal/os/PkgUsageStats;

    .line 591
    .local v5, retArr:[Lcom/android/internal/os/PkgUsageStats;
    const/4 v0, 0x0

    .line 592
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 593
    .local v2, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 594
    .local v4, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    new-instance v8, Lcom/android/internal/os/PkgUsageStats;

    iget v9, v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    iget-wide v10, v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-direct {v8, v2, v9, v10, v11}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJ)V

    aput-object v8, v5, v0

    .line 595
    add-int/lit8 v0, v0, 0x1

    .line 596
    goto :goto_21

    .line 597
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_43
    monitor-exit v7

    move-object v7, v5

    goto :goto_19

    .line 598
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #retArr:[Lcom/android/internal/os/PkgUsageStats;
    .end local v6           #size:I
    :catchall_46
    move-exception v8

    monitor-exit v7
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v8
.end method

.method public getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;
    .registers 9
    .parameter "componentName"

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_12

    .end local v0           #pkgName:Ljava/lang/String;
    :cond_10
    move-object v2, v4

    .line 577
    :goto_11
    return-object v2

    .line 572
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    :try_start_15
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 574
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_22

    .line 575
    monitor-exit v2

    move-object v2, v4

    goto :goto_11

    .line 577
    :cond_22
    new-instance v3, Lcom/android/internal/os/PkgUsageStats;

    iget v4, v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    iget-wide v5, v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJ)V

    monitor-exit v2

    move-object v2, v3

    goto :goto_11

    .line 578
    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_2e
    move-exception v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public noteLaunchTime(Landroid/content/ComponentName;I)V
    .registers 7
    .parameter "componentName"
    .parameter "millis"

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 540
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 554
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_b
    :goto_b
    return-void

    .line 546
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    .line 548
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 549
    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 550
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_24

    .line 551
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchTime(Ljava/lang/String;I)V

    .line 553
    :cond_24
    monitor-exit v2

    goto :goto_b

    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v3
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 8
    .parameter "componentName"

    .prologue
    const/4 v4, 0x0

    const-string v2, "UsageStats"

    .line 507
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 509
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 511
    if-eqz p1, :cond_11

    :try_start_b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 513
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_11
    monitor-exit v2

    .line 535
    :goto_12
    return-void

    .line 515
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_13
    iget-boolean v3, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-nez v3, :cond_3a

    .line 516
    const-string v3, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong here, didn\'t expect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be paused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    monitor-exit v2

    goto :goto_12

    .line 531
    .end local v0           #pkgName:Ljava/lang/String;
    :catchall_37
    move-exception v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw v3

    .line 520
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_3a
    const/4 v3, 0x0

    :try_start_3b
    iput-boolean v3, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 524
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 525
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_61

    .line 527
    const-string v3, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package stats for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    monitor-exit v2

    goto :goto_12

    .line 530
    :cond_61
    invoke-virtual {v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 531
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_37

    .line 534
    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    goto :goto_12
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;)V
    .registers 12
    .parameter "componentName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v4, "UsageStats"

    .line 458
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 460
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 461
    if-eqz p1, :cond_12

    :try_start_c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 463
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_12
    monitor-exit v4

    .line 504
    :goto_13
    return-void

    .line 466
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_14
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 467
    .local v3, samePackage:Z
    iget-boolean v5, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-eqz v5, :cond_7a

    .line 468
    if-eqz v3, :cond_43

    .line 469
    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something wrong here, didn\'t expect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be resumed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v4

    goto :goto_13

    .line 503
    .end local v0           #pkgName:Ljava/lang/String;
    .end local v3           #samePackage:Z
    :catchall_40
    move-exception v5

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_40

    throw v5

    .line 474
    .restart local v0       #pkgName:Ljava/lang/String;
    .restart local v3       #samePackage:Z
    :cond_43
    :try_start_43
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v5, :cond_7a

    .line 477
    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected resume of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while already resumed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 480
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_7a

    .line 481
    invoke-virtual {v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 486
    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_7a
    if-eqz v3, :cond_b8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    move v2, v8

    .line 489
    .local v2, sameComp:Z
    :goto_89
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 490
    iput-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    .line 491
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    .line 494
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 495
    .restart local v1       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_a8

    .line 496
    new-instance v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-direct {v1, p0}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;)V

    .line 497
    .restart local v1       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_a8
    if-nez v3, :cond_ba

    move v5, v8

    :goto_ab
    invoke-virtual {v1, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updateResume(Z)V

    .line 500
    if-nez v2, :cond_b5

    .line 501
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchCount(Ljava/lang/String;)V

    .line 503
    :cond_b5
    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_43 .. :try_end_b6} :catchall_40

    goto/16 :goto_13

    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    .end local v2           #sameComp:Z
    :cond_b8
    move v2, v9

    .line 486
    goto :goto_89

    .restart local v1       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    .restart local v2       #sameComp:Z
    :cond_ba
    move v5, v9

    .line 499
    goto :goto_ab
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    .line 440
    const-string v0, "usagestats"

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 441
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 444
    const-string v0, "UsageStats"

    const-string v1, "Writing usage stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    .line 446
    return-void
.end method
