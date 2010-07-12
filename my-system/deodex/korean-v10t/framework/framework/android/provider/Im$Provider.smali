.class public final Landroid/provider/Im$Provider;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Im$ProviderColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation


# static fields
.field public static final ACCOUNT_CONNECTION_STATUS:Ljava/lang/String; = "account_connStatus"

.field public static final ACCOUNT_PRESENCE_STATUS:Ljava/lang/String; = "account_presenceStatus"

.field public static final ACTIVE_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ACTIVE_ACCOUNT_LOCKED:Ljava/lang/String; = "account_locked"

.field public static final ACTIVE_ACCOUNT_PW:Ljava/lang/String; = "account_pw"

.field public static final ACTIVE_ACCOUNT_USERNAME:Ljava/lang/String; = "account_username"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im-providers"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/im-providers"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_ACCOUNT:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field private static final PROVIDER_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Im$Provider;->PROVIDER_PROJECTION:[Ljava/lang/String;

    .line 147
    const-string v0, "content://im/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Provider;->CONTENT_URI:Landroid/net/Uri;

    .line 150
    const-string v0, "content://im/providers/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Provider;->CONTENT_URI_WITH_ACCOUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProviderIdForName(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .registers 11
    .parameter "cr"
    .parameter "providerName"

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 95
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 97
    sget-object v1, Landroid/provider/Im$Provider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Im$Provider;->PROVIDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 104
    .local v7, retVal:J
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 105
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_28

    move-result-wide v7

    .line 108
    :cond_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    return-wide v7

    .line 108
    :catchall_28
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final getProviderNameForId(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .registers 11
    .parameter "cr"
    .parameter "providerId"

    .prologue
    const/4 v4, 0x0

    .line 115
    sget-object v1, Landroid/provider/Im$Provider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Im$Provider;->PROVIDER_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 122
    .local v7, retVal:Ljava/lang/String;
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 123
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_33

    move-result-object v7

    .line 126
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    return-object v7

    .line 126
    :catchall_33
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
