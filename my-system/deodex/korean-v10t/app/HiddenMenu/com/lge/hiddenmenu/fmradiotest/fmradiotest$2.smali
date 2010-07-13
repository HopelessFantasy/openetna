.class Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;
.super Ljava/lang/Object;
.source "fmradiotest.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 75
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onServiceConnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-static {p2}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .line 80
    :try_start_f
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    invoke-interface {v0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;->run()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    .line 85
    :goto_16
    return-void

    .line 83
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 89
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onServiceDisconnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$2;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->mService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .line 92
    return-void
.end method
