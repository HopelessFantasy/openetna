.class public Landroid/provider/Sync$History;
.super Ljava/lang/Object;
.source "Sync.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Sync$StatsColumns;
.implements Landroid/provider/Sync$HistoryColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "History"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ERROR_AUTHENTICATION:I = 0x2

.field public static final ERROR_CONFLICT:I = 0x5

.field public static final ERROR_INTERNAL:I = 0x8

.field public static final ERROR_IO:I = 0x3

.field public static final ERROR_PARSE:I = 0x4

.field public static final ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final EVENTS:[Ljava/lang/String; = null

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field private static final FINISHED_SINCE_WHERE_CLAUSE:Ljava/lang/String; = "event=1 AND eventTime>? AND account=? AND authority=?"

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field public static final SOURCES:[Ljava/lang/String; = null

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    const-string v0, "content://sync/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Sync$History;->CONTENT_URI:Landroid/net/Uri;

    .line 245
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Sync$History;->EVENTS:[Ljava/lang/String;

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Sync$History;->SOURCES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/Sync$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/provider/Sync$History;-><init>()V

    return-void
.end method

.method public static hasNewerSyncFinished(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 14
    .parameter "contentResolver"
    .parameter "account"
    .parameter "authority"
    .parameter "when"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 315
    sget-object v1, Landroid/provider/Sync$History;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v3, "event=1 AND eventTime>? AND account=? AND authority=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    const/4 v0, 0x2

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 319
    .local v6, c:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2d

    move-result v0

    if-lez v0, :cond_2b

    move v0, v8

    .line 321
    :goto_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 319
    return v0

    :cond_2b
    move v0, v7

    goto :goto_27

    .line 321
    :catchall_2d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static mesgToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "mesg"

    .prologue
    .line 286
    const-string v0, "success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    .line 297
    :goto_9
    return-object v0

    .line 287
    :cond_a
    const-string v0, "canceled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p0

    goto :goto_9

    .line 288
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 297
    const-string v0, "unknown error"

    goto :goto_9

    .line 289
    :pswitch_1e
    const-string v0, "already in progress"

    goto :goto_9

    .line 290
    :pswitch_21
    const-string v0, "bad authentication"

    goto :goto_9

    .line 291
    :pswitch_24
    const-string v0, "network error"

    goto :goto_9

    .line 292
    :pswitch_27
    const-string v0, "parse error"

    goto :goto_9

    .line 293
    :pswitch_2a
    const-string v0, "conflict detected"

    goto :goto_9

    .line 294
    :pswitch_2d
    const-string v0, "too many deletions"

    goto :goto_9

    .line 295
    :pswitch_30
    const-string v0, "too many retries"

    goto :goto_9

    .line 296
    :pswitch_33
    const-string v0, "internal error"

    goto :goto_9

    .line 288
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method

.method public static query(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x0

    .line 310
    sget-object v1, Landroid/provider/Sync$History;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "eventTime desc"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
