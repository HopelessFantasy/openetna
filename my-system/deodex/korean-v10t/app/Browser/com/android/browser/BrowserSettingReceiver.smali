.class public Lcom/android/browser/BrowserSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserSettingReceiver.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "browser"


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
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "browser"

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v4, "lgeWapService.prov.persister.INSTALL_BROWSER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 35
    const-string v4, "homeuri"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, homeuri:Ljava/lang/String;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3b

    .line 38
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    .line 39
    .local v2, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v2, p1, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const-string v4, "browser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTALL_BROWSER received: homeuri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v1           #homeuri:Ljava/lang/String;
    .end local v2           #s:Lcom/android/browser/BrowserSettings;
    :cond_3b
    :goto_3b
    return-void

    .line 43
    :cond_3c
    const-string v4, "lgeHiddedMenu.intent.action.CHANGE_UASTRING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 45
    const-string v4, "uastring"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, uastring:Ljava/lang/String;
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3b

    .line 48
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    .line 49
    .restart local v2       #s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v2, p1, v3}, Lcom/android/browser/BrowserSettings;->changeUAString(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const-string v4, "browser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHANGE_UASTRING received: uastring="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
