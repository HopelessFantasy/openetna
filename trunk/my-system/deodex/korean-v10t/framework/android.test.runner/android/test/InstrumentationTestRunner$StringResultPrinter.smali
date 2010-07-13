.class Landroid/test/InstrumentationTestRunner$StringResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "InstrumentationTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringResultPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V
    .registers 3
    .parameter
    .parameter "writer"

    .prologue
    .line 518
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    .line 519
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 520
    return-void
.end method


# virtual methods
.method declared-synchronized print(Ljunit/framework/TestResult;J)V
    .registers 5
    .parameter "result"
    .parameter "runTime"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2, p3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printHeader(J)V

    .line 524
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 525
    monitor-exit p0

    return-void

    .line 523
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
