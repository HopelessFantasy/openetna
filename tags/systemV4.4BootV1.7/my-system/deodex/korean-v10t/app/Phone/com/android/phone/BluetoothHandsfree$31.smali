.class Lcom/android/phone/BluetoothHandsfree$31;
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
    .line 1824
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 7
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1826
    array-length v1, p1

    if-ne v1, v3, :cond_b

    aget-object v1, p1, v4

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_11

    .line 1827
    :cond_b
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1833
    :goto_10
    return-object v1

    .line 1829
    :cond_11
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1830
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_41

    move v0, v3

    .line 1832
    .local v0, flag:I
    :goto_2b
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1833
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_10

    .end local v0           #flag:I
    :cond_41
    move v0, v4

    .line 1830
    goto :goto_2b
.end method
