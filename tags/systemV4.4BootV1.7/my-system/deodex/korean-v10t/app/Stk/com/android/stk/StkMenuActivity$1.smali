.class Lcom/android/stk/StkMenuActivity$1;
.super Landroid/os/Handler;
.source "StkMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 80
    :goto_5
    return-void

    .line 76
    :pswitch_6
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/stk/StkMenuActivity;->access$002(Lcom/android/stk/StkMenuActivity;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/stk/StkMenuActivity;->access$100(Lcom/android/stk/StkMenuActivity;I)V

    goto :goto_5

    .line 74
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
