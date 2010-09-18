.class Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverSeekCompleteData"
.end annotation


# instance fields
.field private mFreq:I

.field private mRssi:I

.field private mSeeksuccess:Z

.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioControlService;IIZ)V
    .registers 6
    .parameter
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"

    .prologue
    const/4 v0, 0x0

    .line 2918
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2914
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mFreq:I

    .line 2915
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mRssi:I

    .line 2916
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mSeeksuccess:Z

    .line 2919
    iput p2, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mFreq:I

    .line 2920
    iput p3, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mRssi:I

    .line 2921
    iput-boolean p4, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mSeeksuccess:Z

    .line 2922
    return-void
.end method


# virtual methods
.method public GetFreq()I
    .registers 2

    .prologue
    .line 2923
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mFreq:I

    return v0
.end method

.method public GetRssi()I
    .registers 2

    .prologue
    .line 2924
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mRssi:I

    return v0
.end method

.method public GetSeeksuccess()Z
    .registers 2

    .prologue
    .line 2925
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->mSeeksuccess:Z

    return v0
.end method
