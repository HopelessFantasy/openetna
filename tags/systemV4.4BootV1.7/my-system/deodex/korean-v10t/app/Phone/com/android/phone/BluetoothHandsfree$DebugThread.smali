.class Lcom/android/phone/BluetoothHandsfree$DebugThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugThread"
.end annotation


# static fields
.field private static final DEBUG_HANDSFREE:Ljava/lang/String; = "debug.bt.hfp"

.field private static final DEBUG_HANDSFREE_AUDIO:Ljava/lang/String; = "debug.bt.hfp.audio"

.field private static final DEBUG_HANDSFREE_AUDIO_ANYTIME:Ljava/lang/String; = "debug.bt.hfp.audio_anytime"

.field private static final DEBUG_HANDSFREE_BATTERY:Ljava/lang/String; = "debug.bt.hfp.battery"

.field private static final DEBUG_HANDSFREE_CLCC:Ljava/lang/String; = "debug.bt.hfp.clcc"

.field private static final DEBUG_HANDSFREE_ROAM:Ljava/lang/String; = "debug.bt.hfp.roam"

.field private static final DEBUG_HANDSFREE_SERVICE:Ljava/lang/String; = "debug.bt.hfp.service"

.field private static final DEBUG_HANDSFREE_SIGNAL:Ljava/lang/String; = "debug.bt.hfp.signal"

.field private static final DEBUG_UNSOL_INBAND_RINGTONE:Ljava/lang/String; = "debug.bt.unsol.inband"


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1997
    const/16 v20, 0x1

    .line 1998
    .local v20, oldService:Z
    const/16 v19, 0x0

    .line 1999
    .local v19, oldRoam:Z
    const/16 v18, 0x0

    .line 2001
    .local v18, oldAudio:Z
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_16e

    .line 2002
    const-string v5, "debug.bt.hfp.battery"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2003
    .local v13, batteryLevel:I
    if-ltz v13, :cond_4a

    const/4 v5, 0x5

    if-gt v13, v5, :cond_4a

    .line 2004
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2005
    .local v17, intent:Landroid/content/Intent;
    const-string v5, "level"

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2006
    const-string v5, "scale"

    const/4 v6, 0x5

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 2010
    .end local v17           #intent:Landroid/content/Intent;
    :cond_4a
    const/16 v22, 0x0

    .line 2011
    .local v22, serviceStateChanged:Z
    const-string v5, "debug.bt.hfp.service"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move/from16 v1, v20

    if-eq v0, v1, :cond_5f

    .line 2012
    if-nez v20, :cond_151

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 2013
    :goto_5d
    const/16 v22, 0x1

    .line 2015
    :cond_5f
    const-string v5, "debug.bt.hfp.roam"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_72

    .line 2016
    if-nez v19, :cond_156

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 2017
    :goto_70
    const/16 v22, 0x1

    .line 2019
    :cond_72
    if-eqz v22, :cond_9b

    .line 2020
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2021
    .local v12, b:Landroid/os/Bundle;
    const-string v5, "state"

    if-eqz v20, :cond_15b

    const/4 v6, 0x0

    :goto_7e
    invoke-virtual {v12, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2022
    const-string v5, "roaming"

    move-object v0, v12

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v12}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V

    .line 2026
    .end local v12           #b:Landroid/os/Bundle;
    :cond_9b
    const-string v5, "debug.bt.hfp.audio"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_b6

    .line 2027
    if-nez v18, :cond_15e

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 2028
    :goto_ac
    if-eqz v18, :cond_163

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2035
    :cond_b6
    :goto_b6
    const-string v5, "debug.bt.hfp.signal"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2036
    .local v4, signalLevel:I
    if-ltz v4, :cond_f1

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_f1

    .line 2037
    new-instance v3, Landroid/telephony/SignalStrength;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 2039
    .local v3, signalStrength:Landroid/telephony/SignalStrength;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2040
    .restart local v17       #intent:Landroid/content/Intent;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2041
    .local v14, data:Landroid/os/Bundle;
    invoke-virtual {v3, v14}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2042
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 2046
    .end local v3           #signalStrength:Landroid/telephony/SignalStrength;
    .end local v14           #data:Landroid/os/Bundle;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_f1
    const-string v5, "debug.bt.hfp.clcc"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Ljava/lang/String;)V

    .line 2050
    :cond_10a
    const-wide/16 v5, 0x3e8

    :try_start_10c
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->sleep(J)V
    :try_end_10f
    .catch Ljava/lang/InterruptedException; {:try_start_10c .. :try_end_10f} :catch_16d

    .line 2055
    const-string v5, "debug.bt.unsol.inband"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 2057
    .local v16, inBandRing:I
    if-eqz v16, :cond_11e

    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 2058
    :cond_11e
    new-instance v21, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x2

    move-object/from16 v0, v21

    move v1, v5

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2060
    .local v21, result:Landroid/bluetooth/AtCommandResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+BSIR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2012
    .end local v4           #signalLevel:I
    .end local v16           #inBandRing:I
    .end local v21           #result:Landroid/bluetooth/AtCommandResult;
    :cond_151
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_5d

    .line 2016
    :cond_156
    const/4 v5, 0x0

    move/from16 v19, v5

    goto/16 :goto_70

    .line 2021
    .restart local v12       #b:Landroid/os/Bundle;
    :cond_15b
    const/4 v6, 0x1

    goto/16 :goto_7e

    .line 2027
    .end local v12           #b:Landroid/os/Bundle;
    :cond_15e
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_ac

    .line 2031
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    goto/16 :goto_b6

    .line 2051
    .restart local v4       #signalLevel:I
    :catch_16d
    move-exception v15

    .line 2064
    .end local v4           #signalLevel:I
    .end local v13           #batteryLevel:I
    .end local v22           #serviceStateChanged:Z
    :cond_16e
    return-void
.end method
