.class Lcom/lge/large/poweroff/PowerOff$2;
.super Ljava/lang/Thread;
.source "PowerOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/large/poweroff/PowerOff;->initPowerOffAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/large/poweroff/PowerOff;


# direct methods
.method constructor <init>(Lcom/lge/large/poweroff/PowerOff;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lge/large/poweroff/PowerOff$2;->this$0:Lcom/lge/large/poweroff/PowerOff;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    const-wide/16 v0, 0x14

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_14

    .line 135
    :goto_5
    iget-object v0, p0, Lcom/lge/large/poweroff/PowerOff$2;->this$0:Lcom/lge/large/poweroff/PowerOff;

    invoke-static {v0}, Lcom/lge/large/poweroff/PowerOff;->access$100(Lcom/lge/large/poweroff/PowerOff;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/large/poweroff/PowerOff$2$1;

    invoke-direct {v1, p0}, Lcom/lge/large/poweroff/PowerOff$2$1;-><init>(Lcom/lge/large/poweroff/PowerOff$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void

    .line 133
    :catch_14
    move-exception v0

    goto :goto_5
.end method
