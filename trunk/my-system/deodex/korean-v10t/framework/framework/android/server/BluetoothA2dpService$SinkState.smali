.class Landroid/server/BluetoothA2dpService$SinkState;
.super Ljava/lang/Object;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinkState"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothA2dpService;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "a"
    .parameter "s"

    .prologue
    .line 84
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$SinkState;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    iput p3, p0, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    return-void
.end method
