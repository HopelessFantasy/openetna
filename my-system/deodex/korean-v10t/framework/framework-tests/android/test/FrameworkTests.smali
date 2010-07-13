.class public Landroid/test/FrameworkTests;
.super Ljava/lang/Object;
.source "FrameworkTests.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static suite()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 18
    new-instance v0, Ljunit/framework/TestSuite;

    const-class v1, Landroid/test/FrameworkTests;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, suite:Ljunit/framework/TestSuite;
    const-class v1, Lcom/android/internal/http/multipart/MultipartTest;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 21
    const-class v1, Landroid/util/EventLogTest;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 22
    const-class v1, Landroid/util/EventLogFunctionalTest;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 23
    const-class v1, Lcom/android/internal/os/LoggingPrintStreamTest;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 24
    const-class v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;

    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 26
    return-object v0
.end method
