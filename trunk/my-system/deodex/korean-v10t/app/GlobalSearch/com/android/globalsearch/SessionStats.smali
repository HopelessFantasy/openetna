.class public Lcom/android/globalsearch/SessionStats;
.super Ljava/lang/Object;
.source "SessionStats.java"


# instance fields
.field private final mClicked:Lcom/android/globalsearch/SuggestionData;

.field private final mQuery:Ljava/lang/String;

.field private final mSourceImpressions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V
    .registers 6
    .parameter "query"
    .parameter "clicked"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/globalsearch/SessionStats;->mQuery:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/globalsearch/SessionStats;->mClicked:Lcom/android/globalsearch/SuggestionData;

    .line 39
    if-nez p2, :cond_11

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/SessionStats;->mSourceImpressions:Ljava/util/Collection;

    .line 44
    :goto_10
    return-void

    .line 42
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SessionStats;->mSourceImpressions:Ljava/util/Collection;

    goto :goto_10
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;Ljava/util/Collection;)V
    .registers 4
    .parameter "query"
    .parameter "clicked"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/globalsearch/SuggestionData;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, sourceImpressions:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/globalsearch/SessionStats;->mQuery:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/globalsearch/SessionStats;->mClicked:Lcom/android/globalsearch/SuggestionData;

    .line 50
    iput-object p3, p0, Lcom/android/globalsearch/SessionStats;->mSourceImpressions:Ljava/util/Collection;

    .line 51
    return-void
.end method


# virtual methods
.method public getClicked()Lcom/android/globalsearch/SuggestionData;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/globalsearch/SessionStats;->mClicked:Lcom/android/globalsearch/SuggestionData;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/globalsearch/SessionStats;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImpressions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/globalsearch/SessionStats;->mSourceImpressions:Ljava/util/Collection;

    return-object v0
.end method
