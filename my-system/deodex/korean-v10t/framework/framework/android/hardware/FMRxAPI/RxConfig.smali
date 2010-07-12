.class public Landroid/hardware/FMRxAPI/RxConfig;
.super Ljava/lang/Object;
.source "RxConfig.java"


# instance fields
.field private mBandLowerLimit:I

.field private mBandUpperLimit:I

.field private mChSpacing:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

.field private mEmphasis:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

.field private mRadioBand:Landroid/hardware/FMRxAPI/FmReceiver$RadioBand;

.field private mRdsStd:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChSpacing()Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/hardware/FMRxAPI/RxConfig;->mChSpacing:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    return-object v0
.end method

.method public getEmphasis()Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/hardware/FMRxAPI/RxConfig;->mEmphasis:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    return-object v0
.end method

.method public getLowerLimit()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Landroid/hardware/FMRxAPI/RxConfig;->mBandLowerLimit:I

    return v0
.end method

.method public getRadioBand()Landroid/hardware/FMRxAPI/FmReceiver$RadioBand;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/hardware/FMRxAPI/RxConfig;->mRadioBand:Landroid/hardware/FMRxAPI/FmReceiver$RadioBand;

    return-object v0
.end method

.method public getRdsStd()Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/hardware/FMRxAPI/RxConfig;->mRdsStd:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    return-object v0
.end method

.method public getUpperLimit()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Landroid/hardware/FMRxAPI/RxConfig;->mBandUpperLimit:I

    return v0
.end method

.method public setChSpacing(Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 71
    iput-object p1, p0, Landroid/hardware/FMRxAPI/RxConfig;->mChSpacing:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    .line 72
    return-void
.end method

.method public setEmphasis(Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;)V
    .registers 2
    .parameter "emp"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/FMRxAPI/RxConfig;->mEmphasis:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    .line 64
    return-void
.end method

.method public setLowerLimit(I)V
    .registers 2
    .parameter "lowLimit"

    .prologue
    .line 87
    iput p1, p0, Landroid/hardware/FMRxAPI/RxConfig;->mBandLowerLimit:I

    .line 88
    return-void
.end method

.method public setRadioBand(Landroid/hardware/FMRxAPI/FmReceiver$RadioBand;)V
    .registers 2
    .parameter "band"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/hardware/FMRxAPI/RxConfig;->mRadioBand:Landroid/hardware/FMRxAPI/FmReceiver$RadioBand;

    .line 56
    return-void
.end method

.method public setRdsStd(Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;)V
    .registers 2
    .parameter "rdsStandard"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/hardware/FMRxAPI/RxConfig;->mRdsStd:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    .line 80
    return-void
.end method

.method public setUpperLimit(I)V
    .registers 2
    .parameter "upLimit"

    .prologue
    .line 95
    iput p1, p0, Landroid/hardware/FMRxAPI/RxConfig;->mBandUpperLimit:I

    .line 96
    return-void
.end method
