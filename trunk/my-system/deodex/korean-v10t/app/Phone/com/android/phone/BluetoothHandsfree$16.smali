.class Lcom/android/phone/BluetoothHandsfree$16;
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
    .line 1515
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 1516
    sparse-switch p1, :sswitch_data_14

    .line 1521
    const/16 v0, 0xe

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    move v0, v2

    .line 1524
    :goto_e
    return v0

    :sswitch_f
    move v0, v2

    .line 1519
    goto :goto_e

    .line 1524
    :cond_11
    const/4 v0, 0x0

    goto :goto_e

    .line 1516
    nop

    :sswitch_data_14
    .sparse-switch
        0x23 -> :sswitch_f
        0x2a -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1501
    array-length v1, p1

    if-lt v1, v3, :cond_35

    .line 1503
    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2c

    .line 1504
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1508
    .local v0, c:C
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$16;->isValidDtmf(C)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1509
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$16;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1510
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1513
    .end local v0           #c:C
    :goto_2b
    return-object v1

    .line 1506
    :cond_2c
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    goto :goto_17

    .line 1513
    .end local v0           #c:C
    :cond_35
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2b
.end method
