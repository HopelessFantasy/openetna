.class Lcom/lge/hiddenmenu/factory_reset/FactoryReset$7;
.super Landroid/os/Handler;
.source "FactoryReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/factory_reset/FactoryReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$7;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 383
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 405
    :goto_5
    return-void

    .line 385
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 391
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$7;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->access$000(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 395
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 401
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$7;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->access$100(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 383
    :pswitch_data_1e
    .packed-switch 0x64
        :pswitch_6
        :pswitch_12
    .end packed-switch
.end method
