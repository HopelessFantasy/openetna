.class public Lcom/lge/sns/service/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "BootCompleteReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "BootCompleteReceiver"

    .line 16
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/SnsManager;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 17
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v0

    .line 18
    .local v0, settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    invoke-interface {v0}, Lcom/lge/sns/setting/ISettingFacade;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 20
    const-string v2, "BootCompleteReceiver"

    const-string v2, "LinkBook was initialzed. tring to schedule for update"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-interface {v0}, Lcom/lge/sns/setting/ISettingFacade;->getUpdateTime()Lcom/lge/sns/setting/UpdateTime;

    move-result-object v1

    .line 23
    .local v1, updateTime:Lcom/lge/sns/setting/UpdateTime;
    invoke-virtual {v1}, Lcom/lge/sns/setting/UpdateTime;->isAutoUpdate()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 25
    const-string v2, "BootCompleteReceiver"

    const-string v2, "Schedule alarm"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/lge/sns/setting/ISettingFacade;->scheduleNextAlarm(JI)V

    .line 29
    :cond_3a
    const-string v2, "BootCompleteReceiver"

    const-string v2, "Auto update is false"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v0           #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    .end local v1           #updateTime:Lcom/lge/sns/setting/UpdateTime;
    :cond_41
    :goto_41
    return-void

    .line 32
    .restart local v0       #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    :cond_42
    const-string v2, "BootCompleteReceiver"

    const-string v2, "LinkBook is not initialzed. Ignore"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method
