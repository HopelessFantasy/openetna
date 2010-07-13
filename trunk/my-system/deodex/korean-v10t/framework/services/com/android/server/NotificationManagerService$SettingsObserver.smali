.class Lcom/android/server/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 348
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 349
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update()V

    .line 356
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update()V

    .line 360
    return-void
.end method

.method public update()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_14
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 366
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 367
    return-void

    :cond_1d
    move v2, v3

    .line 364
    goto :goto_14
.end method
