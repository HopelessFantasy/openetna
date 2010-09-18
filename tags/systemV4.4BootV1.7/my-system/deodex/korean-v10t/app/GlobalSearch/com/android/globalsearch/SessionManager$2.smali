.class Lcom/android/globalsearch/SessionManager$2;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/SessionManager;->warmUpWebSource(Lcom/android/globalsearch/SuggestionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SessionManager;

.field final synthetic val$webSearchSource:Lcom/android/globalsearch/SuggestionSource;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SessionManager;Lcom/android/globalsearch/SuggestionSource;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/globalsearch/SessionManager$2;->this$0:Lcom/android/globalsearch/SessionManager;

    iput-object p2, p0, Lcom/android/globalsearch/SessionManager$2;->val$webSearchSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/globalsearch/SessionManager$2;->val$webSearchSource:Lcom/android/globalsearch/SuggestionSource;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/globalsearch/SuggestionSource;->getSuggestionTask(Ljava/lang/String;II)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 157
    :goto_d
    return-void

    .line 154
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SessionManager"

    const-string v2, "exception from web search warm-up query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
