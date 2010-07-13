.class Lcom/lge/elt_test/ManualMode$VibratorThread;
.super Ljava/lang/Thread;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/lge/elt_test/ManualMode$VibratorThread;-><init>(Lcom/lge/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x7d0

    const/4 v4, 0x3

    .line 366
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const v3, 0x7f040011

    invoke-virtual {v2, v3}, Lcom/lge/elt_test/ManualMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 368
    :goto_12
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$1400(Lcom/lge/elt_test/ManualMode;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 369
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v3}, Lcom/lge/elt_test/ManualMode;->access$1000(Lcom/lge/elt_test/ManualMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$1500(Lcom/lge/elt_test/ManualMode;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 371
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const-string v1, "On"

    invoke-static {v0, v4, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 372
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 373
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const-string v1, "Off"

    invoke-static {v0, v4, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 374
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 376
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$1008(Lcom/lge/elt_test/ManualMode;)I

    goto :goto_12

    .line 378
    :cond_5e
    return-void
.end method
