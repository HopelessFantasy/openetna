.class Lcom/android/phone/NetworkQueryService$2;
.super Lcom/android/phone/INetworkQueryService$Stub;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .registers 6
    .parameter "cb"

    .prologue
    .line 111
    if-eqz p1, :cond_18

    .line 113
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 114
    :try_start_7
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 117
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 133
    :goto_17
    :pswitch_17
    monitor-exit v0

    .line 135
    :cond_18
    return-void

    .line 121
    :pswitch_19
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 123
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/android/phone/NetworkQueryService;->access$202(Lcom/android/phone/NetworkQueryService;I)I

    goto :goto_17

    .line 133
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1

    .line 117
    :pswitch_data_36
    .packed-switch -0x2
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 148
    if-eqz p1, :cond_f

    .line 149
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 151
    :try_start_7
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 152
    monitor-exit v0

    .line 154
    :cond_f
    return-void

    .line 152
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method
