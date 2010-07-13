.class Lcom/android/globalsearch/TestSuggestionSource$Builder;
.super Ljava/lang/Object;
.source "TestSuggestionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/TestSuggestionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCannedResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mComponent:Landroid/content/ComponentName;

.field private mDelay:J

.field private mErrorQueries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;

.field private mQueryAfterZeroResults:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.globalsearch"

    const-string v2, "com.android.globalsearch.GlobalSearch"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mComponent:Landroid/content/ComponentName;

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mDelay:J

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mCannedResponses:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mErrorQueries:Ljava/util/HashSet;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mQueryAfterZeroResults:Z

    .line 170
    const-string v0, "TestSuggestionSource"

    iput-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs addCannedResponse(Ljava/lang/String;[Lcom/android/globalsearch/SuggestionData;)Lcom/android/globalsearch/TestSuggestionSource$Builder;
    .registers 9
    .parameter "query"
    .parameter "suggestions"

    .prologue
    .line 199
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, suggestionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    iget-object v4, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mCannedResponses:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 203
    .local v1, queryLength:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_1f

    .line 204
    const/4 v4, 0x0

    sub-int v5, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, subQuery:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mCannedResponses:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 207
    .end local v2           #subQuery:Ljava/lang/String;
    :cond_1f
    return-object p0
.end method

.method public addErrorResponse(Ljava/lang/String;)Lcom/android/globalsearch/TestSuggestionSource$Builder;
    .registers 3
    .parameter "query"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mErrorQueries:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    return-object p0
.end method

.method public create()Lcom/android/globalsearch/TestSuggestionSource;
    .registers 10

    .prologue
    .line 219
    new-instance v0, Lcom/android/globalsearch/TestSuggestionSource;

    iget-object v1, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mComponent:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mDelay:J

    iget-object v4, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mCannedResponses:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mErrorQueries:Ljava/util/HashSet;

    iget-boolean v6, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mQueryAfterZeroResults:Z

    iget-object v7, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mLabel:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/globalsearch/TestSuggestionSource;-><init>(Landroid/content/ComponentName;JLjava/util/Map;Ljava/util/HashSet;ZLjava/lang/String;Lcom/android/globalsearch/TestSuggestionSource$1;)V

    return-object v0
.end method

.method public setComponent(Landroid/content/ComponentName;)Lcom/android/globalsearch/TestSuggestionSource$Builder;
    .registers 2
    .parameter "component"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mComponent:Landroid/content/ComponentName;

    .line 174
    return-object p0
.end method

.method public setDelay(J)Lcom/android/globalsearch/TestSuggestionSource$Builder;
    .registers 3
    .parameter "delay"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mDelay:J

    .line 179
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/android/globalsearch/TestSuggestionSource$Builder;
    .registers 2
    .parameter "label"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mLabel:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public setQueryAfterZeroResults(Z)Lcom/android/globalsearch/TestSuggestionSource$Builder;
    .registers 2
    .parameter "queryAfterNoResults"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/globalsearch/TestSuggestionSource$Builder;->mQueryAfterZeroResults:Z

    .line 184
    return-object p0
.end method
