.class abstract Lcom/android/server/WifiService$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .parameter
    .parameter "mode"
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 2649
    iput-object p1, p0, Lcom/android/server/WifiService$DeathRecipient;->this$0:Lcom/android/server/WifiService;

    .line 2650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2651
    iput-object p3, p0, Lcom/android/server/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    .line 2652
    iput p2, p0, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    .line 2653
    iput-object p4, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 2655
    :try_start_b
    iget-object v1, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    .line 2659
    :goto_11
    return-void

    .line 2656
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 2657
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/WifiService$DeathRecipient;->binderDied()V

    goto :goto_11
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .registers 3

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2663
    return-void
.end method
