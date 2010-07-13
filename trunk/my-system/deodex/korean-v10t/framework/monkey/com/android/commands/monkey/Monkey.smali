.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$1;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field mCount:I

.field private mCurArgData:Ljava/lang/String;

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGenerateHprofForAll:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mRequestAnrTraces:Z

.field private mRequestDumpsysMemInfo:Z

.field private mScriptFileName:Ljava/lang/String;

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 132
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    .line 112
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 115
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 118
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 121
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 122
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 123
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 124
    iput-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 127
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileName:Ljava/lang/String;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 133
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 135
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 137
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/monkey/Monkey;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/commands/monkey/Monkey;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/commands/monkey/Monkey;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportProcRank()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return v0
.end method

.method private checkInternalConfiguration()Z
    .registers 4

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, lastKeyName:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceRandom;->getLastKeyName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_18

    move-result-object v0

    .line 615
    :goto_5
    const-string v1, "TAG_LAST_KEYCODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 616
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Key names array malformed (internal error)."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 617
    const/4 v1, 0x0

    .line 620
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15

    .line 613
    :catch_18
    move-exception v1

    goto :goto_5
.end method

.method private checkNativeCrashes()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 838
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, tombstones:[Ljava/lang/String;
    if-eqz v5, :cond_c

    array-length v7, v5

    if-nez v7, :cond_11

    .line 842
    :cond_c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    move v7, v8

    .line 857
    :goto_10
    return v7

    .line 847
    :cond_11
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 848
    .local v3, newStones:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_19
    if-ge v1, v2, :cond_23

    aget-object v6, v0, v1

    .line 849
    .local v6, x:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 852
    .end local v6           #x:Ljava/lang/String;
    :cond_23
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_2f

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_35

    :cond_2f
    const/4 v7, 0x1

    move v4, v7

    .line 855
    .local v4, result:Z
    :goto_31
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    move v7, v4

    .line 857
    goto :goto_10

    .end local v4           #result:Z
    :cond_35
    move v4, v8

    .line 852
    goto :goto_31
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "reportName"
    .parameter "command"

    .prologue
    const-string v11, ":"

    .line 275
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 279
    .local v5, rt:Ljava/lang/Runtime;
    :try_start_1e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 282
    .local v4, p:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 283
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 284
    .local v2, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 286
    .local v1, inBuffer:Ljava/io/BufferedReader;
    :goto_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_6a

    .line 287
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3f} :catch_40

    goto :goto_34

    .line 292
    .end local v1           #inBuffer:Ljava/io/BufferedReader;
    .end local v2           #inReader:Ljava/io/InputStreamReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v4           #p:Ljava/lang/Process;
    .end local v6           #s:Ljava/lang/String;
    :catch_40
    move-exception v8

    move-object v0, v8

    .line 293
    .local v0, e:Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "// Exception from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    .end local v0           #e:Ljava/lang/Exception;
    :goto_69
    return-void

    .line 290
    .restart local v1       #inBuffer:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/InputStreamReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #p:Ljava/lang/Process;
    .restart local v6       #s:Ljava/lang/String;
    :cond_6a
    :try_start_6a
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 291
    .local v7, status:I
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "// "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_90} :catch_40

    goto :goto_69
.end method

.method private getMainApps()Z
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const-string v9, ")"

    const-string v9, " (from package "

    .line 666
    :try_start_6
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 667
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d
    if-ge v5, v0, :cond_121

    .line 668
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v6, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 670
    .local v3, category:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_27

    .line 671
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    :cond_27
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v6, v10, v11}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 674
    .local v7, mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_37

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_52

    .line 675
    :cond_37
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "// Warning: no activities found for category "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 667
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 678
    :cond_52
    iget v9, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v9, v14, :cond_6e

    .line 679
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "// Selecting main activities from category "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 681
    :cond_6e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 682
    .local v1, NA:I
    const/4 v2, 0x0

    .local v2, a:I
    :goto_73
    if-ge v2, v1, :cond_4f

    .line 683
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 684
    .local v8, r:Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-eqz v9, :cond_91

    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_de

    .line 686
    :cond_91
    iget v9, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lt v9, v14, :cond_c7

    .line 687
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "//   + Using main activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 693
    :cond_c7
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_db
    :goto_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 697
    :cond_de
    iget v9, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_db

    .line 698
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "//   - NOT USING main activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_115} :catch_116

    goto :goto_db

    .line 707
    .end local v0           #N:I
    .end local v1           #NA:I
    .end local v2           #a:I
    .end local v3           #category:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #mainApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #r:Landroid/content/pm/ResolveInfo;
    :catch_116
    move-exception v9

    move-object v4, v9

    .line 708
    .local v4, e:Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "** Failed talking with package manager!"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v9, v13

    .line 717
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_120
    return v9

    .line 712
    .restart local v0       #N:I
    .restart local v5       #i:I
    :cond_121
    iget-object v9, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_132

    .line 713
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "** No activities found to run, monkey aborted."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v9, v13

    .line 714
    goto :goto_120

    .line 717
    :cond_132
    const/4 v9, 0x1

    goto :goto_120
.end method

.method private getSystemInterfaces()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 629
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 630
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_14

    .line 631
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 655
    :goto_13
    return v1

    .line 635
    :cond_14
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 636
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v1, :cond_2d

    .line 637
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 638
    goto :goto_13

    .line 641
    :cond_2d
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 642
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_46

    .line 643
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 644
    goto :goto_13

    .line 648
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 649
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_58} :catch_5a

    .line 655
    const/4 v1, 0x1

    goto :goto_13

    .line 650
    :catch_5a
    move-exception v1

    move-object v0, v1

    .line 651
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    .line 652
    goto :goto_13
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 304
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 305
    .local v0, resultCode:I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 306
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 940
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 941
    const/4 v1, 0x0

    .line 945
    :goto_8
    return-object v1

    .line 943
    :cond_9
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 944
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    move-object v1, v0

    .line 945
    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 876
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    move-object v1, v3

    .line 897
    :goto_b
    return-object v1

    .line 879
    :cond_c
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 880
    .local v0, arg:Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v1, v3

    .line 881
    goto :goto_b

    .line 883
    :cond_1c
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 884
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v3

    .line 885
    goto :goto_b

    .line 887
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_50

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_50

    .line 888
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4c

    .line 889
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 890
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 892
    :cond_4c
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 893
    goto :goto_b

    .line 896
    :cond_50
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 897
    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 906
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 907
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 914
    :goto_6
    return-object v1

    .line 909
    :cond_7
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 910
    const/4 v1, 0x0

    goto :goto_6

    .line 912
    :cond_10
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 913
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    move-object v1, v0

    .line 914
    goto :goto_6
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .registers 8
    .parameter "opt"

    .prologue
    .line 926
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v1

    .line 931
    .local v1, result:J
    return-wide v1

    .line 927
    .end local v1           #result:J
    :catch_9
    move-exception v3

    move-object v0, v3

    .line 928
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 929
    throw v0
.end method

.method private processOptions()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 501
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v8, :cond_c

    .line 502
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v4, v9

    .line 599
    :goto_b
    return v4

    .line 508
    :cond_c
    :goto_c
    :try_start_c
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v3

    .local v3, opt:Ljava/lang/String;
    if-eqz v3, :cond_202

    .line 509
    const-string v4, "-s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 510
    const-string v4, "Seed"

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_c

    .line 574
    .end local v3           #opt:Ljava/lang/String;
    :catch_23
    move-exception v4

    move-object v2, v4

    .line 575
    .local v2, ex:Ljava/lang/RuntimeException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v4, v9

    .line 577
    goto :goto_b

    .line 511
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #opt:Ljava/lang/String;
    :cond_46
    :try_start_46
    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 512
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 513
    :cond_58
    const-string v4, "-c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 514
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 515
    :cond_6a
    const-string v4, "-v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 516
    iget v4, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_c

    .line 517
    :cond_79
    const-string v4, "--ignore-crashes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 518
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_c

    .line 519
    :cond_85
    const-string v4, "--ignore-timeouts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 520
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto/16 :goto_c

    .line 521
    :cond_92
    const-string v4, "--ignore-security-exceptions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 522
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto/16 :goto_c

    .line 523
    :cond_9f
    const-string v4, "--monitor-native-crashes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 524
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto/16 :goto_c

    .line 525
    :cond_ac
    const-string v4, "--kill-process-after-error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 526
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_c

    .line 527
    :cond_b9
    const-string v4, "--hprof"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 528
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_c

    .line 529
    :cond_c6
    const-string v4, "--hprof-all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 530
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprofForAll:Z

    goto/16 :goto_c

    .line 531
    :cond_d3
    const-string v4, "--pct-touch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 532
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x0

    const-string v6, "touch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 534
    :cond_ea
    const-string v4, "--pct-motion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 535
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x1

    const-string v6, "motion events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 537
    :cond_101
    const-string v4, "--pct-trackball"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 538
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x2

    const-string v6, "trackball events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 540
    :cond_118
    const-string v4, "--pct-nav"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 541
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x3

    const-string v6, "nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 543
    :cond_12f
    const-string v4, "--pct-majornav"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    .line 544
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x4

    const-string v6, "major nav events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 546
    :cond_146
    const-string v4, "--pct-appswitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 547
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x6

    const-string v6, "app switch events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 549
    :cond_15d
    const-string v4, "--pct-flip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    .line 550
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/4 v5, 0x7

    const-string v6, "keyboard flip percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 552
    :cond_174
    const-string v4, "--pct-anyevent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18c

    .line 553
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/16 v5, 0x8

    const-string v6, "any events percentage"

    invoke-direct {p0, v6}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v6

    neg-long v6, v6

    long-to-float v6, v6

    aput v6, v4, v5

    goto/16 :goto_c

    .line 555
    :cond_18c
    const-string v4, "--throttle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 556
    const-string v4, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_c

    .line 557
    :cond_19e
    const-string v4, "--wait-dbg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 559
    const-string v4, "--dbg-no-events"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 560
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_c

    .line 561
    :cond_1b3
    const-string v4, "--port"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c6

    .line 562
    const-string v4, "Server port to listen on for commands"

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_c

    .line 563
    :cond_1c6
    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 564
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileName:Ljava/lang/String;

    goto/16 :goto_c

    .line 565
    :cond_1d6
    const-string v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e4

    .line 566
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v4, v9

    .line 567
    goto/16 :goto_b

    .line 569
    :cond_1e4
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V
    :try_end_1ff
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_1ff} :catch_23

    move v4, v9

    .line 571
    goto/16 :goto_b

    .line 582
    :cond_202
    iget v4, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_220

    .line 583
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, countStr:Ljava/lang/String;
    if-nez v0, :cond_21a

    .line 585
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "** Error: Count not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v4, v9

    .line 587
    goto/16 :goto_b

    .line 591
    :cond_21a
    :try_start_21a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_220
    .catch Ljava/lang/NumberFormatException; {:try_start_21a .. :try_end_220} :catch_223

    .end local v0           #countStr:Ljava/lang/String;
    :cond_220
    move v4, v8

    .line 599
    goto/16 :goto_b

    .line 592
    .restart local v0       #countStr:Ljava/lang/String;
    :catch_223
    move-exception v4

    move-object v1, v4

    .line 593
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "** Error: Count is not a number"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    move v4, v9

    .line 595
    goto/16 :goto_b
.end method

.method private reportAnrTraces()V
    .registers 3

    .prologue
    .line 251
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_d

    .line 254
    :goto_5
    const-string v0, "anr traces"

    const-string v1, "cat /data/anr/traces.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void

    .line 252
    :catch_d
    move-exception v0

    goto :goto_5
.end method

.method private reportDumpsysMemInfo()V
    .registers 3

    .prologue
    .line 264
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private reportProcRank()V
    .registers 3

    .prologue
    const-string v1, "procrank"

    .line 242
    const-string v0, "procrank"

    const-string v0, "procrank"

    invoke-direct {p0, v1, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .registers 16
    .parameter "args"

    .prologue
    .line 316
    move-object v6, p1

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v12, :cond_15

    aget-object v13, v6, v10

    .line 317
    .local v13, s:Ljava/lang/String;
    const-string v0, "--wait-dbg"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 318
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 316
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 323
    .end local v13           #s:Ljava/lang/String;
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 324
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 329
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 333
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2a
    const/16 v0, 0x9

    if-ge v9, v0, :cond_37

    .line 334
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v1, 0x3f80

    aput v1, v0, v9

    .line 333
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 337
    :cond_37
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 338
    const/4 v0, -0x1

    .line 490
    .end local p1
    :goto_3e
    return v0

    .line 342
    .restart local p1
    :cond_3f
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 343
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v1, "android.intent.category.MONKEY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_55
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_e5

    .line 348
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":Monkey: seed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b2

    .line 350
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 351
    .end local p1
    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":AllowPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8d

    .line 355
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b2
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e5

    .line 356
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 357
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 358
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":IncludeCategory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c0

    .line 363
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e5
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 364
    const/4 v0, -0x2

    goto/16 :goto_3e

    .line 367
    :cond_ee
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 368
    const/4 v0, -0x3

    goto/16 :goto_3e

    .line 371
    :cond_f7
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v0

    if-nez v0, :cond_100

    .line 372
    const/4 v0, -0x4

    goto/16 :goto_3e

    .line 375
    :cond_100
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileName:Ljava/lang/String;

    if-eqz v0, :cond_121

    .line 377
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceScript;

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 378
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v1}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 406
    :goto_116
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v0}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v0

    if-nez v0, :cond_199

    .line 407
    const/4 v0, -0x5

    goto/16 :goto_3e

    .line 379
    :cond_121
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_141

    .line 381
    :try_start_126
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork;

    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_12f} :catch_135

    .line 386
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto :goto_116

    .line 382
    :catch_135
    move-exception v0

    move-object v8, v0

    .line 383
    .local v8, e:Ljava/io/IOException;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error binding to network socket."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    const/4 v0, -0x5

    goto/16 :goto_3e

    .line 389
    .end local v8           #e:Ljava/io/IOException;
    :cond_141
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_160

    .line 390
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "// Seeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    :cond_160
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceRandom;

    iget-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    invoke-direct/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeySourceRandom;-><init>(JLjava/util/ArrayList;J)V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 393
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v0, v1}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 395
    const/4 v9, 0x0

    :goto_175
    const/16 v0, 0x9

    if-ge v9, v0, :cond_190

    .line 396
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v0, v0, v9

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18d

    .line 397
    iget-object p1, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast p1, Lcom/android/commands/monkey/MonkeySourceRandom;

    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    aget v0, v0, v9

    invoke-virtual {p1, v9, v0}, Lcom/android/commands/monkey/MonkeySourceRandom;->setFactors(IF)V

    .line 395
    :cond_18d
    add-int/lit8 v9, v9, 0x1

    goto :goto_175

    .line 402
    :cond_190
    iget-object p1, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast p1, Lcom/android/commands/monkey/MonkeySourceRandom;

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateActivity()V

    goto/16 :goto_116

    .line 410
    :cond_199
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileName:Ljava/lang/String;

    if-eqz v0, :cond_1aa

    .line 415
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    iget-object p1, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    check-cast p1, Lcom/android/commands/monkey/MonkeySourceScript;

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceScript;->getOneRoundEventCount()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 420
    :cond_1aa
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v0, :cond_1b1

    .line 421
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 423
    :cond_1b1
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprofForAll:Z

    if-eqz v0, :cond_1b8

    .line 424
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->signalAllProcesses()V

    .line 427
    :cond_1b8
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->start()V

    .line 428
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->runMonkeyCycles()I

    move-result v7

    .line 429
    .local v7, crashedAtCycle:I
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->stop()V

    .line 431
    monitor-enter p0

    .line 432
    :try_start_1c7
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v0, :cond_1d1

    .line 433
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 436
    :cond_1d1
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v0, :cond_1db

    .line 437
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 440
    :cond_1db
    monitor-exit p0
    :try_end_1dc
    .catchall {:try_start_1c7 .. :try_end_1dc} :catchall_287

    .line 442
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    if-eqz v0, :cond_1ee

    .line 443
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->signalPersistentProcesses()V

    .line 444
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_1ee

    .line 445
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "// Generated profiling reports in /data/misc"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    :cond_1ee
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprofForAll:Z

    if-eqz v0, :cond_200

    .line 450
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->signalAllProcesses()V

    .line 451
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_200

    .line 452
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "// Generated profiling reports in /data/misc"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    :cond_200
    :try_start_200
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 458
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->unregister(Landroid/app/IActivityManager;)V
    :try_end_20d
    .catch Landroid/os/RemoteException; {:try_start_200 .. :try_end_20d} :catch_28a

    .line 468
    :cond_20d
    :goto_20d
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_249

    .line 469
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ":Dropped: keys="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 470
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(J)V

    .line 471
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " pointers="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 472
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(J)V

    .line 473
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " trackballs="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 474
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(J)V

    .line 475
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " flips="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 476
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-wide v1, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->println(J)V

    .line 480
    :cond_249
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->dump()V

    .line 482
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v7, v0, :cond_297

    .line 483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** System appears to have crashed at event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using seed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v7

    .line 485
    goto/16 :goto_3e

    .line 440
    :catchall_287
    move-exception v0

    :try_start_288
    monitor-exit p0
    :try_end_289
    .catchall {:try_start_288 .. :try_end_289} :catchall_287

    throw v0

    .line 459
    :catch_28a
    move-exception v0

    move-object v8, v0

    .line 462
    .local v8, e:Landroid/os/RemoteException;
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-lt v7, v0, :cond_20d

    .line 463
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    const/4 v1, 0x1

    sub-int v7, v0, v1

    goto/16 :goto_20d

    .line 487
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_297
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v0, :cond_2a2

    .line 488
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "// Monkey finished"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    :cond_2a2
    const/4 v0, 0x0

    goto/16 :goto_3e
.end method

.method private runMonkeyCycles()I
    .registers 13

    .prologue
    const/4 v11, 0x1

    const-wide/16 v9, 0x1

    const/4 v8, 0x0

    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, i:I
    const/4 v3, 0x0

    .line 731
    .local v3, lastKey:I
    const/4 v4, 0x0

    .line 733
    .local v4, systemCrashed:Z
    :cond_7
    :goto_7
    if-nez v4, :cond_e4

    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    if-ge v1, v5, :cond_e4

    .line 734
    monitor-enter p0

    .line 735
    :try_start_e
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    if-eqz v5, :cond_18

    .line 736
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportAnrTraces()V

    .line 737
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 739
    :cond_18
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    if-eqz v5, :cond_22

    .line 740
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->reportDumpsysMemInfo()V

    .line 741
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 743
    :cond_22
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    if-eqz v5, :cond_40

    .line 745
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->checkNativeCrashes()Z

    move-result v5

    if-eqz v5, :cond_40

    if-lez v1, :cond_40

    .line 746
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "** New native crash detected."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 747
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-nez v5, :cond_3d

    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    if-eqz v5, :cond_66

    :cond_3d
    move v5, v11

    :goto_3e
    iput-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    .line 750
    :cond_40
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    if-eqz v5, :cond_68

    .line 751
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "** Monkey aborted due to error."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Events injected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    monitor-exit p0

    move v5, v1

    .line 795
    :goto_65
    return v5

    :cond_66
    move v5, v8

    .line 747
    goto :goto_3e

    .line 755
    :cond_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_70

    .line 760
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    if-eqz v5, :cond_73

    .line 761
    add-int/lit8 v1, v1, 0x1

    .line 762
    goto :goto_7

    .line 755
    :catchall_70
    move-exception v5

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v5

    .line 765
    :cond_73
    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v5, :cond_97

    rem-int/lit8 v5, v1, 0x64

    if-nez v5, :cond_97

    if-eqz v1, :cond_97

    if-nez v3, :cond_97

    .line 766
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    // Sending event #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 769
    :cond_97
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v5}, Lcom/android/commands/monkey/MonkeyEventSource;->getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;

    move-result-object v0

    .line 770
    .local v0, ev:Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v0, :cond_e4

    .line 772
    instance-of v5, v0, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    if-nez v5, :cond_a5

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 775
    :cond_a5
    iget-object v5, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    iget-object v6, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/commands/monkey/MonkeyEvent;->injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I

    move-result v2

    .line 776
    .local v2, injectCode:I
    if-nez v2, :cond_d2

    .line 777
    instance-of v5, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    if-eqz v5, :cond_bc

    .line 778
    iget-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    goto/16 :goto_7

    .line 779
    :cond_bc
    instance-of v5, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    if-eqz v5, :cond_c7

    .line 780
    iget-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    goto/16 :goto_7

    .line 781
    :cond_c7
    instance-of v5, v0, Lcom/android/commands/monkey/MonkeyFlipEvent;

    if-eqz v5, :cond_7

    .line 782
    iget-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    goto/16 :goto_7

    .line 784
    :cond_d2
    const/4 v5, -0x1

    if-ne v2, v5, :cond_d8

    .line 785
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 786
    :cond_d8
    const/4 v5, -0x2

    if-ne v2, v5, :cond_7

    .line 787
    iget-boolean v5, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    if-nez v5, :cond_e2

    move v4, v11

    :goto_e0
    goto/16 :goto_7

    :cond_e2
    move v4, v8

    goto :goto_e0

    .line 795
    .end local v0           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    .end local v2           #injectCode:I
    :cond_e4
    iget v5, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto/16 :goto_65
.end method

.method private showUsage()V
    .registers 3

    .prologue
    .line 952
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: monkey [-p ALLOWED_PACKAGE [-p ALLOWED_PACKAGE] ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [-c MAIN_CATEGORY [-c MAIN_CATEGORY] ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 954
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--ignore-crashes] [--ignore-timeouts]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 955
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--ignore-security-exceptions] [--monitor-native-crashes]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 956
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--kill-process-after-error] [--hprof]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 957
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--pct-touch PERCENT] [--pct-motion PERCENT]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--pct-trackball PERCENT] [--pct-syskeys PERCENT]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 959
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--pct-nav PERCENT] [--pct-majornav PERCENT]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 960
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--pct-appswitch PERCENT] [--pct-flip PERCENT]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 961
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--pct-anyevent PERCENT]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--wait-dbg] [--dbg-no-events] [-f scriptfile]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 963
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [--port port]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 964
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              [-s SEED] [-v [-v] ...] [--throttle MILLISEC]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 965
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "              COUNT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method private signalAllProcesses()V
    .registers 4

    .prologue
    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->signalAllProcesses(I)V

    .line 823
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_1c

    .line 824
    const-wide/16 v1, 0x7d0

    :try_start_a
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 825
    monitor-exit p0

    .line 830
    :goto_e
    return-void

    .line 825
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_1c

    .line 826
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 827
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 828
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1c
    move-exception v1

    goto :goto_e
.end method

.method private signalPersistentProcesses()V
    .registers 4

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->signalPersistentProcesses(I)V

    .line 806
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_1c

    .line 807
    const-wide/16 v1, 0x7d0

    :try_start_a
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 808
    monitor-exit p0

    .line 813
    :goto_e
    return-void

    .line 808
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_1c

    .line 809
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Failed talking with activity manager!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 811
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1c
    move-exception v1

    goto :goto_e
.end method
