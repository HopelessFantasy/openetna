.class public Lcom/android/settings/SdCardIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SdCardIntentReceiver.java"


# static fields
.field private static final SDCARD_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SdCardIntentReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const-class v5, Lcom/android/settings/SdCardSettings;

    const-string v4, "android.intent.action.MAIN"

    .line 37
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 39
    .local v10, nm:Landroid/app/NotificationManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, action:Ljava/lang/String;
    const-string v0, "SdCardIntentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 43
    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 45
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v8, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v8, statusIntent:Landroid/content/Intent;
    const-class v0, Lcom/android/settings/SdCardSettings;

    invoke-virtual {v8, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108007a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v1, 0x7f080028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v1, p1

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-virtual {v10, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 69
    .end local v8           #statusIntent:Landroid/content/Intent;
    :cond_59
    :goto_59
    return-void

    .line 54
    :cond_5a
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 55
    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_59

    .line 56
    :cond_66
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 57
    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 59
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v8, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .restart local v8       #statusIntent:Landroid/content/Intent;
    const-class v0, Lcom/android/settings/SdCardSettings;

    invoke-virtual {v8, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108007b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "SD Card"

    move-object v1, p1

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-virtual {v10, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_59
.end method
