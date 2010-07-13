.class Llge/android/fmradio/FmRadioView$2;
.super Ljava/lang/Object;
.source "FmRadioView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioView;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioView;)V
    .registers 2
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    const-string v3, "FM RADIO"

    .line 651
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][onServiceConnected]"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {p2}, Llge/android/fmradio/IFmRadioControlService$Stub;->asInterface(Landroid/os/IBinder;)Llge/android/fmradio/IFmRadioControlService;

    move-result-object v1

    iput-object v1, v0, Llge/android/fmradio/FmRadioView;->mService:Llge/android/fmradio/IFmRadioControlService;

    .line 654
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v0, v0, Llge/android/fmradio/FmRadioView;->mService:Llge/android/fmradio/IFmRadioControlService;

    if-eqz v0, :cond_37

    .line 657
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0}, Llge/android/fmradio/FmRadioView;->access$3100(Llge/android/fmradio/FmRadioView;)Z

    move-result v0

    if-ne v0, v2, :cond_21

    .line 679
    :cond_20
    :goto_20
    return-void

    .line 662
    :cond_21
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0}, Llge/android/fmradio/FmRadioView;->access$3200(Llge/android/fmradio/FmRadioView;)Z

    move-result v0

    if-eq v0, v2, :cond_20

    .line 666
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getCurrentSoundDevice()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_37

    .line 667
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->run()Z

    move-result v0

    if-eq v0, v2, :cond_20

    .line 674
    :cond_37
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioView;->waitpopupclose()V

    .line 675
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 676
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioView;->access$700(Llge/android/fmradio/FmRadioView;Z)V

    .line 677
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0, v2}, Llge/android/fmradio/FmRadioView;->access$800(Llge/android/fmradio/FmRadioView;Z)V

    .line 678
    const-string v0, "FM RADIO"

    const-string v0, "[+++Error+++][FmRadioView][onServiceConnected]"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 685
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onServiceDisconnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$2;->this$0:Llge/android/fmradio/FmRadioView;

    const/4 v1, 0x0

    iput-object v1, v0, Llge/android/fmradio/FmRadioView;->mService:Llge/android/fmradio/IFmRadioControlService;

    .line 688
    return-void
.end method
