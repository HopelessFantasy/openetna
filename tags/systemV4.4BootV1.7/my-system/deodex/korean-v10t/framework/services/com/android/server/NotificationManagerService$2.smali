.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "plugged"

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 309
    const-string v8, "plugged"

    invoke-virtual {p2, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_72

    move v1, v11

    .line 310
    .local v1, batteryCharging:Z
    :goto_19
    const-string v8, "level"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 311
    .local v4, level:I
    if-ltz v4, :cond_74

    const/16 v8, 0xa

    if-gt v4, v8, :cond_74

    move v3, v11

    .line 312
    .local v3, batteryLow:Z
    :goto_27
    const-string v8, "status"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 313
    .local v6, status:I
    const/4 v8, 0x5

    if-eq v6, v8, :cond_34

    const/16 v8, 0x5a

    if-lt v4, v8, :cond_76

    :cond_34
    move v2, v11

    .line 315
    .local v2, batteryFull:Z
    :goto_35
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v8

    if-ne v1, v8, :cond_4d

    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v8

    if-ne v3, v8, :cond_4d

    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v8

    if-eq v2, v8, :cond_61

    .line 318
    :cond_4d
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8, v1}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 319
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8, v3}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 320
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8, v2}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 321
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 324
    :cond_61
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v9, "plugged"

    invoke-virtual {p2, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;I)I

    .line 325
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 343
    .end local v1           #batteryCharging:Z
    .end local v2           #batteryFull:Z
    .end local v3           #batteryLow:Z
    .end local v4           #level:I
    .end local v6           #status:I
    :cond_71
    :goto_71
    return-void

    :cond_72
    move v1, v10

    .line 309
    goto :goto_19

    .restart local v1       #batteryCharging:Z
    .restart local v4       #level:I
    :cond_74
    move v3, v10

    .line 311
    goto :goto_27

    .restart local v3       #batteryLow:Z
    .restart local v6       #status:I
    :cond_76
    move v2, v10

    .line 313
    goto :goto_35

    .line 326
    .end local v1           #batteryCharging:Z
    .end local v3           #batteryLow:Z
    .end local v4           #level:I
    .end local v6           #status:I
    :cond_78
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_88

    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 328
    :cond_88
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 329
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_71

    .line 332
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, pkgName:Ljava/lang/String;
    if-eqz v5, :cond_71

    .line 336
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/NotificationManagerService;->cancelAllNotifications(Ljava/lang/String;)V

    goto :goto_71

    .line 339
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_9a
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 340
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    goto :goto_71
.end method
