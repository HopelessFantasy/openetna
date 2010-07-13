.class public Lcom/lge/sns/feed/ui/FeedAction;
.super Ljava/lang/Object;
.source "FeedAction.java"


# static fields
.field public static final ACTION_VIEW_BEBO_HOME:Ljava/lang/String; = "com.lge.sns.feed.intent.action.VIEW_BEBO_HOME"

.field public static final ACTION_VIEW_FACEBOOK_HOME:Ljava/lang/String; = "com.lge.sns.feed.intent.action.VIEW_FACEBOOK_HOME"

.field public static final ACTION_VIEW_FEED:Ljava/lang/String; = "com.lge.sns.feed.intent.action.VIEW_FEED"

.field public static final ACTION_VIEW_MYSPACE_HOME:Ljava/lang/String; = "com.lge.sns.feed.intent.action.VIEW_MYSPACE_HOME"

.field public static final ACTION_WRITE_PROFILE_COMMENT:Ljava/lang/String; = "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

.field public static final KEY_FEED_ID:Ljava/lang/String; = "feed_id"

.field public static final KEY_FEED_TYPES:Ljava/lang/String; = "feed_type"

.field public static final KEY_SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final REQUEST_FRIENDS_LIST:I = 0x3

.field public static final REQUEST_FRIEND_REQUEST:I = 0x2

.field public static final REQUEST_SIGNIN:I = 0x1

.field public static RESULTCODE_SIGNIN:I

.field public static final feedIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final feedMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-string v4, "PP"

    const-string v3, "FR"

    .line 20
    const/16 v0, 0x7d2

    sput v0, Lcom/lge/sns/feed/ui/FeedAction;->RESULTCODE_SIGNIN:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    const-string v1, "PS"

    const v2, 0x7f020057

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    const-string v1, "PC"

    const v2, 0x7f020056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    const-string v1, "PP"

    const v1, 0x7f020055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    const-string v1, "FR"

    const v1, 0x7f020054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    const-string v1, "PP"

    const v1, 0x7f050036

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    const-string v1, "MC"

    const v2, 0x7f050037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    const-string v1, "FR"

    const v1, 0x7f050038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
