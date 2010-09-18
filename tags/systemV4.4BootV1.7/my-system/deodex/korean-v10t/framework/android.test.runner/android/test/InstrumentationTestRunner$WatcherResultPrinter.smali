.class Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# instance fields
.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;I)V
    .registers 6
    .parameter
    .parameter "numTests"

    .prologue
    const/4 v0, 0x0

    .line 613
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    .line 610
    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 614
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    .line 615
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "InstrumentationTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "test"
    .parameter "t"

    .prologue
    .line 656
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/4 v0, -0x1

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 659
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nError in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 9
    .parameter "test"
    .parameter "t"

    .prologue
    .line 668
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, -0x2

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 671
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nFailure in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 6
    .parameter "test"

    .prologue
    .line 680
    iget v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v1, :cond_d

    .line 681
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_d
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 686
    :try_start_16
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-static {v1}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_20} :catch_21

    .line 690
    return-void

    .line 687
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 688
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 10
    .parameter "test"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "stream"

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, testClass:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    .line 625
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "class"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "test"

    check-cast p1, Ljunit/framework/TestCase;

    .end local p1
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "current"

    iget v4, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    if-eqz v1, :cond_6b

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 630
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "stream"

    const-string v3, "\n%s:"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iput-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    .line 643
    :goto_53
    :try_start_53
    iget v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    if-ne v2, v5, :cond_61

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-static {v2}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_61} :catch_75

    .line 648
    :cond_61
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    .line 649
    iput v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    .line 650
    return-void

    .line 634
    :cond_6b
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "stream"

    const-string v3, ""

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 644
    :catch_75
    move-exception v2

    move-object v0, v2

    .line 645
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
