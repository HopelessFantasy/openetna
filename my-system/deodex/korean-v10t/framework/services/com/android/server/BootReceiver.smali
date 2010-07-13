.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/server/LoadAverageService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v3, service:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 33
    .local v1, res:Landroid/content/ContentResolver;
    const-string v6, "show_processes"

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_35

    move v5, v8

    .line 35
    .local v5, shown:Z
    :goto_16
    if-eqz v5, :cond_1b

    .line 36
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    :cond_1b
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/server/HeapFreeInfoService;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v4, service_heap:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 42
    .local v2, res_heap:Landroid/content/ContentResolver;
    const-string v6, "show_heap_free_info"

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_37

    move v0, v8

    .line 44
    .local v0, heap:Z
    :goto_2f
    if-eqz v0, :cond_34

    .line 45
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    :cond_34
    return-void

    .end local v0           #heap:Z
    .end local v2           #res_heap:Landroid/content/ContentResolver;
    .end local v4           #service_heap:Landroid/content/Intent;
    .end local v5           #shown:Z
    :cond_35
    move v5, v7

    .line 33
    goto :goto_16

    .restart local v2       #res_heap:Landroid/content/ContentResolver;
    .restart local v4       #service_heap:Landroid/content/Intent;
    .restart local v5       #shown:Z
    :cond_37
    move v0, v7

    .line 42
    goto :goto_2f
.end method
