.class Landroid/net/wifi/WifiStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 1919
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 1920
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1921
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 1923
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1924
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .registers 3

    .prologue
    .line 2010
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getState()I

    move-result v0

    .line 2011
    .local v0, state:I
    if-nez v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const-string v4, "WifiStateTracker"

    .line 1929
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_94

    .line 1994
    :goto_7
    return-void

    .line 1932
    :pswitch_8
    const/4 v1, 0x0

    .line 1933
    .local v1, modifiedBluetoothCoexistenceMode:Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1950
    const/4 v1, 0x1

    .line 1953
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 1954
    const/4 v3, 0x1

    :try_start_14
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 1956
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_67

    .line 1959
    :cond_18
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 1960
    const/4 v3, 0x1

    :try_start_1c
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 1961
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_6a

    .line 1962
    monitor-enter p0

    .line 1964
    const/4 v2, 0x0

    :try_start_22
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 1965
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_6d

    .line 1966
    const-string v2, "WifiStateTracker"

    const-string v2, "DhcpHandler: DHCP request started"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1968
    const/4 v0, 0x6

    .line 1969
    .local v0, event:I
    const-string v2, "WifiStateTracker"

    const-string v2, "DhcpHandler: DHCP request succeeded"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :goto_46
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 1976
    const/4 v3, 0x0

    :try_start_4a
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 1977
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_8e

    .line 1979
    if-eqz v1, :cond_58

    .line 1981
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 1982
    const/4 v3, 0x2

    :try_start_54
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 1984
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_91

    .line 1987
    :cond_58
    monitor-enter p0

    .line 1988
    :try_start_59
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v2, :cond_62

    .line 1989
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1991
    :cond_62
    monitor-exit p0

    goto :goto_7

    :catchall_64
    move-exception v2

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_64

    throw v2

    .line 1956
    .end local v0           #event:I
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v3

    .line 1961
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v3

    .line 1965
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2

    .line 1971
    :cond_70
    const/4 v0, 0x7

    .line 1972
    .restart local v0       #event:I
    const-string v2, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 1977
    :catchall_8e
    move-exception v3

    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v3

    .line 1984
    :catchall_91
    move-exception v3

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v3

    .line 1929
    :pswitch_data_94
    .packed-switch 0x9
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .registers 3
    .parameter "cancelCallback"

    .prologue
    .line 1997
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1998
    monitor-exit p0

    return-void

    .line 1997
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
