.class final enum Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;
.super Ljava/lang/Enum;
.source "LocalBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BluetoothCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

.field public static final enum CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

.field public static final enum DISCONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

.field public static final enum UNPAIR:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    const-string v1, "UNPAIR"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->UNPAIR:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->UNPAIR:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->$VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;
    .registers 2
    .parameter "name"

    .prologue
    .line 87
    const-class v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    return-object p0
.end method

.method public static final values()[Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->$VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-virtual {v0}, [Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    return-object v0
.end method
