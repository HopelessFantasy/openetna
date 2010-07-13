.class public Lcom/android/globalsearch/ShortcutRefresher;
.super Ljava/lang/Object;
.source "ShortcutRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;
    }
.end annotation


# static fields
.field private static final DBG_LTNCY:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mMaxToRefresh:I

.field private final mReceiver:Lcom/android/globalsearch/SuggestionBacker;

.field private final mRepo:Lcom/android/globalsearch/ShortcutRepository;

.field private final mSent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceLookup:Lcom/android/globalsearch/SourceLookup;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/globalsearch/SourceLookup;Ljava/util/ArrayList;ILcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/ShortcutRepository;)V
    .registers 9
    .parameter "executor"
    .parameter "sourceLookup"
    .parameter
    .parameter "maxToRefresh"
    .parameter "receiver"
    .parameter "shortcutRepository"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/globalsearch/SourceLookup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;I",
            "Lcom/android/globalsearch/SuggestionBacker;",
            "Lcom/android/globalsearch/ShortcutRepository;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/globalsearch/ShortcutRefresher;->mExecutor:Ljava/util/concurrent/Executor;

    .line 64
    iput-object p2, p0, Lcom/android/globalsearch/ShortcutRefresher;->mSourceLookup:Lcom/android/globalsearch/SourceLookup;

    .line 65
    iput-object p3, p0, Lcom/android/globalsearch/ShortcutRefresher;->mShortcuts:Ljava/util/ArrayList;

    .line 66
    iput p4, p0, Lcom/android/globalsearch/ShortcutRefresher;->mMaxToRefresh:I

    .line 67
    iput-object p5, p0, Lcom/android/globalsearch/ShortcutRefresher;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    .line 68
    iput-object p6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/globalsearch/ShortcutRefresher;->mMaxToRefresh:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher;->mSent:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/ShortcutRefresher;)Lcom/android/globalsearch/ShortcutRepository;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/globalsearch/ShortcutRefresher;)Lcom/android/globalsearch/SuggestionBacker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/globalsearch/ShortcutRefresher;->mSent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;

    .line 109
    .local v1, shortcutRefreshTask:Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->cancel(Z)Z

    goto :goto_6

    .line 111
    .end local v1           #shortcutRefreshTask:Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;
    :cond_17
    return-void
.end method

.method public refresh()V
    .registers 9

    .prologue
    .line 77
    iget v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mMaxToRefresh:I

    iget-object v7, p0, Lcom/android/globalsearch/ShortcutRefresher;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 78
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v4, :cond_4b

    .line 79
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionData;

    .line 80
    .local v3, shortcut:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual {v3}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v0

    .line 81
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mSourceLookup:Lcom/android/globalsearch/SourceLookup;

    invoke-interface {v6, v0}, Lcom/android/globalsearch/SourceLookup;->getSourceByComponentName(Landroid/content/ComponentName;)Lcom/android/globalsearch/SuggestionSource;

    move-result-object v5

    .line 85
    .local v5, source:Lcom/android/globalsearch/SuggestionSource;
    if-nez v5, :cond_30

    .line 86
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/globalsearch/ShortcutRefresher$1;

    invoke-direct {v7, p0, v0, v3}, Lcom/android/globalsearch/ShortcutRefresher$1;-><init>(Lcom/android/globalsearch/ShortcutRefresher;Landroid/content/ComponentName;Lcom/android/globalsearch/SuggestionData;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 95
    :cond_30
    new-instance v2, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;

    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    iget-object v7, p0, Lcom/android/globalsearch/ShortcutRefresher;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    invoke-direct {v2, v5, v3, v6, v7}, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;-><init>(Lcom/android/globalsearch/SuggestionSource;Lcom/android/globalsearch/SuggestionData;Lcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/ShortcutRepository;)V

    .line 97
    .local v2, refreshTask:Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->setScheduledTime(J)V

    .line 98
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mSent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2d

    .line 102
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v2           #refreshTask:Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;
    .end local v3           #shortcut:Lcom/android/globalsearch/SuggestionData;
    .end local v5           #source:Lcom/android/globalsearch/SuggestionSource;
    :cond_4b
    return-void
.end method
