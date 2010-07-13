.class public Lcom/android/globalsearch/SearchableSuggestionSource;
.super Lcom/android/globalsearch/AbstractSuggestionSource;
.source "SearchableSuggestionSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SUGGEST_COLUMN_PIN_TO_BOTTOM:Ljava/lang/String; = "suggest_pin_to_bottom"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mCallActionMsg:Ljava/lang/String;

.field private mCallActionMsgCol:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFlattenedComponentName:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mMaxResultsOverride:I

.field private mPackageResourceUriPrefix:Ljava/lang/String;

.field private mProviderResourceUriPrefix:Ljava/lang/String;

.field private mSearchable:Landroid/server/search/SearchableInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/android/globalsearch/SearchableSuggestionSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/SearchableSuggestionSource;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/search/SearchableInfo;)V
    .registers 14
    .parameter "context"
    .parameter "searchable"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v10, "android.resource://"

    const-string v9, "/"

    .line 81
    invoke-direct {p0}, Lcom/android/globalsearch/AbstractSuggestionSource;-><init>()V

    .line 74
    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsg:Ljava/lang/String;

    .line 75
    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsgCol:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    .line 84
    iget-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v6}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 85
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mFlattenedComponentName:Ljava/lang/String;

    .line 87
    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_29} :catch_a1

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mPackageResourceUriPrefix:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, suggestProviderPackage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v6}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, suggestAuthority:Ljava/lang/String;
    if-eqz v4, :cond_62

    .line 100
    iget-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 102
    .local v3, pi:Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_62

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 104
    .end local v3           #pi:Landroid/content/pm/ProviderInfo;
    :cond_62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mProviderResourceUriPrefix:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->findLabel()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mLabel:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->findIcon()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mIcon:Ljava/lang/String;

    .line 108
    iput v8, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mMaxResultsOverride:I

    .line 110
    iget-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/server/search/SearchableInfo;->findActionKey(I)Landroid/server/search/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 111
    .local v0, actionCall:Landroid/server/search/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_a0

    .line 112
    invoke-virtual {v0}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsg:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsgCol:Ljava/lang/String;

    .line 116
    :cond_a0
    return-void

    .line 89
    .end local v0           #actionCall:Landroid/server/search/SearchableInfo$ActionKeyInfo;
    .end local v4           #suggestAuthority:Ljava/lang/String;
    .end local v5           #suggestProviderPackage:Ljava/lang/String;
    :catch_a1
    move-exception v6

    move-object v2, v6

    .line 90
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Searchable activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/search/SearchableInfo;I)V
    .registers 4
    .parameter "context"
    .parameter "searchable"
    .parameter "maxResultsOverride"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/globalsearch/SearchableSuggestionSource;-><init>(Landroid/content/Context;Landroid/server/search/SearchableInfo;)V

    .line 121
    iput p3, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mMaxResultsOverride:I

    .line 122
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/globalsearch/SearchableSuggestionSource;
    .registers 5
    .parameter "context"
    .parameter "componentName"

    .prologue
    .line 601
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 603
    .local v0, searchManager:Landroid/app/SearchManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v1

    .line 604
    .local v1, si:Landroid/server/search/SearchableInfo;
    if-nez v1, :cond_11

    .line 605
    const/4 v2, 0x0

    .line 607
    :goto_10
    return-object v2

    :cond_11
    new-instance v2, Lcom/android/globalsearch/SearchableSuggestionSource;

    invoke-direct {v2, p0, v1}, Lcom/android/globalsearch/SearchableSuggestionSource;-><init>(Landroid/content/Context;Landroid/server/search/SearchableInfo;)V

    goto :goto_10
.end method

.method public static create(Landroid/content/Context;Landroid/content/ComponentName;I)Lcom/android/globalsearch/SearchableSuggestionSource;
    .registers 6
    .parameter "context"
    .parameter "componentName"
    .parameter "maxResultsOverride"

    .prologue
    .line 624
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 626
    .local v0, searchManager:Landroid/app/SearchManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v1

    .line 627
    .local v1, si:Landroid/server/search/SearchableInfo;
    if-nez v1, :cond_11

    .line 628
    const/4 v2, 0x0

    .line 630
    :goto_10
    return-object v2

    :cond_11
    new-instance v2, Lcom/android/globalsearch/SearchableSuggestionSource;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/globalsearch/SearchableSuggestionSource;-><init>(Landroid/content/Context;Landroid/server/search/SearchableInfo;I)V

    goto :goto_10
.end method

.method private findIcon()Ljava/lang/String;
    .registers 4

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 579
    .local v0, iconId:I
    if-nez v0, :cond_b

    .line 580
    const v0, 0x1080093

    .line 582
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mPackageResourceUriPrefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private findLabel()Ljava/lang/String;
    .registers 6

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, label:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 554
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 555
    .local v1, labelRes:I
    if-eqz v1, :cond_1b

    .line 557
    :try_start_f
    iget-object v4, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 558
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1a} :catch_2e

    move-result-object v0

    .line 564
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_1b
    :goto_1b
    if-nez v0, :cond_25

    .line 565
    iget-object v4, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 568
    :cond_25
    if-nez v0, :cond_29

    .line 569
    const/4 v4, 0x0

    .line 571
    :goto_28
    return-object v4

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    .line 559
    :catch_2e
    move-exception v4

    goto :goto_1b
.end method

.method private static getSuggestions(Landroid/content/Context;Landroid/server/search/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13
    .parameter "context"
    .parameter "searchable"
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    const/4 v2, 0x0

    .line 225
    if-nez p1, :cond_5

    move-object v0, v2

    .line 268
    :goto_4
    return-object v0

    .line 229
    :cond_5
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_d

    move-object v0, v2

    .line 231
    goto :goto_4

    .line 234
    :cond_d
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 239
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_25

    .line 241
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    :cond_25
    const-string v0, "search_suggest_query"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    invoke-virtual {p1}, Landroid/server/search/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 251
    .local v4, selArgs:[Ljava/lang/String;
    if-eqz v3, :cond_54

    .line 252
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 257
    .restart local v4       #selArgs:[Ljava/lang/String;
    :goto_37
    const-string v0, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 259
    const-string v0, ""

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 268
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_4

    .line 254
    .end local v1           #uri:Landroid/net/Uri;
    :cond_54
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_37
.end method


# virtual methods
.method protected getActionMsgCall(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 543
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, suggestActionMsg:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 545
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsg:Ljava/lang/String;

    .line 547
    :cond_a
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 5
    .parameter "query"
    .parameter "queryLimit"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/android/globalsearch/SearchableSuggestionSource;->getSuggestions(Landroid/content/Context;Landroid/server/search/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getDescription(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 406
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFormat(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method protected getIcon(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;I)Ljava/lang/String;
    .registers 6
    .parameter "cursor"
    .parameter "key"

    .prologue
    .line 450
    invoke-virtual {p1, p2}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, icon:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 454
    :cond_14
    const/4 v1, 0x0

    .line 458
    :goto_15
    return-object v1

    .line 455
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_23

    move-object v1, v0

    .line 456
    goto :goto_15

    .line 458
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mProviderResourceUriPrefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method

.method protected getIcon1(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 424
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIcon(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, icon:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 426
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_b
    return-object v0
.end method

.method protected getIcon2(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 442
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIcon(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentAction(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 466
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, intentAction:Ljava/lang/String;
    if-nez v0, :cond_d

    .line 468
    iget-object v1, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v1}, Landroid/server/search/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_d
    return-object v0
.end method

.method protected getIntentData(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 478
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, intentData:Ljava/lang/String;
    if-nez v0, :cond_d

    .line 480
    iget-object v2, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v2}, Landroid/server/search/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    .line 482
    :cond_d
    if-nez v0, :cond_11

    .line 483
    const/4 v2, 0x0

    .line 486
    :goto_10
    return-object v2

    .line 485
    :cond_11
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, intentDataId:Ljava/lang/String;
    if-nez v1, :cond_1b

    move-object v2, v0

    goto :goto_10

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method protected getIntentExtraData(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 496
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected getQuery(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 506
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryThreshold()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSuggestThreshold()I

    move-result v0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSettingsDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShortcutId(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 516
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;II)Lcom/android/globalsearch/SuggestionResult;
    .registers 10
    .parameter "query"
    .parameter "maxResults"
    .parameter "queryLimit"

    .prologue
    .line 166
    invoke-virtual {p0, p1, p3}, Lcom/android/globalsearch/SearchableSuggestionSource;->getCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 169
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_b

    .line 171
    invoke-static {p0}, Lcom/android/globalsearch/SuggestionResult;->createErrorResult(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    .line 204
    :cond_a
    :goto_a
    return-object v5

    .line 177
    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 179
    invoke-static {p0}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_58

    move-result-object v5

    .line 203
    if-eqz v1, :cond_a

    .line 204
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 182
    :cond_1b
    :try_start_1b
    iget v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mMaxResultsOverride:I

    if-lez v5, :cond_22

    iget v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mMaxResultsOverride:I

    move p2, v5

    .line 184
    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 189
    .local v0, count:I
    new-instance v2, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;

    iget-object v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsgCol:Ljava/lang/String;

    invoke-direct {v2, v1, v5}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 190
    .local v2, myCursor:Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v4, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    :cond_32
    :goto_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p2, :cond_5f

    .line 192
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 194
    invoke-static {p0}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_58

    move-result-object v5

    .line 203
    if-eqz v1, :cond_a

    .line 204
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 196
    :cond_4e
    :try_start_4e
    invoke-virtual {p0, v2}, Lcom/android/globalsearch/SearchableSuggestionSource;->makeSuggestion(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v3

    .line 197
    .local v3, suggestion:Lcom/android/globalsearch/SuggestionData;
    if-eqz v3, :cond_32

    .line 198
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_58

    goto :goto_32

    .line 203
    .end local v0           #count:I
    .end local v2           #myCursor:Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;
    .end local v3           #suggestion:Lcom/android/globalsearch/SuggestionData;
    .end local v4           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    :catchall_58
    move-exception v5

    if-eqz v1, :cond_5e

    .line 204
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v5

    .line 201
    .restart local v0       #count:I
    .restart local v2       #myCursor:Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;
    .restart local v4       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    :cond_5f
    :try_start_5f
    new-instance v5, Lcom/android/globalsearch/SuggestionResult;

    invoke-direct {v5, p0, v4, v0, p3}, Lcom/android/globalsearch/SuggestionResult;-><init>(Lcom/android/globalsearch/SuggestionSource;Ljava/util/List;II)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_58

    .line 203
    if-eqz v1, :cond_a

    .line 204
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a
.end method

.method protected getTitle(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValidationCursor(Lcom/android/globalsearch/SuggestionData;)Landroid/database/Cursor;
    .registers 13
    .parameter "shortcut"

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, shortcutId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentExtraData()Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, extraData:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_13

    move-object v0, v2

    .line 322
    :goto_12
    return-object v0

    .line 302
    :cond_13
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 307
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_2d

    .line 309
    invoke-virtual {v10, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    :cond_2d
    const-string v0, "search_suggest_shortcut"

    invoke-virtual {v10, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 314
    invoke-virtual {v10, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v10, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 322
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_12
.end method

.method protected isPinToBottom(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 526
    const-string v0, "true"

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isSpinnerWhileRefreshing(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 536
    const-string v0, "true"

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getColumnString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected makeSuggestion(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Lcom/android/globalsearch/SuggestionData;
    .registers 20
    .parameter "cursor"

    .prologue
    .line 335
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getFormat(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, format:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getTitle(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, title:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getDescription(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, description:Ljava/lang/String;
    if-nez v5, :cond_10

    .line 339
    const-string v5, ""

    .line 341
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIcon1(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, icon1:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIcon2(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, icon2:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIntentAction(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, intentAction:Ljava/lang/String;
    if-nez v8, :cond_20

    .line 345
    const-string v8, "android.intent.action.VIEW"

    .line 347
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIntentData(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, intentData:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getQuery(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, query:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getActionMsgCall(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, actionMsgCall:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getIntentExtraData(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v12

    .line 351
    .local v12, intentExtraData:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getShortcutId(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Ljava/lang/String;

    move-result-object v14

    .line 352
    .local v14, shortcutId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->isPinToBottom(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Z

    move-result v16

    .line 353
    .local v16, pinToBottom:Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->isSpinnerWhileRefreshing(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Z

    move-result v17

    .line 357
    .local v17, spinnerWhileRefreshing:Z
    new-instance v1, Lcom/android/globalsearch/SuggestionData;

    invoke-virtual/range {p0 .. p0}, Lcom/android/globalsearch/SearchableSuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SearchableSuggestionSource;->mFlattenedComponentName:Ljava/lang/String;

    move-object v13, v0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/android/globalsearch/SuggestionData;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v1
.end method

.method public queryAfterZeroResults()Z
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v0}, Landroid/server/search/SearchableInfo;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mFlattenedComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateShortcut(Lcom/android/globalsearch/SuggestionData;)Lcom/android/globalsearch/SuggestionData;
    .registers 7
    .parameter "shortcut"

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SearchableSuggestionSource;->getValidationCursor(Lcom/android/globalsearch/SuggestionData;)Landroid/database/Cursor;

    move-result-object v1

    .line 274
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_9

    move-object v2, v3

    .line 289
    :goto_8
    return-object v2

    .line 277
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_52

    move-result v2

    if-eqz v2, :cond_14

    .line 289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    goto :goto_8

    .line 281
    :cond_14
    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_52

    move-result v0

    .line 282
    .local v0, count:I
    if-nez v0, :cond_1f

    .line 289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    goto :goto_8

    .line 283
    :cond_1f
    const/4 v2, 0x1

    if-le v0, v2, :cond_40

    .line 284
    :try_start_22
    sget-object v2, Lcom/android/globalsearch/SearchableSuggestionSource;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " results for validation of a single shortcut"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 287
    new-instance v2, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;

    iget-object v3, p0, Lcom/android/globalsearch/SearchableSuggestionSource;->mCallActionMsgCol:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/globalsearch/SearchableSuggestionSource;->makeSuggestion(Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;)Lcom/android/globalsearch/SuggestionData;
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_52

    move-result-object v2

    .line 289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .end local v0           #count:I
    :catchall_52
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method
