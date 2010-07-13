.class public Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService$FmRadioMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;


# direct methods
.method protected constructor <init>(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)V
    .registers 2
    .parameter

    .prologue
    .line 2780
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .registers 6
    .parameter "audioMode"

    .prologue
    const-string v3, "FM RADIO"

    .line 2783
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleAudioModeEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] audioMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2787
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2788
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2789
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2790
    return-void
.end method

.method public onAudioPathEvent(I)V
    .registers 2
    .parameter "audioPath"

    .prologue
    .line 2886
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .registers 6
    .parameter "nfl"

    .prologue
    const-string v3, "FM RADIO"

    .line 2793
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleEstimateNoiseFloorLevelEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] nfl ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2797
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2798
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2799
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2800
    return-void
.end method

.method public onLiveAudioQualityEvent(I)V
    .registers 6
    .parameter "rssi"

    .prologue
    const-string v3, "FM RADIO"

    .line 2803
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleLiveAudioQualityEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] rssi ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2807
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2808
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2809
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2810
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .registers 8
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const-string v3, "RDS"

    .line 2813
    const-string v1, "RDS"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleRdsDataEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    const-string v1, "RDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] rdsDataType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const-string v1, "RDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] rdsIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const-string v1, "RDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] rdsText ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2819
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2820
    new-instance v1, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    iget-object v2, v2, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {v1, v2, p1, p2, p3}, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;-><init>(Llge/android/fmradio/FmRadioControlService;IILjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2821
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2822
    return-void
.end method

.method public onRdsModeEvent(II)V
    .registers 7
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    const-string v3, "RDS"

    .line 2825
    const-string v1, "RDS"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleRdsModeEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    const-string v1, "RDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] rdsMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const-string v1, "RDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] alternateFreqHopEnabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2830
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2831
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2832
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2833
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2834
    return-void
.end method

.method public onSeekCompleteEvent(IIZ)V
    .registers 8
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"

    .prologue
    const-string v3, "FM RADIO"

    .line 2837
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleSeekCompleteEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] freq ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] rssi ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] seeksuccess ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2843
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2844
    new-instance v1, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    iget-object v2, v2, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {v1, v2, p1, p2, p3}, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;-><init>(Llge/android/fmradio/FmRadioControlService;IIZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2845
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2846
    return-void
.end method

.method public onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 2851
    const-string v2, "FM RADIO"

    const-string v3, "[FmRadioMgr][FmReceiverEventHandler] handleStatusEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] freq ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rssi ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] radioIsOn ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsProgramType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsProgramService ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsRadioText ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsProgramTypeName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] isMute ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const-string v2, "RDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsProgramType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    const-string v2, "RDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsProgramService ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-string v2, "RDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsRadioText ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const-string v2, "RDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioMgr][FmReceiverEventHandler] rdsProgramTypeName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 2867
    .local v13, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v13, Landroid/os/Message;->what:I

    .line 2868
    new-instance v2, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    iget-object v3, v3, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const/4 v12, 0x0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;-><init>(Llge/android/fmradio/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLlge/android/fmradio/FmRadioControlService$1;)V

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2870
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v2}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2871
    return-void
.end method

.method public onVolumeEvent(II)V
    .registers 3
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2891
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .registers 6
    .parameter "worldRegion"

    .prologue
    const-string v3, "FM RADIO"

    .line 2874
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleWorldRegionEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][FmReceiverEventHandler] worldRegion ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2878
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2879
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2880
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2881
    return-void
.end method
