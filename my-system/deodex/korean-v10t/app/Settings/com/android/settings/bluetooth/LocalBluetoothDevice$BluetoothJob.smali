.class Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothJob"
.end annotation


# instance fields
.field final command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

.field final device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

.field final profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

.field timeSent:J


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .registers 7
    .parameter
    .parameter "command"
    .parameter "device"
    .parameter "profile"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    .line 101
    iput-object p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 102
    iput-object p4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    .line 104
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, " Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, " TimeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-wide v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_43

    .line 114
    const-string v1, "not yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 116
    :cond_43
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method
