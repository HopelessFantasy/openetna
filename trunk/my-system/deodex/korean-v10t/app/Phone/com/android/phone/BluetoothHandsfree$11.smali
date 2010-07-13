.class Lcom/android/phone/BluetoothHandsfree$11;
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
    .line 1454
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1432
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 1436
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CMEE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "1"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_23
    const-string v2, "0"

    goto :goto_17
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1441
    array-length v0, p1

    if-nez v0, :cond_10

    .line 1443
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1444
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1450
    .end local p0
    :goto_f
    return-object v0

    .line 1445
    .restart local p0
    :cond_10
    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1c

    .line 1447
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_f

    .line 1449
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object p0, p1, v2

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_32

    move v1, v3

    :goto_29
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1450
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_f

    :cond_32
    move v1, v2

    .line 1449
    goto :goto_29
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 1456
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CMEE: (0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
