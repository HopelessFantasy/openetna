.class Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;
.super Landroid/database/ContentObserver;
.source "SuggestionSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowWebSuggestionsSettingChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SuggestionSources;


# direct methods
.method public constructor <init>(Lcom/android/globalsearch/SuggestionSources;)V
    .registers 3
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;->this$0:Lcom/android/globalsearch/SuggestionSources;

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 389
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources$ShowWebSuggestionsSettingChangeObserver;->this$0:Lcom/android/globalsearch/SuggestionSources;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionSources;->updateSources()V

    .line 394
    return-void
.end method
