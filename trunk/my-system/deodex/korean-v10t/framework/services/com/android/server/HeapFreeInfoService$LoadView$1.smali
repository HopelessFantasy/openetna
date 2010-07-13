.class Lcom/android/server/HeapFreeInfoService$LoadView$1;
.super Landroid/os/Handler;
.source "HeapFreeInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HeapFreeInfoService$LoadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/HeapFreeInfoService$LoadView;


# direct methods
.method constructor <init>(Lcom/android/server/HeapFreeInfoService$LoadView;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/HeapFreeInfoService$LoadView$1;->this$1:Lcom/android/server/HeapFreeInfoService$LoadView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_13

    .line 55
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView$1;->this$1:Lcom/android/server/HeapFreeInfoService$LoadView;

    invoke-virtual {v1}, Lcom/android/server/HeapFreeInfoService$LoadView;->updateDisplay()V

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/server/HeapFreeInfoService$LoadView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 57
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/HeapFreeInfoService$LoadView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 59
    .end local v0           #m:Landroid/os/Message;
    :cond_13
    return-void
.end method
