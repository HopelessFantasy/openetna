.class Lcom/lge/elt_test/ManualMode$LCDThread;
.super Ljava/lang/Thread;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LCDThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/lge/elt_test/ManualMode$LCDThread;-><init>(Lcom/lge/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 303
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const v3, 0x7f04000f

    invoke-virtual {v2, v3}, Lcom/lge/elt_test/ManualMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0, v4}, Lcom/lge/elt_test/ManualMode;->access$802(Lcom/lge/elt_test/ManualMode;Z)Z

    .line 306
    :goto_16
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$900(Lcom/lge/elt_test/ManualMode;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 307
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v2}, Lcom/lge/elt_test/ManualMode;->access$1000(Lcom/lge/elt_test/ManualMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$800(Lcom/lge/elt_test/ManualMode;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 313
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const-string v1, "On"

    invoke-static {v0, v5, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 314
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 320
    :goto_50
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    iget-object v1, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/elt_test/ManualMode;->access$800(Lcom/lge/elt_test/ManualMode;)Z

    move-result v1

    if-nez v1, :cond_7c

    move v1, v4

    :goto_5b
    invoke-static {v0, v1}, Lcom/lge/elt_test/ManualMode;->access$802(Lcom/lge/elt_test/ManualMode;Z)Z

    .line 321
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    iget-object v1, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/elt_test/ManualMode;->access$800(Lcom/lge/elt_test/ManualMode;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/elt_test/ManualMode;->access$1100(Lcom/lge/elt_test/ManualMode;Z)V

    goto :goto_16

    .line 316
    :cond_6a
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const-string v1, "Off"

    invoke-static {v0, v5, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 317
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 318
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$1008(Lcom/lge/elt_test/ManualMode;)I

    goto :goto_50

    .line 320
    :cond_7c
    const/4 v1, 0x0

    goto :goto_5b

    .line 325
    :cond_7e
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$800(Lcom/lge/elt_test/ManualMode;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 326
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$LCDThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0, v4}, Lcom/lge/elt_test/ManualMode;->access$1100(Lcom/lge/elt_test/ManualMode;Z)V

    .line 327
    :cond_8b
    return-void
.end method
