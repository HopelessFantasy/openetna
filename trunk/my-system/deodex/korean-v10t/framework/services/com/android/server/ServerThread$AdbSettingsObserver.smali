.class Lcom/android/server/ServerThread$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;


# direct methods
.method public constructor <init>(Lcom/android/server/ServerThread;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    invoke-static {v1}, Lcom/android/server/ServerThread;->access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1b

    const/4 v1, 0x1

    move v0, v1

    .line 83
    .local v0, enableAdb:Z
    :goto_11
    const-string v1, "persist.service.adb.enable"

    if-eqz v0, :cond_1d

    const-string v2, "1"

    :goto_17
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .end local v0           #enableAdb:Z
    :cond_1b
    move v0, v3

    .line 80
    goto :goto_11

    .line 83
    .restart local v0       #enableAdb:Z
    :cond_1d
    const-string v2, "0"

    goto :goto_17
.end method
