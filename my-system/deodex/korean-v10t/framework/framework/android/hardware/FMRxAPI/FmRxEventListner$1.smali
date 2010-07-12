.class Landroid/hardware/FMRxAPI/FmRxEventListner$1;
.super Ljava/lang/Thread;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/FMRxAPI/FmRxEventListner;->startListner(ILandroid/hardware/FMRxAPI/FmRxEvCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/FMRxAPI/FmRxEventListner;

.field final synthetic val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/FMRxAPI/FmRxEventListner;ILandroid/hardware/FMRxAPI/FmRxEvCallbacks;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->this$0:Landroid/hardware/FMRxAPI/FmRxEventListner;

    iput p2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-string v5, "FMRadio"

    .line 63
    :goto_3
    const/16 v2, 0x80

    new-array v0, v2, [B

    .line 64
    .local v0, buff:[B
    const-string v2, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting the listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$fd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$fd:I

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->listenForEventsNative(I[BI)I

    move-result v1

    .line 66
    .local v1, i:I
    const-string v2, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returned with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event. Int:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    aget-byte v2, v0, v6

    packed-switch v2, :pswitch_data_11e

    .line 125
    const-string v2, "FMRadio"

    const-string v2, "Unknown event"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 69
    :pswitch_59
    const-string v2, "FMRadio"

    const-string v2, "Got READY_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/FMRxAPI/FmRxEvCallbacks;->FmRxEvEnableReceiver()V

    goto :goto_3

    .line 73
    :pswitch_66
    const-string v2, "FMRadio"

    const-string v2, "Got TUNE_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/FMRxAPI/FmRxEvCallbacks;->FmRxEvRadioTuneStatus()V

    goto :goto_3

    .line 77
    :pswitch_73
    const-string v2, "FMRadio"

    const-string v2, "Got SEEK_COMPLETE_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

    iget v3, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$fd:I

    invoke-static {v3}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->getFrequencyNative(I)D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroid/hardware/FMRxAPI/FmRxEvCallbacks;->FmRxEvSearchComplete(D)V

    goto/16 :goto_3

    .line 81
    :pswitch_87
    const-string v2, "FMRadio"

    const-string v2, "Got SCAN_NEXT_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 84
    :pswitch_90
    const-string v2, "FMRadio"

    const-string v2, "Got SYNC_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 87
    :pswitch_99
    const-string v2, "FMRadio"

    const-string v2, "Got SIGNAL_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 90
    :pswitch_a2
    const-string v2, "FMRadio"

    const-string v2, "Got AUDIO_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 93
    :pswitch_ab
    const-string v2, "FMRadio"

    const-string v2, "Got RAW_RDS_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 96
    :pswitch_b4
    const-string v2, "FMRadio"

    const-string v2, "Got RT_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "This is a test RT data"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/hardware/FMRxAPI/FmRxEvCallbacks;->FmRxEvRdsRtInfo(Ljava/lang/StringBuffer;)V

    goto/16 :goto_3

    .line 100
    :pswitch_c9
    const-string v2, "FMRadio"

    const-string v2, "Got PS_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Landroid/hardware/FMRxAPI/FmRxEventListner$1;->val$cb:Landroid/hardware/FMRxAPI/FmRxEvCallbacks;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "This is a test PS data"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/hardware/FMRxAPI/FmRxEvCallbacks;->FmRxEvRdsPsInfo(Ljava/lang/StringBuffer;)V

    goto/16 :goto_3

    .line 104
    :pswitch_de
    const-string v2, "FMRadio"

    const-string v2, "Got ERROR_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 107
    :pswitch_e7
    const-string v2, "FMRadio"

    const-string v2, "Got BELOW_TH_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 110
    :pswitch_f0
    const-string v2, "FMRadio"

    const-string v2, "Got ABOVE_TH_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 113
    :pswitch_f9
    const-string v2, "FMRadio"

    const-string v2, "Got STEREO_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 116
    :pswitch_102
    const-string v2, "FMRadio"

    const-string v2, "Got MONO_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 119
    :pswitch_10b
    const-string v2, "FMRadio"

    const-string v2, "Got RDS_AVAL_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 122
    :pswitch_114
    const-string v2, "FMRadio"

    const-string v2, "Got RDS_NOT_AVAL_EVENT"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 67
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_59
        :pswitch_66
        :pswitch_73
        :pswitch_87
        :pswitch_90
        :pswitch_99
        :pswitch_a2
        :pswitch_ab
        :pswitch_b4
        :pswitch_c9
        :pswitch_de
        :pswitch_e7
        :pswitch_f0
        :pswitch_f9
        :pswitch_102
        :pswitch_10b
        :pswitch_114
    .end packed-switch
.end method
