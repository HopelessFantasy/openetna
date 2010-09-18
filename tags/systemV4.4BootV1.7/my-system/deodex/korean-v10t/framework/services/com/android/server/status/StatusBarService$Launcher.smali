.class Lcom/android/server/status/StatusBarService$Launcher;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Launcher"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "intent"
    .parameter "pkg"
    .parameter "id"

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    iput-object p2, p0, Lcom/android/server/status/StatusBarService$Launcher;->mIntent:Landroid/app/PendingIntent;

    .line 1541
    iput-object p3, p0, Lcom/android/server/status/StatusBarService$Launcher;->mPkg:Ljava/lang/String;

    .line 1542
    iput p4, p0, Lcom/android/server/status/StatusBarService$Launcher;->mId:I

    .line 1543
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 1551
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_38

    .line 1555
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$Launcher;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 1556
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, v1, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService$Launcher;->mPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/status/StatusBarService$Launcher;->mId:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_17} :catch_1d

    .line 1561
    :goto_17
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService;->deactivate()V

    .line 1562
    return-void

    .line 1557
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 1559
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending contentIntent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1552
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_38
    move-exception v1

    goto :goto_7
.end method
