.class Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverRdaData"
.end annotation


# instance fields
.field private mRdsDataType:I

.field private mRdsIndex:I

.field private mRdsText:Ljava/lang/String;

.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioControlService;IILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const/4 v0, 0x0

    .line 2902
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2898
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsDataType:I

    .line 2899
    iput v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsIndex:I

    .line 2900
    const/4 v0, 0x0

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsText:Ljava/lang/String;

    .line 2903
    iput p2, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsDataType:I

    .line 2904
    iput p3, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsIndex:I

    .line 2905
    iput-object p4, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsText:Ljava/lang/String;

    .line 2906
    return-void
.end method


# virtual methods
.method public GetRdsDataTyep()I
    .registers 2

    .prologue
    .line 2907
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsDataType:I

    return v0
.end method

.method public GetRdsIndex()I
    .registers 2

    .prologue
    .line 2908
    iget v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsIndex:I

    return v0
.end method

.method public GetRdsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2909
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->mRdsText:Ljava/lang/String;

    return-object v0
.end method
