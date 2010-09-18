.class public abstract Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$1;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static sProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .registers 2
    .parameter "localManager"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 102
    return-void
.end method

.method public static fill(ILjava/util/List;)V
    .registers 3
    .parameter "btClass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 91
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 92
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_e
    invoke-static {p0}, Landroid/bluetooth/BluetoothA2dp;->doesClassMatchSink(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 96
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_19
    return-void
.end method

.method public static getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .registers 6
    .parameter "localManager"
    .parameter "profile"

    .prologue
    .line 52
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 53
    :try_start_3
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 55
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    if-nez v0, :cond_1d

    .line 56
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$1;->$SwitchMap$com$android$settings$bluetooth$LocalBluetoothProfileManager$Profile:[I

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    .line 72
    :goto_18
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->sProfileMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1d
    monitor-exit v1

    .line 76
    return-object v0

    .line 58
    :pswitch_1f
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 59
    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    goto :goto_18

    .line 62
    :pswitch_25
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;

    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .restart local v0       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    goto :goto_18

    .line 74
    .end local v0           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2

    .line 56
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public abstract connect(Ljava/lang/String;)I
.end method

.method public abstract convertState(I)I
.end method

.method public abstract disconnect(Ljava/lang/String;)I
.end method

.method public abstract getConnectionStatus(Ljava/lang/String;)I
.end method

.method public abstract getSummary(Ljava/lang/String;)I
.end method

.method public isConnected(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v0

    return v0
.end method

.method public abstract isPreferred(Ljava/lang/String;)Z
.end method

.method public abstract setPreferred(Ljava/lang/String;Z)V
.end method
