.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;
.super Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemState()Z
    .registers 2

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->GetSystemState()Z

    move-result v0

    return v0
.end method

.method public run()Z
    .registers 2

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->Run()Z

    move-result v0

    return v0
.end method

.method public runAutoScanning()V
    .registers 2

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->RunAutoScanning()V

    .line 2282
    return-void
.end method

.method public runBackwardScanning()V
    .registers 2

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->RunBackwardScanning()V

    .line 2288
    return-void
.end method

.method public runCatchAutoScanning()V
    .registers 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->RunCatchAutoScanning()V

    .line 2285
    return-void
.end method

.method public runForwardScanning()V
    .registers 2

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->RunForwardScanning()V

    .line 2291
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->Stop()V

    .line 2267
    return-void
.end method

.method public tuneFrequency(I)V
    .registers 3
    .parameter "nFreq"

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TuneFrequency(I)V

    .line 2297
    return-void
.end method

.method public tunningLeft()V
    .registers 2

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TunningLeft()V

    .line 2270
    return-void
.end method

.method public tunningRight()V
    .registers 2

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TunningRight()V

    .line 2273
    return-void
.end method

.method public tunningsLeft(I)V
    .registers 3
    .parameter "nCount"

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TunningsLeft(I)V

    .line 2276
    return-void
.end method

.method public tunningsRight(I)V
    .registers 3
    .parameter "nCount"

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;->this$0:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TunningsRight(I)V

    .line 2279
    return-void
.end method
