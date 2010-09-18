.class Lcom/android/phone/PhoneApp$2;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 328
    const-string v0, "PhoneApp"

    const-string v1, "queryTTYMode returned unknown message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local p0
    :goto_c
    return-void

    .line 323
    .restart local p0
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v0, p0}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_c

    .line 321
    nop

    :pswitch_data_18
    .packed-switch 0x2bc
        :pswitch_d
    .end packed-switch
.end method
