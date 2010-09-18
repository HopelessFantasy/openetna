.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_NONE:I = 0x0

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0xa

.field private static final TONE_RELATIVE_VOLUME_MIPRI:I = 0x14

.field public static final TONE_RING_TONE:I = 0x6


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 5
    .parameter
    .parameter "toneId"

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1287
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1288
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1d

    .line 1289
    invoke-static {p1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 1291
    :cond_1d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1300
    const/4 v1, 0x0

    .line 1301
    .local v1, mAudioMode:I
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_b

    .line 1302
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1304
    :cond_b
    iget v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v7, :pswitch_data_dc

    .line 1375
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad toneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1306
    :pswitch_2b
    const/16 v5, 0x16

    .line 1309
    .local v5, toneType:I
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v7, :cond_73

    .line 1310
    const/16 v6, 0x50

    .line 1324
    .local v6, toneVolume:I
    :goto_33
    const/16 v4, 0xbb8

    .line 1383
    .local v4, toneLengthMillis:I
    :goto_35
    :try_start_35
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v7}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v7

    if-eqz v7, :cond_bc

    .line 1384
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v7}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v7

    if-eqz v7, :cond_b9

    const/4 v7, 0x6

    move v2, v7

    .line 1389
    .local v2, stream:I
    :goto_4b
    new-instance v3, Landroid/media/ToneGenerator;

    invoke-direct {v3, v2, v6}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_50} :catch_be

    .line 1412
    .end local v2           #stream:I
    .local v3, toneGenerator:Landroid/media/ToneGenerator;
    :goto_50
    if-eqz v3, :cond_5f

    .line 1413
    invoke-virtual {v3, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1414
    int-to-long v7, v4

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1415
    invoke-virtual {v3}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1418
    invoke-virtual {v3}, Landroid/media/ToneGenerator;->release()V

    .line 1434
    :cond_5f
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v7}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_72

    .line 1435
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v7}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)V

    .line 1437
    :cond_72
    return-void

    .line 1312
    .end local v3           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v4           #toneLengthMillis:I
    .end local v6           #toneVolume:I
    :cond_73
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7f

    .line 1314
    const/16 v6, 0x78

    .restart local v6       #toneVolume:I
    goto :goto_33

    .line 1318
    .end local v6           #toneVolume:I
    :cond_7f
    const/16 v6, 0x50

    .restart local v6       #toneVolume:I
    goto :goto_33

    .line 1328
    .end local v5           #toneType:I
    .end local v6           #toneVolume:I
    :pswitch_82
    const/16 v5, 0x11

    .line 1329
    .restart local v5       #toneType:I
    const/16 v6, 0x50

    .line 1330
    .restart local v6       #toneVolume:I
    const/16 v4, 0xfa0

    .line 1331
    .restart local v4       #toneLengthMillis:I
    goto :goto_35

    .line 1333
    .end local v4           #toneLengthMillis:I
    .end local v5           #toneType:I
    .end local v6           #toneVolume:I
    :pswitch_89
    const/16 v5, 0x12

    .line 1334
    .restart local v5       #toneType:I
    const/16 v6, 0x50

    .line 1335
    .restart local v6       #toneVolume:I
    const/16 v4, 0xfa0

    .line 1336
    .restart local v4       #toneLengthMillis:I
    goto :goto_35

    .line 1342
    .end local v4           #toneLengthMillis:I
    .end local v5           #toneType:I
    .end local v6           #toneVolume:I
    :pswitch_90
    const/16 v5, 0x19

    .line 1345
    .restart local v5       #toneType:I
    const/16 v6, 0x14

    .line 1347
    .restart local v6       #toneVolume:I
    const/16 v4, 0x3e8

    .line 1348
    .restart local v4       #toneLengthMillis:I
    goto :goto_35

    .line 1350
    .end local v4           #toneLengthMillis:I
    .end local v5           #toneType:I
    .end local v6           #toneVolume:I
    :pswitch_97
    const/16 v5, 0x1b

    .line 1351
    .restart local v5       #toneType:I
    const/16 v6, 0xa

    .line 1352
    .restart local v6       #toneVolume:I
    const/16 v4, 0x7d0

    .line 1353
    .restart local v4       #toneLengthMillis:I
    goto :goto_35

    .line 1356
    .end local v4           #toneLengthMillis:I
    .end local v5           #toneType:I
    .end local v6           #toneVolume:I
    :pswitch_9e
    const/16 v5, 0x17

    .line 1357
    .restart local v5       #toneType:I
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v7, :cond_a9

    .line 1358
    const/16 v6, 0x50

    .line 1371
    .restart local v6       #toneVolume:I
    :goto_a6
    const/16 v4, 0xbb8

    .line 1372
    .restart local v4       #toneLengthMillis:I
    goto :goto_35

    .line 1360
    .end local v4           #toneLengthMillis:I
    .end local v6           #toneVolume:I
    :cond_a9
    iget-object v7, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b6

    .line 1362
    const/16 v6, 0x50

    .restart local v6       #toneVolume:I
    goto :goto_a6

    .line 1367
    .end local v6           #toneVolume:I
    :cond_b6
    const/16 v6, 0x28

    .restart local v6       #toneVolume:I
    goto :goto_a6

    .line 1384
    .restart local v4       #toneLengthMillis:I
    :cond_b9
    const/4 v7, 0x0

    move v2, v7

    goto :goto_4b

    .line 1387
    :cond_bc
    const/4 v2, 0x0

    .restart local v2       #stream:I
    goto :goto_4b

    .line 1391
    .end local v2           #stream:I
    :catch_be
    move-exception v7

    move-object v0, v7

    .line 1392
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v7, "CallNotifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v3, 0x0

    .restart local v3       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_50

    .line 1304
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_82
        :pswitch_89
        :pswitch_90
        :pswitch_97
        :pswitch_9e
    .end packed-switch
.end method
