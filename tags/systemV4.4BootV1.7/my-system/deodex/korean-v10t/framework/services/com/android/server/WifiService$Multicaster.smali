.class Lcom/android/server/WifiService$Multicaster;
.super Lcom/android/server/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    .line 2668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/WifiService$DeathRecipient;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 2669
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 2672
    const-string v1, "WifiService"

    const-string v2, "Multicaster binderDied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 2674
    :try_start_e
    iget-object v2, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2675
    .local v0, i:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    .line 2676
    iget-object v2, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    iget v3, p0, Lcom/android/server/WifiService$Multicaster;->mMode:I

    invoke-static {v2, v0, v3}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;II)V

    .line 2678
    :cond_22
    monitor-exit v1

    .line 2679
    return-void

    .line 2678
    .end local v0           #i:I
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v2
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 2686
    iget v0, p0, Lcom/android/server/WifiService$Multicaster;->mMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
