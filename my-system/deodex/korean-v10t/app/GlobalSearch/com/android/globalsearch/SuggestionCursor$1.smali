.class Lcom/android/globalsearch/SuggestionCursor$1;
.super Ljava/lang/Object;
.source "SuggestionCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SuggestionCursor;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SuggestionCursor;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionCursor$1;->this$0:Lcom/android/globalsearch/SuggestionCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor$1;->this$0:Lcom/android/globalsearch/SuggestionCursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionCursor;->access$000(Lcom/android/globalsearch/SuggestionCursor;Z)V

    .line 354
    return-void
.end method
