.class public final Landroid/provider/Im$LastRmqId;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Im$LastRmqIdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastRmqId"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2033
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Im$LastRmqId;->PROJECTION:[Ljava/lang/String;

    .line 2086
    const-string v0, "content://im/lastRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queryLastRmqId(Landroid/content/ContentResolver;)J
    .registers 10
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 2046
    sget-object v1, Landroid/provider/Im$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Im$LastRmqId;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2053
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 2055
    .local v7, retVal:J
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2056
    const-string v0, "rmq_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    move-result-wide v7

    .line 2059
    :cond_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2062
    return-wide v7

    .line 2059
    :catchall_22
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final saveLastRmqId(Landroid/content/ContentResolver;J)V
    .registers 6
    .parameter "resolver"
    .parameter "rmqId"

    .prologue
    .line 2075
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2078
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2079
    const-string v1, "rmq_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2080
    sget-object v1, Landroid/provider/Im$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2081
    return-void
.end method
