.class Lcom/broadcom/bt/service/opp/OppEventLoop$1;
.super Ljava/lang/Thread;
.source "OppEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/service/opp/OppEventLoop;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/opp/OppEventLoop;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-string v3, "OppEventLoop"

    .line 124
    const-string v1, "OppEventLoop"

    const-string v1, "ENTER ObexEventLoop in Native code"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->access$000(Lcom/broadcom/bt/service/opp/OppEventLoop;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 127
    :goto_11
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->access$100(Lcom/broadcom/bt/service/opp/OppEventLoop;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 128
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->access$200(Lcom/broadcom/bt/service/opp/OppEventLoop;)V

    .line 129
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_23} :catch_24

    goto :goto_11

    .line 134
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 137
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_29
    :goto_29
    const-string v1, "OppEventLoop"

    const-string v1, "Event Loop thread finished"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 131
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-static {v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->access$300(Lcom/broadcom/bt/service/opp/OppEventLoop;)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_36} :catch_24

    goto :goto_29
.end method
