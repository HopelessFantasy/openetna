.class public abstract Landroid/test/PerformanceTestBase;
.super Ljunit/framework/TestCase;
.source "PerformanceTestBase.java"

# interfaces
.implements Landroid/test/PerformanceTestCase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public isPerformanceOnly()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public startPerformance(Landroid/test/PerformanceTestCase$Intermediates;)I
    .registers 3
    .parameter "intermediates"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public testRun()V
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "test implementation not provided"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
