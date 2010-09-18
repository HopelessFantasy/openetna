.class public Lcom/lge/homecube/DownloadAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadAppsReceiver.java"


# static fields
.field private static mLauncher:Lcom/lge/homecube/Launcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/homecube/DownloadAppsReceiver;->mLauncher:Lcom/lge/homecube/Launcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 36
    :cond_1c
    sget-object v1, Lcom/lge/homecube/DownloadAppsReceiver;->mLauncher:Lcom/lge/homecube/Launcher;

    if-eqz v1, :cond_25

    .line 37
    sget-object v1, Lcom/lge/homecube/DownloadAppsReceiver;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1}, Lcom/lge/homecube/Launcher;->updateMainGridAppsItem()V

    .line 40
    :cond_25
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 43
    sput-object p1, Lcom/lge/homecube/DownloadAppsReceiver;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 44
    return-void
.end method
