.class Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReply:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver;->mContext:Landroid/content/Context;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.GTALK_DATA_MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.CLEAR_USERDATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.COMPLETE_FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method private completeFactoryReset()V
    .registers 5

    .prologue
    .line 165
    const-string v2, "MasterClear"

    const-string v3, "completeFactoryReset()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "lgesystem"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ILGESystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILGESystemService;

    move-result-object v1

    .line 169
    .local v1, service:Landroid/os/ILGESystemService;
    if-eqz v1, :cond_16

    .line 172
    :try_start_13
    invoke-interface {v1}, Landroid/os/ILGESystemService;->completeFactoryReset()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 178
    :cond_16
    :goto_16
    return-void

    .line 173
    :catch_17
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ClearUserData"

    const-string v3, "Unable to invoke ILGESystemService.clearUserData()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private runClearUserData()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const-string v6, "MasterClear"

    .line 134
    const-string v4, "MasterClear"

    const-string v4, "runClearUserData()"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "lgesystem"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ILGESystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILGESystemService;

    move-result-object v3

    .line 138
    .local v3, service:Landroid/os/ILGESystemService;
    if-eqz v3, :cond_19

    .line 141
    :try_start_16
    invoke-interface {v3}, Landroid/os/ILGESystemService;->clearUserData()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_48

    .line 149
    :cond_19
    :goto_19
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    if-eqz v4, :cond_47

    .line 150
    const-string v4, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClearUserData Failed. Send message to client."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_51

    .line 152
    const-string v4, "MasterClear"

    const-string v4, "extra info is wrong. Do not send the result."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_47
    :goto_47
    return-void

    .line 142
    :catch_48
    move-exception v2

    .line 143
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "ClearUserData"

    const-string v5, "Unable to invoke ILGESystemService.clearUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 155
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_51
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    .local v1, componentName:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, broadcastIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_47
.end method

.method private runFactoryReset()V
    .registers 8

    .prologue
    const-string v5, "MasterClear"

    .line 104
    const-string v3, "MasterClear"

    const-string v3, "runFactoryReset()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v3, "lgesystem"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ILGESystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILGESystemService;

    move-result-object v2

    .line 108
    .local v2, service:Landroid/os/ILGESystemService;
    if-eqz v2, :cond_18

    .line 111
    :try_start_15
    invoke-interface {v2}, Landroid/os/ILGESystemService;->factoryReset()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_47

    .line 119
    :cond_18
    :goto_18
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    if-eqz v3, :cond_46

    .line 120
    const-string v3, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FactoryReset Failed. Send message to client."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_50

    .line 122
    const-string v3, "MasterClear"

    const-string v3, "extra info is wrong. Do not send the result."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_46
    :goto_46
    return-void

    .line 112
    :catch_47
    move-exception v1

    .line 113
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "FactoryReset"

    const-string v4, "Unable to invoke ILGESystemService.factoryReset()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 125
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_50
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, broadcastIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_46
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "ExtraInfo"

    const-string v4, "MasterClear"

    .line 71
    const-string v2, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MasterClearReceiver received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.GTALK_DATA_MESSAGE_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 73
    const-string v2, "from_trusted_server"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_39

    .line 74
    const-string v2, "MasterClear"

    const-string v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_38
    :goto_38
    return-void

    .line 78
    :cond_39
    const-string v2, "MasterClear"

    const-string v2, "!!! FACTORY RESETTING DEVICE !!!"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v2, "checkin"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICheckinService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICheckinService;

    move-result-object v1

    .line 81
    .local v1, service:Landroid/os/ICheckinService;
    if-eqz v1, :cond_38

    .line 84
    :try_start_4c
    invoke-interface {v1}, Landroid/os/ICheckinService;->masterClear()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_38

    .line 85
    :catch_50
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MasterClear"

    const-string v2, "Unable to invoke ICheckinService.masterClear()"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 90
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Landroid/os/ICheckinService;
    :cond_59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 91
    const-string v2, "ExtraInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    .line 92
    invoke-direct {p0}, Lcom/android/server/MasterClearReceiver;->runFactoryReset()V

    goto :goto_38

    .line 94
    :cond_71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CLEAR_USERDATA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 95
    const-string v2, "ExtraInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/MasterClearReceiver;->mReply:Ljava/util/ArrayList;

    .line 96
    invoke-direct {p0}, Lcom/android/server/MasterClearReceiver;->runClearUserData()V

    goto :goto_38

    .line 98
    :cond_89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.COMPLETE_FACTORY_RESET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 99
    invoke-direct {p0}, Lcom/android/server/MasterClearReceiver;->completeFactoryReset()V

    goto :goto_38
.end method
