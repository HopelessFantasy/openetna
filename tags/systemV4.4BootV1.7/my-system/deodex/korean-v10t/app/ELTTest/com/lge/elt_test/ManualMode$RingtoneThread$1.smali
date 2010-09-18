.class Lcom/lge/elt_test/ManualMode$RingtoneThread$1;
.super Ljava/lang/Object;
.source "ManualMode.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/elt_test/ManualMode$RingtoneThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;


# direct methods
.method constructor <init>(Lcom/lge/elt_test/ManualMode$RingtoneThread;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;->this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 7
    .parameter "mp"

    .prologue
    const/4 v4, 0x3

    .line 348
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;->this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    iget-object v0, v0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const-string v1, "Stopped"

    invoke-static {v0, v4, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 349
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 350
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;->this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    iget-object v0, v0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/elt_test/ManualMode;->access$1008(Lcom/lge/elt_test/ManualMode;)I

    .line 351
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;->this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    iget-object v0, v0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;->this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    iget-object v3, v3, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v3}, Lcom/lge/elt_test/ManualMode;->access$1000(Lcom/lge/elt_test/ManualMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 353
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;->this$1:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    iget-object v0, v0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const-string v1, "Playing"

    invoke-static {v0, v4, v1}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 354
    return-void
.end method
