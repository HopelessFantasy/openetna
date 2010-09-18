.class Lcom/android/phone/BluetoothHandsfree$2;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V
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
    .line 1195
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private headsetButtonPress()Landroid/bluetooth/AtCommandResult;
    .registers 5

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1163
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1166
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1188
    :cond_1a
    :goto_1a
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :goto_20
    return-object v0

    .line 1167
    :cond_21
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1168
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1170
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto :goto_1a

    .line 1172
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getConnectTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    .line 1180
    :cond_61
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1181
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_1a

    .line 1186
    :cond_70
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_20
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 2

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$2;->headsetButtonPress()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 3
    .parameter "args"

    .prologue
    .line 1196
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$2;->headsetButtonPress()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method
