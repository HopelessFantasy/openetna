.class public final Landroid/provider/SubscribedFeeds$Feeds;
.super Ljava/lang/Object;
.source "SubscribedFeeds.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Landroid/provider/SubscribedFeeds$FeedColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SubscribedFeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feeds"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/subscribedfeed"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/subscribedfeeds"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_SYNC_ACCOUNT ASC"

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-string v0, "content://subscribedfeeds/feeds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    const-string v0, "content://subscribedfeeds/deleted_feeds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 64
    sget-object v1, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_SYNC_ACCOUNT ASC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "orderBy"

    .prologue
    .line 69
    sget-object v1, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    if-nez p4, :cond_10

    const-string v0, "_SYNC_ACCOUNT ASC"

    move-object v5, v0

    :goto_7
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v5, p4

    goto :goto_7
.end method
