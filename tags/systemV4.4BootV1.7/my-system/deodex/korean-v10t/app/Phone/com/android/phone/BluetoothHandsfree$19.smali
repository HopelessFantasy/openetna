.class Lcom/android/phone/BluetoothHandsfree$19;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 5

    .prologue
    const/16 v2, 0x10

    .line 1619
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, operatorName:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 1621
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1d

    .line 1622
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1624
    :cond_1d
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+COPS: 0,0,\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 1627
    :goto_3b
    return-object v1

    :cond_3c
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const-string v2, "+COPS: 0,0,\"UNKNOWN\",0"

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1634
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    aget-object v0, p1, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_18

    .line 1637
    :cond_12
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1641
    :goto_17
    return-object v0

    .line 1638
    :cond_18
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_35

    .line 1639
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_17

    .line 1641
    :cond_35
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_17
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 1647
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+COPS: (3),(0)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
