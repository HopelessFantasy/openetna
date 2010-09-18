.class Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 2
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/status/StatusBarPolicy;Lcom/android/server/status/StatusBarPolicy$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1868
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1871
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 1878
    :cond_5
    :goto_5
    return-void

    .line 1873
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/server/status/StatusBarPolicy;->access$2400(Lcom/android/server/status/StatusBarPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1874
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2500(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_5

    .line 1871
    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method
