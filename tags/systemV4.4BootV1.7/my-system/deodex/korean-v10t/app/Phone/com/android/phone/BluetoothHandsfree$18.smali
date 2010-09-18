.class Lcom/android/phone/BluetoothHandsfree$18;
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
    .line 1591
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 8
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "CDMA"

    .line 1541
    array-length v1, p1

    if-lt v1, v4, :cond_10f

    .line 1542
    aget-object v1, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1544
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1545
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 1549
    .local v0, result:Z
    :goto_29
    if-eqz v0, :cond_3c

    .line 1550
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1588
    .end local v0           #result:Z
    :goto_30
    return-object v1

    .line 1547
    :cond_31
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .restart local v0       #result:Z
    goto :goto_29

    .line 1552
    :cond_3c
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_30

    .line 1554
    .end local v0           #result:Z
    :cond_42
    aget-object v1, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1555
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1558
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1559
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    .line 1560
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_30

    .line 1563
    :cond_78
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1564
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_30

    .line 1566
    :cond_8a
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_30

    .line 1569
    :cond_90
    aget-object v1, p1, v3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 1570
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 1574
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1575
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    .line 1579
    :goto_c1
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_30

    .line 1577
    :cond_c8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V

    goto :goto_c1

    .line 1580
    :cond_d2
    aget-object v1, p1, v3

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 1581
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_108

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 1583
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/Phone;)V

    .line 1585
    :cond_108
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_30

    .line 1588
    :cond_10f
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_30
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 1592
    const-string v1, "ril.bt_3way_support"

    const-string v2, "property not found"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    .local v0, threeWaySupport:Ljava/lang/String;
    if-eqz v0, :cond_1f

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 1595
    const-string v1, "3 way call not supported"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Ljava/lang/String;)V

    .line 1596
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const-string v2, "+CHLD: (0,1,2)"

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 1610
    :goto_1e
    return-object v1

    .line 1599
    :cond_1f
    const-string v1, "3 way call supported"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Ljava/lang/String;)V

    .line 1600
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1601
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "+CHLD: (0,1,2,3)"

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1604
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1606
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1607
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$18;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1610
    :cond_4a
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1e
.end method
