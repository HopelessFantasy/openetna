.class public Lcom/android/globalsearch/SuggestionResult;
.super Ljava/lang/Object;
.source "SuggestionResult.java"


# static fields
.field public static final RESULT_CANCELED:I = 0x1f

.field public static final RESULT_ERROR:I = 0x1e

.field public static final RESULT_OK:I = 0x1d


# instance fields
.field private final mCount:I

.field private final mQueryLimit:I

.field private final mResultCode:I

.field private final mSource:Lcom/android/globalsearch/SuggestionSource;

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/globalsearch/SuggestionSource;)V
    .registers 4
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;II)V

    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/android/globalsearch/SuggestionSource;I)V
    .registers 5
    .parameter "source"
    .parameter "resultCode"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionResult;->mSource:Lcom/android/globalsearch/SuggestionSource;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionResult;->mSuggestions:Ljava/util/List;

    .line 61
    iput v1, p0, Lcom/android/globalsearch/SuggestionResult;->mCount:I

    .line 62
    iput v1, p0, Lcom/android/globalsearch/SuggestionResult;->mQueryLimit:I

    .line 63
    iput p2, p0, Lcom/android/globalsearch/SuggestionResult;->mResultCode:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;)V
    .registers 5
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/SuggestionSource;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;II)V
    .registers 6
    .parameter "source"
    .parameter
    .parameter "count"
    .parameter "queryLimit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/globalsearch/SuggestionSource;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionResult;->mSource:Lcom/android/globalsearch/SuggestionSource;

    .line 78
    iput-object p2, p0, Lcom/android/globalsearch/SuggestionResult;->mSuggestions:Ljava/util/List;

    .line 79
    iput p3, p0, Lcom/android/globalsearch/SuggestionResult;->mCount:I

    .line 80
    iput p4, p0, Lcom/android/globalsearch/SuggestionResult;->mQueryLimit:I

    .line 81
    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/globalsearch/SuggestionResult;->mResultCode:I

    .line 82
    return-void
.end method

.method public static createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;
    .registers 3
    .parameter "source"

    .prologue
    .line 55
    new-instance v0, Lcom/android/globalsearch/SuggestionResult;

    const/16 v1, 0x1f

    invoke-direct {v0, p0, v1}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;I)V

    return-object v0
.end method

.method public static createErrorResult(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;
    .registers 3
    .parameter "source"

    .prologue
    .line 51
    new-instance v0, Lcom/android/globalsearch/SuggestionResult;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;I)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/globalsearch/SuggestionResult;->mCount:I

    return v0
.end method

.method public getQueryLimit()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/globalsearch/SuggestionResult;->mQueryLimit:I

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/android/globalsearch/SuggestionResult;->mResultCode:I

    return v0
.end method

.method public getSource()Lcom/android/globalsearch/SuggestionSource;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionResult;->mSource:Lcom/android/globalsearch/SuggestionSource;

    return-object v0
.end method

.method public getSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionResult;->mSuggestions:Ljava/util/List;

    return-object v0
.end method
