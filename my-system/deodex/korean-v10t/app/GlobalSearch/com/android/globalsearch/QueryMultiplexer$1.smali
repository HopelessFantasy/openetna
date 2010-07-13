.class Lcom/android/globalsearch/QueryMultiplexer$1;
.super Ljava/lang/Object;
.source "QueryMultiplexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/QueryMultiplexer;->sendQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/QueryMultiplexer;

.field final synthetic val$suggestionRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/QueryMultiplexer;Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/globalsearch/QueryMultiplexer$1;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    iput-object p2, p0, Lcom/android/globalsearch/QueryMultiplexer$1;->val$suggestionRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$1;->val$suggestionRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-virtual {v0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 99
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$1;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v0}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/QueryMultiplexer$1;->val$suggestionRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-virtual {v1}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->getSuggestionSource()Lcom/android/globalsearch/SuggestionSource;

    move-result-object v1

    invoke-static {v1}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    .line 103
    :cond_1b
    return-void
.end method
