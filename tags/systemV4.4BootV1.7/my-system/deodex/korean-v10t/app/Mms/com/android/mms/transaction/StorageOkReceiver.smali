.class public Lcom/android/mms/transaction/StorageOkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageOkReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "smma_fulltest"

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smma_fulltest"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3b

    const-string v1, "android.provider.Telephony.STORAGE_OK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 39
    const-string v1, "kwak"

    const-string v2, "STORAGE_OK_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .line 42
    .local v0, smsManager:Landroid/telephony/gsm/SmsManager;
    invoke-virtual {v0, v4}, Landroid/telephony/gsm/SmsManager;->setMEMemoryFull(Z)Z

    .line 46
    invoke-virtual {v0, v3}, Landroid/telephony/gsm/SmsManager;->setMEMemoryFull(Z)Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smma_fulltest"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    const/16 v1, 0x37b

    invoke-static {p1, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 54
    .end local v0           #smsManager:Landroid/telephony/gsm/SmsManager;
    :cond_3b
    return-void
.end method
