.class public final Landroid/provider/Im$OutgoingRmq;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Im$OutgoingRmqColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutgoingRmq"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "rmq_id ASC"

.field private static RMQ_ID_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1971
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Im$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    .line 2007
    const-string v0, "content://im/outgoingRmqMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    .line 2012
    const-string v0, "content://im/outgoingHighestRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queryHighestRmqId(Landroid/content/ContentResolver;)J
    .registers 10
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 1983
    sget-object v1, Landroid/provider/Im$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Im$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1990
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 1994
    .local v7, retVal:J
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1995
    const-string v0, "rmq_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    move-result-wide v7

    .line 1998
    :cond_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2001
    return-wide v7

    .line 1998
    :catchall_22
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
