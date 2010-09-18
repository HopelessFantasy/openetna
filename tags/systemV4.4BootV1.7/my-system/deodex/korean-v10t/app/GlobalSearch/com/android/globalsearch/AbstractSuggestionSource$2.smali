.class Lcom/android/globalsearch/AbstractSuggestionSource$2;
.super Ljava/lang/Object;
.source "AbstractSuggestionSource.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/AbstractSuggestionSource;->getShortcutValidationTask(Lcom/android/globalsearch/SuggestionData;)Ljava/util/concurrent/Callable;
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
        "Lcom/android/globalsearch/SuggestionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

.field final synthetic val$shortcut:Lcom/android/globalsearch/SuggestionData;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/AbstractSuggestionSource;Lcom/android/globalsearch/SuggestionData;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/globalsearch/AbstractSuggestionSource$2;->this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

    iput-object p2, p0, Lcom/android/globalsearch/AbstractSuggestionSource$2;->val$shortcut:Lcom/android/globalsearch/SuggestionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/globalsearch/SuggestionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/globalsearch/AbstractSuggestionSource$2;->this$0:Lcom/android/globalsearch/AbstractSuggestionSource;

    iget-object v1, p0, Lcom/android/globalsearch/AbstractSuggestionSource$2;->val$shortcut:Lcom/android/globalsearch/SuggestionData;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/AbstractSuggestionSource;->validateShortcut(Lcom/android/globalsearch/SuggestionData;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/globalsearch/AbstractSuggestionSource$2;->call()Lcom/android/globalsearch/SuggestionData;

    move-result-object v0

    return-object v0
.end method
