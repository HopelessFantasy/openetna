.class Lcom/android/globalsearch/SuggestionSession$1;
.super Ljava/lang/Object;
.source "SuggestionSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/SuggestionSession;->query(Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SuggestionSession;

.field final synthetic val$cursor:Lcom/android/globalsearch/SuggestionCursor;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SuggestionSession;Lcom/android/globalsearch/SuggestionCursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSession$1;->this$0:Lcom/android/globalsearch/SuggestionSession;

    iput-object p2, p0, Lcom/android/globalsearch/SuggestionSession$1;->val$cursor:Lcom/android/globalsearch/SuggestionCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSession$1;->val$cursor:Lcom/android/globalsearch/SuggestionCursor;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionCursor;->onNewResults()V

    .line 217
    return-void
.end method
