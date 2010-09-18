.class public Lcom/android/globalsearch/QueryMultiplexer;
.super Ljava/lang/Object;
.source "QueryMultiplexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LTNCY:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private final mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

.field private final mExecutor:Lcom/android/globalsearch/PerTagExecutor;

.field private final mMaxResultsPerSource:I

.field private final mQuery:Ljava/lang/String;

.field private final mQueryLimit:I

.field private final mReceiver:Lcom/android/globalsearch/SuggestionBacker;

.field private mSentRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IILcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/PerTagExecutor;Lcom/android/globalsearch/DelayedExecutor;)V
    .registers 10
    .parameter "query"
    .parameter
    .parameter "maxResultsPerSource"
    .parameter "queryLimit"
    .parameter "receiver"
    .parameter "executor"
    .parameter "delayedExecutor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SuggestionSource;",
            ">;II",
            "Lcom/android/globalsearch/SuggestionBacker;",
            "Lcom/android/globalsearch/PerTagExecutor;",
            "Lcom/android/globalsearch/DelayedExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, sources:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p6, p0, Lcom/android/globalsearch/QueryMultiplexer;->mExecutor:Lcom/android/globalsearch/PerTagExecutor;

    .line 66
    iput-object p1, p0, Lcom/android/globalsearch/QueryMultiplexer;->mQuery:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/globalsearch/QueryMultiplexer;->mSources:Ljava/util/List;

    .line 68
    iput-object p5, p0, Lcom/android/globalsearch/QueryMultiplexer;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    .line 69
    iput p3, p0, Lcom/android/globalsearch/QueryMultiplexer;->mMaxResultsPerSource:I

    .line 70
    iput p4, p0, Lcom/android/globalsearch/QueryMultiplexer;->mQueryLimit:I

    .line 71
    iput-object p7, p0, Lcom/android/globalsearch/QueryMultiplexer;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/globalsearch/QueryMultiplexer;->mSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer;->mSentRequests:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/globalsearch/QueryMultiplexer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/globalsearch/QueryMultiplexer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/globalsearch/QueryMultiplexer;->mMaxResultsPerSource:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/globalsearch/QueryMultiplexer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/globalsearch/QueryMultiplexer;->mQueryLimit:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/DelayedExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    return-object v0
.end method

.method static ms(J)I
    .registers 4
    .parameter "ns"

    .prologue
    .line 121
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 6
    .parameter "sb"
    .parameter "string"
    .parameter "width"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, p2, v2

    .line 296
    .local v1, padding:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 297
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 299
    :cond_14
    return-void
.end method

.method static padQ(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 7
    .parameter "sb"
    .parameter "string"
    .parameter "width"

    .prologue
    const/16 v3, 0x27

    .line 306
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, p2, v2

    .line 308
    .local v1, padding:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v1, :cond_1e

    .line 309
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 311
    :cond_1e
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/globalsearch/QueryMultiplexer;->mSentRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    .line 114
    .local v1, sentRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->cancel(Z)Z

    goto :goto_6

    .line 116
    .end local v1           #sentRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;
    :cond_17
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/globalsearch/QueryMultiplexer;->sendQuery()V

    .line 80
    return-void
.end method

.method public sendQuery()V
    .registers 10

    .prologue
    .line 86
    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer;->mSources:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/globalsearch/SuggestionSource;

    .line 87
    .local v2, source:Lcom/android/globalsearch/SuggestionSource;
    new-instance v3, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;

    invoke-direct {v3, p0, v2}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;-><init>(Lcom/android/globalsearch/QueryMultiplexer;Lcom/android/globalsearch/SuggestionSource;)V

    .line 88
    .local v3, suggestionRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->setScheduledTime(J)V

    .line 89
    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer;->mSentRequests:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v2}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, tag:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer;->mExecutor:Lcom/android/globalsearch/PerTagExecutor;

    invoke-virtual {v5, v4, v3}, Lcom/android/globalsearch/PerTagExecutor;->execute(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    .line 92
    .local v1, queued:Z
    if-eqz v1, :cond_6

    .line 96
    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    new-instance v6, Lcom/android/globalsearch/QueryMultiplexer$1;

    invoke-direct {v6, p0, v3}, Lcom/android/globalsearch/QueryMultiplexer$1;-><init>(Lcom/android/globalsearch/QueryMultiplexer;Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)V

    const-wide/16 v7, 0x2710

    invoke-interface {v5, v6, v7, v8}, Lcom/android/globalsearch/DelayedExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 107
    .end local v1           #queued:Z
    .end local v2           #source:Lcom/android/globalsearch/SuggestionSource;
    .end local v3           #suggestionRequest:Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;
    .end local v4           #tag:Ljava/lang/String;
    :cond_40
    return-void
.end method
