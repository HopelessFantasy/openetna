.class Lcom/lge/hiddenmenu/version_info/VersionInfo$1;
.super Landroid/bluetooth/IBluetoothDeviceCallback$Stub;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/version_info/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/version_info/VersionInfo;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/version_info/VersionInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lge/hiddenmenu/version_info/VersionInfo$1;->this$0:Lcom/lge/hiddenmenu/version_info/VersionInfo;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDeviceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateBondingResult(Ljava/lang/String;I)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 215
    return-void
.end method

.method public onEnableResult(I)V
    .registers 6
    .parameter "result"

    .prologue
    const-string v3, "HiddenMenu.VersionInfo"

    .line 217
    const-string v1, "HiddenMenu.VersionInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionInfo - BT eanble result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x1

    if-ne p1, v1, :cond_34

    .line 220
    iget-object v1, p0, Lcom/lge/hiddenmenu/version_info/VersionInfo$1;->this$0:Lcom/lge/hiddenmenu/version_info/VersionInfo;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 222
    .local v0, mManager:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/lge/hiddenmenu/version_info/VersionInfo$1;->this$0:Lcom/lge/hiddenmenu/version_info/VersionInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->access$000(Lcom/lge/hiddenmenu/version_info/VersionInfo;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disable()Z

    .line 231
    .end local v0           #mManager:Landroid/bluetooth/BluetoothDevice;
    :cond_33
    :goto_33
    return-void

    .line 226
    :cond_34
    invoke-static {}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->access$108()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_33

    .line 227
    const-string v1, "HiddenMenu.VersionInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionInfo - try again BT eanble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/lge/hiddenmenu/version_info/VersionInfo$1;->this$0:Lcom/lge/hiddenmenu/version_info/VersionInfo;

    invoke-static {v1}, Lcom/lge/hiddenmenu/version_info/VersionInfo;->access$200(Lcom/lge/hiddenmenu/version_info/VersionInfo;)Ljava/lang/String;

    goto :goto_33
.end method

.method public onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .registers 3
    .parameter "address"
    .parameter "channel"

    .prologue
    .line 214
    return-void
.end method
