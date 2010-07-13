.class Lcom/android/globalsearch/SuggestionSources$1;
.super Landroid/content/BroadcastReceiver;
.source "SuggestionSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SuggestionSources;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SuggestionSources;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSources$1;->this$0:Lcom/android/globalsearch/SuggestionSources;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 166
    :cond_14
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources$1;->this$0:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionSources;->updateSources()V

    .line 168
    :cond_19
    return-void
.end method
