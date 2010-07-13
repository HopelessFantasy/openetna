.class Lcom/android/server/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mEventTypes:I

.field mFeedbackType:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field mIsActive:Z

.field mIsDefault:Z

.field mNotificationTimeout:J

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IEventListener;

.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;Landroid/content/ComponentName;)V
    .registers 5
    .parameter
    .parameter "componentName"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    .line 598
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 611
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 615
    invoke-static {}, Lcom/android/server/AccessibilityManagerService;->access$708()I

    move-result v0

    iput v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    .line 616
    iput-object p2, p0, Lcom/android/server/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 617
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 618
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_e

    .line 625
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 627
    :cond_e
    return-void
.end method

.method public isConfigured()Z
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 654
    iput-object p2, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 655
    invoke-static {p2}, Landroid/accessibilityservice/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IEventListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 658
    :try_start_8
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    invoke-interface {v1, p0}, Landroid/accessibilityservice/IEventListener;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 659
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_2f

    .line 660
    :try_start_12
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 661
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_2a
    monitor-exit v1

    .line 668
    :goto_2b
    return-void

    .line 664
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 665
    :catch_2f
    move-exception v1

    move-object v0, v1

    .line 666
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting Controller for service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "componentName"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_5
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AccessibilityManagerService$Service;

    .line 673
    .local v0, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 674
    monitor-exit v1

    .line 675
    return-void

    .line 674
    .end local v0           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 651
    return-void
.end method

.method public unbind()V
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 635
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 637
    :cond_b
    return-void
.end method
