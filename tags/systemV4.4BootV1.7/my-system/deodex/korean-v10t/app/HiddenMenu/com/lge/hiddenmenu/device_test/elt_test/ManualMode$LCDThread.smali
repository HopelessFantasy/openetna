.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;
.super Ljava/lang/Thread;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LCDThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-boolean v0, v0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    if-eqz v0, :cond_43

    .line 82
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$100(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/os/IHardwareService;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$000(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v2

    :goto_16
    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setBacklights(I)V

    .line 83
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$000(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Z

    move-result v1

    if-nez v1, :cond_41

    const/4 v1, 0x1

    :goto_24
    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$002(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Z)Z

    .line 84
    const-string v0, "ELT Test : mLcdOn"

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$000(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3b} :catch_3c

    goto :goto_1

    .line 86
    :catch_3c
    move-exception v0

    goto :goto_1

    .line 82
    :cond_3e
    const/16 v1, 0xff

    goto :goto_16

    :cond_41
    move v1, v2

    .line 83
    goto :goto_24

    .line 89
    :cond_43
    return-void
.end method
