.class Lcom/android/commands/pm/Pm$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .registers 2
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Z)V
    .registers 3
    .parameter "succeeded"

    .prologue
    .line 651
    monitor-enter p0

    .line 652
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->finished:Z

    .line 653
    iput-boolean p1, p0, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->result:Z

    .line 654
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 655
    monitor-exit p0

    .line 656
    return-void

    .line 655
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
