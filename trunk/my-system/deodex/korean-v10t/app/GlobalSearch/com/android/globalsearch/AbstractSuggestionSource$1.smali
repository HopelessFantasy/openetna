.class Lcom/android/globalsearch/AbstractSuggestionSource$1;
.super Ljava/lang/Object;
.source "AbstractSuggestionSource.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/AbstractSuggestionSource;->getSuggestionTask(Ljava/lang/String;II)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/android/globalsearch/SuggestionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

.field final synthetic val$maxResults:I

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$queryLimit:I


# direct methods
.method constructor <init>(Lcom/android/globalsearch/AbstractSuggestionSource;Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

    iput-object p2, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->val$query:Ljava/lang/String;

    iput p3, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->val$maxResults:I

    iput p4, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->val$queryLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/globalsearch/SuggestionResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

    invoke-static {v0}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v0

    .line 75
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

    iget-object v1, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->val$query:Ljava/lang/String;

    iget v2, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->val$maxResults:I

    iget v3, p0, Lcom/android/globalsearch/AbstractSuggestionSource$1;->val$queryLimit:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/globalsearch/AbstractSuggestionSource;->getSuggestions(Ljava/lang/String;II)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/globalsearch/AbstractSuggestionSource$1;->call()Lcom/android/globalsearch/SuggestionResult;

    move-result-object v0

    return-object v0
.end method
