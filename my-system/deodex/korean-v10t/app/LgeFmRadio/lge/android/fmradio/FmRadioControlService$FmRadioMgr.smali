.class Llge/android/fmradio/FmRadioControlService$FmRadioMgr;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmRadioMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final AF_THRESH:I

.field private final AUTO_SCAN_THRESH:I

.field private final AUTO_SCAN_THRESH_USB:I

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2578
    const-class v0, Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Llge/android/fmradio/FmRadioControlService;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2588
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2580
    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mHandler:Landroid/os/Handler;

    .line 2581
    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 2582
    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    .line 2584
    const/16 v0, 0x6e

    iput v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->AUTO_SCAN_THRESH:I

    .line 2585
    const/16 v0, 0x65

    iput v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->AUTO_SCAN_THRESH_USB:I

    .line 2586
    const/16 v0, 0x66

    iput v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->AF_THRESH:I

    .line 2589
    return-void
.end method

.method static synthetic access$1800(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2578
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public GetSystemState()Z
    .registers 4

    .prologue
    .line 2764
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_e

    .line 2765
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getStatus()I

    move-result v0

    .line 2767
    .local v0, nResult:I
    if-nez v0, :cond_e

    .line 2768
    const/4 v1, 0x1

    .line 2773
    .end local v0           #nResult:I
    :goto_d
    return v1

    .line 2772
    :cond_e
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runRdsMode] start++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public Initialize(Landroid/os/Handler;)Z
    .registers 6
    .parameter "handler"

    .prologue
    const/4 v2, 0x1

    const-string v3, "FM RADIO"

    .line 2592
    sget-boolean v0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2594
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_15

    move v0, v2

    .line 2613
    :goto_14
    return v0

    .line 2596
    :cond_15
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mHandler:Landroid/os/Handler;

    .line 2598
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v1, "fm_receiver"

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 2600
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_49

    .line 2602
    new-instance v0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;-><init>(Llge/android/fmradio/FmRadioControlService$FmRadioMgr;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    .line 2604
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    if-eqz v0, :cond_42

    .line 2607
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Llge/android/fmradio/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 2608
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioMgr] registerEventHandler"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2609
    goto :goto_14

    .line 2611
    :cond_42
    const-string v0, "FM RADIO"

    const-string v0, "+++[Error]+++[FmRadioMgr]FmReceiverEventHandler"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_49
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public Reset()V
    .registers 1

    .prologue
    .line 2653
    return-void
.end method

.method public Run()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "FM RADIO"

    .line 2617
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    .line 2620
    .local v0, nResult:I
    if-nez v0, :cond_27

    .line 2621
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioMgr][Run] turnOnRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 2637
    :goto_26
    return v1

    .line 2623
    :cond_27
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5b

    .line 2625
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][Run] Aleardy running"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioControlService;->access$1002(Llge/android/fmradio/FmRadioControlService;I)I

    .line 2627
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v1, v3}, Llge/android/fmradio/FmRadioControlService;->setRunningState(Z)V

    .line 2628
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v2, "lge.android.fmradio.power"

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioControlService;->access$1300(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V

    .line 2629
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v2, "lge.android.fmradio.updatefreq"

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioControlService;->access$1300(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V

    .line 2631
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v2, "lge.android.fmradio.rdsdata"

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioControlService;->access$1300(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V

    .line 2632
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v2, "lge.android.fmradio.outputsound"

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioControlService;->access$1300(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V

    move v1, v3

    .line 2634
    goto :goto_26

    .line 2636
    :cond_5b
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++ [Error] +++++ [FmRadioManager][CreateFmReceiver] turnOnRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public Stop()V
    .registers 5

    .prologue
    .line 2642
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2644
    :cond_e
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    move-result v0

    .line 2645
    .local v0, nResult:I
    if-nez v0, :cond_17

    .line 2649
    :goto_16
    return-void

    .line 2648
    :cond_17
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++ [Error] +++++ [FmRadioMgr][Error] turnOffRadio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public runAutoScanning()V
    .registers 5

    .prologue
    const/16 v3, 0x82

    .line 2674
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2678
    :cond_10
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService;->access$1700(Llge/android/fmradio/FmRadioControlService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 2679
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 2684
    .local v0, nResult:I
    :goto_21
    if-nez v0, :cond_2d

    .line 2688
    :goto_23
    return-void

    .line 2681
    .end local v0           #nResult:I
    :cond_24
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x6e

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .restart local v0       #nResult:I
    goto :goto_21

    .line 2687
    :cond_2d
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runAutoScanning] seekStation Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public runBackwardScanning()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2710
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2714
    :cond_f
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService;->access$1700(Llge/android/fmradio/FmRadioControlService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 2715
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 2720
    .local v0, nResult:I
    :goto_20
    if-nez v0, :cond_2c

    .line 2724
    :goto_22
    return-void

    .line 2717
    .end local v0           #nResult:I
    :cond_23
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x6e

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .restart local v0       #nResult:I
    goto :goto_20

    .line 2723
    :cond_2c
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runBackwardScanning] seekStation start++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public runCatchAutoScanning()V
    .registers 5

    .prologue
    const/16 v3, 0x81

    .line 2692
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2696
    :cond_10
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService;->access$1700(Llge/android/fmradio/FmRadioControlService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 2697
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 2702
    .local v0, nResult:I
    :goto_21
    if-nez v0, :cond_2d

    .line 2706
    :goto_23
    return-void

    .line 2699
    .end local v0           #nResult:I
    :cond_24
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x6e

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .restart local v0       #nResult:I
    goto :goto_21

    .line 2705
    :cond_2d
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runCatchAutoScanning] seekStation Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public runForwardScanning()V
    .registers 5

    .prologue
    const/16 v3, 0x81

    .line 2728
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2732
    :cond_10
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v1}, Llge/android/fmradio/FmRadioControlService;->access$1700(Llge/android/fmradio/FmRadioControlService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 2733
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 2739
    .local v0, nResult:I
    :goto_21
    if-nez v0, :cond_2d

    .line 2743
    :goto_23
    return-void

    .line 2735
    .end local v0           #nResult:I
    :cond_24
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x6e

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .restart local v0       #nResult:I
    goto :goto_21

    .line 2742
    :cond_2d
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runForwardScanning] seekStation start++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public runRdsMode(ZZ)V
    .registers 9
    .parameter "bRds"
    .parameter "bAF"

    .prologue
    const/4 v4, 0x0

    .line 2747
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2749
    :cond_f
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz p1, :cond_22

    const/4 v2, 0x2

    :goto_14
    const/16 v3, 0x4c

    if-eqz p2, :cond_19

    const/4 v4, 0x1

    :cond_19
    const/16 v5, 0x66

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->setRdsMode(IIII)I

    move-result v0

    .line 2756
    .local v0, nResult:I
    if-nez v0, :cond_24

    .line 2760
    :goto_21
    return-void

    .end local v0           #nResult:I
    :cond_22
    move v2, v4

    .line 2749
    goto :goto_14

    .line 2759
    .restart local v0       #nResult:I
    :cond_24
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runRdsMode] start++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public tuneFrequency(I)V
    .registers 6
    .parameter "nFreq"

    .prologue
    .line 2662
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2664
    :cond_e
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    move-result v0

    .line 2665
    .local v0, nResult:I
    if-nez v0, :cond_17

    .line 2670
    :goto_16
    return-void

    .line 2669
    :cond_17
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++[Error]++ [FmRadioMgr][tuneFrequency] tuneRadio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
