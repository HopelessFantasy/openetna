.class Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2033
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "HomeLoaders"

    .line 2036
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2037
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2038
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2041
    .local v2, replacing:Z
    const-string v3, "HomeLoaders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application intent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", replacing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const-string v3, "HomeLoaders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 2047
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2048
    if-nez v2, :cond_7a

    .line 2049
    iget-object v3, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v3, v1}, Lcom/android/launcher/Launcher;->access$1700(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    .line 2051
    const-string v3, "HomeLoaders"

    const-string v3, "  --> remove package"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher/LauncherModel;->removePackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    .line 2071
    :cond_7a
    :goto_7a
    iget-object v3, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher/Launcher;->removeDialog(I)V

    .line 2078
    :goto_80
    return-void

    .line 2058
    :cond_81
    if-nez v2, :cond_94

    .line 2060
    const-string v3, "HomeLoaders"

    const-string v3, "  --> add package"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher/LauncherModel;->addPackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_7a

    .line 2065
    :cond_94
    const-string v3, "HomeLoaders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  --> update package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher/LauncherModel;->updatePackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    .line 2068
    iget-object v3, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v3, v1}, Lcom/android/launcher/Launcher;->access$1800(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_7a

    .line 2074
    :cond_bb
    const-string v3, "HomeLoaders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  --> sync package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-static {}, Lcom/android/launcher/Launcher;->access$1100()Lcom/android/launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher/LauncherModel;->syncPackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_80
.end method
