.class public Landroid/test/suitebuilder/UnitTestSuiteBuilder;
.super Landroid/test/suitebuilder/TestSuiteBuilder;
.source "UnitTestSuiteBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .parameter "clazz"

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/test/suitebuilder/UnitTestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7
    .parameter "name"
    .parameter "classLoader"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 33
    new-array v0, v3, [Lcom/android/internal/util/Predicate;

    sget-object v1, Landroid/test/suitebuilder/TestPredicates;->REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/UnitTestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 34
    new-array v0, v3, [Lcom/android/internal/util/Predicate;

    sget-object v1, Landroid/test/suitebuilder/TestPredicates;->REJECT_PERFORMANCE:Lcom/android/internal/util/Predicate;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/test/suitebuilder/UnitTestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    .line 35
    return-void
.end method
