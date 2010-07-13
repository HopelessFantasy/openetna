.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 685
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8c

    .line 738
    :goto_6
    :pswitch_6
    return-void

    .line 687
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 696
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    shl-int/lit8 v3, v3, 0x9

    or-int v0, v2, v3

    .line 699
    .local v0, eventLogParam:I
    const v2, 0xc364

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 701
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_3f

    .line 702
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    .line 715
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)V

    goto :goto_6

    .line 703
    :cond_3f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_4d

    .line 704
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_39

    .line 705
    :cond_4d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_5b

    .line 711
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_39

    .line 712
    :cond_5b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_39

    .line 713
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_39

    .line 719
    .end local v0           #eventLogParam:I
    .end local v1           #info:Landroid/net/NetworkInfo;
    :pswitch_69
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 720
    .restart local v1       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_6

    .line 724
    .end local v1           #info:Landroid/net/NetworkInfo;
    :pswitch_73
    iget-object v3, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_89

    :goto_79
    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification;

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V

    .line 727
    :pswitch_82
    iget-object v2, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    goto/16 :goto_6

    .line 724
    :cond_89
    const/4 v2, 0x0

    move v4, v2

    goto :goto_79

    .line 685
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_69
        :pswitch_73
        :pswitch_82
        :pswitch_6
    .end packed-switch
.end method
