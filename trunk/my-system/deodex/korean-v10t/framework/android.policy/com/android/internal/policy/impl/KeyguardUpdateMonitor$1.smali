.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 207
    .end local p0
    :goto_5
    return-void

    .line 192
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 195
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 198
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V

    goto :goto_5

    .line 201
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_5

    .line 204
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-static {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_5

    .line 190
    :pswitch_data_2c
    .packed-switch 0x12c
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method
