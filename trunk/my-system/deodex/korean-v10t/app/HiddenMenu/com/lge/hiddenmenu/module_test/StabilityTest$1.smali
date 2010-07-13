.class Lcom/lge/hiddenmenu/module_test/StabilityTest$1;
.super Landroid/os/Handler;
.source "StabilityTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/module_test/StabilityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/module_test/StabilityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/StabilityTest$1;->this$0:Lcom/lge/hiddenmenu/module_test/StabilityTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 120
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c

    .line 126
    :goto_5
    return-void

    .line 122
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    goto :goto_5

    .line 120
    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
