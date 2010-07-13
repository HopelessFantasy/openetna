.class Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;
.super Landroid/bluetooth/IBluetoothDeviceServicesCallback$Stub;
.source "DiscoverServicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DiscoverServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DiscoverServicesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;->this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDeviceServicesCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetRemoteServicesResult(Ljava/lang/String;ZI)V
    .registers 6
    .parameter "address"
    .parameter "success"
    .parameter "serviceMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p2, :cond_10

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;->this$0:Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DiscoverServicesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/bluetooth/DiscoverServicesActivity$2$1;-><init>(Lcom/android/settings/bluetooth/DiscoverServicesActivity$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_10
    return-void
.end method
