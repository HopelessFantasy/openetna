.class Lcom/android/globalsearch/SuggestionSources$SourceList;
.super Ljava/lang/Object;
.source "SuggestionSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceList"
.end annotation


# instance fields
.field private mSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field

.field private mSourcesByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSourcesByComponent:Ljava/util/HashMap;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSources:Ljava/util/ArrayList;

    .line 339
    return-void
.end method


# virtual methods
.method public get(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionSource;
    .registers 3
    .parameter "componentName"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSourcesByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/globalsearch/SuggestionSource;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionSource;
    .registers 5
    .parameter "source"

    .prologue
    .line 351
    if-nez p1, :cond_4

    .line 352
    const/4 v1, 0x0

    .line 363
    :goto_3
    return-object v1

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSourcesByComponent:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/globalsearch/SuggestionSource;

    .line 355
    .local v0, old:Lcom/android/globalsearch/SuggestionSource;
    if-eqz v0, :cond_17

    .line 360
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    :cond_17
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 363
    goto :goto_3
.end method

.method public values()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionSources$SourceList;->mSources:Ljava/util/ArrayList;

    return-object v0
.end method
