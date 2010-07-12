.class final Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurCode:I

.field private mCurData:Ljava/lang/String;

.field private mCurIntent:Landroid/content/Intent;

.field private mCurMap:Landroid/os/Bundle;

.field private mCurOrdered:Z

.field final synthetic this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 674
    iget v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    return v0
.end method

.method static synthetic access$302(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    iput p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    return p1
.end method

.method static synthetic access$400(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 674
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 674
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$602(Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    iput-boolean p1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    return p1
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 682
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v9, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 688
    .local v9, receiver:Landroid/content/BroadcastReceiver;
    if-nez v9, :cond_7

    .line 731
    :cond_6
    :goto_6
    return-void

    .line 692
    :cond_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 693
    .local v0, mgr:Landroid/app/IActivityManager;
    iget-object v8, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 694
    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 696
    :try_start_10
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 697
    .local v6, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 698
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    if-eqz v1, :cond_28

    .line 699
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 701
    :cond_28
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 702
    iget v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 703
    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->clearAbortBroadcast()V

    .line 704
    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 705
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_44} :catch_69

    .line 721
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :cond_44
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_6

    .line 723
    :try_start_4e
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_66} :catch_67

    goto :goto_6

    .line 728
    :catch_67
    move-exception v1

    goto :goto_6

    .line 706
    :catch_69
    move-exception v1

    move-object v7, v1

    .line 707
    .local v7, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_83

    iget-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_83

    .line 709
    :try_start_75
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    iget v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_83} :catch_be

    .line 714
    :cond_83
    :goto_83
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v1, :cond_97

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v2, v2, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 716
    :cond_97
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error receiving broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher$Args;->this$0:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    iget-object v3, v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 711
    :catch_be
    move-exception v1

    goto :goto_83
.end method
