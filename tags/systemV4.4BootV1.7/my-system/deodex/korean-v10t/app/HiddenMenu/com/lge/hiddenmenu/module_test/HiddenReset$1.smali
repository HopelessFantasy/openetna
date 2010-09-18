.class Lcom/lge/hiddenmenu/module_test/HiddenReset$1;
.super Landroid/os/Handler;
.source "HiddenReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/module_test/HiddenReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/module_test/HiddenReset;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/module_test/HiddenReset;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset$1;->this$0:Lcom/lge/hiddenmenu/module_test/HiddenReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 57
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c

    .line 64
    :goto_5
    return-void

    .line 59
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    goto :goto_5

    .line 57
    nop

    :pswitch_data_c
    .packed-switch 0x65
        :pswitch_6
    .end packed-switch
.end method
