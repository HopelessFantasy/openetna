.class final Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;,
        Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;
    }
.end annotation


# instance fields
.field final mActivityThread:Landroid/os/Handler;

.field final mContext:Landroid/content/Context;

.field final mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

.field final mInstrumentation:Landroid/app/Instrumentation;

.field final mLocation:Landroid/app/IntentReceiverLeaked;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field final mRegistered:Z

.field mUnregisterLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    .registers 8
    .parameter "receiver"
    .parameter "context"
    .parameter "activityThread"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    if-nez p3, :cond_d

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_d
    new-instance v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;

    if-nez p5, :cond_2f

    const/4 v1, 0x1

    :goto_12
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$InnerReceiver;-><init>(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;Z)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 742
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 744
    iput-object p3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 745
    iput-object p4, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    .line 746
    iput-boolean p5, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    .line 747
    new-instance v0, Landroid/app/IntentReceiverLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    .line 748
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    invoke-virtual {v0}, Landroid/app/IntentReceiverLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 749
    return-void

    .line 741
    :cond_2f
    const/4 v1, 0x0

    goto :goto_12
.end method


# virtual methods
.method getIIntentReceiver()Landroid/content/IIntentReceiver;
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    return-object v0
.end method

.method getIntentReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getLocation()Landroid/app/IntentReceiverLeaked;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    return-object v0
.end method

.method getUnregisterLocation()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 13
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"

    .prologue
    .line 793
    new-instance v6, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;

    invoke-direct {v6, p0}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;-><init>(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;)V

    .line 794
    .local v6, args:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;
    invoke-static {v6, p1}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$202(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Landroid/content/Intent;)Landroid/content/Intent;

    .line 795
    invoke-static {v6, p2}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$302(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;I)I

    .line 796
    invoke-static {v6, p3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$402(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    invoke-static {v6, p4}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$502(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 798
    invoke-static {v6, p5}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$602(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Z)Z

    .line 799
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 800
    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_36

    .line 801
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 803
    .local v0, mgr:Landroid/app/IActivityManager;
    :try_start_24
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-static {v6}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$300(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)I

    move-result v2

    invoke-static {v6}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$400(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->access$500(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_36} :catch_37

    .line 809
    .end local v0           #mgr:Landroid/app/IActivityManager;
    :cond_36
    :goto_36
    return-void

    .line 805
    .restart local v0       #mgr:Landroid/app/IActivityManager;
    :catch_37
    move-exception v1

    goto :goto_36
.end method

.method setUnregisterLocation(Ljava/lang/RuntimeException;)V
    .registers 2
    .parameter "ex"

    .prologue
    .line 779
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    .line 780
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 9
    .parameter "context"
    .parameter "activityThread"

    .prologue
    const-string v5, "Receiver "

    const-string v4, ")"

    const-string v3, " now "

    .line 752
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_41

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_41
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_7c

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_7c
    return-void
.end method
