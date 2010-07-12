.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v9, "kwak"

    const-string v8, "android.permission.RECEIVE_SMS"

    .line 1089
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1090
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/SMSDispatcher;->access$002(Lcom/android/internal/telephony/SMSDispatcher;Z)Z

    .line 1091
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1093
    const-string v3, "kwak"

    const-string v3, "ACTION_DEVICE_STORAGE_LOW"

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.STORAGE_FULL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, mintent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1116
    .end local v0           #mintent:Landroid/content/Intent;
    :goto_34
    return-void

    .line 1097
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1098
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->access$002(Lcom/android/internal/telephony/SMSDispatcher;Z)Z

    .line 1099
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1101
    const-string v3, "kwak"

    const-string v3, "ACTION_DEVICE_STORAGE_OK"

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.STORAGE_OK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    .restart local v0       #mintent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_34

    .line 1108
    .end local v0           #mintent:Landroid/content/Intent;
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$2;->getResultCode()I

    move-result v1

    .line 1109
    .local v1, rc:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6c

    if-ne v1, v5, :cond_73

    :cond_6c
    move v2, v5

    .line 1114
    .local v2, success:Z
    :goto_6d
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v2, v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_34

    .end local v2           #success:Z
    :cond_73
    move v2, v6

    .line 1109
    goto :goto_6d
.end method
