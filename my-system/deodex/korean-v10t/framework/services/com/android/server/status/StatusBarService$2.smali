.class Lcom/android/server/status/StatusBarService$2;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .registers 2
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const-string v3, "StatusBar"

    .line 493
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 494
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v0}, Lcom/android/server/status/StatusBarService;->access$402(Lcom/android/server/status/StatusBarService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 496
    :cond_1b
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    .line 497
    const-string v0, "StatusBar"

    const-string v0, "BT QuickSetting changed to False"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disable()Z

    .line 505
    :goto_38
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$500()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 509
    invoke-static {}, Lcom/android/server/status/StatusBarService;->access$600()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-void

    .line 500
    :cond_4c
    const-string v0, "StatusBar"

    const-string v0, "BT QuickSetting changed to True"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$2;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->enable()Z

    goto :goto_38
.end method
