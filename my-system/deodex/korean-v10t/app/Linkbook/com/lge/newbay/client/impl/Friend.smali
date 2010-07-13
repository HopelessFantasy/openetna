.class public Lcom/lge/newbay/client/impl/Friend;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Friend.java"

# interfaces
.implements Lcom/lge/newbay/client/IFriend;


# static fields
.field static final KEY_DISPLAY_NAME:Ljava/lang/String; = "{displayName}"

.field static final KEY_FRIEND_REQUEST_ID:Ljava/lang/String; = "{friend.request.id}"

.field static final PARAM_MESSAGE:Ljava/lang/String; = "message"

.field static final TAG_FRIENDS_REQUEST_SUMMARY:Ljava/lang/String; = "friendRequestsSummary"

.field static final TAG_FRIEND_REQUEST:Ljava/lang/String; = "snsFriendRequest"

.field static final TAG_FRIEND_REQUEST_MESSAGE:Ljava/lang/String; = "message"

.field static final URL_GET_ALL_FRIENDS:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/friends?pageNum={page.num}&pageSize={page.size}"

.field static final URL_GET_ALL_FRIEND_REQUEST:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/friends/requests?pageNum={page.num}&pageSize={page.size}"

.field static final URL_GET_COMMUNITY_FRIENDS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends?pageNum={page.num}&pageSize={page.size}"

.field static final URL_GET_COMMUNITY_FRIEND_REQUESTS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/requests?pageNum={page.num}&pageSize={page.size}"

.field static final URL_GET_FOLLOWER:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/subscribers?pageNum={page.num}&pageSize={page.size}"

.field static final URL_GET_FOLLOWING:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/publishers?pageNum={page.num}&pageSize={page.size}"

.field static final URL_GET_FRIEND_REQUEST:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/request/{friend.request.id}"

.field static final URL_GET_FRIEND_REQUEST_COUNT:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/friends/requests/summary"

.field static final URL_POST_FRIEND_REQUEST:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/requests"

.field static final URL_PUT_FRIEND_REQUEST:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/request/{friend.request.id}?accept="

.field static final URL_SEARCH_FRIENDS:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/friend/search?pageNum={page.num}&pageSize={page.size}&displayName={displayName}"


# direct methods
.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    .line 51
    return-void
.end method

.method private getFriendRequest(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IFriend$FriendRequest;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, friendRequest:Lcom/lge/newbay/client/IFriend$FriendRequest;
    const/4 v0, 0x0

    .line 219
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 220
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 221
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsFriendRequest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 224
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Friend;->parseFriendRequest(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IFriend$FriendRequest;

    move-result-object v1

    goto :goto_4

    .line 226
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 231
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private getFriendRequestsCount(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 8
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, eventType:I
    if-eqz p1, :cond_3b

    .line 133
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3b

    .line 134
    if-ne v0, v5, :cond_6

    .line 135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "friendRequestsSummary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 137
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 138
    if-ne v0, v5, :cond_1a

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 141
    invoke-static {p1, v3}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v2

    .line 153
    .end local v1           #tagName:Ljava/lang/String;
    :goto_32
    return v2

    .line 143
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_33
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1a

    .line 148
    :cond_37
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .end local v1           #tagName:Ljava/lang/String;
    :cond_3b
    move v2, v3

    .line 153
    goto :goto_32
.end method

.method private getFriendsProfile(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 468
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    if-eqz p1, :cond_2b

    .line 471
    :try_start_7
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getInstance()Lcom/lge/newbay/client/NewbayFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/newbay/client/NewbayFactory;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v4

    .line 472
    .local v4, profile:Lcom/lge/newbay/client/IProfile;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 473
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v2, :cond_2b

    .line 474
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Entry;
    :try_end_1c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_7 .. :try_end_1c} :catch_2a

    .line 476
    .local v0, entry:Lcom/lge/feed/atom/Entry;
    :try_start_1c
    invoke-virtual {v0}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_2c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1c .. :try_end_27} :catch_2a

    .line 473
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 481
    .end local v0           #entry:Lcom/lge/feed/atom/Entry;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_2a
    move-exception v5

    .line 485
    :cond_2b
    return-object v3

    .line 477
    .restart local v0       #entry:Lcom/lge/feed/atom/Entry;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v4       #profile:Lcom/lge/newbay/client/IProfile;
    :catch_2c
    move-exception v5

    goto :goto_27
.end method

.method private getFriendsProfileAsync(Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 6
    .parameter
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;",
            "Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz p1, :cond_10

    .line 561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 562
    .local v0, length:I
    new-instance v1, Lcom/lge/newbay/client/impl/Friend$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/newbay/client/impl/Friend$1;-><init>(Lcom/lge/newbay/client/impl/Friend;Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)V

    .line 586
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v2, v0

    .line 589
    .end local v0           #length:I
    .end local v1           #t:Ljava/lang/Thread;
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private getFullFollowerProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
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
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/lge/newbay/client/impl/Friend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 323
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_c
    if-eqz v0, :cond_2c

    .line 324
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    const-string v3, "next"

    invoke-virtual {p0, v0, v3}, Lcom/lge/newbay/client/impl/Friend;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v2

    .line 326
    .local v2, next:Lcom/lge/feed/atom/Link;
    if-eqz v2, :cond_2a

    .line 327
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFollowers(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_c

    .line 329
    :cond_2a
    const/4 v0, 0x0

    goto :goto_c

    .line 332
    .end local v2           #next:Lcom/lge/feed/atom/Link;
    :cond_2c
    return-object v1
.end method

.method private getFullFollowingProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
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
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/lge/newbay/client/impl/Friend;->getFollowings(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 375
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_c
    if-eqz v0, :cond_2c

    .line 376
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    const-string v3, "next"

    invoke-virtual {p0, v0, v3}, Lcom/lge/newbay/client/impl/Friend;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v2

    .line 378
    .local v2, next:Lcom/lge/feed/atom/Link;
    if-eqz v2, :cond_2a

    .line 379
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFollowings(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_c

    .line 381
    :cond_2a
    const/4 v0, 0x0

    goto :goto_c

    .line 384
    .end local v2           #next:Lcom/lge/feed/atom/Link;
    :cond_2c
    return-object v1
.end method

.method private getFullFriendsProfileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 538
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_c
    if-eqz v0, :cond_28

    .line 539
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 540
    const-string v3, "next"

    invoke-virtual {p0, v0, v3}, Lcom/lge/newbay/client/impl/Friend;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v2

    .line 541
    .local v2, next:Lcom/lge/feed/atom/Link;
    if-eqz v2, :cond_26

    .line 542
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_c

    .line 544
    :cond_26
    const/4 v0, 0x0

    goto :goto_c

    .line 547
    .end local v2           #next:Lcom/lge/feed/atom/Link;
    :cond_28
    invoke-direct {p0, v1, p3}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfileAsync(Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v3

    return v3
.end method

.method private getFullFriendsProfileAsync([Ljava/lang/String;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 8
    .parameter "snsId"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, p1, v3, v4}, Lcom/lge/newbay/client/impl/Friend;->getFriends([Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 501
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_c
    if-eqz v0, :cond_28

    .line 502
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    const-string v3, "next"

    invoke-virtual {p0, v0, v3}, Lcom/lge/newbay/client/impl/Friend;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v2

    .line 504
    .local v2, next:Lcom/lge/feed/atom/Link;
    if-eqz v2, :cond_26

    .line 505
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_c

    .line 507
    :cond_26
    const/4 v0, 0x0

    goto :goto_c

    .line 510
    .end local v2           #next:Lcom/lge/feed/atom/Link;
    :cond_28
    invoke-direct {p0, v1, p2}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfileAsync(Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v3

    return v3
.end method

.method private getFullFriendsProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
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
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 445
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_c
    if-eqz v0, :cond_2c

    .line 446
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    const-string v3, "next"

    invoke-virtual {p0, v0, v3}, Lcom/lge/newbay/client/impl/Friend;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v2

    .line 448
    .local v2, next:Lcom/lge/feed/atom/Link;
    if-eqz v2, :cond_2a

    .line 449
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_c

    .line 451
    :cond_2a
    const/4 v0, 0x0

    goto :goto_c

    .line 454
    .end local v2           #next:Lcom/lge/feed/atom/Link;
    :cond_2c
    return-object v1
.end method

.method private getFullFriendsProfileList([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "snsId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, p1, v3, v4}, Lcom/lge/newbay/client/impl/Friend;->getFriends([Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 420
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_c
    if-eqz v0, :cond_2c

    .line 421
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 422
    const-string v3, "next"

    invoke-virtual {p0, v0, v3}, Lcom/lge/newbay/client/impl/Friend;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v2

    .line 423
    .local v2, next:Lcom/lge/feed/atom/Link;
    if-eqz v2, :cond_2a

    .line 424
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->getFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_c

    .line 426
    :cond_2a
    const/4 v0, 0x0

    goto :goto_c

    .line 429
    .end local v2           #next:Lcom/lge/feed/atom/Link;
    :cond_2c
    return-object v1
.end method

.method private getPartialFollowerProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 339
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_f

    .line 340
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 342
    :cond_f
    return-object v1
.end method

.method private getPartialFollowingProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getFollowings(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 391
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_f

    .line 392
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 394
    :cond_f
    return-object v1
.end method

.method private getPartialFriendsProfileAsync([Ljava/lang/String;IILcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 7
    .parameter "snsId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/newbay/client/impl/Friend;->getFriends([Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 516
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_14

    .line 517
    if-eqz p4, :cond_b

    .line 518
    invoke-interface {p4}, Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;->notifyFriendsProfileStarted()V

    .line 520
    :cond_b
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfileAsync(Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v1

    .line 522
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private getPartialFriendsProfileList([Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .parameter "snsId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/newbay/client/impl/Friend;->getFriends([Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 410
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_f

    .line 411
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 413
    :cond_f
    return-object v1
.end method

.method private parseFriendRequest(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IFriend$FriendRequest;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v2, Lcom/lge/newbay/client/IFriend$FriendRequest;

    invoke-direct {v2}, Lcom/lge/newbay/client/IFriend$FriendRequest;-><init>()V

    .line 237
    .local v2, friendRequest:Lcom/lge/newbay/client/IFriend$FriendRequest;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 238
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v4, :cond_32

    .line 239
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 241
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/IFriend$FriendRequest;->setId(Ljava/lang/String;)V

    .line 238
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 242
    :cond_22
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 243
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/IFriend$FriendRequest;->setSnId(Ljava/lang/String;)V

    goto :goto_1f

    .line 247
    .end local v0           #attrName:Ljava/lang/String;
    :cond_32
    const/4 v1, 0x0

    .line 248
    .local v1, eventType:I
    :cond_33
    :goto_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_75

    .line 249
    const/4 v6, 0x2

    if-ne v1, v6, :cond_33

    .line 250
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 252
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Friend;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/IFriend$FriendRequest;->setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V

    goto :goto_33

    .line 253
    :cond_51
    const-string v6, "published"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 254
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/IFriend$FriendRequest;->setPublished(Ljava/util/Date;)V

    goto :goto_33

    .line 255
    :cond_61
    const-string v6, "message"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 256
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/IFriend$FriendRequest;->setMessage(Ljava/lang/String;)V

    goto :goto_33

    .line 258
    :cond_71
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_33

    .line 262
    .end local v5           #tagName:Ljava/lang/String;
    :cond_75
    return-object v2
.end method


# virtual methods
.method public getAllFriendRequests(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 4
    .parameter "uri"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Friend;->getAllFriendRequests(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllFriendRequests(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 6
    .parameter "uri"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 180
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getAllFriendRequests([Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 11
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Friend;->getAllFriendRequests([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllFriendRequests([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 10
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 166
    const-string v1, "/sng/user/{session.token}/snss/{sns.uid.array}/friends/requests?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, p4, p5}, Lcom/lge/newbay/client/impl/Friend;->getAllFriendRequests(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getCommunityFriendRequest(Ljava/lang/String;)Lcom/lge/newbay/client/IFriend$FriendRequest;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v2, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, p1, v2}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 211
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 212
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Friend;->getFriendRequest(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IFriend$FriendRequest;

    move-result-object v2

    return-object v2
.end method

.method public getCommunityFriendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IFriend$FriendRequest;
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "requestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/request/{friend.request.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "{friend.request.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriendRequest(Ljava/lang/String;)Lcom/lge/newbay/client/IFriend$FriendRequest;

    move-result-object v1

    return-object v1
.end method

.method public getCommunityFriendRequests(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriendRequests(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getCommunityFriendRequests(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/requests?pageNum={page.num}&pageSize={page.size}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{sns.user.uid}"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v2, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "application/atom+xml"

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 196
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v2

    return-object v2
.end method

.method public getCommunityFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method public getCommunityFriends(Ljava/lang/String;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 5
    .parameter "url"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 103
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0, p2}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;IILcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method public getCommunityFriends(Ljava/lang/String;Ljava/lang/String;IILcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0, p5}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFollowerProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 312
    if-nez p3, :cond_7

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/Friend;->getFullFollowerProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 315
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getPartialFollowerProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getFollowers(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 307
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 297
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/subscribers?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getFollowers(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFollowingProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 364
    if-nez p3, :cond_7

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/Friend;->getFullFollowingProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 367
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getPartialFollowingProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getFollowings(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 358
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 359
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFollowings(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 349
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/publishers?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string v1, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string v1, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getFollowings(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFriendRequestsCount([Ljava/lang/String;)I
    .registers 8
    .parameter "snsIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v3, "/sng/user/{session.token}/snss/{sns.uid.array}/friends/requests/summary"

    const-string v4, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, uri:Ljava/lang/String;
    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, v1, v3}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 124
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 125
    .local v2, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Friend;->getFriendRequestsCount(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    return v3
.end method

.method public getFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/Friend;->getFriends(Ljava/lang/String;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Ljava/lang/String;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 5
    .parameter "url"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 76
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0, p2}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFriends([Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 5
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/newbay/client/impl/Friend;->getFriends([Ljava/lang/String;IILcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFriends([Ljava/lang/String;IILcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 9
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "/sng/user/{session.token}/snss/{sns.uid.array}/friends?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFriendsProfileAsync(Ljava/lang/String;Ljava/lang/String;IILcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 527
    if-nez p3, :cond_7

    .line 528
    invoke-direct {p0, p1, p2, p5}, Lcom/lge/newbay/client/impl/Friend;->getFullFriendsProfileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v0

    .line 530
    :goto_6
    return v0

    :cond_7
    invoke-virtual/range {p0 .. p5}, Lcom/lge/newbay/client/impl/Friend;->getPartialFriendsProfileAsync(Ljava/lang/String;Ljava/lang/String;IILcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v0

    goto :goto_6
.end method

.method public getFriendsProfileAsync([Ljava/lang/String;IILcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 6
    .parameter "snsId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 490
    if-nez p2, :cond_7

    .line 491
    invoke-direct {p0, p1, p4}, Lcom/lge/newbay/client/impl/Friend;->getFullFriendsProfileAsync([Ljava/lang/String;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v0

    .line 493
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getPartialFriendsProfileAsync([Ljava/lang/String;IILcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v0

    goto :goto_6
.end method

.method public getFriendsProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 434
    if-nez p3, :cond_7

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/Friend;->getFullFriendsProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 437
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getPartialFriendsProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getFriendsProfileList([Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 399
    if-nez p2, :cond_7

    .line 400
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Friend;->getFullFriendsProfileList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 402
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/newbay/client/impl/Friend;->getPartialFriendsProfileList([Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getPartialFriendsProfileAsync(Ljava/lang/String;Ljava/lang/String;IILcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 553
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_f

    .line 554
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfileAsync(Ljava/util/List;Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;)I

    move-result v1

    .line 556
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getPartialFriendsProfileList(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfile;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/impl/Friend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 461
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_f

    .line 462
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Friend;->getFriendsProfile(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 464
    :cond_f
    return-object v1
.end method

.method public responseFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "requestId"
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/request/{friend.request.id}?accept="

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, "{friend.request.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Friend;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 274
    .local v0, httpPut:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 275
    return-void
.end method

.method public searchFriends([Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 10
    .parameter "snsIds"
    .parameter "displayName"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v2, "/sng/user/{session.token}/snss/{sns.uid.array}/friend/search?pageNum={page.num}&pageSize={page.size}&displayName={displayName}"

    const-string v3, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "{displayName}"

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "application/atom+xml"

    invoke-virtual {p0, v1, v2}, Lcom/lge/newbay/client/impl/Friend;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 115
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Friend;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v2

    return-object v2
.end method

.method public sendFriendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "UTF-8"

    .line 282
    const-string v4, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/friends/requests"

    const-string v5, "{sns.uid}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, uri:Ljava/lang/String;
    const-string v4, "{sns.user.uid}"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Friend;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 285
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "message"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 288
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Friend;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 291
    return-void
.end method
