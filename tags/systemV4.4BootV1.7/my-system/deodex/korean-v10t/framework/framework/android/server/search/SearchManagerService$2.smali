.class Landroid/server/search/SearchManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Landroid/server/search/SearchManagerService$2;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 127
    :cond_1c
    iget-object v1, p0, Landroid/server/search/SearchManagerService$2;->this$0:Landroid/server/search/SearchManagerService;

    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$000(Landroid/server/search/SearchManagerService;)Landroid/server/search/SearchDialogWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/search/SearchDialogWrapper;->stopSearch()V

    .line 129
    iget-object v1, p0, Landroid/server/search/SearchManagerService$2;->this$0:Landroid/server/search/SearchManagerService;

    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$100(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 130
    iget-object v1, p0, Landroid/server/search/SearchManagerService$2;->this$0:Landroid/server/search/SearchManagerService;

    invoke-virtual {v1}, Landroid/server/search/SearchManagerService;->broadcastSearchablesChanged()V

    .line 132
    :cond_33
    return-void
.end method
