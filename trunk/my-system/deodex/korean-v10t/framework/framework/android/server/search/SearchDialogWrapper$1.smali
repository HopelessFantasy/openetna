.class Landroid/server/search/SearchDialogWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchDialogWrapper;


# direct methods
.method constructor <init>(Landroid/server/search/SearchDialogWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/server/search/SearchDialogWrapper$1;->this$0:Landroid/server/search/SearchDialogWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 155
    iget-object v1, p0, Landroid/server/search/SearchDialogWrapper$1;->this$0:Landroid/server/search/SearchDialogWrapper;

    invoke-virtual {v1}, Landroid/server/search/SearchDialogWrapper;->performOnConfigurationChanged()V

    .line 157
    :cond_11
    return-void
.end method
