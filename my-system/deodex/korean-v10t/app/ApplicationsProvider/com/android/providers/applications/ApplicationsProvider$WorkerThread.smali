.class Lcom/android/providers/applications/ApplicationsProvider$WorkerThread;
.super Ljava/lang/Thread;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/applications/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/providers/applications/ApplicationsProvider$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/providers/applications/ApplicationsProvider$WorkerThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 158
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 159
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 160
    return-void
.end method
