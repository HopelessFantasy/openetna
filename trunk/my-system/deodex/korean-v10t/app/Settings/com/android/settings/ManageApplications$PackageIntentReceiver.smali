.class Lcom/android/settings/ManageApplications$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method private constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 2
    .parameter

    .prologue
    .line 2056
    iput-object p1, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ManageApplications;Lcom/android/settings/ManageApplications$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2056
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$PackageIntentReceiver;-><init>(Lcom/android/settings/ManageApplications;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2067
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2068
    .local v0, actionStr:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2069
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 2071
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2072
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_36
    iget-object v3, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3, v0, v2}, Lcom/android/settings/ManageApplications;->access$1900(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    return-void
.end method

.method registerReceiver()V
    .registers 3

    .prologue
    .line 2058
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2059
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2060
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2061
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2062
    iget-object v1, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/ManageApplications;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2063
    return-void
.end method
