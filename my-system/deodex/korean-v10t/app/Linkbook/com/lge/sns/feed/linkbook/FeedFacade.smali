.class public Lcom/lge/sns/feed/linkbook/FeedFacade;
.super Lcom/lge/sns/common/BaseFacade;
.source "FeedFacade.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    }
.end annotation


# static fields
.field static final BASIC_SELECTION:Ljava/lang/String; = "sns_id = ?"

.field private static final COUNT_URI:Landroid/net/Uri; = null

.field static final FIND_FEED_SELECTION:Ljava/lang/String; = "sns_id=? and user_id=? and feed_type=?"

.field private static ID_PROJECTION:[Ljava/lang/String; = null

.field private static final PAGE_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "FeedFacade"

.field static final TERM_MAP:Ljava/util/HashMap; = null
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

.field static final WHERE_FEED_AFTER:Ljava/lang/String; = "sns_id = ? AND published > ? "

.field private static WHERE_FIND_FEED:Ljava/lang/String; = null

.field static final WHERE_OLDEST_FEED:Ljava/lang/String; = "sns_id = ? AND published <= ? "


# instance fields
.field feedListUpdating:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    sget-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "count"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->COUNT_URI:Landroid/net/Uri;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->TERM_MAP:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->TERM_MAP:Ljava/util/HashMap;

    const-string v1, "profileStatus"

    const-string v2, "PS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->TERM_MAP:Ljava/util/HashMap;

    const-string v1, "profileComment"

    const-string v2, "PC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->TERM_MAP:Ljava/util/HashMap;

    const-string v1, "friendRequest"

    const-string v2, "FR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->TERM_MAP:Ljava/util/HashMap;

    const-string v1, "photo"

    const-string v2, "PP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->ID_PROJECTION:[Ljava/lang/String;

    .line 772
    const-string v0, "sns_id = ? and user_id = ? and feed_type = ? "

    sput-object v0, Lcom/lge/sns/feed/linkbook/FeedFacade;->WHERE_FIND_FEED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/lge/sns/common/BaseFacade;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/feed/linkbook/FeedFacade;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->processFeedEntry(Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/Feed;Z)Landroid/net/Uri;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeedContent(Lcom/lge/sns/feed/Feed;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;
    .registers 16
    .parameter "c"

    .prologue
    .line 794
    new-instance v0, Lcom/lge/sns/feed/Feed;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    new-instance v9, Ljava/util/Date;

    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xb

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/lge/sns/feed/Feed;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createFeedFromEntry(Ljava/lang/String;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/feed/Feed;
    .registers 15
    .parameter "snsId"
    .parameter "feedType"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 682
    if-nez p3, :cond_5

    move-object v8, v10

    .line 736
    :goto_4
    return-object v8

    .line 686
    :cond_5
    new-instance v3, Lcom/lge/sns/feed/Feed;

    invoke-direct {v3}, Lcom/lge/sns/feed/Feed;-><init>()V

    .line 687
    .local v3, feed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v3, p1}, Lcom/lge/sns/feed/Feed;->setSnsId(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v3, p2}, Lcom/lge/sns/feed/Feed;->setFeedType(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p3}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v7

    .line 690
    .local v7, summary:Lcom/lge/feed/atom/Content;
    if-eqz v7, :cond_1d

    .line 691
    invoke-virtual {v7}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setSummary(Ljava/lang/String;)V

    .line 693
    :cond_1d
    invoke-virtual {p3}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setDataLink(Ljava/lang/String;)V

    .line 695
    const-string v8, "self-small"

    invoke-static {p3, v8}, Lcom/lge/newbay/client/impl/XppUtil;->findLink(Lcom/lge/feed/atom/Entry;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v4

    .line 696
    .local v4, link:Lcom/lge/feed/atom/Link;
    if-eqz v4, :cond_33

    .line 697
    invoke-virtual {v4}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setSubDataLink(Ljava/lang/String;)V

    .line 700
    :cond_33
    invoke-virtual {p3}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_7a

    .line 701
    invoke-virtual {p3}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setPublished(Ljava/util/Date;)V

    .line 706
    :goto_40
    invoke-virtual {p3}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 707
    .local v1, authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    if-eqz v1, :cond_cc

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_cc

    .line 708
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Person;

    .line 709
    .local v0, author:Lcom/lge/feed/atom/Person;
    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/newbay/client/Uris;->getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;

    move-result-object v6

    .line 710
    .local v6, profileParam:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    if-eqz v6, :cond_af

    .line 711
    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_83

    .line 712
    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setUserId(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setUserName(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setDisplayName(Ljava/lang/String;)V

    :goto_78
    move-object v8, v3

    .line 730
    goto :goto_4

    .line 703
    .end local v0           #author:Lcom/lge/feed/atom/Person;
    .end local v1           #authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    .end local v6           #profileParam:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    :cond_7a
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setPublished(Ljava/util/Date;)V

    goto :goto_40

    .line 717
    .restart local v0       #author:Lcom/lge/feed/atom/Person;
    .restart local v1       #authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    .restart local v6       #profileParam:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    :cond_83
    :try_start_83
    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getSnsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    .line 719
    .local v5, profile:Lcom/lge/sns/profile/Profile;
    if-eqz v5, :cond_ac

    .line 720
    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setUserId(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setUserName(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lge/sns/feed/Feed;->setDisplayName(Ljava/lang/String;)V
    :try_end_a6
    .catch Lcom/lge/sns/SnsException; {:try_start_83 .. :try_end_a6} :catch_a7

    goto :goto_78

    .line 726
    .end local v5           #profile:Lcom/lge/sns/profile/Profile;
    :catch_a7
    move-exception v8

    move-object v2, v8

    .local v2, e:Lcom/lge/sns/SnsException;
    move-object v8, v10

    .line 727
    goto/16 :goto_4

    .end local v2           #e:Lcom/lge/sns/SnsException;
    .restart local v5       #profile:Lcom/lge/sns/profile/Profile;
    :cond_ac
    move-object v8, v10

    .line 724
    goto/16 :goto_4

    .line 732
    .end local v5           #profile:Lcom/lge/sns/profile/Profile;
    :cond_af
    new-instance v8, Lcom/lge/sns/InvalidResponseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to parse author uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0           #author:Lcom/lge/feed/atom/Person;
    .end local v6           #profileParam:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    :cond_cc
    move-object v8, v10

    .line 736
    goto/16 :goto_4
.end method

.method private findFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "feedType"

    .prologue
    const/4 v5, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/linkbook/FeedFacade;->ID_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/lge/sns/feed/linkbook/FeedFacade;->WHERE_FIND_FEED:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 781
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2f

    .line 783
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 784
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_32

    move-result-wide v0

    .line 787
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 790
    :goto_2b
    return-wide v0

    .line 787
    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_2f
    const-wide/16 v0, 0x0

    goto :goto_2b

    .line 787
    :catchall_32
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEmptyFeeds(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "snsId"
    .parameter "feedTypes"
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

    .prologue
    .line 1024
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSelectionString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1026
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1027
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 1029
    :goto_38
    :try_start_38
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1030
    invoke-direct {p0, v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;

    move-result-object v7

    .line 1031
    .local v7, feed:Lcom/lge/sns/feed/Feed;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_46

    goto :goto_38

    .line 1034
    .end local v7           #feed:Lcom/lge/sns/feed/Feed;
    :catchall_46
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1037
    :cond_4e
    return-object v8
.end method

.method private getFeedMaxCountSetting()I
    .registers 4

    .prologue
    .line 839
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v0

    .line 840
    .local v0, settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    invoke-interface {v0}, Lcom/lge/sns/setting/ISettingFacade;->getFeedNum()I

    move-result v1

    return v1
.end method

.method private getFeedMaxPeriodSetting()I
    .registers 4

    .prologue
    .line 844
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v0

    .line 845
    .local v0, settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    invoke-interface {v0}, Lcom/lge/sns/setting/ISettingFacade;->getFeedPer()I

    move-result v1

    return v1
.end method

.method private getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .registers 10
    .parameter "snsId"

    .prologue
    const/4 v7, 0x2

    .line 944
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 945
    .local v0, account:Lcom/lge/sns/account/IAccountFacade;
    invoke-interface {v0, p1}, Lcom/lge/sns/account/IAccountFacade;->getFeedUpdatedDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 947
    .local v2, lastUpdateDate:Ljava/util/Date;
    const/4 v4, 0x0

    .line 948
    .local v4, maxUpdateDate:Ljava/util/Date;
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxPeriodSetting()I

    move-result v3

    .line 949
    .local v3, maxPeriod:I
    if-eqz v3, :cond_24

    .line 950
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 951
    .local v1, cal:Ljava/util/Calendar;
    neg-int v5, v3

    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 952
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 955
    .end local v1           #cal:Ljava/util/Calendar;
    :cond_24
    if-nez v2, :cond_37

    .line 956
    if-eqz v4, :cond_2a

    .line 957
    move-object v2, v4

    .line 972
    :cond_29
    :goto_29
    return-object v2

    .line 959
    :cond_2a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 960
    .restart local v1       #cal:Ljava/util/Calendar;
    const/4 v5, -0x3

    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 961
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 962
    goto :goto_29

    .line 964
    .end local v1           #cal:Ljava/util/Calendar;
    :cond_37
    if-eqz v4, :cond_29

    .line 966
    invoke-virtual {v2, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gez v5, :cond_29

    .line 967
    move-object v2, v4

    goto :goto_29
.end method

.method private getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    .line 741
    .local v0, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v0, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    return-object v1
.end method

.method private getSelectionString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "snsId"
    .parameter "feedTypes"

    .prologue
    const-string v5, "feed_type"

    const-string v4, " = ? "

    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "sns_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    if-eqz p2, :cond_50

    array-length v2, p2

    if-lez v2, :cond_50

    .line 155
    const-string v2, " and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v2, "feed_type"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = ? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const/4 v0, 0x1

    .local v0, i:I
    :goto_34
    array-length v2, p2

    if-ge v0, v2, :cond_4b

    .line 158
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "feed_type"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = ? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 160
    :cond_4b
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    .end local v0           #i:I
    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTerm(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Category;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Category;>;"
    if-eqz p1, :cond_1d

    .line 746
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 747
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_1d

    .line 748
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Category;

    .line 749
    .local v0, c:Lcom/lge/feed/atom/Category;
    invoke-virtual {v0}, Lcom/lge/feed/atom/Category;->getTerm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 750
    invoke-virtual {v0}, Lcom/lge/feed/atom/Category;->getTerm()Ljava/lang/String;

    move-result-object v3

    .line 754
    .end local v0           #c:Lcom/lge/feed/atom/Category;
    .end local v1           #i:I
    .end local v2           #l:I
    :goto_19
    return-object v3

    .line 747
    .restart local v0       #c:Lcom/lge/feed/atom/Category;
    .restart local v1       #i:I
    .restart local v2       #l:I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 754
    .end local v0           #c:Lcom/lge/feed/atom/Category;
    .end local v1           #i:I
    .end local v2           #l:I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private insertFeed(Lcom/lge/sns/feed/Feed;)Landroid/net/Uri;
    .registers 6
    .parameter "feed"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, uri:Landroid/net/Uri;
    if-eqz p1, :cond_1f

    .line 200
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->setContentValues(Lcom/lge/sns/feed/Feed;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1d

    .line 202
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/lge/sns/feed/Feed;->setId(J)V

    .line 203
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->notifyFeedAdded(Lcom/lge/sns/feed/Feed;)V

    :cond_1d
    move-object v1, v0

    .line 207
    :goto_1e
    return-object v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private insertFeed(Ljava/lang/String;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)V
    .registers 5
    .parameter "snsId"
    .parameter "feedType"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/feed/linkbook/FeedFacade;->createFeedFromEntry(Ljava/lang/String;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/feed/Feed;

    move-result-object v0

    .line 212
    .local v0, feed:Lcom/lge/sns/feed/Feed;
    invoke-direct {p0, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->insertFeed(Lcom/lge/sns/feed/Feed;)Landroid/net/Uri;

    .line 213
    return-void
.end method

.method private notifyFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 6
    .parameter "feed"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 111
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 112
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 114
    .local v1, listener:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;->onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 115
    :catch_21
    move-exception v3

    goto :goto_11

    .line 120
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 121
    return-void

    .line 120
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 6
    .parameter "feed"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 139
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 140
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 142
    .local v1, listener:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;->onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 143
    :catch_21
    move-exception v3

    goto :goto_11

    .line 148
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 149
    return-void

    .line 148
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 6
    .parameter "feed"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 125
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 126
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 128
    .local v1, listener:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;->onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 129
    :catch_21
    move-exception v3

    goto :goto_11

    .line 134
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 135
    return-void

    .line 134
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private processFeedEntry(Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Z
    .registers 9
    .parameter "snsId"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    .line 583
    invoke-virtual {p2}, Lcom/lge/feed/atom/Entry;->getCategories()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getTerm(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, term:Ljava/lang/String;
    :try_start_9
    const-string v3, "friendRequest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->saveFriendRequest(Ljava/lang/String;Lcom/lge/feed/atom/Entry;)V

    move v3, v4

    .line 603
    :goto_15
    return v3

    .line 594
    :cond_16
    sget-object v3, Lcom/lge/sns/feed/linkbook/FeedFacade;->TERM_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    .local v1, feedType:Ljava/lang/String;
    if-eqz v1, :cond_4d

    .line 596
    invoke-direct {p0, p1, v1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->insertFeed(Ljava/lang/String;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_25

    move v3, v4

    .line 597
    goto :goto_15

    .line 600
    .end local v1           #feedType:Ljava/lang/String;
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 601
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FeedFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4d
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private removeFeedAfterDate(Ljava/lang/String;Ljava/util/Date;)V
    .registers 12
    .parameter "snsId"
    .parameter "lastDate"

    .prologue
    const/4 v5, 0x0

    .line 910
    if-nez p2, :cond_7

    .line 911
    invoke-virtual {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->deleteAllFeed(Ljava/lang/String;)I

    .line 929
    :cond_6
    :goto_6
    return-void

    .line 913
    :cond_7
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/linkbook/FeedFacade;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND published > ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 919
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 921
    :goto_28
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 922
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_37

    goto :goto_28

    .line 925
    :catchall_37
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private removeTheOldestFeed(Ljava/lang/String;)V
    .registers 8
    .parameter "snsId"

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxPeriodSetting()I

    move-result v3

    .line 850
    .local v3, maxPeriod:I
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxCountSetting()I

    move-result v2

    .line 852
    .local v2, maxCount:I
    if-eqz v3, :cond_1b

    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 854
    .local v0, cal:Ljava/util/Calendar;
    const/4 v4, 0x2

    mul-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 855
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 857
    .local v1, lastDate:Ljava/util/Date;
    invoke-direct {p0, p1, v1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeTheOldestFeedByDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 860
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #lastDate:Ljava/util/Date;
    :cond_1b
    if-eqz v2, :cond_20

    .line 861
    invoke-direct {p0, p1, v2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeTheOldestFeedByCount(Ljava/lang/String;I)V

    .line 863
    :cond_20
    return-void
.end method

.method private removeTheOldestFeedByCount(Ljava/lang/String;I)V
    .registers 12
    .parameter "snsId"
    .parameter "maxCount"

    .prologue
    const/4 v5, 0x0

    .line 886
    sget-object v0, Lcom/lge/sns/feed/Feed;->feedTypeList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 888
    .local v6, currentCount:I
    if-le v6, p2, :cond_4e

    .line 889
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/linkbook/FeedFacade;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sns_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "published LIMIT "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v8, v6, p2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 896
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4e

    .line 898
    :goto_37
    :try_start_37
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 899
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_46

    goto :goto_37

    .line 902
    :catchall_46
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 906
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_4e
    return-void
.end method

.method private removeTheOldestFeedByDate(Ljava/lang/String;Ljava/util/Date;)V
    .registers 12
    .parameter "snsId"
    .parameter "lastDate"

    .prologue
    const/4 v5, 0x0

    .line 867
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/linkbook/FeedFacade;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND published <= ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 873
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_39

    .line 875
    :goto_22
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 876
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_31

    goto :goto_22

    .line 879
    :catchall_31
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 882
    :cond_39
    return-void
.end method

.method private saveFriendRequest(Ljava/lang/String;Lcom/lge/feed/atom/Entry;)V
    .registers 9
    .parameter "snsId"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    const-string v5, "FR"

    .line 758
    const-string v3, "FR"

    invoke-direct {p0, p1, v5, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->createFeedFromEntry(Ljava/lang/String;Ljava/lang/String;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/feed/Feed;

    move-result-object v0

    .line 760
    .local v0, feed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FR"

    invoke-direct {p0, p1, v3, v5}, Lcom/lge/sns/feed/linkbook/FeedFacade;->findFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 762
    .local v1, recordId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_23

    .line 763
    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/feed/Feed;->setId(J)V

    .line 764
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lge/sns/feed/Feed;->setOpened(Ljava/util/Date;)V

    .line 765
    invoke-direct {p0, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeed(Lcom/lge/sns/feed/Feed;)I

    .line 769
    :goto_22
    return-void

    .line 767
    :cond_23
    invoke-direct {p0, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->insertFeed(Lcom/lge/sns/feed/Feed;)Landroid/net/Uri;

    goto :goto_22
.end method

.method private setContentValues(Lcom/lge/sns/feed/Feed;)Landroid/content/ContentValues;
    .registers 9
    .parameter "feed"

    .prologue
    const-wide/16 v3, 0x0

    const-string v6, "published"

    const-string v5, "opened"

    .line 810
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "feed_type"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v1, "user_name"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v1, "display_name"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a3

    .line 819
    const-string v1, "published"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    :goto_5b
    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_a9

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a9

    .line 825
    const-string v1, "opened"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    :goto_7e
    const-string v1, "data_link"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getDataLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v1, "subdata_link"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSubDataLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v1, "summary"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v1, "data_uri"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    return-object v0

    .line 821
    :cond_a3
    const-string v1, "published"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_5b

    .line 827
    :cond_a9
    const-string v1, "opened"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_7e
.end method

.method private setLastModified(Ljava/lang/String;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
    .registers 5
    .parameter "snsId"
    .parameter "delta"

    .prologue
    .line 932
    invoke-virtual {p2}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getLastModified()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getLastModified()Ljava/util/Date;

    move-result-object v1

    move-object v0, v1

    .line 933
    .local v0, d:Ljava/util/Date;
    :goto_b
    invoke-direct {p0, p1, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->setLastModified(Ljava/lang/String;Ljava/util/Date;)V

    .line 934
    return-void

    .line 932
    .end local v0           #d:Ljava/util/Date;
    :cond_f
    invoke-virtual {p2}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getTimeModeTo()Ljava/util/Date;

    move-result-object v1

    move-object v0, v1

    goto :goto_b
.end method

.method private setLastModified(Ljava/lang/String;Ljava/util/Date;)V
    .registers 6
    .parameter "snsId"
    .parameter "d"

    .prologue
    .line 937
    if-eqz p2, :cond_11

    .line 938
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 939
    .local v0, account:Lcom/lge/sns/account/IAccountFacade;
    invoke-interface {v0, p1, p2}, Lcom/lge/sns/account/IAccountFacade;->setFeedUpdatedDate(Ljava/lang/String;Ljava/util/Date;)Z

    .line 941
    .end local v0           #account:Lcom/lge/sns/account/IAccountFacade;
    :cond_11
    return-void
.end method

.method private updateFeed(Lcom/lge/sns/feed/Feed;)I
    .registers 8
    .parameter "feed"

    .prologue
    const/4 v5, 0x0

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, count:I
    if-eqz p1, :cond_1f

    .line 219
    sget-object v2, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->setContentValues(Lcom/lge/sns/feed/Feed;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 221
    if-eqz v0, :cond_1f

    .line 222
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->notifyFeedUpdated(Lcom/lge/sns/feed/Feed;)V

    .line 225
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1f
    return v0
.end method

.method private updateFeedContent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 16
    .parameter "id"
    .parameter "feedType"
    .parameter "dataLink"
    .parameter "subLink"
    .parameter "isDateUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1042
    const/4 v5, 0x0

    .line 1043
    .local v5, uri:Landroid/net/Uri;
    const-string v6, "PS"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1044
    sget-object v6, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_f
    move-object v6, v5

    .line 1060
    :goto_10
    return-object v6

    .line 1045
    :cond_11
    const-string v6, "PC"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1046
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 1047
    .local v2, mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v2, p4}, Lcom/lge/sns/profile/IProfileFacade;->getProfileComment(Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v4

    .line 1048
    .local v4, profileComment:Lcom/lge/sns/profile/ProfileComment;
    sget-object v6, Lcom/lge/sns/profile/IProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/lge/sns/profile/ProfileComment;->getId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1049
    goto :goto_f

    .end local v2           #mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    .end local v4           #profileComment:Lcom/lge/sns/profile/ProfileComment;
    :cond_34
    const-string v6, "FR"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1050
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 1051
    .restart local v2       #mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v2, p4}, Lcom/lge/sns/profile/IProfileFacade;->getFriendRequest(Ljava/lang/String;)Lcom/lge/sns/profile/FriendRequest;

    move-result-object v0

    .line 1052
    .local v0, friendRequest:Lcom/lge/sns/profile/FriendRequest;
    sget-object v6, Lcom/lge/sns/profile/IProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/lge/sns/profile/FriendRequest;->getId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1053
    goto :goto_f

    .end local v0           #friendRequest:Lcom/lge/sns/profile/FriendRequest;
    .end local v2           #mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :cond_57
    const-string v6, "PP"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1054
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    .line 1055
    .local v1, mMediaFacade:Lcom/lge/sns/media/IMediaFacade;
    invoke-interface {v1, p4, p5}, Lcom/lge/sns/media/IMediaFacade;->getMediaFile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFile;

    move-result-object v3

    .line 1056
    .local v3, mediaFile:Lcom/lge/sns/media/MediaFile;
    sget-object v6, Lcom/lge/sns/media/IMediaFacade;->MEDIA_FILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1057
    goto :goto_f

    .line 1058
    .end local v1           #mMediaFacade:Lcom/lge/sns/media/IMediaFacade;
    .end local v3           #mediaFile:Lcom/lge/sns/media/MediaFile;
    :cond_7a
    const/4 v6, 0x0

    goto :goto_10
.end method

.method private updateFeedContent(Lcom/lge/sns/feed/Feed;Z)Landroid/net/Uri;
    .registers 11
    .parameter "feed"
    .parameter "isDateUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1064
    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getDataLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSubDataLink()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeedContent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v7

    .line 1065
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_45

    .line 1066
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lge/sns/feed/Feed;->setDataUri(Ljava/lang/String;)V

    .line 1067
    const/4 v0, 0x1

    if-ne p2, v0, :cond_42

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_42

    .line 1069
    :cond_36
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/lge/sns/feed/Feed;->setOpened(Ljava/util/Date;)V

    .line 1071
    :cond_42
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeed(Lcom/lge/sns/feed/Feed;)I

    .line 1073
    :cond_45
    return-object v7
.end method


# virtual methods
.method public addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 97
    if-eqz p1, :cond_13

    :try_start_5
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 98
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_13
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public deleteAllFeed(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllFeedByUser(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? AND user_id = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFeed(J)Lcom/lge/sns/feed/Feed;
    .registers 6
    .parameter "feedId"

    .prologue
    .line 166
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_8

    .line 167
    const/4 v1, 0x0

    .line 172
    :goto_7
    return-object v1

    .line 170
    :cond_8
    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 172
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    goto :goto_7
.end method

.method public getFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 176
    if-nez p1, :cond_5

    move-object v0, v3

    .line 194
    :goto_4
    return-object v0

    .line 180
    :cond_5
    const/4 v7, 0x0

    .line 182
    .local v7, feed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 184
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_22

    .line 186
    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 187
    invoke-direct {p0, v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_24

    move-result-object v7

    .line 190
    :cond_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_22
    move-object v0, v7

    .line 194
    goto :goto_4

    .line 190
    :catchall_24
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getFeedCount(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "snsId"
    .parameter "feedTypes"

    .prologue
    const/4 v2, 0x0

    .line 660
    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->COUNT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSelectionString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->queryInteger(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z
    .registers 8
    .parameter "feed"
    .parameter "cb"

    .prologue
    const/4 v4, 0x1

    .line 1119
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    monitor-enter v1

    .line 1120
    :try_start_4
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_14

    .line 1121
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    .line 1147
    :goto_13
    return v1

    .line 1123
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1f

    .line 1125
    new-instance v0, Lcom/lge/sns/feed/linkbook/FeedFacade$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade$3;-><init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;Lcom/lge/sns/feed/Feed;)V

    .line 1145
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v1, v4

    .line 1147
    goto :goto_13

    .line 1123
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public getFeedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .parameter "snsId"
    .parameter "feedTypes"
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

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxPeriodSetting()I

    move-result v11

    .line 280
    .local v11, maxPeriod:I
    if-eqz v11, :cond_17

    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 282
    .local v6, cal:Ljava/util/Calendar;
    const/4 v0, 0x2

    mul-int/lit8 v1, v11, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 283
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 285
    .local v9, lastDate:Ljava/util/Date;
    invoke-direct {p0, p1, v9}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeTheOldestFeedByDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 288
    .end local v6           #cal:Ljava/util/Calendar;
    .end local v9           #lastDate:Ljava/util/Date;
    :cond_17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSelectionString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 293
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_46

    .line 295
    :goto_30
    :try_start_30
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 296
    invoke-direct {p0, v7}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;

    move-result-object v8

    .line 297
    .local v8, feed:Lcom/lge/sns/feed/Feed;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3e

    goto :goto_30

    .line 300
    .end local v8           #feed:Lcom/lge/sns/feed/Feed;
    :catchall_3e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_43
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_46
    return-object v10
.end method

.method public getFeedList(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "feedTypes"
    .parameter "listener"
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

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/feed/linkbook/FeedFacade;->addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 274
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getFeedListByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .parameter "snsId"
    .parameter "keyword"
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

    .prologue
    const/4 v2, 0x2

    const-string v5, "%"

    .line 351
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxPeriodSetting()I

    move-result v11

    .line 353
    .local v11, maxPeriod:I
    if-eqz v11, :cond_19

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 355
    .local v6, cal:Ljava/util/Calendar;
    mul-int/lit8 v0, v11, -0x1

    invoke-virtual {v6, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 356
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 358
    .local v9, lastDate:Ljava/util/Date;
    invoke-direct {p0, p1, v9}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeTheOldestFeedByDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 361
    .end local v6           #cal:Ljava/util/Calendar;
    .end local v9           #lastDate:Ljava/util/Date;
    :cond_19
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    const-string v3, "sns_id = ? AND summary LIKE ?"

    .line 363
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 364
    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 366
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 368
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_66

    .line 370
    :goto_50
    :try_start_50
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 371
    invoke-direct {p0, v7}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;

    move-result-object v8

    .line 372
    .local v8, feed:Lcom/lge/sns/feed/Feed;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_5e

    goto :goto_50

    .line 375
    .end local v8           #feed:Lcom/lge/sns/feed/Feed;
    :catchall_5e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_66
    return-object v10
.end method

.method public getFeedListByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "keyword"
    .parameter "listener"
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

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/feed/linkbook/FeedFacade;->addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedListByKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 347
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getFeedListByUser(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .parameter "snsId"
    .parameter "userId"
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

    .prologue
    const/4 v1, 0x2

    .line 314
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxPeriodSetting()I

    move-result v11

    .line 316
    .local v11, maxPeriod:I
    if-eqz v11, :cond_17

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 318
    .local v6, cal:Ljava/util/Calendar;
    mul-int/lit8 v0, v11, -0x1

    invoke-virtual {v6, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 319
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 321
    .local v9, lastDate:Ljava/util/Date;
    invoke-direct {p0, p1, v9}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeTheOldestFeedByDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 324
    .end local v6           #cal:Ljava/util/Calendar;
    .end local v9           #lastDate:Ljava/util/Date;
    :cond_17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    const-string v3, "sns_id = ? AND user_id = ?"

    .line 326
    .local v3, selection:Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 328
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 330
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4b

    .line 332
    :goto_35
    :try_start_35
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 333
    invoke-direct {p0, v7}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;

    move-result-object v8

    .line 334
    .local v8, feed:Lcom/lge/sns/feed/Feed;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    goto :goto_35

    .line 337
    .end local v8           #feed:Lcom/lge/sns/feed/Feed;
    :catchall_43
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_4b
    return-object v10
.end method

.method public getFeedListByUser(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"
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

    .prologue
    .line 307
    monitor-enter p0

    .line 308
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/feed/linkbook/FeedFacade;->addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedListByUser(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 310
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getLatestFeed(Ljava/lang/String;[Ljava/lang/String;)Lcom/lge/sns/feed/Feed;
    .registers 11
    .parameter "snsId"
    .parameter "feedTypes"

    .prologue
    .line 607
    const/4 v7, 0x0

    .line 608
    .local v7, feed:Lcom/lge/sns/feed/Feed;
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSelectionString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    const-string v5, "published DESC LIMIT 1"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 616
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_23

    .line 618
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 619
    invoke-direct {p0, v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    move-result-object v7

    .line 622
    :cond_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_23
    return-object v7

    .line 622
    :catchall_24
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "snsId"
    .parameter "feedTypes"
    .parameter "count"
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

    .prologue
    .line 637
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSelectionString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "published DESC LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 646
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_45

    .line 648
    :goto_2f
    :try_start_2f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 649
    invoke-direct {p0, v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->convertCursorToFeed(Landroid/database/Cursor;)Lcom/lge/sns/feed/Feed;

    move-result-object v7

    .line 650
    .local v7, feed:Lcom/lge/sns/feed/Feed;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3d

    goto :goto_2f

    .line 653
    .end local v7           #feed:Lcom/lge/sns/feed/Feed;
    :catchall_3d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_45
    return-object v8
.end method

.method public getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;ILcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "feedTypes"
    .parameter "count"
    .parameter "listener"
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

    .prologue
    .line 630
    monitor-enter p0

    .line 631
    :try_start_1
    invoke-virtual {p0, p4}, Lcom/lge/sns/feed/linkbook/FeedFacade;->addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 632
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getLatestFeedList(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 633
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getNewFeedCount(Ljava/lang/String;)I
    .registers 9
    .parameter "snsId"

    .prologue
    const/4 v6, 0x0

    .line 664
    const-string v3, "sns_id = ? AND opened IS NULL"

    .line 665
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 666
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->COUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/feed/provider/FeedContent$FeedColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->queryInteger(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public refreshFeedList(Ljava/lang/String;Ljava/lang/String;)I
    .registers 17
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v11, 0x0

    .line 445
    .local v11, feedCount:I
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    monitor-enter v1

    .line 446
    :try_start_4
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 447
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_61

    .line 457
    :try_start_12
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getLastModified(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 463
    .local v5, ifModifiedSince:Ljava/util/Date;
    const/4 v7, 0x0

    .line 464
    .local v7, delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    invoke-direct {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeedMaxCountSetting()I

    move-result v12

    .line 466
    .local v12, maxCount:I
    invoke-direct {p0, p1, v5}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeFeedAfterDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 467
    new-instance v6, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;

    invoke-direct {v6, p0, p1, v12}, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;-><init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Ljava/lang/String;I)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_94

    .line 470
    .local v6, callback:Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    :try_start_23
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getMiniFeed()Lcom/lge/newbay/client/IMiniFeed;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_94
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_23 .. :try_end_26} :catch_8c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_23 .. :try_end_26} :catch_9f
    .catch Lcom/lge/sns/SnsException; {:try_start_23 .. :try_end_26} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_d1

    move-result-object v0

    .line 474
    .local v0, miniFeed:Lcom/lge/newbay/client/IMiniFeed;
    const/4 v3, 0x1

    const/16 v4, 0x14

    move-object v1, p1

    move-object/from16 v2, p2

    :try_start_2d
    invoke-interface/range {v0 .. v6}, Lcom/lge/newbay/client/IMiniFeed;->getMiniFeed(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_94
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_2d .. :try_end_30} :catch_64
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_2d .. :try_end_30} :catch_8c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2d .. :try_end_30} :catch_9f
    .catch Lcom/lge/sns/SnsException; {:try_start_2d .. :try_end_30} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_d1

    move-result-object v9

    .line 481
    .local v9, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    :goto_31
    if-eqz v9, :cond_75

    .line 482
    :try_start_33
    invoke-virtual {v9}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v10

    .line 483
    .local v10, feed:Lcom/lge/feed/atom/AtomFeed;
    invoke-virtual {v9}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v7

    .line 484
    invoke-virtual {v6}, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->getFeedCount()I

    move-result v1

    if-ge v1, v12, :cond_75

    .line 485
    invoke-virtual {v10}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v1

    const-string v2, "next"

    invoke-static {v1, v2}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v13

    .line 486
    .local v13, next:Lcom/lge/feed/atom/Link;
    if-eqz v13, :cond_73

    .line 488
    invoke-virtual {v13}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5, v6}, Lcom/lge/newbay/client/IMiniFeed;->getMiniFeedIndividual(Ljava/lang/String;Ljava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_94
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_33 .. :try_end_54} :catch_8c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_33 .. :try_end_54} :catch_9f
    .catch Lcom/lge/sns/SnsException; {:try_start_33 .. :try_end_54} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_54} :catch_d1

    move-result-object v9

    goto :goto_31

    .line 450
    .end local v0           #miniFeed:Lcom/lge/newbay/client/IMiniFeed;
    .end local v5           #ifModifiedSince:Ljava/util/Date;
    .end local v6           #callback:Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    .end local v7           #delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .end local v9           #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    .end local v10           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v12           #maxCount:I
    .end local v13           #next:Lcom/lge/feed/atom/Link;
    :cond_56
    :try_start_56
    const-string v2, "FeedFacade"

    const-string v3, "now updating... return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    .line 524
    :goto_60
    return v1

    .line 454
    :catchall_61
    move-exception v2

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw v2

    .line 475
    .restart local v0       #miniFeed:Lcom/lge/newbay/client/IMiniFeed;
    .restart local v5       #ifModifiedSince:Ljava/util/Date;
    .restart local v6       #callback:Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    .restart local v7       #delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .restart local v12       #maxCount:I
    :catch_64
    move-exception v8

    .line 476
    .local v8, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_65
    invoke-virtual {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    const/4 v3, 0x1

    const/16 v4, 0x14

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/lge/newbay/client/IMiniFeed;->getMiniFeed(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v9

    .restart local v9       #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    goto :goto_31

    .line 490
    .end local v8           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v10       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v13       #next:Lcom/lge/feed/atom/Link;
    :cond_73
    const/4 v9, 0x0

    goto :goto_31

    .line 496
    .end local v10           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v13           #next:Lcom/lge/feed/atom/Link;
    :cond_75
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeTheOldestFeed(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v6}, Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;->getFeedCount()I
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_94
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_65 .. :try_end_7b} :catch_8c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_65 .. :try_end_7b} :catch_9f
    .catch Lcom/lge/sns/SnsException; {:try_start_65 .. :try_end_7b} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_d1

    move-result v11

    .line 515
    .end local v0           #miniFeed:Lcom/lge/newbay/client/IMiniFeed;
    .end local v9           #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    :goto_7c
    if-eqz v7, :cond_81

    .line 516
    :try_start_7e
    invoke-direct {p0, p1, v7}, Lcom/lge/sns/feed/linkbook/FeedFacade;->setLastModified(Ljava/lang/String;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_94

    .line 519
    :cond_81
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    monitor-enter v1

    .line 520
    :try_start_84
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 521
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_d9

    move v1, v11

    .line 524
    goto :goto_60

    .line 498
    :catch_8c
    move-exception v1

    move-object v8, v1

    .line 499
    .local v8, e:Lcom/lge/newbay/client/NewbayConnectException;
    :try_start_8e
    new-instance v1, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v1, v8}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_94

    .line 519
    .end local v5           #ifModifiedSince:Ljava/util/Date;
    .end local v6           #callback:Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    .end local v7           #delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .end local v8           #e:Lcom/lge/newbay/client/NewbayConnectException;
    .end local v12           #maxCount:I
    :catchall_94
    move-exception v1

    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    monitor-enter v2

    .line 520
    :try_start_98
    iget-object v3, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 521
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_dc

    throw v1

    .line 500
    .restart local v5       #ifModifiedSince:Ljava/util/Date;
    .restart local v6       #callback:Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    .restart local v7       #delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .restart local v12       #maxCount:I
    :catch_9f
    move-exception v1

    move-object v8, v1

    .line 501
    .local v8, e:Lorg/apache/http/client/HttpResponseException;
    :try_start_a1
    invoke-virtual {v8}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_c5

    .line 502
    invoke-virtual {v8}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_b7

    .line 503
    new-instance v1, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v1}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v1

    .line 505
    :cond_b7
    new-instance v1, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v8}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 508
    :cond_c5
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->setLastModified(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_7c

    .line 510
    .end local v8           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_ce
    move-exception v1

    move-object v8, v1

    .line 511
    .local v8, e:Lcom/lge/sns/SnsException;
    throw v8

    .line 512
    .end local v8           #e:Lcom/lge/sns/SnsException;
    :catch_d1
    move-exception v1

    move-object v8, v1

    .line 513
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v1, v8}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_d9
    .catchall {:try_start_a1 .. :try_end_d9} :catchall_94

    .line 521
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_d9
    move-exception v2

    :try_start_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v2

    .end local v5           #ifModifiedSince:Ljava/util/Date;
    .end local v6           #callback:Lcom/lge/sns/feed/linkbook/FeedFacade$FeedEntryHandler;
    .end local v7           #delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .end local v12           #maxCount:I
    :catchall_dc
    move-exception v1

    :try_start_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v1
.end method

.method public refreshFeedListAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;)Z
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "cb"

    .prologue
    const/4 v3, 0x1

    .line 382
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    monitor-enter v1

    .line 383
    :try_start_4
    iget-object v2, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->feedListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_17

    .line 385
    const-string v2, "FeedFacade"

    const-string v3, "now updating... return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    .line 413
    :goto_16
    return v1

    .line 389
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_22

    .line 391
    new-instance v0, Lcom/lge/sns/feed/linkbook/FeedFacade$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade$1;-><init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v1, v3

    .line 413
    goto :goto_16

    .line 389
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public removeFeed(J)Lcom/lge/sns/feed/Feed;
    .registers 6
    .parameter "feedId"

    .prologue
    .line 229
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_8

    .line 230
    const/4 v1, 0x0

    .line 235
    :goto_7
    return-object v1

    .line 233
    :cond_8
    sget-object v1, Lcom/lge/sns/feed/linkbook/FeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 235
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->removeFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    goto :goto_7
.end method

.method public removeFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 239
    if-eqz p1, :cond_42

    .line 240
    invoke-virtual {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    .line 241
    .local v1, feed:Lcom/lge/sns/feed/Feed;
    if-eqz v1, :cond_42

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, count:I
    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 244
    if-lez v0, :cond_40

    .line 245
    invoke-direct {p0, v1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->notifyFeedRemoved(Lcom/lge/sns/feed/Feed;)V

    .line 246
    const-string v3, "PC"

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 248
    invoke-static {}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 249
    .local v2, mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->deleteProfileComment(Landroid/net/Uri;)I

    .end local v2           #mProfileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :cond_40
    move-object v3, v1

    .line 255
    .end local v0           #count:I
    .end local v1           #feed:Lcom/lge/sns/feed/Feed;
    :goto_41
    return-object v3

    :cond_42
    move-object v3, v4

    goto :goto_41
.end method

.method public removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/feed/linkbook/FeedFacade;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public updateFeedContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "snsId"
    .parameter "feedType"
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

    .prologue
    .line 1077
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade;->getEmptyFeeds(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1078
    .local v2, feeds:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v5, uriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/Feed;

    .line 1082
    .local v1, f:Lcom/lge/sns/feed/Feed;
    const/4 v6, 0x0

    :try_start_1a
    invoke-direct {p0, v1, v6}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeedContent(Lcom/lge/sns/feed/Feed;Z)Landroid/net/Uri;

    move-result-object v4

    .line 1083
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1a .. :try_end_21} :catch_22
    .catch Lcom/lge/sns/SnsException; {:try_start_1a .. :try_end_21} :catch_25

    goto :goto_d

    .line 1084
    .end local v4           #uri:Landroid/net/Uri;
    :catch_22
    move-exception v6

    move-object v0, v6

    .line 1085
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    throw v0

    .line 1086
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_25
    move-exception v6

    move-object v0, v6

    .line 1087
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v6, "FeedFacade"

    const-string v7, "fail to update content"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1091
    .end local v0           #e:Lcom/lge/sns/SnsException;
    .end local v1           #f:Lcom/lge/sns/feed/Feed;
    :cond_2f
    return-object v5
.end method

.method public updateFeedContents(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;)V
    .registers 5
    .parameter "snsId"
    .parameter "feedType"
    .parameter "cb"

    .prologue
    .line 1095
    new-instance v0, Lcom/lge/sns/feed/linkbook/FeedFacade$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/lge/sns/feed/linkbook/FeedFacade$2;-><init>(Lcom/lge/sns/feed/linkbook/FeedFacade;Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1115
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1116
    return-void
.end method

.method public updateFeedOpenDate(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 675
    if-eqz p1, :cond_11

    .line 676
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/lge/sns/feed/Feed;->setOpened(Ljava/util/Date;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/lge/sns/feed/linkbook/FeedFacade;->updateFeed(Lcom/lge/sns/feed/Feed;)I

    .line 679
    :cond_11
    return-void
.end method
