.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .registers 3

    .prologue
    .line 559
    const-string v1, "SystemServer"

    const-string v2, "Entered the Android system server!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v0, Lcom/android/server/ServerThread;

    invoke-direct {v0}, Lcom/android/server/ServerThread;-><init>()V

    .line 561
    .local v0, thr:Ljava/lang/Thread;
    const-string v1, "android.server.ServerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 563
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 552
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 554
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 555
    invoke-static {p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 556
    return-void
.end method
