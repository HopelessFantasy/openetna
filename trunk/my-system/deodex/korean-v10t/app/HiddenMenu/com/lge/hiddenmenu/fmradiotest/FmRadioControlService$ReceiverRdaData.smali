.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverRdaData"
.end annotation


# instance fields
.field private mRdsDataType:I

.field private mRdsIndex:I

.field private mRdsText:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;IILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const/4 v0, 0x0

    .line 2060
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsDataType:I

    .line 2057
    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsIndex:I

    .line 2058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsText:Ljava/lang/String;

    .line 2061
    iput p2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsDataType:I

    .line 2062
    iput p3, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsIndex:I

    .line 2063
    iput-object p4, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsText:Ljava/lang/String;

    .line 2064
    return-void
.end method


# virtual methods
.method public GetRdsDataTyep()I
    .registers 2

    .prologue
    .line 2065
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsDataType:I

    return v0
.end method

.method public GetRdsIndex()I
    .registers 2

    .prologue
    .line 2066
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsIndex:I

    return v0
.end method

.method public GetRdsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;->mRdsText:Ljava/lang/String;

    return-object v0
.end method
