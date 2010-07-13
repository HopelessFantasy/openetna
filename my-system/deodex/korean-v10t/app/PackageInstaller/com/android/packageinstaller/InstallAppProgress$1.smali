.class Lcom/android/packageinstaller/InstallAppProgress$1;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 61
    :goto_5
    return-void

    .line 56
    :pswitch_6
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/InstallAppProgress;->setResultAndFinish(I)V

    goto :goto_5

    .line 53
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
