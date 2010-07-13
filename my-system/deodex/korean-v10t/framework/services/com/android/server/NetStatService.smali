.class public Lcom/android/server/NetStatService;
.super Landroid/os/INetStatService$Stub;
.source "NetStatService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/INetStatService$Stub;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getMobileRxBytes()J
    .registers 3

    .prologue
    .line 42
    invoke-static {}, Landroid/os/NetStat;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRxPackets()J
    .registers 3

    .prologue
    .line 34
    invoke-static {}, Landroid/os/NetStat;->getMobileRxPkts()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxBytes()J
    .registers 3

    .prologue
    .line 38
    invoke-static {}, Landroid/os/NetStat;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxPackets()J
    .registers 3

    .prologue
    .line 30
    invoke-static {}, Landroid/os/NetStat;->getMobileTxPkts()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Landroid/os/NetStat;->getTotalRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .registers 3

    .prologue
    .line 50
    invoke-static {}, Landroid/os/NetStat;->getTotalRxPkts()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .registers 3

    .prologue
    .line 54
    invoke-static {}, Landroid/os/NetStat;->getTotalTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Landroid/os/NetStat;->getTotalTxPkts()J

    move-result-wide v0

    return-wide v0
.end method
