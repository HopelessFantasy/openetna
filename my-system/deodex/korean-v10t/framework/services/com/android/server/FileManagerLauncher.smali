.class public Lcom/android/server/FileManagerLauncher;
.super Landroid/content/BroadcastReceiver;
.source "FileManagerLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileManagerLauncher"

.field private static final activityName:Ljava/lang/String; = "FileManagerActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_file_manager"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, fileManagerPackage:Ljava/lang/String;
    if-eqz v3, :cond_4a

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FileManagerActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, fileManagerActivity:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, fileManagerIntent:Landroid/content/Intent;
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    :try_start_47
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 73
    .end local v1           #fileManagerActivity:Ljava/lang/String;
    .end local v2           #fileManagerIntent:Landroid/content/Intent;
    .end local v3           #fileManagerPackage:Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 68
    .restart local v1       #fileManagerActivity:Ljava/lang/String;
    .restart local v2       #fileManagerIntent:Landroid/content/Intent;
    .restart local v3       #fileManagerPackage:Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 69
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "FileManagerLauncher"

    const-string v5, "could not find file Manager Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method
