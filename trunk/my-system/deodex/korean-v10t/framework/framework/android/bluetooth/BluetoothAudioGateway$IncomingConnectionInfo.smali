.class public Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAudioGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncomingConnectionInfo"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field public mRfcommChan:I

.field public mSocketFd:I

.field final synthetic this$0:Landroid/bluetooth/BluetoothAudioGateway;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter "bluetooth"
    .parameter "address"
    .parameter "socketFd"
    .parameter "rfcommChan"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 64
    iput-object p3, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mAddress:Ljava/lang/String;

    .line 65
    iput p4, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    .line 66
    iput p5, p0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    .line 67
    return-void
.end method
