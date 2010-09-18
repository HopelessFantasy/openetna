.class public final enum Landroid/server/BluetoothObexDatabase$TransferDirection;
.super Ljava/lang/Enum;
.source "BluetoothObexDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothObexDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/server/BluetoothObexDatabase$TransferDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/server/BluetoothObexDatabase$TransferDirection;

.field public static final enum RX:Landroid/server/BluetoothObexDatabase$TransferDirection;

.field public static final enum TX:Landroid/server/BluetoothObexDatabase$TransferDirection;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Landroid/server/BluetoothObexDatabase$TransferDirection;

    const-string v1, "TX"

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothObexDatabase$TransferDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/server/BluetoothObexDatabase$TransferDirection;->TX:Landroid/server/BluetoothObexDatabase$TransferDirection;

    new-instance v0, Landroid/server/BluetoothObexDatabase$TransferDirection;

    const-string v1, "RX"

    invoke-direct {v0, v1, v3}, Landroid/server/BluetoothObexDatabase$TransferDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/server/BluetoothObexDatabase$TransferDirection;->RX:Landroid/server/BluetoothObexDatabase$TransferDirection;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/server/BluetoothObexDatabase$TransferDirection;

    sget-object v1, Landroid/server/BluetoothObexDatabase$TransferDirection;->TX:Landroid/server/BluetoothObexDatabase$TransferDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/server/BluetoothObexDatabase$TransferDirection;->RX:Landroid/server/BluetoothObexDatabase$TransferDirection;

    aput-object v1, v0, v3

    sput-object v0, Landroid/server/BluetoothObexDatabase$TransferDirection;->$VALUES:[Landroid/server/BluetoothObexDatabase$TransferDirection;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/server/BluetoothObexDatabase$TransferDirection;
    .registers 2
    .parameter "name"

    .prologue
    .line 47
    const-class v0, Landroid/server/BluetoothObexDatabase$TransferDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/BluetoothObexDatabase$TransferDirection;

    return-object p0
.end method

.method public static final values()[Landroid/server/BluetoothObexDatabase$TransferDirection;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/server/BluetoothObexDatabase$TransferDirection;->$VALUES:[Landroid/server/BluetoothObexDatabase$TransferDirection;

    invoke-virtual {v0}, [Landroid/server/BluetoothObexDatabase$TransferDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/server/BluetoothObexDatabase$TransferDirection;

    return-object v0
.end method
