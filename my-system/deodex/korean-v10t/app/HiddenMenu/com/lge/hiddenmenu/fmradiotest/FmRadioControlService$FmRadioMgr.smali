.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmRadioMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final AUTO_SCAN_THRESH:I

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1814
    const-class v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1822
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1816
    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mHandler:Landroid/os/Handler;

    .line 1817
    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 1818
    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    .line 1820
    const/16 v0, 0x66

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->AUTO_SCAN_THRESH:I

    .line 1823
    return-void
.end method

.method static synthetic access$1000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Initialize(Landroid/os/Handler;)Z
    .registers 5
    .parameter "handler"

    .prologue
    const-string v2, "FM RADIO"

    .line 1826
    sget-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1828
    :cond_e
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mHandler:Landroid/os/Handler;

    .line 1830
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    const-string v1, "fm_receiver"

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 1832
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_42

    .line 1834
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    .line 1836
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    if-eqz v0, :cond_3b

    .line 1839
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiverEventHandler:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr$FmReceiverEventHandler;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 1840
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioMgr] registerEventHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v0, 0x1

    .line 1845
    :goto_3a
    return v0

    .line 1843
    :cond_3b
    const-string v0, "FM RADIO"

    const-string v0, "+++[Error]+++[FmRadioMgr]FmReceiverEventHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_42
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public Reset()V
    .registers 1

    .prologue
    .line 1881
    return-void
.end method

.method public Run()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const-string v3, "FM RADIO"

    .line 1849
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    .line 1852
    .local v0, nResult:I
    if-nez v0, :cond_27

    .line 1853
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

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1865
    :goto_26
    return v1

    .line 1855
    :cond_27
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4f

    .line 1857
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioMgr][Run] Aleardy running"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$802(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;I)I

    .line 1859
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    const-string v2, "lge.android.fmradio.poweron"

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$900(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Ljava/lang/String;)V

    .line 1860
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    const-string v2, "lge.android.fmradio.updatefreq"

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$900(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Ljava/lang/String;)V

    .line 1861
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    const-string v2, "lge.android.fmradio.updaterssi"

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->access$900(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Ljava/lang/String;)V

    move v1, v4

    .line 1862
    goto :goto_26

    .line 1864
    :cond_4f
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

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public Stop()V
    .registers 5

    .prologue
    .line 1870
    sget-boolean v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1872
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    move-result v0

    .line 1873
    .local v0, nResult:I
    if-nez v0, :cond_17

    .line 1877
    :goto_16
    return-void

    .line 1876
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
    .line 1901
    sget-boolean v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1903
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x82

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 1904
    .local v0, nResult:I
    if-nez v0, :cond_1b

    .line 1908
    :goto_1a
    return-void

    .line 1907
    :cond_1b
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runAutoScanning] seekStation Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public runBackwardScanning()V
    .registers 5

    .prologue
    .line 1923
    sget-boolean v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1925
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/4 v2, 0x0

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 1926
    .local v0, nResult:I
    if-nez v0, :cond_1a

    .line 1930
    :goto_19
    return-void

    .line 1929
    :cond_1a
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runBackwardScanning] seekStation start++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public runCatchAutoScanning()V
    .registers 5

    .prologue
    .line 1912
    sget-boolean v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1914
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x81

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 1915
    .local v0, nResult:I
    if-nez v0, :cond_1b

    .line 1919
    :goto_1a
    return-void

    .line 1918
    :cond_1b
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runCatchAutoScanning] seekStation Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public runForwardScanning()V
    .registers 5

    .prologue
    .line 1934
    sget-boolean v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1936
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x81

    const/16 v3, 0x66

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 1938
    .local v0, nResult:I
    if-nez v0, :cond_1b

    .line 1942
    :goto_1a
    return-void

    .line 1941
    :cond_1b
    const-string v1, "FM RADIO"

    const-string v2, "++[Error]++ [FmRadioMgr][runForwardScanning] seekStation start++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public tuneFrequency(I)V
    .registers 6
    .parameter "nFreq"

    .prologue
    .line 1890
    sget-boolean v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1892
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    move-result v0

    .line 1893
    .local v0, nResult:I
    if-nez v0, :cond_17

    .line 1897
    :goto_16
    return-void

    .line 1896
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
