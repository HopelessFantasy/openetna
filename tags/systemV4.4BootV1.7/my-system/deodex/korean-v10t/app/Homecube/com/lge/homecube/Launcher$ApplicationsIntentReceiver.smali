.class Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 3630
    iput-object p1, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3630
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "HomeLoaders"

    .line 3633
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3634
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 3635
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3638
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

    .line 3640
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

    .line 3643
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 3647
    :cond_70
    iget-object v3, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    .line 3648
    iget-object v3, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3, v6}, Lcom/lge/homecube/Launcher;->access$102(Lcom/lge/homecube/Launcher;Z)Z

    .line 3651
    :cond_7a
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 3652
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 3653
    if-nez v2, :cond_a1

    .line 3654
    iget-object v3, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3, v1}, Lcom/lge/homecube/Launcher;->access$2200(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V

    .line 3656
    const-string v3, "HomeLoaders"

    const-string v3, "  --> remove package"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/lge/homecube/LauncherModel;->removePackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V

    .line 3676
    :cond_a1
    :goto_a1
    iget-object v3, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3, v6}, Lcom/lge/homecube/Launcher;->removeDialog(I)V

    .line 3683
    :goto_a6
    return-void

    .line 3663
    :cond_a7
    if-nez v2, :cond_ba

    .line 3665
    const-string v3, "HomeLoaders"

    const-string v3, "  --> add package"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/lge/homecube/LauncherModel;->addPackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V

    goto :goto_a1

    .line 3670
    :cond_ba
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

    .line 3672
    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/lge/homecube/LauncherModel;->updatePackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V

    .line 3673
    iget-object v3, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3, v1}, Lcom/lge/homecube/Launcher;->access$2300(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V

    goto :goto_a1

    .line 3679
    :cond_e1
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

    .line 3681
    invoke-static {}, Lcom/lge/homecube/Launcher;->access$1700()Lcom/lge/homecube/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3, v4, v1}, Lcom/lge/homecube/LauncherModel;->syncPackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V

    goto :goto_a6
.end method
