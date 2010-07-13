.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    }
.end annotation


# static fields
.field public static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field public static final ARGUMENT_INCLUDE_PERF:Ljava/lang/String; = "perf"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field public static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field public static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    .line 605
    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestRunner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    return v0
.end method

.method private generateCoverageReport()V
    .registers 11

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, coverageFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, coverageFile:Ljava/io/File;
    :try_start_9
    const-string v5, "com.vladium.emma.rt.RT"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 470
    .local v4, emmaRTClass:Ljava/lang/Class;
    const-string v5, "dumpCoverageData"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 473
    .local v2, dumpCoverageMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v6, "coverageFilePath"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v6, "stream"

    const-string v7, "Generated code coverage data to %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_5d} :catch_66
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_5d} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_5d} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_5d} :catch_78
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_5d} :catch_7e

    .line 493
    .end local v2           #dumpCoverageMethod:Ljava/lang/reflect/Method;
    .end local v4           #emmaRTClass:Ljava/lang/Class;
    :goto_5d
    return-void

    .line 480
    :catch_5e
    move-exception v5

    move-object v3, v5

    .line 481
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "Is emma jar on classpath?"

    invoke-direct {p0, v5, v3}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5d

    .line 482
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_66
    move-exception v5

    move-object v3, v5

    .line 483
    .local v3, e:Ljava/lang/SecurityException;
    invoke-direct {p0, v3}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_5d

    .line 484
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_6c
    move-exception v5

    move-object v3, v5

    .line 485
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v3}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_5d

    .line 486
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_72
    move-exception v5

    move-object v3, v5

    .line 487
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v3}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_5d

    .line 488
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_78
    move-exception v5

    move-object v3, v5

    .line 489
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v3}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_5d

    .line 490
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_7e
    move-exception v5

    move-object v3, v5

    .line 491
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v3}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_5d
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5
    .parameter "arguments"
    .parameter "tag"

    .prologue
    .line 384
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, tagString:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    goto :goto_29
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .registers 3
    .parameter "sizeArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const-string v0, "small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 394
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    .line 400
    :goto_a
    return-object v0

    .line 395
    :cond_b
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 396
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    goto :goto_a

    .line 397
    :cond_16
    const-string v0, "large"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 398
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    goto :goto_a

    .line 400
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 6
    .parameter "testClassName"
    .parameter "testSuiteBuilder"

    .prologue
    .line 368
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 369
    .local v0, methodSeparatorIndex:I
    const/4 v1, 0x0

    .line 371
    .local v1, testMethodName:Ljava/lang/String;
    if-lez v0, :cond_14

    .line 372
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 375
    :cond_14
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 377
    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .registers 9
    .parameter "testClassArg"
    .parameter "testSuiteBuilder"

    .prologue
    .line 355
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, testClasses:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 357
    .local v3, testClass:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 359
    .end local v3           #testClass:Ljava/lang/String;
    :cond_13
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 506
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 507
    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter "hint"
    .parameter "e"

    .prologue
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, msg:Ljava/lang/String;
    const-string v1, "InstrumentationTestRunner"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v2, "stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method


# virtual methods
.method public getAllTests()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .registers 2

    .prologue
    .line 380
    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "arguments"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 270
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v12

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 272
    .local v0, apkPaths:[Ljava/lang/String;
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    .line 274
    const/4 v6, 0x0

    .line 275
    .local v6, testSizePredicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/test/suitebuilder/TestMethod;>;"
    const/4 v3, 0x0

    .line 276
    .local v3, includePerformance:Z
    const/4 v5, 0x0

    .line 277
    .local v5, testClassesArg:Ljava/lang/String;
    const/4 v4, 0x0

    .line 279
    .local v4, logOnly:Z
    if-eqz p1, :cond_83

    .line 281
    const-string v9, "class"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    const-string v9, "debug"

    invoke-direct {p0, p1, v9}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    .line 283
    const-string v9, "count"

    invoke-direct {p0, p1, v9}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    .line 284
    const-string v9, "suiteAssignment"

    invoke-direct {p0, p1, v9}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    .line 285
    const-string v9, "package"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    .line 286
    const-string v9, "size"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v6

    .line 288
    const-string v9, "perf"

    invoke-direct {p0, p1, v9}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    .line 289
    const-string v9, "log"

    invoke-direct {p0, p1, v9}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    .line 290
    const-string v9, "coverage"

    invoke-direct {p0, p1, v9}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    .line 291
    const-string v9, "coverageFile"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    .line 294
    :try_start_71
    const-string v9, "delay_msec"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, delay:Ljava/lang/Object;
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_83} :catch_102

    .line 301
    .end local v1           #delay:Ljava/lang/Object;
    :cond_83
    :goto_83
    new-instance v8, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 304
    .local v8, testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    if-eqz v6, :cond_a1

    .line 305
    new-array v9, v11, [Lcom/android/internal/util/Predicate;

    aput-object v6, v9, v12

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 307
    :cond_a1
    if-nez v3, :cond_ac

    .line 308
    new-array v9, v11, [Lcom/android/internal/util/Predicate;

    sget-object v10, Landroid/test/suitebuilder/TestPredicates;->REJECT_PERFORMANCE:Lcom/android/internal/util/Predicate;

    aput-object v10, v9, v12

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 311
    :cond_ac
    if-nez v5, :cond_121

    .line 312
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    if-eqz v9, :cond_10d

    .line 313
    new-array v9, v11, [Ljava/lang/String;

    iget-object v10, p0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 328
    :goto_bb
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 330
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v9

    iput-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    .line 331
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    .line 332
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v9, p0}, Landroid/test/AndroidTestRunner;->setInstrumentaiton(Landroid/app/Instrumentation;)V

    .line 333
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v9, v4}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    .line 334
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    .line 335
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v9}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iput v9, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    .line 336
    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    if-eqz v9, :cond_125

    .line 337
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v10, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    invoke-direct {v10, p0}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    invoke-virtual {v9, v10}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 342
    :goto_fe
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->start()V

    .line 343
    return-void

    .line 296
    .end local v8           #testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    :catch_102
    move-exception v9

    move-object v2, v9

    .line 297
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "InstrumentationTestRunner"

    const-string v10, "Invalid delay_msec parameter"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_83

    .line 315
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #testSuiteBuilder:Landroid/test/suitebuilder/TestSuiteBuilder;
    :cond_10d
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v7

    .line 316
    .local v7, testSuite:Ljunit/framework/TestSuite;
    if-eqz v7, :cond_117

    .line 317
    invoke-virtual {v8, v7}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_bb

    .line 321
    :cond_117
    new-array v9, v11, [Ljava/lang/String;

    const-string v10, ""

    aput-object v10, v9, v12

    invoke-virtual {v8, v9}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_bb

    .line 325
    .end local v7           #testSuite:Ljunit/framework/TestSuite;
    :cond_121
    invoke-direct {p0, v5, v8}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    goto :goto_bb

    .line 339
    :cond_125
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v10, Landroid/test/TestPrinter;

    const-string v11, "TestRunner"

    invoke-direct {v10, v11, v12}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 340
    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v10, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    iget v11, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    invoke-direct {v10, p0, v11}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    invoke-virtual {v9, v10}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    goto :goto_fe
.end method

.method public onStart()V
    .registers 15

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 408
    iget-boolean v7, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    if-eqz v7, :cond_20

    .line 409
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v8, "id"

    const-string v9, "InstrumentationTestRunner"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v8, "numtests"

    iget v9, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    const/4 v7, -0x1

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    .line 443
    :goto_1f
    return-void

    .line 413
    :cond_20
    iget-boolean v7, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    if-eqz v7, :cond_27

    .line 414
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 417
    :cond_27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 420
    .local v6, writer:Ljava/io/PrintStream;
    :try_start_31
    new-instance v1, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    invoke-direct {v1, p0, v6}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    .line 422
    .local v1, resultPrinter:Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v7, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 425
    .local v4, startTime:J
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v7}, Landroid/test/AndroidTestRunner;->runTest()V

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, v7, v4

    .line 428
    .local v2, runTime:J
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v7}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    move-result-object v7

    invoke-virtual {v1, v7, v2, v3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->print(Ljunit/framework/TestResult;J)V
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_84

    .line 430
    iget-object v7, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v8, "stream"

    const-string v9, "\nTest results for %s=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v12}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-boolean v7, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v7, :cond_7a

    .line 436
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 438
    :cond_7a
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 440
    const/4 v7, -0x1

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto :goto_1f

    .line 430
    .end local v1           #resultPrinter:Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    .end local v2           #runTime:J
    .end local v4           #startTime:J
    :catchall_84
    move-exception v7

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_ac

    .line 436
    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    .line 438
    :cond_ac
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 440
    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    throw v7
.end method
