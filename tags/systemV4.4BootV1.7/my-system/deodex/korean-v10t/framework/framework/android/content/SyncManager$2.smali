.class Landroid/content/SyncManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "SyncManager"

    .line 178
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 180
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_50

    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v1, v2

    .line 182
    .local v1, state:Landroid/net/NetworkInfo$State;
    :goto_11
    const-string v2, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 183
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received connectivity action.  network info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_32
    sget-object v2, Landroid/content/SyncManager$6;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_70

    .line 208
    :goto_3d
    iget-object v2, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 209
    iget-object v2, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)V

    .line 210
    iget-object v2, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)V

    .line 212
    :cond_4f
    return-void

    .line 180
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_50
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    move-object v1, v2

    goto :goto_11

    .line 196
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :pswitch_56
    iget-object v2, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v5}, Landroid/content/SyncManager;->access$302(Landroid/content/SyncManager;Z)Z

    goto :goto_3d

    .line 199
    :pswitch_5c
    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 200
    iget-object v2, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v4}, Landroid/content/SyncManager;->access$302(Landroid/content/SyncManager;Z)Z

    goto :goto_3d

    .line 202
    :cond_6a
    iget-object v2, p0, Landroid/content/SyncManager$2;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v5}, Landroid/content/SyncManager;->access$302(Landroid/content/SyncManager;Z)Z

    goto :goto_3d

    .line 194
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_56
        :pswitch_5c
    .end packed-switch
.end method
