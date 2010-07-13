.class public Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;


# direct methods
.method protected constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)V
    .registers 2
    .parameter

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .registers 6
    .parameter "audioMode"

    .prologue
    const-string v3, "FM RADIO"

    .line 1951
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleAudioModeEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
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

    .line 1954
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1955
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1956
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1957
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1958
    return-void
.end method

.method public onAudioPathEvent(I)V
    .registers 2
    .parameter "audioPath"

    .prologue
    .line 2047
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .registers 6
    .parameter "nfl"

    .prologue
    const-string v3, "FM RADIO"

    .line 1961
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleEstimateNoiseFloorLevelEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
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

    .line 1964
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1965
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1966
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1967
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1968
    return-void
.end method

.method public onLiveAudioQualityEvent(I)V
    .registers 6
    .parameter "rssi"

    .prologue
    const-string v3, "FM RADIO"

    .line 1971
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleLiveAudioQualityEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
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

    .line 1974
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1975
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1976
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1977
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1978
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .registers 8
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const-string v3, "FM RADIO"

    .line 1981
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleRdsDataEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const-string v1, "FM RADIO"

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

    .line 1983
    const-string v1, "FM RADIO"

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

    .line 1984
    const-string v1, "FM RADIO"

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

    .line 1986
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1987
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1988
    new-instance v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;

    iget-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    iget-object v2, v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IILjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1989
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1990
    return-void
.end method

.method public onRdsModeEvent(II)V
    .registers 7
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    const-string v3, "FM RADIO"

    .line 1993
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleRdsModeEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const-string v1, "FM RADIO"

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

    .line 1995
    const-string v1, "FM RADIO"

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

    .line 1997
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1998
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1999
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2000
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2001
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2002
    return-void
.end method

.method public onSeekCompleteEvent(IIZ)V
    .registers 8
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"

    .prologue
    const-string v3, "FM RADIO"

    .line 2005
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleSeekCompleteEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
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

    .line 2007
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

    .line 2008
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

    .line 2010
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2011
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2012
    new-instance v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;

    iget-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    iget-object v2, v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IIZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2013
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2014
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
    .line 2019
    const-string v2, "FM RADIO"

    const-string v3, "[FmRadioMgr][FmReceiverEventHandler] handleStatusEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
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

    .line 2021
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

    .line 2022
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

    .line 2023
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

    .line 2024
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

    .line 2025
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

    .line 2026
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

    .line 2027
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

    .line 2029
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 2030
    .local v13, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v13, Landroid/os/Message;->what:I

    .line 2031
    new-instance v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    iget-object v3, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    iget-object v3, v3, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    const/4 v12, 0x0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;)V

    iput-object v2, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2033
    iget-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v2}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2034
    return-void
.end method

.method public onVolumeEvent(II)V
    .registers 3
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2050
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .registers 6
    .parameter "worldRegion"

    .prologue
    const-string v3, "FM RADIO"

    .line 2037
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][FmReceiverEventHandler] handleWorldRegionEvent"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
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

    .line 2040
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2041
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2042
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2043
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;->this$1:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2044
    return-void
.end method
