.class Lcom/android/globalsearch/ShortcutRepositoryImplLog;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Lcom/android/globalsearch/ShortcutRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;,
        Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;,
        Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;,
        Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;,
        Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DB_NAME:Ljava/lang/String; = "shortcuts-log.db"

.field private static final DB_VERSION:I = 0x16

.field private static final EMPTY_QUERY_SHORTCUT_QUERY:Ljava/lang/String; = null

.field private static final HAS_HISTORY_QUERY:Ljava/lang/String; = null

.field private static final SHORTCUT_BY_ID_WHERE:Ljava/lang/String; = null

.field private static final SHORTCUT_QUERY:Ljava/lang/String; = null

.field private static final SOURCE_RANKING_SQL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "GlobalSearch"


# instance fields
.field private mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->HAS_HISTORY_QUERY:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->buildShortcutQuery(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->EMPTY_QUERY_SHORTCUT_QUERY:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->buildShortcutQuery(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SHORTCUT_QUERY:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->buildSourceRankingSql()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SOURCE_RANKING_SQL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    const/16 v1, 0x16

    invoke-direct {v0, p1, p2, v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    .line 123
    return-void
.end method

.method private static buildShortcutQuery(Z)Ljava/lang/String;
    .registers 10
    .parameter "emptyQuery"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog INNER JOIN shortcuts ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v1, v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    iget-object v1, v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, tables:Ljava/lang/String;
    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->COLUMNS:[Ljava/lang/String;

    .line 70
    .local v2, columns:[Ljava/lang/String;
    const-string v6, "(?3 - 604800000)"

    .line 75
    .local v6, cutOffTime_expr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " >= ?1 AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " < ?2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, prefixRestriction:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v4, v4, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, ageRestriction:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_12f

    const-string p0, ""

    .end local v3           #prefixRestriction:Ljava/lang/String;
    .end local p0
    :goto_72
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, where:Ljava/lang/String;
    sget-object p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v4, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    .line 81
    .local v4, groupBy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 82
    .local v5, having:Ljava/lang/String;
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "COUNT("

    .end local v0           #ageRestriction:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v0, v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    .local p0, hit_count_expr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MAX("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    iget-object v7, v7, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, last_hit_time_expr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #last_hit_time_expr:Ljava/lang/String;
    const-string v7, " - "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") / "

    .end local v6           #cutOffTime_expr:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v6, 0x93a80

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, scale_expr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #hit_count_expr:Ljava/lang/String;
    const-string v6, " * "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    .end local v0           #scale_expr:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    .local p0, ordering_expr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ordering_expr:Ljava/lang/String;
    const-string v0, " DESC"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, orderBy:Ljava/lang/String;
    const/16 p0, 0xc

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, limit:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    .end local v4           #groupBy:Ljava/lang/String;
    .end local v5           #having:Ljava/lang/String;
    .end local v7           #limit:Ljava/lang/String;
    .local v0, ageRestriction:Ljava/lang/String;
    .local v3, prefixRestriction:Ljava/lang/String;
    .local v6, cutOffTime_expr:Ljava/lang/String;
    .local p0, emptyQuery:Z
    :cond_12f
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #emptyQuery:Z
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " AND "

    .end local v3           #prefixRestriction:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_72
.end method

.method private static buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;
    .registers 6
    .parameter "query"
    .parameter "now"

    .prologue
    .line 224
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->nextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static buildSourceRankingSql()Ljava/lang/String;
    .registers 10

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1000*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_impressions:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, orderingExpr:Ljava/lang/String;
    const-string v9, "sourcetotals"

    .line 106
    .local v9, tables:Ljava/lang/String;
    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->COLUMNS:[Ljava/lang/String;

    .line 107
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_impressions:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= $1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= $2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 110
    .local v4, groupBy:Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, having:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, orderBy:Ljava/lang/String;
    const/4 v7, 0x0

    .line 113
    .local v7, limit:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "sourcetotals"

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/globalsearch/ShortcutRepository;
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    new-instance v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;

    const-string v1, "shortcuts-log.db"

    invoke-direct {v0, p0, v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private logClicked(Lcom/android/globalsearch/SessionStats;J)V
    .registers 12
    .parameter "stats"
    .parameter "now"

    .prologue
    const/4 v7, 0x0

    .line 346
    invoke-virtual {p1}, Lcom/android/globalsearch/SessionStats;->getClicked()Lcom/android/globalsearch/SuggestionData;

    move-result-object v0

    .line 347
    .local v0, clicked:Lcom/android/globalsearch/SuggestionData;
    if-nez v0, :cond_8

    .line 380
    :cond_7
    :goto_7
    return-void

    .line 357
    :cond_8
    const-string v5, "_-1"

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 362
    iget-object v5, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 368
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->makeShortcutRow(Lcom/android/globalsearch/SuggestionData;)Landroid/content/ContentValues;

    move-result-object v4

    .line 369
    .local v4, shortcut:Landroid/content/ContentValues;
    sget-object v5, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, intentKey:Ljava/lang/String;
    const-string v5, "shortcuts"

    invoke-virtual {v2, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 374
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 375
    .local v1, cv:Landroid/content/ContentValues;
    sget-object v5, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v5, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/globalsearch/SessionStats;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v5, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v5}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v5, "clicklog"

    invoke-virtual {v2, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7
.end method

.method private logSourceEvents(Lcom/android/globalsearch/SessionStats;J)V
    .registers 13
    .parameter "stats"
    .parameter "now"

    .prologue
    const/4 v8, 0x1

    .line 383
    invoke-virtual {p1}, Lcom/android/globalsearch/SessionStats;->getClicked()Lcom/android/globalsearch/SuggestionData;

    move-result-object v1

    .line 384
    .local v1, clicked:Lcom/android/globalsearch/SuggestionData;
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 386
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 387
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v2, cv:Landroid/content/ContentValues;
    :try_start_13
    invoke-virtual {p1}, Lcom/android/globalsearch/SessionStats;->getSourceImpressions()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 390
    .local v5, name:Landroid/content/ComponentName;
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    move v0, v8

    .line 398
    .local v0, clickCount:I
    :goto_34
    sget-object v6, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v6, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    sget-object v6, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->click_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    sget-object v6, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->impression_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v6, "sourceeventlog"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 404
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_72
    .catchall {:try_start_13 .. :try_end_72} :catchall_73

    goto :goto_1b

    .line 408
    .end local v0           #clickCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Landroid/content/ComponentName;
    :catchall_73
    move-exception v6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 390
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #name:Landroid/content/ComponentName;
    :cond_78
    const/4 v6, 0x0

    move v0, v6

    goto :goto_34

    .line 406
    .end local v5           #name:Landroid/content/ComponentName;
    :cond_7b
    :try_start_7b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_73

    .line 408
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 410
    return-void
.end method

.method private static makeIntentKey(Lcom/android/globalsearch/SuggestionData;)Ljava/lang/String;
    .registers 7
    .parameter "suggestion"

    .prologue
    const-string v5, "#"

    .line 441
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v3

    .line 442
    .local v3, source:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, intentAction:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, intentData:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .local v2, key:Ljava/lang/StringBuilder;
    const-string v4, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    if-eqz v1, :cond_21

    .line 447
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_21
    const-string v4, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    if-eqz v0, :cond_2b

    .line 451
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_2b
    const-string v4, "#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 455
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private makeShortcutRow(Lcom/android/globalsearch/SuggestionData;)Landroid/content/ContentValues;
    .registers 7
    .parameter "suggestion"

    .prologue
    .line 317
    invoke-static {p1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->makeIntentKey(Lcom/android/globalsearch/SuggestionData;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, intentKey:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->isSpinnerWhileRefreshing()Z

    move-result v3

    if-eqz v3, :cond_db

    const v3, 0x1080207

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 325
    .local v1, icon2:Ljava/lang/String;
    :goto_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getSource()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIcon1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->action_msg_call:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getActionMsgCall()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentExtraData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_component_name:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->isSpinnerWhileRefreshing()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-object v0

    .line 322
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #icon2:Ljava/lang/String;
    :cond_db
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIcon2()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_12
.end method

.method private static nextString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "str"

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 258
    .local v2, len:I
    if-nez v2, :cond_8

    move-object v4, p0

    .line 270
    :goto_7
    return-object v4

    .line 263
    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 266
    .local v0, codePoint:I
    add-int/lit8 v3, v0, 0x1

    .line 269
    .local v3, nextCodePoint:I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int v1, v2, v4

    .line 270
    .local v1, lastIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method private postSourceEventCleanup(J)V
    .registers 11
    .parameter "now"

    .prologue
    const-string v7, "SUM("

    const-string v6, ","

    const-string v5, ")"

    .line 421
    iget-object v2, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 424
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM sourceeventlog WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->time:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, 0x9a7ec800L

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUM("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->click_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUM("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->impression_count:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    iget-object v3, v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, columns:Ljava/lang/String;
    const-string v2, "DELETE FROM sourcetotals"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO sourcetotals SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sourceeventlog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceLog;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private sourceFromCursor(Landroid/database/Cursor;)Landroid/content/ComponentName;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 301
    sget-object v0, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->component:Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$SourceStats;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private suggestionFromCursor(Landroid/database/Cursor;)Lcom/android/globalsearch/SuggestionData;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 228
    sget-object v1, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 230
    .local v0, sourceName:Landroid/content/ComponentName;
    new-instance v1, Lcom/android/globalsearch/SuggestionData$Builder;

    invoke-direct {v1, v0}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->format(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->intentQuery(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->action_msg_call:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->actionMsgCall(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->intentExtraData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->intent_component_name:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->intentComponentName(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$Shortcuts;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/globalsearch/SuggestionData$Builder;->spinnerWhileRefreshing(Z)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/globalsearch/SuggestionData$Builder;->build()Lcom/android/globalsearch/SuggestionData;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clearHistory()V
    .registers 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->access$000(Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->close()V

    .line 157
    return-void
.end method

.method public deleteRepository()V
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->getOpenHelper()Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->deleteDatabase()V

    .line 152
    return-void
.end method

.method protected getOpenHelper()Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    return-object v0
.end method

.method public getShortcutsForQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->getShortcutsForQuery(Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getShortcutsForQuery(Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 11
    .parameter "query"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_33

    sget-object v6, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->EMPTY_QUERY_SHORTCUT_QUERY:Ljava/lang/String;

    move-object v4, v6

    .line 198
    .local v4, sql:Ljava/lang/String;
    :goto_9
    invoke-static {p1, p2, p3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->buildShortcutQueryParams(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, params:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v6}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 205
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v3, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 210
    invoke-direct {p0, v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->suggestionFromCursor(Landroid/database/Cursor;)Lcom/android/globalsearch/SuggestionData;

    move-result-object v5

    .line 212
    .local v5, suggestionData:Lcom/android/globalsearch/SuggestionData;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 216
    .end local v3           #shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    .end local v5           #suggestionData:Lcom/android/globalsearch/SuggestionData;
    :catchall_2e
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 197
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #params:[Ljava/lang/String;
    .end local v4           #sql:Ljava/lang/String;
    :cond_33
    sget-object v6, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SHORTCUT_QUERY:Ljava/lang/String;

    move-object v4, v6

    goto :goto_9

    .line 216
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #params:[Ljava/lang/String;
    .restart local v3       #shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/globalsearch/SuggestionData;>;"
    .restart local v4       #sql:Ljava/lang/String;
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public getSourceRanking()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x5

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->getSourceRanking(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getSourceRanking(II)Ljava/util/ArrayList;
    .registers 10
    .parameter "minImpressions"
    .parameter "minClicks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v3, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 285
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SOURCE_RANKING_SQL:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 289
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1d
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v2, sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :goto_26
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 292
    invoke-direct {p0, v0}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->sourceFromCursor(Landroid/database/Cursor;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_34

    goto :goto_26

    .line 296
    .end local v2           #sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_34
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v2       #sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public hasHistory()Z
    .registers 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v2}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 134
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->HAS_HISTORY_QUERY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1c

    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1e

    move-result v2

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    .line 139
    :goto_16
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1b
    return v2

    .line 137
    :cond_1c
    const/4 v2, 0x0

    goto :goto_16

    .line 139
    :catchall_1e
    move-exception v2

    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v2
.end method

.method public refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V
    .registers 10
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    const-string v1, "shortcuts"

    .line 177
    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "source"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_c
    if-nez p2, :cond_16

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "shortcutId"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_16
    iget-object v3, p0, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;

    invoke-virtual {v3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v4, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 183
    .local v4, whereArgs:[Ljava/lang/String;
    if-nez p3, :cond_33

    .line 185
    const-string v3, "shortcuts"

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    :goto_32
    return-void

    .line 188
    :cond_33
    invoke-direct {p0, p3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->makeShortcutRow(Lcom/android/globalsearch/SuggestionData;)Landroid/content/ContentValues;

    move-result-object v2

    .line 189
    .local v2, shortcut:Landroid/content/ContentValues;
    const-string v3, "shortcuts"

    sget-object v3, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->SHORTCUT_BY_ID_WHERE:Ljava/lang/String;

    sget-object v5, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->REPLACE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;)I

    goto :goto_32
.end method

.method public reportStats(Lcom/android/globalsearch/SessionStats;)V
    .registers 4
    .parameter "stats"

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->reportStats(Lcom/android/globalsearch/SessionStats;J)V

    .line 162
    return-void
.end method

.method reportStats(Lcom/android/globalsearch/SessionStats;J)V
    .registers 4
    .parameter "stats"
    .parameter "now"

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->logClicked(Lcom/android/globalsearch/SessionStats;J)V

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->logSourceEvents(Lcom/android/globalsearch/SessionStats;J)V

    .line 313
    invoke-direct {p0, p2, p3}, Lcom/android/globalsearch/ShortcutRepositoryImplLog;->postSourceEventCleanup(J)V

    .line 314
    return-void
.end method
