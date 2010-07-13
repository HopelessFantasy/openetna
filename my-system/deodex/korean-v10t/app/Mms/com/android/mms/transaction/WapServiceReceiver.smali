.class public Lcom/android/mms/transaction/WapServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WapServiceReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WapServiceReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 61
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    .local v0, manager:Landroid/app/NotificationManager;
    const-string v1, "WapServiceReceiver"

    const-string v2, "<WapServiceReciever> clearNotification "

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 65
    return-void
.end method

.method private static getAppIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    .local v0, appIntent:Landroid/content/Intent;
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/android/mms/transaction/WapServiceReceiver;->clearNotification(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.wapservice.push"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.wapservice.cp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 42
    :cond_1b
    invoke-static {}, Lcom/android/mms/transaction/WapServiceReceiver;->getAppIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, storeProvisioningIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "WapServiceReceiver"

    const-string v2, "<WapServiceReciever> onReceive "

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .end local v0           #storeProvisioningIntent:Landroid/content/Intent;
    :cond_33
    return-void
.end method
