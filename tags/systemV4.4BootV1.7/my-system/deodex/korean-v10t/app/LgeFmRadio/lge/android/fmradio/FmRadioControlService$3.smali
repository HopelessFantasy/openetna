.class Llge/android/fmradio/FmRadioControlService$3;
.super Ljava/lang/Object;
.source "FmRadioControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 503
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string v2, "FM RADIO"

    .line 504
    invoke-static {}, Llge/android/fmradio/FmRadioControlService;->access$1100()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_20

    .line 505
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService] abhi...3"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1102(I)I

    .line 507
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v0, v0, Llge/android/fmradio/FmRadioControlService;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v1, v1, Llge/android/fmradio/FmRadioControlService;->mFirstRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    :goto_1f
    return-void

    .line 511
    :cond_20
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v0}, Llge/android/fmradio/FmRadioControlService;->access$1000(Llge/android/fmradio/FmRadioControlService;)I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_45

    .line 512
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService] abhi...4"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1102(I)I

    .line 514
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService;->Run()Z

    .line 515
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v0, v0, Llge/android/fmradio/FmRadioControlService;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v1, v1, Llge/android/fmradio/FmRadioControlService;->mFirstRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 518
    :cond_45
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService] abhi...5"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Llge/android/fmradio/FmRadioControlService;->access$1108()I

    .line 520
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v0, v0, Llge/android/fmradio/FmRadioControlService;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService$3;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v1, v1, Llge/android/fmradio/FmRadioControlService;->mFirstRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f
.end method
