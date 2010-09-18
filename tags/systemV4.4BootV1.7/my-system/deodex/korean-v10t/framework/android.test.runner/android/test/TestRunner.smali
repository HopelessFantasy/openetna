.class public Landroid/test/TestRunner;
.super Ljava/lang/Object;
.source "TestRunner.java"

# interfaces
.implements Landroid/test/PerformanceTestCase$Intermediates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TestRunner$Listener;,
        Landroid/test/TestRunner$IntermediateTime;,
        Landroid/test/TestRunner$JunitTestSuite;
    }
.end annotation


# static fields
.field public static final CLEARSCREEN:I = 0x0

.field public static final PERFORMANCE:I = 0x1

.field public static final PROFILING:I = 0x2

.field public static final REGRESSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TestHarness"

.field private static mJUnitClass:Ljava/lang/Class;

.field private static mRunnableClass:Ljava/lang/Class;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndTime:J

.field private mFailed:I

.field mIntermediates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalIterations:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPassed:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 73
    :try_start_0
    const-string v1, "java.lang.Runnable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    .line 74
    const-string v1, "junit.framework.TestCase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 78
    return-void

    .line 75
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 76
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/test/TestRunner;->mMode:I

    .line 56
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    .line 161
    iput-object p1, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroid/test/TestRunner;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/test/TestRunner;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    return-void
.end method

.method public static countJunitTests(Ljava/lang/Class;)I
    .registers 3
    .parameter "clazz"

    .prologue
    .line 644
    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 645
    .local v0, allTestMethods:[Ljava/lang/reflect/Method;
    array-length v1, v0

    .line 647
    .local v1, numberofMethods:I
    return v1
.end method

.method public static countTests(Landroid/content/Context;Ljava/lang/String;)I
    .registers 13
    .parameter "c"
    .parameter "className"

    .prologue
    const/4 v10, 0x1

    .line 686
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 687
    .local v3, clazz:Ljava/lang/Class;
    invoke-static {v3}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 688
    .local v7, method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_25

    .line 690
    invoke-static {v7}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, children:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 692
    .local v8, rv:I
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_17
    if-ge v5, v6, :cond_23

    aget-object v1, v0, v5

    .line 693
    .local v1, child:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/test/TestRunner;->countTests(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    .line 692
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .end local v1           #child:Ljava/lang/String;
    :cond_23
    move v9, v8

    .line 705
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #children:[Ljava/lang/String;
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v8           #rv:I
    :goto_24
    return v9

    .line 696
    .restart local v3       #clazz:Ljava/lang/Class;
    .restart local v7       #method:Ljava/lang/reflect/Method;
    :cond_25
    sget-object v9, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2f

    move v9, v10

    .line 697
    goto :goto_24

    .line 698
    :cond_2f
    sget-object v9, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 699
    invoke-static {v3}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_3a} :catch_3c

    move-result v9

    goto :goto_24

    .line 701
    .end local v3           #clazz:Ljava/lang/Class;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_3c
    move-exception v9

    move-object v4, v9

    .local v4, e:Ljava/lang/ClassNotFoundException;
    move v9, v10

    .line 702
    goto :goto_24

    .line 705
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    .restart local v3       #clazz:Ljava/lang/Class;
    .restart local v7       #method:Ljava/lang/reflect/Method;
    :cond_40
    const/4 v9, 0x0

    goto :goto_24
.end method

.method private finished(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 188
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 190
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->finished(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 192
    :cond_17
    return-void
.end method

.method public static getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 10
    .parameter "clazz"

    .prologue
    .line 617
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 618
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 619
    .local v7, numOfMethods:I
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v4, :cond_17

    aget-object v5, v1, v2

    .line 620
    .local v5, m:Ljava/lang/reflect/Method;
    invoke-static {v5}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    .line 621
    .local v6, mTrue:Z
    if-eqz v6, :cond_14

    .line 622
    add-int/lit8 v7, v7, 0x1

    .line 619
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 625
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #mTrue:Z
    :cond_17
    const/4 v3, 0x0

    .line 626
    .local v3, index:I
    new-array v8, v7, [Ljava/lang/reflect/Method;

    .line 627
    .local v8, testMethods:[Ljava/lang/reflect/Method;
    move-object v1, v0

    array-length v4, v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v4, :cond_2e

    aget-object v5, v1, v2

    .line 628
    .restart local v5       #m:Ljava/lang/reflect/Method;
    invoke-static {v5}, Landroid/test/TestRunner;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    .line 629
    .restart local v6       #mTrue:Z
    if-eqz v6, :cond_2b

    .line 630
    aput-object v5, v8, v3

    .line 631
    add-int/lit8 v3, v3, 0x1

    .line 627
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 634
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #mTrue:Z
    :cond_2e
    return-object v8
.end method

.method public static getChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "c"
    .parameter "className"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 555
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 556
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, testChildren:[Ljava/lang/String;
    if-nez v2, :cond_2b

    move v4, v5

    :goto_d
    if-nez v3, :cond_2d

    :goto_f
    and-int/2addr v4, v5

    if-eqz v4, :cond_2f

    .line 558
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t get children method for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2b
    move v4, v6

    .line 557
    goto :goto_d

    :cond_2d
    move v5, v6

    goto :goto_f

    .line 561
    :cond_2f
    if-eqz v2, :cond_49

    .line 562
    invoke-static {v2}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, children:[Ljava/lang/String;
    if-eqz v3, :cond_47

    .line 564
    array-length v4, v3

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v0, v4, [Ljava/lang/String;

    .line 565
    .local v0, allChildren:[Ljava/lang/String;
    array-length v4, v1

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    array-length v4, v1

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    .line 576
    .end local v0           #allChildren:[Ljava/lang/String;
    .end local v1           #children:[Ljava/lang/String;
    :goto_46
    return-object v4

    .restart local v1       #children:[Ljava/lang/String;
    :cond_47
    move-object v4, v1

    .line 569
    goto :goto_46

    .line 572
    .end local v1           #children:[Ljava/lang/String;
    :cond_49
    if-eqz v3, :cond_4d

    move-object v4, v3

    .line 573
    goto :goto_46

    .line 576
    :cond_4d
    const/4 v4, 0x0

    goto :goto_46
.end method

.method public static getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .registers 3
    .parameter "m"

    .prologue
    .line 581
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 582
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "children method is not static"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_25

    .line 585
    .end local p0
    :catch_12
    move-exception v0

    .line 588
    :goto_13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_16
    return-object v0

    .line 584
    .restart local p0
    :cond_17
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_19
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_23} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_23} :catch_25

    move-object v0, p0

    goto :goto_16

    .line 586
    :catch_25
    move-exception v0

    goto :goto_13
.end method

.method public static getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .parameter "c"
    .parameter "className"

    .prologue
    .line 548
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 551
    :goto_c
    return-object v0

    .line 549
    :catch_d
    move-exception v0

    .line 551
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .parameter "clazz"

    .prologue
    const/4 v2, 0x0

    .line 539
    :try_start_1
    const-string v1, "children"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 543
    :goto_a
    return-object v0

    .line 540
    :catch_b
    move-exception v0

    move-object v0, v2

    .line 543
    goto :goto_a
.end method

.method public static getTestChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "c"
    .parameter "className"

    .prologue
    .line 593
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 595
    .local v0, clazz:Ljava/lang/Class;
    sget-object v2, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 596
    invoke-static {v0}, Landroid/test/TestRunner;->getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v2

    .line 601
    .end local v0           #clazz:Ljava/lang/Class;
    :goto_14
    return-object v2

    .line 598
    :catch_15
    move-exception v2

    move-object v1, v2

    .line 599
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "TestHarness"

    const-string v3, "No class found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static getTestChildren(Ljava/lang/Class;)[Ljava/lang/String;
    .registers 10
    .parameter "clazz"

    .prologue
    .line 605
    invoke-static {p0}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 607
    .local v5, methods:[Ljava/lang/reflect/Method;
    array-length v7, v5

    new-array v6, v7, [Ljava/lang/String;

    .line 608
    .local v6, onScreenTestNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 609
    .local v2, index:I
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v3, :cond_35

    aget-object v4, v0, v1

    .line 610
    .local v4, m:Ljava/lang/reflect/Method;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 611
    add-int/lit8 v2, v2, 0x1

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 613
    .end local v4           #m:Ljava/lang/reflect/Method;
    :cond_35
    return-object v6
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "className"

    .prologue
    .line 715
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 716
    .local v2, indexDot:I
    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 717
    .local v1, indexDollar:I
    if-le v2, v1, :cond_18

    move v0, v2

    .line 718
    .local v0, index:I
    :goto_f
    if-ltz v0, :cond_17

    .line 719
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 721
    :cond_17
    return-object p0

    .end local v0           #index:I
    :cond_18
    move v0, v1

    .line 717
    goto :goto_f
.end method

.method private static isTestMethod(Ljava/lang/reflect/Method;)Z
    .registers 3
    .parameter "m"

    .prologue
    .line 638
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isTestSuite(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "c"
    .parameter "className"

    .prologue
    .line 651
    invoke-static {p0, p1}, Landroid/test/TestRunner;->getChildrenMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    move v0, v3

    .line 654
    .local v0, childrenMethods:Z
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 655
    .local v1, clazz:Ljava/lang/Class;
    sget-object v3, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 656
    invoke-static {v1}, Landroid/test/TestRunner;->countJunitTests(Ljava/lang/Class;)I
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_1b} :catch_23

    move-result v2

    .line 657
    .local v2, numTests:I
    if-lez v2, :cond_1f

    .line 658
    const/4 v0, 0x1

    .line 662
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #numTests:I
    :cond_1f
    :goto_1f
    return v0

    .line 651
    .end local v0           #childrenMethods:Z
    :cond_20
    const/4 v3, 0x0

    move v0, v3

    goto :goto_8

    .line 660
    .restart local v0       #childrenMethods:Z
    :catch_23
    move-exception v3

    goto :goto_1f
.end method

.method private missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "className"
    .parameter "e"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    return-void
.end method

.method private performance(Ljava/lang/String;JILjava/util/List;)V
    .registers 14
    .parameter "className"
    .parameter "itemTimeNS"
    .parameter "iterations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List",
            "<",
            "Landroid/test/TestRunner$IntermediateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p5, intermediates:Ljava/util/List;,"Ljava/util/List<Landroid/test/TestRunner$IntermediateTime;>;"
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 199
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    if-ge v7, v6, :cond_1b

    .line 200
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/test/TestRunner$Listener;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/test/TestRunner$Listener;->performance(Ljava/lang/String;JILjava/util/List;)V

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 205
    :cond_1b
    return-void
.end method

.method private started(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 181
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 183
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->started(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 185
    :cond_17
    return-void
.end method


# virtual methods
.method public addIntermediate(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/test/TestRunner;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/test/TestRunner;->addIntermediate(Ljava/lang/String;J)V

    .line 251
    return-void
.end method

.method public addIntermediate(Ljava/lang/String;J)V
    .registers 6
    .parameter "name"
    .parameter "timeInNS"

    .prologue
    .line 254
    iget-object v0, p0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    new-instance v1, Landroid/test/TestRunner$IntermediateTime;

    invoke-direct {v1, p1, p2, p3}, Landroid/test/TestRunner$IntermediateTime;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public addListener(Landroid/test/TestRunner$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "className"
    .parameter "exception"

    .prologue
    .line 216
    iget v2, p0, Landroid/test/TestRunner;->mFailed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/test/TestRunner;->mFailed:I

    .line 217
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 219
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1, p2}, Landroid/test/TestRunner$Listener;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 221
    :cond_1d
    return-void
.end method

.method public failedCount()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Landroid/test/TestRunner;->mFailed:I

    return v0
.end method

.method public finishProfiling()V
    .registers 1

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 177
    return-void
.end method

.method public finishTiming(Z)V
    .registers 4
    .parameter "realTime"

    .prologue
    .line 258
    if-eqz p1, :cond_9

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    .line 263
    :goto_8
    return-void

    .line 261
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mEndTime:J

    goto :goto_8
.end method

.method public isJunitTest(Ljava/lang/String;)Z
    .registers 6
    .parameter "className"

    .prologue
    const/4 v3, 0x0

    .line 667
    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 668
    .local v1, index:I
    if-ltz v1, :cond_d

    .line 669
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 672
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 673
    .local v0, clazz:Ljava/lang/Class;
    sget-object v2, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1c} :catch_21

    move-result v2

    if-eqz v2, :cond_22

    .line 674
    const/4 v2, 0x1

    .line 678
    .end local v0           #clazz:Ljava/lang/Class;
    :goto_20
    return v2

    .line 676
    :catch_21
    move-exception v2

    :cond_22
    move v2, v3

    .line 678
    goto :goto_20
.end method

.method public passed(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 208
    iget v2, p0, Landroid/test/TestRunner;->mPassed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/test/TestRunner;->mPassed:I

    .line 209
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 210
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 211
    iget-object v2, p0, Landroid/test/TestRunner;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/test/TestRunner$Listener;

    invoke-interface {v2, p1}, Landroid/test/TestRunner$Listener;->passed(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 213
    :cond_1d
    return-void
.end method

.method public passedCount()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Landroid/test/TestRunner;->mPassed:I

    return v0
.end method

.method public run(Ljava/lang/String;)V
    .registers 26
    .parameter "className"

    .prologue
    .line 281
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 283
    .local v7, clazz:Ljava/lang/Class;
    invoke-static {v7}, Landroid/test/TestRunner;->getChildrenMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 284
    .local v15, method:Ljava/lang/reflect/Method;
    if-eqz v15, :cond_29

    .line 285
    invoke-static {v15}, Landroid/test/TestRunner;->getChildren(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, children:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->run([Ljava/lang/String;)V

    .line 390
    .end local v6           #children:[Ljava/lang/String;
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v15           #method:Ljava/lang/reflect/Method;
    :cond_28
    :goto_28
    return-void

    .line 287
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    :cond_29
    sget-object v21, Landroid/test/TestRunner;->mRunnableClass:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_135

    .line 288
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Runnable;

    .line 289
    .local v18, test:Ljava/lang/Runnable;
    const/16 v20, 0x0

    .line 290
    .local v20, testcase:Landroid/test/TestCase;
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/test/TestCase;

    move/from16 v21, v0

    if-eqz v21, :cond_4a

    .line 291
    move-object/from16 v0, v18

    check-cast v0, Landroid/test/TestCase;

    move-object/from16 v20, v0

    .line 293
    :cond_4a
    const/4 v9, 0x0

    .line 294
    .local v9, e:Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 295
    .local v8, didSetup:Z
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4f} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4f} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4f} :catch_10c

    .line 297
    if-eqz v20, :cond_5b

    .line 298
    :try_start_51
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/test/TestCase;->setUp(Landroid/content/Context;)V

    .line 299
    const/4 v8, 0x1

    .line 301
    :cond_5b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b4

    .line 302
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_78} :catch_cc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_78} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_51 .. :try_end_78} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_78} :catch_10c

    .line 314
    :goto_78
    if-eqz v20, :cond_7f

    if-eqz v8, :cond_7f

    .line 316
    :try_start_7c
    invoke-interface/range {v20 .. v20}, Landroid/test/TestCase;->tearDown()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7c .. :try_end_7f} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_7c .. :try_end_7f} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_7c .. :try_end_7f} :catch_10c

    .line 321
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-direct/range {p0 .. p1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 322
    if-nez v9, :cond_102

    .line 323
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7f .. :try_end_87} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_7f .. :try_end_87} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_7f .. :try_end_87} :catch_10c

    goto :goto_28

    .line 376
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v8           #didSetup:Z
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljava/lang/Runnable;
    .end local v20           #testcase:Landroid/test/TestCase;
    :catch_88
    move-exception v21

    move-object/from16 v9, v21

    .line 377
    .local v9, e:Ljava/lang/ClassNotFoundException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ClassNotFoundException for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->isJunitTest(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_237

    .line 379
    invoke-virtual/range {p0 .. p1}, Landroid/test/TestRunner;->runSingleJunitTest(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 303
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v8       #didSetup:Z
    .local v9, e:Ljava/lang/Throwable;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    .restart local v18       #test:Ljava/lang/Runnable;
    .restart local v20       #testcase:Landroid/test/TestCase;
    :cond_b4
    :try_start_b4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d1

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    .line 306
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    goto :goto_78

    .line 311
    :catch_cc
    move-exception v21

    move-object/from16 v10, v21

    .line 312
    .local v10, ex:Ljava/lang/Throwable;
    move-object v9, v10

    goto :goto_78

    .line 309
    .end local v10           #ex:Ljava/lang/Throwable;
    :cond_d1
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_d4} :catch_cc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b4 .. :try_end_d4} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_b4 .. :try_end_d4} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_b4 .. :try_end_d4} :catch_10c

    goto :goto_78

    .line 383
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v8           #didSetup:Z
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljava/lang/Runnable;
    .end local v20           #testcase:Landroid/test/TestCase;
    :catch_d5
    move-exception v21

    move-object/from16 v9, v21

    .line 384
    .local v9, e:Ljava/lang/InstantiationException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "InstantiationException for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 317
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v8       #didSetup:Z
    .local v9, e:Ljava/lang/Throwable;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    .restart local v18       #test:Ljava/lang/Runnable;
    .restart local v20       #testcase:Landroid/test/TestCase;
    :catch_fe
    move-exception v10

    .line 318
    .restart local v10       #ex:Ljava/lang/Throwable;
    move-object v9, v10

    goto/16 :goto_7f

    .line 325
    .end local v10           #ex:Ljava/lang/Throwable;
    :cond_102
    :try_start_102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_102 .. :try_end_10a} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_102 .. :try_end_10a} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_102 .. :try_end_10a} :catch_10c

    goto/16 :goto_28

    .line 386
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v8           #didSetup:Z
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljava/lang/Runnable;
    .end local v20           #testcase:Landroid/test/TestCase;
    :catch_10c
    move-exception v21

    move-object/from16 v9, v21

    .line 387
    .local v9, e:Ljava/lang/IllegalAccessException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IllegalAccessException for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 327
    .end local v9           #e:Ljava/lang/IllegalAccessException;
    .restart local v7       #clazz:Ljava/lang/Class;
    .restart local v15       #method:Ljava/lang/reflect/Method;
    :cond_135
    :try_start_135
    sget-object v21, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_219

    .line 328
    const/4 v9, 0x0

    .line 330
    .local v9, e:Ljava/lang/Throwable;
    new-instance v17, Landroid/test/TestRunner$JunitTestSuite;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    .line 331
    .local v17, suite:Landroid/test/TestRunner$JunitTestSuite;
    invoke-static {v7}, Landroid/test/TestRunner;->getAllTestMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v16

    .line 332
    .local v16, methods:[Ljava/lang/reflect/Method;
    move-object/from16 v5, v16

    .local v5, arr$:[Ljava/lang/reflect/Method;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_152
    if-ge v11, v13, :cond_191

    aget-object v14, v5, v11

    .line 333
    .local v14, m:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljunit/framework/TestCase;

    .line 334
    .local v18, test:Ljunit/framework/TestCase;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/test/AndroidTestCase;

    move/from16 v21, v0

    if-eqz v21, :cond_17e

    .line 337
    move-object/from16 v0, v18

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object/from16 v20, v0
    :try_end_175
    .catch Ljava/lang/ClassNotFoundException; {:try_start_135 .. :try_end_175} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_135 .. :try_end_175} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_135 .. :try_end_175} :catch_10c

    .line 339
    .local v20, testcase:Landroid/test/AndroidTestCase;
    :try_start_175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_17e} :catch_184
    .catch Ljava/lang/ClassNotFoundException; {:try_start_175 .. :try_end_17e} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_175 .. :try_end_17e} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_175 .. :try_end_17e} :catch_10c

    .line 344
    .end local v20           #testcase:Landroid/test/AndroidTestCase;
    :cond_17e
    :goto_17e
    :try_start_17e
    invoke-virtual/range {v17 .. v18}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    .line 332
    add-int/lit8 v11, v11, 0x1

    goto :goto_152

    .line 340
    .restart local v20       #testcase:Landroid/test/AndroidTestCase;
    :catch_184
    move-exception v21

    move-object/from16 v10, v21

    .line 341
    .local v10, ex:Ljava/lang/Exception;
    const-string v21, "TestHarness"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    .line 346
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v14           #m:Ljava/lang/reflect/Method;
    .end local v18           #test:Ljunit/framework/TestCase;
    .end local v20           #testcase:Landroid/test/AndroidTestCase;
    :cond_191
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1fb

    .line 347
    invoke-virtual/range {v17 .. v17}, Landroid/test/TestRunner$JunitTestSuite;->testCount()I

    move-result v19

    .line 349
    .local v19, testCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1a4
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_28

    .line 350
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v18

    .line 351
    .local v18, test:Ljunit/framework/Test;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    :try_end_1bb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17e .. :try_end_1bb} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_17e .. :try_end_1bb} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_17e .. :try_end_1bb} :catch_10c

    .line 353
    const/16 v21, 0x1

    :try_start_1bd
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1ce
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_1ce} :catch_1e9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1bd .. :try_end_1ce} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_1bd .. :try_end_1ce} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1bd .. :try_end_1ce} :catch_10c

    .line 357
    :goto_1ce
    :try_start_1ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 358
    if-nez v9, :cond_1ee

    .line 359
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V

    .line 349
    :goto_1e6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a4

    .line 354
    :catch_1e9
    move-exception v21

    move-object/from16 v10, v21

    .line 355
    .local v10, ex:Ljava/lang/Throwable;
    move-object v9, v10

    goto :goto_1ce

    .line 361
    .end local v10           #ex:Ljava/lang/Throwable;
    :cond_1ee
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e6

    .line 364
    .end local v12           #j:I
    .end local v18           #test:Ljunit/framework/Test;
    .end local v19           #testCount:I
    :cond_1fb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_214

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    .line 367
    invoke-static/range {v17 .. v17}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V

    goto/16 :goto_28

    .line 370
    :cond_214
    invoke-static/range {v17 .. v17}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    goto/16 :goto_28

    .line 373
    .end local v5           #arr$:[Ljava/lang/reflect/Method;
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v16           #methods:[Ljava/lang/reflect/Method;
    .end local v17           #suite:Landroid/test/TestRunner$JunitTestSuite;
    :cond_219
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Test wasn\'t Runnable and didn\'t have a children method: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_235
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1ce .. :try_end_235} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_1ce .. :try_end_235} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1ce .. :try_end_235} :catch_10c

    goto/16 :goto_28

    .line 381
    .end local v7           #clazz:Ljava/lang/Class;
    .end local v15           #method:Ljava/lang/reflect/Method;
    .local v9, e:Ljava/lang/ClassNotFoundException;
    :cond_237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/test/TestRunner;->missingTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28
.end method

.method public run([Ljava/lang/String;)V
    .registers 6
    .parameter "classes"

    .prologue
    .line 232
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 233
    .local v1, cl:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/test/TestRunner;->run(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 235
    .end local v1           #cl:Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 24
    .parameter "testCase"
    .parameter "className"
    .parameter "junitTest"
    .parameter "testNameInDb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v15, 0x1

    .line 395
    .local v15, increaseIterations:Z
    const/4 v7, 0x1

    .line 396
    .local v7, iterations:I
    const-wide/16 v10, 0x0

    .line 397
    .local v10, duration:J
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    .line 399
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/test/TestRunner;->mInternalIterations:I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 401
    .local v9, clazz:Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v16

    .line 403
    .local v16, perftest:Ljava/lang/Object;
    const/16 v17, 0x0

    .line 404
    .local v17, perftestcase:Landroid/test/PerformanceTestCase;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/test/PerformanceTestCase;

    move v3, v0

    if-eqz v3, :cond_41

    .line 405
    move-object/from16 v0, v16

    check-cast v0, Landroid/test/PerformanceTestCase;

    move-object/from16 v17, v0

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move v3, v0

    if-nez v3, :cond_41

    invoke-interface/range {v17 .. v17}, Landroid/test/PerformanceTestCase;->isPerformanceOnly()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 478
    .end local p2
    :cond_40
    :goto_40
    return-void

    .line 412
    .restart local p2
    :cond_41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->runFinalization()V

    .line 413
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 415
    if-eqz v17, :cond_66

    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    .line 417
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/test/PerformanceTestCase;->startPerformance(Landroid/test/PerformanceTestCase$Intermediates;)I

    move-result v7

    .line 418
    if-lez v7, :cond_8e

    .line 419
    const/4 v15, 0x0

    .line 426
    :cond_66
    :goto_66
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 428
    .end local p2
    :goto_6b
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/test/TestRunner;->mEndTime:J

    .line 429
    if-eqz v15, :cond_90

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/test/TestRunner;->mStartTime:J

    .line 440
    :goto_7d
    if-eqz p3, :cond_98

    .line 441
    const/4 v14, 0x0

    .local v14, i:I
    :goto_80
    if-ge v14, v7, :cond_a7

    .line 442
    move-object/from16 v0, p1

    check-cast v0, Ljunit/framework/Test;

    move-object/from16 p2, v0

    invoke-static/range {p2 .. p2}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 441
    add-int/lit8 v14, v14, 0x1

    goto :goto_80

    .line 421
    .end local v14           #i:I
    .restart local p2
    :cond_8e
    const/4 v7, 0x1

    goto :goto_66

    .line 437
    .end local p2
    :cond_90
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/test/TestRunner;->mStartTime:J

    goto :goto_7d

    .line 445
    :cond_98
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Runnable;

    move-object/from16 v18, v0

    .line 446
    .local v18, test:Ljava/lang/Runnable;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_9f
    if-ge v14, v7, :cond_a7

    .line 447
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 446
    add-int/lit8 v14, v14, 0x1

    goto :goto_9f

    .line 451
    .end local v18           #test:Ljava/lang/Runnable;
    :cond_a7
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/test/TestRunner;->mEndTime:J

    move-wide v12, v0

    .line 452
    .local v12, endTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-nez v3, :cond_b6

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 456
    :cond_b6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/test/TestRunner;->mStartTime:J

    move-wide v3, v0

    sub-long v10, v12, v3

    .line 457
    if-nez v15, :cond_e0

    .line 473
    :cond_bf
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-eqz v3, :cond_40

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mInternalIterations:I

    move v3, v0

    mul-int/2addr v7, v3

    .line 475
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v10

    int-to-long v5, v7

    div-long v5, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mIntermediates:Ljava/util/List;

    move-object v8, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v3 .. v8}, Landroid/test/TestRunner;->performance(Ljava/lang/String;JILjava/util/List;)V

    goto/16 :goto_40

    .line 460
    :cond_e0
    const-wide/16 v3, 0x1

    cmp-long v3, v10, v3

    if-gtz v3, :cond_e9

    .line 461
    mul-int/lit16 v7, v7, 0x3e8

    goto :goto_6b

    .line 462
    :cond_e9
    const-wide/16 v3, 0xa

    cmp-long v3, v10, v3

    if-gtz v3, :cond_f3

    .line 463
    mul-int/lit8 v7, v7, 0x64

    goto/16 :goto_6b

    .line 464
    :cond_f3
    const-wide/16 v3, 0x64

    cmp-long v3, v10, v3

    if-gez v3, :cond_fd

    .line 465
    mul-int/lit8 v7, v7, 0xa

    goto/16 :goto_6b

    .line 466
    :cond_fd
    const-wide/16 v3, 0x3e8

    cmp-long v3, v10, v3

    if-gez v3, :cond_bf

    .line 467
    const-wide/16 v3, 0x3e8

    div-long/2addr v3, v10

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    long-to-int v3, v3

    mul-int/2addr v7, v3

    goto/16 :goto_6b
.end method

.method public runSingleJunitTest(Ljava/lang/String;)V
    .registers 21
    .parameter "className"

    .prologue
    const/16 v18, 0x1

    const-string v17, "TestHarness"

    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, excep:Ljava/lang/Throwable;
    const/16 v15, 0x24

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 483
    .local v9, index:I
    const-string v13, ""

    .line 484
    .local v13, testName:Ljava/lang/String;
    move-object/from16 v11, p1

    .line 485
    .local v11, originalClassName:Ljava/lang/String;
    if-ltz v9, :cond_23

    .line 486
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 487
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 490
    :cond_23
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 491
    .local v5, clazz:Ljava/lang/Class;
    sget-object v15, Landroid/test/TestRunner;->mJUnitClass:Ljava/lang/Class;

    invoke-virtual {v15, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_99

    .line 492
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljunit/framework/TestCase;

    .line 493
    .local v12, test:Ljunit/framework/TestCase;
    new-instance v10, Landroid/test/TestRunner$JunitTestSuite;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/test/TestRunner$JunitTestSuite;-><init>(Landroid/test/TestRunner;)V

    .line 494
    .local v10, newSuite:Landroid/test/TestRunner$JunitTestSuite;
    invoke-virtual {v12, v13}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 496
    instance-of v15, v12, Landroid/test/AndroidTestCase;

    if-eqz v15, :cond_5c

    .line 497
    move-object v0, v12

    check-cast v0, Landroid/test/AndroidTestCase;

    move-object v14, v0
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_54} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_54} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_54} :catch_ee

    .line 499
    .local v14, testcase:Landroid/test/AndroidTestCase;
    :try_start_54
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/test/TestRunner;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_5c} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5c} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_54 .. :try_end_5c} :catch_ee

    .line 504
    .end local v14           #testcase:Landroid/test/AndroidTestCase;
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {v10, v12}, Landroid/test/TestRunner$JunitTestSuite;->addTest(Ljunit/framework/Test;)V

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move v15, v0
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_64} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_64} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_5c .. :try_end_64} :catch_ee

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_c6

    .line 508
    :try_start_69
    invoke-virtual {v12}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->started(Ljava/lang/String;)V

    .line 509
    const/4 v15, 0x1

    invoke-virtual {v12}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/test/TestRunner;->runInPerformanceMode(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;)V

    .line 510
    invoke-virtual {v12}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/test/TestRunner;->finished(Ljava/lang/String;)V

    .line 511
    if-nez v8, :cond_b6

    .line 512
    invoke-virtual {v12}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_99} :catch_c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_99} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_99} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_69 .. :try_end_99} :catch_ee

    .line 535
    .end local v5           #clazz:Ljava/lang/Class;
    .end local v10           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v12           #test:Ljunit/framework/TestCase;
    :cond_99
    :goto_99
    return-void

    .line 500
    .restart local v5       #clazz:Ljava/lang/Class;
    .restart local v10       #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .restart local v12       #test:Ljunit/framework/TestCase;
    .restart local v14       #testcase:Landroid/test/AndroidTestCase;
    :catch_9a
    move-exception v15

    move-object v7, v15

    .line 501
    .local v7, ex:Ljava/lang/Exception;
    :try_start_9c
    const-string v15, "TestHarness"

    const-string v16, "Exception encountered while trying to set the context."

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9c .. :try_end_a7} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_9c .. :try_end_a7} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_9c .. :try_end_a7} :catch_ee

    goto :goto_5c

    .line 528
    .end local v5           #clazz:Ljava/lang/Class;
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v10           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v12           #test:Ljunit/framework/TestCase;
    .end local v14           #testcase:Landroid/test/AndroidTestCase;
    :catch_a8
    move-exception v15

    move-object v6, v15

    .line 529
    .local v6, e:Ljava/lang/ClassNotFoundException;
    const-string v15, "TestHarness"

    const-string v15, "No test case to run"

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 514
    .end local v6           #e:Ljava/lang/ClassNotFoundException;
    .restart local v5       #clazz:Ljava/lang/Class;
    .restart local v10       #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .restart local v12       #test:Ljunit/framework/TestCase;
    :cond_b6
    :try_start_b6
    invoke-virtual {v12}, Ljunit/framework/TestCase;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_c1} :catch_c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_c1} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_b6 .. :try_end_c1} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_b6 .. :try_end_c1} :catch_ee

    goto :goto_99

    .line 516
    :catch_c2
    move-exception v15

    move-object v7, v15

    .line 517
    .local v7, ex:Ljava/lang/Throwable;
    move-object v8, v7

    .line 518
    goto :goto_99

    .line 520
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_c6
    :try_start_c6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/test/TestRunner;->mMode:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_ea

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->startProfiling()V

    .line 522
    invoke-static {v10}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/test/TestRunner;->finishProfiling()V
    :try_end_db
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c6 .. :try_end_db} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_c6 .. :try_end_db} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_c6 .. :try_end_db} :catch_ee

    goto :goto_99

    .line 530
    .end local v5           #clazz:Ljava/lang/Class;
    .end local v10           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v12           #test:Ljunit/framework/TestCase;
    :catch_dc
    move-exception v15

    move-object v6, v15

    .line 531
    .local v6, e:Ljava/lang/IllegalAccessException;
    const-string v15, "TestHarness"

    const-string v15, "Illegal Access Exception"

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 525
    .end local v6           #e:Ljava/lang/IllegalAccessException;
    .restart local v5       #clazz:Ljava/lang/Class;
    .restart local v10       #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .restart local v12       #test:Ljunit/framework/TestCase;
    :cond_ea
    :try_start_ea
    invoke-static {v10}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    :try_end_ed
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ea .. :try_end_ed} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_ea .. :try_end_ed} :catch_dc
    .catch Ljava/lang/InstantiationException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_99

    .line 532
    .end local v5           #clazz:Ljava/lang/Class;
    .end local v10           #newSuite:Landroid/test/TestRunner$JunitTestSuite;
    .end local v12           #test:Ljunit/framework/TestCase;
    :catch_ee
    move-exception v15

    move-object v6, v15

    .line 533
    .local v6, e:Ljava/lang/InstantiationException;
    const-string v15, "TestHarness"

    const-string v15, "Instantiation Exception"

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99
.end method

.method public setInternalIterations(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 238
    iput p1, p0, Landroid/test/TestRunner;->mInternalIterations:I

    .line 239
    return-void
.end method

.method public setPerformanceMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 266
    iput p1, p0, Landroid/test/TestRunner;->mMode:I

    .line 267
    return-void
.end method

.method public startProfiling()V
    .registers 5

    .prologue
    .line 169
    new-instance v1, Ljava/io/File;

    const-string v2, "/tmp/trace"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/tmp/trace/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/test/TestRunner;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dmtrace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, base:Ljava/lang/String;
    const/high16 v2, 0x80

    invoke-static {v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public startTiming(Z)V
    .registers 4
    .parameter "realTime"

    .prologue
    .line 242
    if-eqz p1, :cond_9

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    .line 247
    :goto_8
    return-void

    .line 245
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/TestRunner;->mStartTime:J

    goto :goto_8
.end method
