.class Lcom/android/globalsearch/ShortcutRefresher$1;
.super Ljava/lang/Object;
.source "ShortcutRefresher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/ShortcutRefresher;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/ShortcutRefresher;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$shortcut:Lcom/android/globalsearch/SuggestionData;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/ShortcutRefresher;Landroid/content/ComponentName;Lcom/android/globalsearch/SuggestionData;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->this$0:Lcom/android/globalsearch/ShortcutRefresher;

    iput-object p2, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->val$shortcut:Lcom/android/globalsearch/SuggestionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->this$0:Lcom/android/globalsearch/ShortcutRefresher;

    invoke-static {v0}, Lcom/android/globalsearch/ShortcutRefresher;->access$000(Lcom/android/globalsearch/ShortcutRefresher;)Lcom/android/globalsearch/ShortcutRepository;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 89
    iget-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->this$0:Lcom/android/globalsearch/ShortcutRefresher;

    invoke-static {v0}, Lcom/android/globalsearch/ShortcutRefresher;->access$000(Lcom/android/globalsearch/ShortcutRefresher;)Lcom/android/globalsearch/ShortcutRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->val$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->val$shortcut:Lcom/android/globalsearch/SuggestionData;

    invoke-virtual {v2}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/globalsearch/ShortcutRepository;->refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V

    .line 91
    :cond_1a
    iget-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->this$0:Lcom/android/globalsearch/ShortcutRefresher;

    invoke-static {v0}, Lcom/android/globalsearch/ShortcutRefresher;->access$100(Lcom/android/globalsearch/ShortcutRefresher;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->val$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/globalsearch/ShortcutRefresher$1;->val$shortcut:Lcom/android/globalsearch/SuggestionData;

    invoke-virtual {v2}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/globalsearch/SuggestionBacker;->onRefreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V

    .line 92
    return-void
.end method
