.class Lcom/android/phone/BluetoothHandsfree$28;
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
    .line 1793
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 7
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1774
    array-length v1, p1

    if-lt v1, v3, :cond_44

    aget-object v1, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1775
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 1776
    :try_start_14
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_41

    move-result v2

    if-nez v2, :cond_2e

    .line 1778
    :try_start_1c
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$5300()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_29} :catch_36

    .line 1782
    :try_start_29
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1784
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_41

    .line 1785
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1790
    :goto_35
    return-object v1

    .line 1779
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 1780
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_38
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    monitor-exit v1

    move-object v1, v2

    goto :goto_35

    .line 1784
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    throw v2

    .line 1786
    :cond_44
    array-length v1, p1

    if-lt v1, v3, :cond_5e

    aget-object v1, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1787
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1788
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_35

    .line 1790
    :cond_5e
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_35
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 1794
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+BVRA: (0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
