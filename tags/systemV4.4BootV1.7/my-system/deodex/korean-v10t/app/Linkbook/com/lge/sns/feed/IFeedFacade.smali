.class public interface abstract Lcom/lge/sns/feed/IFeedFacade;
.super Ljava/lang/Object;
.source "IFeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;,
        Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;,
        Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;,
        Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
    }
.end annotation


# static fields
.field public static final ACTION_VIEW_FEED_LIST:Ljava/lang/String; = "com.lge.sns.feed.intent.action.VIEW_FEED_LIST"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.feed.provider"

.field public static final FEED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SNS_ID_BEBO:Ljava/lang/String; = "BB"

.field public static final SNS_ID_FACEBOOK:Ljava/lang/String; = "FB"

.field public static final SNS_ID_MYSPACE:Ljava/lang/String; = "MS"

.field public static final SNS_ID_TWITTER:Ljava/lang/String; = "TW"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "content://com.lge.sns.feed.provider/feed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/IFeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V
.end method

.method public abstract deleteAllFeed(Ljava/lang/String;)I
.end method

.method public abstract deleteAllFeedByUser(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getFeed(J)Lcom/lge/sns/feed/Feed;
.end method

.method public abstract getFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;
.end method

.method public abstract getFeedCount(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z
.end method

.method public abstract getFeedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedList(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedListByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedListByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedListByUser(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeedListByUser(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestFeed(Ljava/lang/String;[Ljava/lang/String;)Lcom/lge/sns/feed/Feed;
.end method

.method public abstract getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;ILcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewFeedCount(Ljava/lang/String;)I
.end method

.method public abstract refreshFeedList(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation
.end method

.method public abstract refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z
.end method

.method public abstract removeFeed(J)Lcom/lge/sns/feed/Feed;
.end method

.method public abstract removeFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;
.end method

.method public abstract removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V
.end method

.method public abstract updateFeedContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;
        }
    .end annotation
.end method

.method public abstract updateFeedContents(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;)V
.end method

.method public abstract updateFeedOpenDate(Lcom/lge/sns/feed/Feed;)V
.end method
