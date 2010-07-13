.class public Lcom/android/providers/applications/ApplicationLauncher;
.super Landroid/app/Activity;
.source "ApplicationLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/android/providers/applications/ApplicationLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-string v8, "android.intent.action.MAIN"

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 37
    .local v5, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 38
    .local v4, handled:Z
    if-eqz v5, :cond_35

    .line 39
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 42
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 43
    .local v2, contentUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/providers/applications/ApplicationsProvider;->getComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v1

    .line 44
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v1, :cond_35

    .line 45
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, launchIntent:Landroid/content/Intent;
    const/high16 v7, 0x1020

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    :try_start_31
    invoke-virtual {p0, v6}, Lcom/android/providers/applications/ApplicationLauncher;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_34} :catch_53

    .line 54
    :goto_34
    const/4 v4, 0x1

    .line 58
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v2           #contentUri:Landroid/net/Uri;
    .end local v6           #launchIntent:Landroid/content/Intent;
    :cond_35
    if-nez v4, :cond_4f

    .line 59
    sget-object v7, Lcom/android/providers/applications/ApplicationLauncher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_4f
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationLauncher;->finish()V

    .line 62
    return-void

    .line 51
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #componentName:Landroid/content/ComponentName;
    .restart local v2       #contentUri:Landroid/net/Uri;
    .restart local v6       #launchIntent:Landroid/content/Intent;
    :catch_53
    move-exception v3

    .line 52
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/android/providers/applications/ApplicationLauncher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
