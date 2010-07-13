.class Lcom/android/server/EntropyService$1;
.super Landroid/os/Handler;
.source "EntropyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyService;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyService;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/EntropyService$1;->this$0:Lcom/android/server/EntropyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 66
    const-string v0, "EntropyService"

    const-string v1, "Will not process invalid message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_c
    return-void

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/android/server/EntropyService$1;->this$0:Lcom/android/server/EntropyService;

    invoke-static {v0}, Lcom/android/server/EntropyService;->access$000(Lcom/android/server/EntropyService;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/EntropyService$1;->this$0:Lcom/android/server/EntropyService;

    invoke-static {v0}, Lcom/android/server/EntropyService;->access$100(Lcom/android/server/EntropyService;)V

    goto :goto_c
.end method
