.class public Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothKeyboardDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothUpdateReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothUpdateReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const-string v6, "BluetoothUpdateReceiver"

    .line 179
    const-string v3, "BluetoothUpdateReceiver"

    const-string v3, "onReceive"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.intent.action.PAIRING_UPDATE_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 183
    const-string v3, "BluetoothUpdateReceiver"

    const-string v3, "Got PAIRING_UPDATE_ACTION event"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "android.bluetooth.intent.UPDATE_TYPE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 187
    .local v2, updateType:I
    const-string v3, "android.bluetooth.intent.UPDATE_DATA"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, updateData:I
    const-string v3, "BluetoothUpdateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got (UPDATE_TYPE, UPDATE_DATA) = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-ne v5, v2, :cond_61

    .line 193
    const-string v3, "BluetoothUpdateReceiver"

    const-string v3, "Receiver dialog shutdown update"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->finish()V

    .line 208
    .end local v1           #updateData:I
    .end local v2           #updateType:I
    :cond_60
    :goto_60
    return-void

    .line 195
    .restart local v1       #updateData:I
    .restart local v2       #updateType:I
    :cond_61
    if-nez v2, :cond_a5

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v3, :cond_a5

    .line 197
    const-string v3, "BluetoothUpdateReceiver"

    const-string v3, "Receiver dialog keypress update"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)I

    move-result v3

    if-eq v3, v1, :cond_60

    .line 199
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->access$102(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;I)I

    .line 200
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->updatePinCode(II)V

    .line 201
    const-string v3, "BluetoothUpdateReceiver"

    const-string v3, "INVALIDATE!"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_60

    .line 205
    :cond_a5
    const-string v3, "BluetoothUpdateReceiver"

    const-string v3, "Receiver dialog FAILED!!!"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method
