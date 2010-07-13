.class Llge/android/fmradio/FmRadioControlService$5;
.super Llge/android/fmradio/IFmRadioControlService$Stub;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 3208
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public SetAudioFromUser(I)V
    .registers 4
    .parameter "nDevice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3210
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v1, "lge.android.fmradio.listenviaoutputsound"

    invoke-static {v0, p1, v1}, Llge/android/fmradio/FmRadioControlService;->access$1400(Llge/android/fmradio/FmRadioControlService;ILjava/lang/String;)V

    .line 3211
    return-void
.end method

.method public getCurrentSoundDevice()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3204
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->getCurrentSoundDevice()I

    move-result v0

    return v0
.end method

.method public getRunningState()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3193
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->getRunningState()Z

    move-result v0

    return v0
.end method

.method public getSystemState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3183
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v0

    return v0
.end method

.method public run()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3108
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->Run()Z

    move-result v0

    return v0
.end method

.method public runAutoScanning()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3158
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->RunAutoScanning()V

    .line 3159
    return-void
.end method

.method public runBackwardScanning()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3168
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->RunBackwardScanning()V

    .line 3169
    return-void
.end method

.method public runCatchAutoScanning()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3163
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->RunCatchAutoScanning()V

    .line 3164
    return-void
.end method

.method public runForwardScanning()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3173
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->RunForwardScanning()V

    .line 3174
    return-void
.end method

.method public runRdsMode(ZZ)V
    .registers 4
    .parameter "bRds"
    .parameter "bAF"

    .prologue
    .line 3178
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1, p2}, Llge/android/fmradio/FmRadioControlService;->RunRdsMode(ZZ)V

    .line 3179
    return-void
.end method

.method public setRunningState(Z)V
    .registers 3
    .parameter "nState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3188
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService;->setRunningState(Z)V

    .line 3189
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3113
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    .line 3114
    return-void
.end method

.method public tuneFrequency(I)V
    .registers 3
    .parameter "nFreq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3198
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 3199
    return-void
.end method

.method public tunningLeft()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3118
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->TunningLeft()V

    .line 3119
    return-void
.end method

.method public tunningRight()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3123
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->TunningRight()V

    .line 3124
    return-void
.end method

.method public tunningsLeft(I)V
    .registers 3
    .parameter "nCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3128
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService;->TunningsLeft(I)V

    .line 3129
    return-void
.end method

.method public tunningsRight(I)V
    .registers 3
    .parameter "nCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3133
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService;->TunningsRight(I)V

    .line 3134
    return-void
.end method

.method public tunningsdummyLeft()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3138
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->TunningsDummyLeft()V

    .line 3139
    return-void
.end method

.method public tunningsdummyRight()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3143
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->TunningsDummyRight()V

    .line 3144
    return-void
.end method

.method public tunningsdummysLeft(I)V
    .registers 3
    .parameter "nCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3148
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService;->TunningsDummysLeft(I)V

    .line 3149
    return-void
.end method

.method public tunningsdummysRight(I)V
    .registers 3
    .parameter "nCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3153
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$5;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService;->TunningsDummysRight(I)V

    .line 3154
    return-void
.end method
