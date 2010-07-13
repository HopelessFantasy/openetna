.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverSeekCompleteData"
.end annotation


# instance fields
.field private mFreq:I

.field private mRssi:I

.field private mSeeksuccess:Z

.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IIZ)V
    .registers 6
    .parameter
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"

    .prologue
    const/4 v0, 0x0

    .line 2076
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2072
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mFreq:I

    .line 2073
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mRssi:I

    .line 2074
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mSeeksuccess:Z

    .line 2077
    iput p2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mFreq:I

    .line 2078
    iput p3, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mRssi:I

    .line 2079
    iput-boolean p4, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mSeeksuccess:Z

    .line 2080
    return-void
.end method


# virtual methods
.method public GetFreq()I
    .registers 2

    .prologue
    .line 2081
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mFreq:I

    return v0
.end method

.method public GetRssi()I
    .registers 2

    .prologue
    .line 2082
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mRssi:I

    return v0
.end method

.method public GetSeeksuccess()Z
    .registers 2

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->mSeeksuccess:Z

    return v0
.end method
