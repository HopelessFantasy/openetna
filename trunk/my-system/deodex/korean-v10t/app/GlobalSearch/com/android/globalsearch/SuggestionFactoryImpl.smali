.class public Lcom/android/globalsearch/SuggestionFactoryImpl;
.super Ljava/lang/Object;
.source "SuggestionFactoryImpl.java"

# interfaces
.implements Lcom/android/globalsearch/SuggestionFactory;


# static fields
.field private static final BUILTIN_SOURCE_COMPONENT:Landroid/content/ComponentName;

.field private static mSearchUrlColorId:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCorpusItemBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.globalsearch"

    const-string v2, "com.android.globalsearch.GlobalSearch"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/globalsearch/SuggestionFactoryImpl;->BUILTIN_SOURCE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 56
    .local v0, colorValue:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101028e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mCorpusItemBackgroundColor:I

    .line 60
    return-void
.end method

.method private applySearchUrlColor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    .line 212
    sget-object v1, Lcom/android/globalsearch/SuggestionFactoryImpl;->mSearchUrlColorId:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 214
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 215
    .local v0, colorValue:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010267

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 217
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/globalsearch/SuggestionFactoryImpl;->mSearchUrlColorId:Ljava/lang/String;

    .line 220
    .end local v0           #colorValue:Landroid/util/TypedValue;
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\"@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/SuggestionFactoryImpl;->mSearchUrlColorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCountString(II)Ljava/lang/String;
    .registers 5
    .parameter "count"
    .parameter "limit"

    .prologue
    .line 115
    if-eqz p2, :cond_4

    if-ge p1, p2, :cond_9

    .line 116
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_8
    return-object v0

    .line 118
    :cond_9
    const/16 v0, 0xa

    if-le p2, v0, :cond_14

    .line 120
    const/4 v0, 0x1

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 p1, v0, 0xa

    .line 122
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public createGoToWebsiteSuggestion(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData;
    .registers 6
    .parameter "query"

    .prologue
    const-string v3, "http://"

    .line 189
    sget-object v1, Landroid/text/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_10

    .line 190
    const/4 v1, 0x0

    .line 197
    :goto_f
    return-object v1

    .line 193
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, url:Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_37
    new-instance v1, Lcom/android/globalsearch/SuggestionData$Builder;

    sget-object v2, Lcom/android/globalsearch/SuggestionFactoryImpl;->BUILTIN_SOURCE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->format(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionFactoryImpl;->applySearchUrlColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(I)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/globalsearch/SuggestionData$Builder;->intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v1

    goto :goto_f
.end method

.method public createSearchTheWebSuggestion(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData;
    .registers 8
    .parameter "query"

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 167
    const/4 v2, 0x0

    .line 172
    :goto_8
    return-object v2

    .line 169
    :cond_9
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f040003

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, suggestion:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 172
    .local v0, ix:I
    new-instance v2, Lcom/android/globalsearch/SuggestionData$Builder;

    sget-object v3, Lcom/android/globalsearch/SuggestionFactoryImpl;->BUILTIN_SOURCE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(I)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentQuery(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    const-string v3, "_-1"

    invoke-virtual {v2, v3}, Lcom/android/globalsearch/SuggestionData$Builder;->shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v2

    goto :goto_8
.end method

.method public getCorpusEntry(Ljava/lang/String;Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;)Lcom/android/globalsearch/SuggestionData;
    .registers 12
    .parameter "query"
    .parameter "sourceStat"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 129
    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getNumResults()I

    move-result v4

    .line 130
    .local v4, suggestionCount:I
    new-instance v5, Lcom/android/globalsearch/SuggestionData$Builder;

    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    const-string v6, "_-1"

    invoke-virtual {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;->shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    const-string v6, "android.search.action.CHANGE_SEARCH_SOURCE"

    invoke-virtual {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;->intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    iget v6, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mCorpusItemBackgroundColor:I

    invoke-virtual {v5, v6}, Lcom/android/globalsearch/SuggestionData$Builder;->backgroundColor(I)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentQuery(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    .line 139
    .local v0, builder:Lcom/android/globalsearch/SuggestionData$Builder;
    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getResponseStatus()I

    move-result v3

    .line 141
    .local v3, responseStatus:I
    const/16 v5, 0x4f

    if-ne v3, v5, :cond_68

    .line 142
    iget-object v5, p0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 143
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->isShowingPromotedResults()Z

    move-result v5

    if-eqz v5, :cond_77

    const v5, 0x7f050001

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 148
    .local v1, description:Ljava/lang/String;
    :goto_65
    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    .line 151
    .end local v1           #description:Ljava/lang/String;
    .end local v2           #resources:Landroid/content/res/Resources;
    :cond_68
    const/16 v5, 0x4e

    if-ne v3, v5, :cond_72

    .line 152
    const v5, 0x1080207

    invoke-virtual {v0, v5}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(I)Lcom/android/globalsearch/SuggestionData$Builder;

    .line 155
    :cond_72
    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v5

    return-object v5

    .line 143
    .restart local v2       #resources:Landroid/content/res/Resources;
    :cond_77
    const/high16 v5, 0x7f05

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_65
.end method

.method public getMoreEntry(ZLjava/util/List;)Lcom/android/globalsearch/SuggestionData;
    .registers 20
    .parameter "expanded"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;",
            ">;)",
            "Lcom/android/globalsearch/SuggestionData;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, sourceStats:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v7, desc:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f040007

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, appSeparator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f040006

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, countSeparator:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 74
    .local v10, sourceCount:I
    const/4 v3, 0x0

    .line 75
    .local v3, anyPending:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_23
    if-ge v8, v10, :cond_64

    .line 76
    move-object/from16 v0, p2

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;

    .line 77
    .local v11, sourceStat:Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
    invoke-virtual {v11}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getResponseStatus()I

    move-result v13

    const/16 v14, 0x4f

    if-eq v13, v14, :cond_37

    .line 78
    const/4 v3, 0x1

    .line 80
    :cond_37
    invoke-virtual {v11}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getNumResults()I

    move-result v12

    .line 81
    .local v12, suggestionCount:I
    if-lez v12, :cond_61

    .line 82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_46

    .line 83
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_46
    invoke-virtual {v11}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;->getQueryLimit()I

    move-result v14

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/globalsearch/SuggestionFactoryImpl;->getCountString(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_61
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 90
    .end local v11           #sourceStat:Lcom/android/globalsearch/SourceSuggestionBacker$SourceStat;
    .end local v12           #suggestionCount:I
    :cond_64
    if-eqz p1, :cond_e7

    const v13, 0x7f020003

    move v9, v13

    .line 92
    .local v9, icon:I
    :goto_6a
    new-instance v13, Lcom/android/globalsearch/SuggestionData$Builder;

    sget-object v14, Lcom/android/globalsearch/SuggestionFactoryImpl;->BUILTIN_SOURCE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    const-string v14, "html"

    invoke-virtual {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;->format(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<i>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mContext:Landroid/content/Context;

    move-object v15, v0

    const v16, 0x7f040005

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</i>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<i>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</i>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(I)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v13

    const-string v14, "_-1"

    invoke-virtual {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;->shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/globalsearch/SuggestionFactoryImpl;->mCorpusItemBackgroundColor:I

    move v14, v0

    invoke-virtual {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;->backgroundColor(I)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v13

    const-string v14, "android.search.action.ZILCH"

    invoke-virtual {v13, v14}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v5

    .line 100
    .local v5, builder:Lcom/android/globalsearch/SuggestionData$Builder;
    if-eqz v3, :cond_e2

    .line 101
    const v13, 0x1080207

    invoke-virtual {v5, v13}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(I)Lcom/android/globalsearch/SuggestionData$Builder;

    .line 103
    :cond_e2
    invoke-virtual {v5}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v13

    return-object v13

    .line 90
    .end local v5           #builder:Lcom/android/globalsearch/SuggestionData$Builder;
    .end local v9           #icon:I
    :cond_e7
    const v13, 0x7f020002

    move v9, v13

    goto/16 :goto_6a
.end method
