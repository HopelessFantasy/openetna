.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1681
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 1686
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v7, :cond_4c

    .line 1689
    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_50

    .line 1690
    :try_start_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    .line 1691
    .local v2, location:Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 1694
    .local v3, provider:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v7

    .local v1, i:I
    :goto_20
    if-ltz v1, :cond_3e

    .line 1695
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/location/LocationProviderProxy;

    .line 1696
    .local v4, proxy:Lcom/android/internal/location/LocationProviderProxy;
    invoke-virtual {v4}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 1697
    invoke-virtual {v4, v2}, Lcom/android/internal/location/LocationProviderProxy;->updateLocation(Landroid/location/Location;)V

    .line 1694
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 1701
    .end local v4           #proxy:Lcom/android/internal/location/LocationProviderProxy;
    :cond_3e
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6, v3}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1702
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6, v2}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;Landroid/location/Location;)V

    .line 1704
    :cond_4b
    monitor-exit v5

    .line 1710
    .end local v1           #i:I
    .end local v2           #location:Landroid/location/Location;
    .end local v3           #provider:Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void

    .line 1704
    :catchall_4d
    move-exception v6

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v6
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_50} :catch_50

    .line 1706
    :catch_50
    move-exception v5

    move-object v0, v5

    .line 1708
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "LocationManagerService"

    const-string v6, "Exception in LocationWorkerHandler.handleMessage:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c
.end method
