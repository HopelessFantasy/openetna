.class final Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .parameter

    .prologue
    .line 1895
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1895
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1897
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v3, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    .line 1898
    .local v0, a:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v0, :cond_25

    .line 1899
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iput-object v4, v3, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    .line 1900
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1907
    .local v1, am:Landroid/app/IActivityManager;
    :cond_f
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_1e

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_1e

    .line 1909
    :try_start_19
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->activityIdle(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_27

    .line 1913
    :cond_1e
    :goto_1e
    move-object v2, v0

    .line 1914
    .local v2, prev:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->nextIdle:Landroid/app/ActivityThread$ActivityRecord;

    .line 1915
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityRecord;->nextIdle:Landroid/app/ActivityThread$ActivityRecord;

    .line 1916
    if-nez v0, :cond_f

    .line 1918
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #prev:Landroid/app/ActivityThread$ActivityRecord;
    :cond_25
    const/4 v3, 0x0

    return v3

    .line 1910
    .restart local v1       #am:Landroid/app/IActivityManager;
    :catch_27
    move-exception v3

    goto :goto_1e
.end method
