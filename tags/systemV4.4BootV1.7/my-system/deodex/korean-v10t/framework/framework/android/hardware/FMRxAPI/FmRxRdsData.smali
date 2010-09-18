.class Landroid/hardware/FMRxAPI/FmRxRdsData;
.super Ljava/lang/Object;
.source "FmRxRdsData.java"


# instance fields
.field private mAltFreq:I

.field private mPrgmServices:Ljava/lang/String;

.field private mRadioText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRdsAF()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mAltFreq:I

    return v0
.end method

.method public getRdsPS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsRT(I)Ljava/lang/String;
    .registers 6
    .parameter "fd"

    .prologue
    const/4 v3, 0x0

    .line 38
    const/16 v1, 0x80

    new-array v0, v1, [B

    .line 39
    .local v0, buff:[B
    invoke-static {p1, v0, v3}, Landroid/hardware/FMRxAPI/FmReceiverJNI;->listenForEventsNative(I[BI)I

    .line 40
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mRadioText:Ljava/lang/String;

    const/4 v2, 0x5

    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mRadioText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Landroid/hardware/FMRxAPI/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-object v1
.end method
