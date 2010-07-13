.class public Lcom/lge/sns/account/provider/AccountProvider;
.super Landroid/content/ContentProvider;
.source "AccountProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/provider/AccountProvider$TableManageHelper;
    }
.end annotation


# static fields
.field private static ACCOUNT_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACCOUNT_TABLE_NAME:Ljava/lang/String; = "account"

.field private static final CONTENT_TYPES:[Ljava/lang/String; = null

.field private static FEATURE_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_TABLE_NAME:Ljava/lang/String; = "account_feature"

.field private static final ID_ACCOUNT:I = 0x0

.field private static final ID_ACCOUNT_ITEM:I = 0x1

.field private static final ID_FEATURE:I = 0x2

.field private static final ID_FEATURE_ITEM:I = 0x3

.field private static final ID_RESTRICTION:I = 0x4

.field private static final ID_RESTRICTION_ITEM:I = 0x5

.field private static RESTRICTION_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESTRICTION_TABLE_NAME:Ljava/lang/String; = "feature_restriction"

.field private static final TAG:Ljava/lang/String; = "MyAccountProvider"

.field private static URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "com.lge.sns.account"

    .line 54
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "vnd.lge.cursor.dir/vnd.lge.sns.account"

    aput-object v5, v4, v6

    const-string v5, "vnd.lge.cursor.item/vnd.lge.sns.account"

    aput-object v5, v4, v8

    sput-object v4, Lcom/lge/sns/account/provider/AccountProvider;->CONTENT_TYPES:[Ljava/lang/String;

    .line 441
    new-instance v4, Landroid/content/UriMatcher;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 442
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/sns/account/provider/AccountProvider;->ACCOUNT_PROJECTION_MAP:Ljava/util/HashMap;

    .line 443
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/sns/account/provider/AccountProvider;->FEATURE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 444
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/lge/sns/account/provider/AccountProvider;->RESTRICTION_PROJECTION_MAP:Ljava/util/HashMap;

    .line 447
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.lge.sns.account"

    const-string v5, "account"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 448
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.lge.sns.account"

    const-string v5, "account/#"

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    sget-object v0, Lcom/lge/sns/account/provider/AccountContent$AccountColumns;->COLUMNS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_44
    if-ge v2, v3, :cond_50

    aget-object v1, v0, v2

    .line 450
    .local v1, column:Ljava/lang/String;
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->ACCOUNT_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 452
    .end local v1           #column:Ljava/lang/String;
    :cond_50
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.lge.sns.account"

    const-string v5, "feature"

    invoke-virtual {v4, v7, v5, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.lge.sns.account"

    const-string v5, "feature/#"

    const/4 v6, 0x3

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    sget-object v0, Lcom/lge/sns/account/provider/FeatureContent$FeatureColumns;->COLUMNS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_67
    if-ge v2, v3, :cond_73

    aget-object v1, v0, v2

    .line 455
    .restart local v1       #column:Ljava/lang/String;
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->FEATURE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 457
    .end local v1           #column:Ljava/lang/String;
    :cond_73
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.lge.sns.account"

    const-string v5, "restriction"

    const/4 v6, 0x4

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v5, "com.lge.sns.account"

    const-string v5, "restriction/#"

    const/4 v6, 0x5

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    sget-object v0, Lcom/lge/sns/account/provider/RestrictionContent$RestrictionColumn;->COLUMNS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_8b
    if-ge v2, v3, :cond_97

    aget-object v1, v0, v2

    .line 460
    .restart local v1       #column:Ljava/lang/String;
    sget-object v4, Lcom/lge/sns/account/provider/AccountProvider;->RESTRICTION_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 463
    .end local v1           #column:Ljava/lang/String;
    :cond_97
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 58
    return-void
.end method

.method private deleteAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "account"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteAccountItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 181
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteFeature(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "account_feature"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteFeatureItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 166
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteFeature(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteRestriction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 158
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "feature_restriction"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getAccountItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getAccountQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 392
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 393
    return-object v0
.end method

.method private getAccountQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 397
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 398
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcom/lge/sns/account/provider/AccountProvider;->ACCOUNT_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 400
    return-object v0
.end method

.method private getFeatureItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getFeatureQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 379
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 380
    return-object v0
.end method

.method private getFeatureQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 384
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 385
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "account_feature"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 386
    sget-object v1, Lcom/lge/sns/account/provider/AccountProvider;->FEATURE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 387
    return-object v0
.end method

.method private getRestrictionItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getRestrictionQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 366
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 367
    return-object v0
.end method

.method private getRestrictionQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 371
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 372
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "feature_restriction"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 373
    sget-object v1, Lcom/lge/sns/account/provider/AccountProvider;->RESTRICTION_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 374
    return-object v0
.end method

.method private insertAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v9, "updated"

    const-string v8, "tab_order"

    const-string v7, "sns_id"

    const-string v6, "published"

    .line 274
    const-string v4, "sns_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sns_id should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_18
    const-string v4, "title"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 278
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "title should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    :cond_28
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 282
    .local v1, now:Ljava/lang/Long;
    const-string v4, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 283
    const-string v4, "published"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    :cond_3e
    const-string v4, "updated"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 286
    const-string v4, "updated"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    :cond_4b
    const-string v4, "tab_order"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 289
    const-string v4, "tab_order"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    :cond_5d
    iget-object v4, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v4}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 294
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "account"

    const-string v5, "sns_id"

    invoke-virtual {v0, v4, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 295
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_76

    .line 296
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 299
    :cond_76
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private insertFeature(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v5, "feature_code"

    .line 253
    const-string v3, "sns_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 254
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sns_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_12
    const-string v3, "feature_code"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 257
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "feature_code should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_22
    const-string v3, "feature_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 260
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "feature_name should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_32
    iget-object v3, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 265
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "account_feature"

    const-string v4, "feature_code"

    invoke-virtual {v0, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 266
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4b

    .line 267
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 270
    :cond_4b
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertResriction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v5, "restriction_value"

    .line 232
    const-string v3, "feature_code"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 233
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "feature_code should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_12
    const-string v3, "restriction_code"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 236
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "restriction_code should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_22
    const-string v3, "restriction_value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "restriction_value should hot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_32
    iget-object v3, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "feature_restriction"

    const-string v4, "restriction_value"

    invoke-virtual {v0, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 245
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4b

    .line 246
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 249
    :cond_4b
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateAccount(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 436
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/account/provider/AccountProvider;->updateAccount(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private updateAccountItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 428
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "account"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "MyAccountProvider"

    .line 127
    const-string v1, "MyAccountProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update. uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, count:I
    sget-object v1, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_7a

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :pswitch_3d
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteAccount(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 149
    :goto_41
    invoke-virtual {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 151
    const-string v1, "MyAccountProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v0

    .line 135
    :pswitch_66
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteAccountItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 136
    goto :goto_41

    .line 138
    :pswitch_6b
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteFeature(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 139
    goto :goto_41

    .line 141
    :pswitch_70
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteFeatureItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 142
    goto :goto_41

    .line 144
    :pswitch_75
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/account/provider/AccountProvider;->deleteRestriction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 145
    goto :goto_41

    .line 130
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_66
        :pswitch_6b
        :pswitch_70
        :pswitch_75
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter "uri"

    .prologue
    const-string v4, "MyAccountProvider"

    .line 193
    const-string v2, "MyAccountProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType. uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, contentType:Ljava/lang/String;
    sget-object v2, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 197
    .local v1, match:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    sget-object v2, Lcom/lge/sns/account/provider/AccountProvider;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    .line 198
    sget-object v2, Lcom/lge/sns/account/provider/AccountProvider;->CONTENT_TYPES:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 200
    const-string v2, "MyAccountProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v0

    .line 204
    :cond_46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, uriInserted:Landroid/net/Uri;
    sget-object v1, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_56

    .line 221
    :pswitch_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_23
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/provider/AccountProvider;->insertAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    :goto_27
    const-string v1, "MyAccountProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a new inserted uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 227
    return-object v0

    .line 215
    :pswitch_4c
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/provider/AccountProvider;->insertFeature(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    goto :goto_27

    .line 218
    :pswitch_51
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/provider/AccountProvider;->insertResriction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 219
    goto :goto_27

    .line 210
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_23
        :pswitch_a
        :pswitch_4c
        :pswitch_a
        :pswitch_51
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 304
    const-string v0, "MyAccountProvider"

    const-string v1, "onCreate. create SnsDatabaseOpenHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const-string v9, "MyAccountProvider"

    .line 313
    const-string v2, "MyAccountProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query. uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v7, 0x0

    .line 317
    .local v7, orderBy:Ljava/lang/String;
    sget-object v2, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_b0

    .line 352
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :pswitch_3f
    invoke-direct {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getAccountQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 320
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 321
    const-string v7, "tab_order ASC"

    .line 355
    :goto_4b
    iget-object v2, p0, Lcom/lge/sns/account/provider/AccountProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 356
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 357
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 359
    const-string v2, "MyAccountProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows are selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v8

    .line 323
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_81
    move-object v7, p5

    .line 325
    goto :goto_4b

    .line 327
    :pswitch_83
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProvider;->getAccountItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 328
    goto :goto_4b

    .line 330
    :pswitch_88
    invoke-direct {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getFeatureQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 331
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 332
    const-string v7, "feature_code ASC"

    goto :goto_4b

    .line 334
    :cond_95
    move-object v7, p5

    .line 336
    goto :goto_4b

    .line 338
    :pswitch_97
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProvider;->getFeatureItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 339
    goto :goto_4b

    .line 341
    :pswitch_9c
    invoke-direct {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getRestrictionQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 342
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 343
    const-string v7, "restriction_code ASC"

    goto :goto_4b

    .line 345
    :cond_a9
    move-object v7, p5

    .line 347
    goto :goto_4b

    .line 349
    :pswitch_ab
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProvider;->getRestrictionItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 350
    goto :goto_4b

    .line 317
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_83
        :pswitch_88
        :pswitch_97
        :pswitch_9c
        :pswitch_ab
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "MyAccountProvider"

    .line 406
    const-string v1, "MyAccountProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update. uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, count:I
    sget-object v1, Lcom/lge/sns/account/provider/AccountProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_6c

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :pswitch_3d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/account/provider/AccountProvider;->updateAccount(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 419
    :goto_41
    invoke-virtual {p0}, Lcom/lge/sns/account/provider/AccountProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 421
    const-string v1, "MyAccountProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v0

    .line 414
    :pswitch_66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/account/provider/AccountProvider;->updateAccountItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 415
    goto :goto_41

    .line 409
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_66
    .end packed-switch
.end method
