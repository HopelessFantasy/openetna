.class Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;
.super Ljava/lang/Object;
.source "QueryMultiplexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-virtual {v0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_72

    .line 159
    const-string v0, "GlobalSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-static {v2}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->access$400(Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)Lcom/android/globalsearch/SuggestionSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/globalsearch/SuggestionSource;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' took longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millis for query \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    iget-object v2, v2, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v2}, Lcom/android/globalsearch/QueryMultiplexer;->access$100(Lcom/android/globalsearch/QueryMultiplexer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "attempting to cancel it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_72

    .line 165
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    iget-object v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v0}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;->this$1:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-static {v1}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->access$400(Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)Lcom/android/globalsearch/SuggestionSource;

    move-result-object v1

    invoke-static {v1}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    .line 169
    :cond_72
    return-void
.end method
