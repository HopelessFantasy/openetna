.class Lcom/android/server/ATCommandObserver$1;
.super Landroid/os/Handler;
.source "ATCommandObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ATCommandObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ATCommandObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ATCommandObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/server/ATCommandObserver$1;->this$0:Lcom/android/server/ATCommandObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/ATCommandObserver$1;->this$0:Lcom/android/server/ATCommandObserver;

    invoke-static {v0}, Lcom/android/server/ATCommandObserver;->access$000(Lcom/android/server/ATCommandObserver;)V

    .line 424
    return-void
.end method
