.class Lcom/android/settings/SyncSettings$2;
.super Landroid/content/ISyncStatusObserver$Stub;
.source "SyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SyncSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/settings/SyncSettings$2;->this$0:Lcom/android/settings/SyncSettings;

    invoke-direct {p0}, Landroid/content/ISyncStatusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 4
    .parameter "which"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/SyncSettings$2;->this$0:Lcom/android/settings/SyncSettings;

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/SyncSettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SyncSettings$2$1;-><init>(Lcom/android/settings/SyncSettings$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method
