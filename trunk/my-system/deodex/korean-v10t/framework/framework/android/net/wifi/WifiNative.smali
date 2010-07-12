.class public Landroid/net/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addNetworkCommand()I
.end method

.method public static native addToBlacklistCommand(Ljava/lang/String;)Z
.end method

.method public static native clearBlacklistCommand()Z
.end method

.method public static native closeSupplicantConnection()V
.end method

.method public static native connectToSupplicant()Z
.end method

.method public static native disableNetworkCommand(I)Z
.end method

.method public static native disconnectCommand()Z
.end method

.method public static native doDhcpRequest(Landroid/net/DhcpInfo;)Z
.end method

.method public static native enableNetworkCommand(IZ)Z
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static native getErrorString(I)Ljava/lang/String;
.end method

.method public static native getIPCommand(I)Z
.end method

.method public static native getLinkSpeedCommand()I
.end method

.method public static native getMacAddressCommand()Ljava/lang/String;
.end method

.method public static native getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static native getNetworkVariableCommand_byte(ILjava/lang/String;)[B
.end method

.method public static native getNumAllowedChannelsCommand()I
.end method

.method public static native getRssiCommand()I
.end method

.method public static native getWiFiDevStats()Ljava/lang/String;
.end method

.method public static native listNetworksCommand()[B
.end method

.method public static native loadDriver(I)Z
.end method

.method public static native pingCommand()Z
.end method

.method public static native reassociateCommand()Z
.end method

.method public static native reconnectCommand()Z
.end method

.method public static native reloadConfigCommand()Z
.end method

.method public static native removeNetworkCommand(I)Z
.end method

.method public static native saveConfigCommand()Z
.end method

.method public static native scanCommand(Z)Z
.end method

.method public static native scanResultsCommand()[B
.end method

.method public static native setBluetoothCoexistenceModeCommand(I)Z
.end method

.method public static native setBluetoothCoexistenceScanModeCommand(Z)Z
.end method

.method public static native setHostWakeup(I)Z
.end method

.method public static native setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native setNetworkVariableCommand_byte(ILjava/lang/String;[B)Z
.end method

.method public static native setNumAllowedChannelsCommand(I)Z
.end method

.method public static native setPowerModeCommand(I)Z
.end method

.method public static native setScanModeCommand(Z)Z
.end method

.method public static native setScanResultHandlingCommand(I)Z
.end method

.method public static native startDriverCommand()Z
.end method

.method public static native startPacketFiltering()Z
.end method

.method public static native startSupplicant()Z
.end method

.method public static native statusCommand()Ljava/lang/String;
.end method

.method public static native statusCommand_byte()[B
.end method

.method public static native stopDriverCommand()Z
.end method

.method public static native stopPacketFiltering()Z
.end method

.method public static native stopSupplicant()Z
.end method

.method public static native unloadDriver()Z
.end method

.method public static native waitForEvent()[B
.end method
