.class Lcom/android/phone/BluetoothAtPhonebook$1;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CSCS: \"UTF-8\""

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 5
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    array-length v0, p1

    if-ge v0, v1, :cond_b

    .line 128
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 135
    :goto_a
    return-object v0

    .line 130
    :cond_b
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    const-string v1, "\"GSM\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    const-string v1, "\"IRA\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    const-string v1, "\"UTF-8\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    const-string v1, "\"UTF8\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 133
    :cond_3b
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_a

    .line 135
    :cond_41
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_a
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 140
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CSCS: (\"UTF-8\",\"IRA\",\"GSM\")"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
