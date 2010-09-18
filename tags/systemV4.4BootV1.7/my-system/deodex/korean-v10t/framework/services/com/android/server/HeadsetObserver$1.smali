.class Lcom/android/server/HeadsetObserver$1;
.super Landroid/os/Handler;
.source "HeadsetObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HeadsetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HeadsetObserver;


# direct methods
.method constructor <init>(Lcom/android/server/HeadsetObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/HeadsetObserver$1;->this$0:Lcom/android/server/HeadsetObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/HeadsetObserver$1;->this$0:Lcom/android/server/HeadsetObserver;

    invoke-static {v0}, Lcom/android/server/HeadsetObserver;->access$000(Lcom/android/server/HeadsetObserver;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/HeadsetObserver$1;->this$0:Lcom/android/server/HeadsetObserver;

    invoke-static {v0}, Lcom/android/server/HeadsetObserver;->access$100(Lcom/android/server/HeadsetObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 150
    return-void
.end method
