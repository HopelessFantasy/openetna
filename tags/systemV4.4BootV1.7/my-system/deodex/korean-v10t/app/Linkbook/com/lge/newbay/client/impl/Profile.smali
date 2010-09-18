.class public Lcom/lge/newbay/client/impl/Profile;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Profile.java"

# interfaces
.implements Lcom/lge/newbay/client/IProfile;


# static fields
.field static final ATTR_USER_PROFILE_STORAGE_UNIT:Ljava/lang/String; = "unit"

.field static final KEY_COMMENT_ID:Ljava/lang/String; = "{comment.id}"

.field static final PARAM_COMMENT:Ljava/lang/String; = "comment"

.field static final PARAM_STATUS:Ljava/lang/String; = "status"

.field static final PARAM_UIDS:Ljava/lang/String; = "snsUids"

.field static final TAG_PROFILE_COMMENT_SUMMARY:Ljava/lang/String; = "profileCommentsSummary"

.field static final TAG_USER_PROFILE:Ljava/lang/String; = "snsUserProfile"

.field static final TAG_USER_PROFILE_ACTIVITIES:Ljava/lang/String; = "activities"

.field static final TAG_USER_PROFILE_AFFILIATIONS:Ljava/lang/String; = "affiliations"

.field static final TAG_USER_PROFILE_AVATAR:Ljava/lang/String; = "avatar"

.field static final TAG_USER_PROFILE_BIRTH:Ljava/lang/String; = "birthDt"

.field static final TAG_USER_PROFILE_BIRTHDAY:Ljava/lang/String; = "birthDay"

.field static final TAG_USER_PROFILE_COMMENT:Ljava/lang/String; = "snsUserProfileComment"

.field static final TAG_USER_PROFILE_DEEPLINK:Ljava/lang/String; = "deeplink"

.field static final TAG_USER_PROFILE_DISPLAYNAME:Ljava/lang/String; = "displayName"

.field static final TAG_USER_PROFILE_EMAIL:Ljava/lang/String; = "email"

.field static final TAG_USER_PROFILE_FAN_CNT:Ljava/lang/String; = "fanCnt"

.field static final TAG_USER_PROFILE_FRIEND_CNT:Ljava/lang/String; = "friendCnt"

.field static final TAG_USER_PROFILE_GENDER:Ljava/lang/String; = "gender"

.field static final TAG_USER_PROFILE_HOMETOWN:Ljava/lang/String; = "hometown"

.field static final TAG_USER_PROFILE_INTERESTS:Ljava/lang/String; = "interests"

.field static final TAG_USER_PROFILE_LINK:Ljava/lang/String; = "link"

.field static final TAG_USER_PROFILE_MUSIC:Ljava/lang/String; = "music"

.field static final TAG_USER_PROFILE_OTHER_PHONE_NUMBER:Ljava/lang/String; = "otherPhoneNumber"

.field static final TAG_USER_PROFILE_PHONE_NUMBER:Ljava/lang/String; = "phoneNumber"

.field static final TAG_USER_PROFILE_POLITICS:Ljava/lang/String; = "politics"

.field static final TAG_USER_PROFILE_PUBLISHER_CNT:Ljava/lang/String; = "publisherCnt"

.field static final TAG_USER_PROFILE_STATUS:Ljava/lang/String; = "status"

.field static final TAG_USER_PROFILE_STORAGE:Ljava/lang/String; = "storage"

.field static final TAG_USER_PROFILE_STORAGE_AVAILABLE:Ljava/lang/String; = "available"

.field static final TAG_USER_PROFILE_STORAGE_LIMIT:Ljava/lang/String; = "limit"

.field static final TAG_USER_PROFILE_STORAGE_USAGE:Ljava/lang/String; = "usage"

.field static final TAG_USER_PROFILE_USERNAME:Ljava/lang/String; = "username"

.field static final TAG_USER_STATUS:Ljava/lang/String; = "snsUserProfileStatus"

.field static final TAG_USER_STATUS_COMMENT:Ljava/lang/String; = "comment"

.field static final TAG_USER_STATUS_STATUS:Ljava/lang/String; = "status"

.field static final URI_ADD_USER_PROFILE_COMMENT:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/comments"

.field static final URI_GET_ALL_PROFILE:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/profiles?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_ALL_PROFILE_COMMENT:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/profile/comments?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_ALL_STATUS:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/profile/status?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_FRIEND_STATUS_HISTORY:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/profile/status/friends/history?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_PROFILE:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile"

.field static final URI_GET_PROFILE_STATUS_HISTORY:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/status/history?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_USER_PROFILE_COMMENT:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/comment/{comment.id}"

.field static final URI_GET_USER_PROFILE_COMMENTS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/comments?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_USER_PROFILE_COMMENT_COUNT:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/profile/comments/summary"

.field static final URI_GET_USER_STATUS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/status"

.field static final URI_UPDATE_ALL_STATUS:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/profile/status"

.field static final URI_UPDATE_USER_STATUS:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/status"


# direct methods
.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    .line 98
    return-void
.end method

.method private getCommentsCount(Lorg/xmlpull/v1/XmlPullParser;)I
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

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, eventType:I
    if-eqz p1, :cond_3b

    .line 390
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3b

    .line 391
    if-ne v0, v5, :cond_6

    .line 392
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "profileCommentsSummary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 394
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 395
    if-ne v0, v5, :cond_1a

    .line 396
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 397
    const-string v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 398
    invoke-static {p1, v3}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v2

    .line 410
    .end local v1           #tagName:Ljava/lang/String;
    :goto_32
    return v2

    .line 400
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_33
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1a

    .line 405
    :cond_37
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .end local v1           #tagName:Ljava/lang/String;
    :cond_3b
    move v2, v3

    .line 410
    goto :goto_32
.end method

.method private getFullUserCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I
    .registers 21
    .parameter "snsId"
    .parameter "userId"
    .parameter "from"
    .parameter "to"
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
    .line 557
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v11, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/feed/atom/Entry;>;"
    const/4 v7, 0x1

    const/16 v8, 0xa

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v12

    .line 559
    .local v12, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz p5, :cond_20

    .line 560
    if-nez v12, :cond_46

    const/4 v4, 0x0

    :goto_1a
    move-object/from16 v0, p5

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;->notifyProfileCommentStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 562
    :cond_20
    :goto_20
    if-eqz v12, :cond_4d

    .line 563
    invoke-virtual {v12}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v13

    .line 564
    .local v13, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v13, :cond_2f

    .line 565
    invoke-virtual {v13}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 567
    :cond_2f
    const-string v4, "next"

    invoke-virtual {p0, v13, v4}, Lcom/lge/newbay/client/impl/Profile;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v14

    .line 568
    .local v14, next:Lcom/lge/feed/atom/Link;
    if-eqz v14, :cond_4b

    .line 569
    invoke-virtual {v14}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v12

    goto :goto_20

    .line 560
    .end local v13           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v14           #next:Lcom/lge/feed/atom/Link;
    :cond_46
    invoke-virtual {v12}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v4

    goto :goto_1a

    .line 571
    .restart local v13       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v14       #next:Lcom/lge/feed/atom/Link;
    :cond_4b
    const/4 v12, 0x0

    goto :goto_20

    .line 574
    .end local v13           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v14           #next:Lcom/lge/feed/atom/Link;
    :cond_4d
    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/lge/newbay/client/impl/Profile;->getUserCommentAsync(Ljava/util/List;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I

    move-result v4

    return v4
.end method

.method private getFullUserCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;",
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
    .line 497
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;>;"
    const/4 v3, 0x1

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v7

    .line 500
    .local v7, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    :goto_11
    if-eqz v7, :cond_37

    .line 501
    invoke-virtual {v7}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v8

    .line 502
    .local v8, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v8, :cond_24

    .line 503
    invoke-virtual {v8}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getUserCommentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    :cond_24
    const-string v0, "next"

    invoke-virtual {p0, v8, v0}, Lcom/lge/newbay/client/impl/Profile;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v10

    .line 506
    .local v10, next:Lcom/lge/feed/atom/Link;
    if-eqz v10, :cond_35

    .line 507
    invoke-virtual {v10}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v7

    goto :goto_11

    .line 509
    :cond_35
    const/4 v7, 0x0

    goto :goto_11

    .line 512
    .end local v8           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v10           #next:Lcom/lge/feed/atom/Link;
    :cond_37
    return-object v9
.end method

.method private getPartialUserCommentAsync(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
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
    .line 579
    invoke-virtual/range {p0 .. p6}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    .line 580
    .local v1, feedContainer:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz v1, :cond_1e

    .line 581
    if-eqz p7, :cond_f

    .line 582
    invoke-virtual {v1}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v2

    invoke-interface {p7, v2}, Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;->notifyProfileCommentStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 584
    :cond_f
    invoke-virtual {v1}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 585
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_1e

    .line 586
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p7}, Lcom/lge/newbay/client/impl/Profile;->getUserCommentAsync(Ljava/util/List;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I

    move-result v2

    .line 589
    .end local v0           #feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private getPartialUserCommentList(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;",
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
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    .line 520
    .local v1, feedContainer:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz v1, :cond_15

    .line 521
    invoke-virtual {v1}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 522
    .local v0, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v0, :cond_15

    .line 523
    invoke-virtual {v0}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Profile;->getUserCommentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 526
    .end local v0           #feed:Lcom/lge/feed/atom/AtomFeed;
    :cond_15
    return-object v2
.end method

.method public static getSnsUserProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    .registers 5
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, profile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    const/4 v0, 0x0

    .line 140
    .local v0, eventType:I
    if-eqz p0, :cond_23

    .line 141
    :cond_4
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 142
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsUserProfile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 145
    invoke-static {p0}, Lcom/lge/newbay/client/impl/Profile;->parseUserProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;

    move-result-object v1

    goto :goto_4

    .line 147
    :cond_1f
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 152
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private getSnsUserProfileComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, comment:Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    const/4 v1, 0x0

    .line 644
    .local v1, eventType:I
    if-eqz p1, :cond_23

    .line 645
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_23

    .line 646
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 647
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsUserProfileComment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 649
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Profile;->parseUserProfileComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;

    move-result-object v0

    goto :goto_4

    .line 651
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 656
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v0
.end method

.method private getSnsUserProfileStatus(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, status:Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    const/4 v0, 0x0

    .line 302
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 303
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 304
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 305
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsUserProfileStatus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 307
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Profile;->parseUserProfileStatus(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;

    move-result-object v1

    goto :goto_4

    .line 309
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 314
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private getUserCommentAsync(Ljava/util/List;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I
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
            "Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 594
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 595
    .local v0, length:I
    new-instance v1, Lcom/lge/newbay/client/impl/Profile$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/lge/newbay/client/impl/Profile$1;-><init>(Lcom/lge/newbay/client/impl/Profile;ILjava/util/List;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)V

    .line 619
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v2, v0

    .line 622
    .end local v0           #length:I
    .end local v1           #t:Ljava/lang/Thread;
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private getUserCommentList(Ljava/util/List;)Ljava/util/List;
    .registers 6
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
            "Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;",
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
    .line 530
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    const/4 v2, 0x0

    .line 531
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;>;"
    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 534
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_29

    .line 535
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/feed/atom/Entry;

    invoke-virtual {v3}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/newbay/client/impl/Profile;->getUserProfileComment(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 538
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_29
    return-object v2
.end method

.method private static parseUserProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 157
    new-instance v4, Lcom/lge/newbay/client/IProfile$SnsUserProfile;

    invoke-direct {v4}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;-><init>()V

    .line 158
    .local v4, profile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 159
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_33

    .line 160
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 162
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setId(Ljava/lang/String;)V

    .line 159
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 163
    :cond_23
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 164
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setSnsId(Ljava/lang/String;)V

    goto :goto_20

    .line 168
    .end local v0           #attrName:Ljava/lang/String;
    :cond_33
    const/4 v1, 0x0

    .line 169
    .local v1, eventType:I
    :cond_34
    :goto_34
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1ad

    .line 170
    const/4 v6, 0x2

    if-ne v1, v6, :cond_34

    .line 171
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "username"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 173
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setUsername(Ljava/lang/String;)V

    goto :goto_34

    .line 174
    :cond_52
    const-string v6, "displayName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 175
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setDisplayName(Ljava/lang/String;)V

    goto :goto_34

    .line 176
    :cond_62
    const-string v6, "avatar"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 177
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setAvatar(Ljava/lang/String;)V

    goto :goto_34

    .line 178
    :cond_72
    const-string v6, "email"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 179
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setEmail(Ljava/lang/String;)V

    goto :goto_34

    .line 180
    :cond_82
    const-string v6, "phoneNumber"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 181
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_34

    .line 182
    :cond_92
    const-string v6, "otherPhoneNumber"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 183
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setOtherPhoneNumber(Ljava/lang/String;)V

    goto :goto_34

    .line 184
    :cond_a2
    const-string v6, "gender"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 185
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setGender(Ljava/lang/String;)V

    goto :goto_34

    .line 186
    :cond_b2
    const-string v6, "status"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 187
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 188
    :cond_c3
    const-string v6, "storage"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 189
    invoke-static {p0}, Lcom/lge/newbay/client/impl/Profile;->parseUserProfileStorage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$Storage;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setStorage(Lcom/lge/newbay/client/IProfile$Storage;)V

    goto/16 :goto_34

    .line 190
    :cond_d4
    const-string v6, "birthDt"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 191
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setBirthDt(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 192
    :cond_e5
    const-string v6, "birthDay"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 193
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setBirthDay(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 194
    :cond_f6
    const-string v6, "hometown"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 195
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setHometown(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 196
    :cond_107
    const-string v6, "politics"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 197
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setPolitics(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 198
    :cond_118
    const-string v6, "interests"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_129

    .line 199
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setInterests(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 200
    :cond_129
    const-string v6, "activities"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 201
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setActivities(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 202
    :cond_13a
    const-string v6, "music"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b

    .line 203
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setMusic(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 204
    :cond_14b
    const-string v6, "affiliations"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c

    .line 205
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setAffiliations(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 206
    :cond_15c
    const-string v6, "link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16c

    const-string v6, "deeplink"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    .line 207
    :cond_16c
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setDeepLink(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 208
    :cond_175
    const-string v6, "fanCnt"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_186

    .line 209
    invoke-static {p0, v7}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setFanCnt(I)V

    goto/16 :goto_34

    .line 210
    :cond_186
    const-string v6, "friendCnt"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_197

    .line 211
    invoke-static {p0, v7}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setFriendCnt(I)V

    goto/16 :goto_34

    .line 212
    :cond_197
    const-string v6, "publisherCnt"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a8

    .line 213
    invoke-static {p0, v7}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->setPublisherCnt(I)V

    goto/16 :goto_34

    .line 215
    :cond_1a8
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_34

    .line 219
    .end local v5           #tagName:Ljava/lang/String;
    :cond_1ad
    return-object v4
.end method

.method private parseUserProfileComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    new-instance v1, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;

    invoke-direct {v1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;-><init>()V

    .line 662
    .local v1, comment:Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 663
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v4, :cond_32

    .line 664
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 666
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->setId(Ljava/lang/String;)V

    .line 663
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 667
    :cond_22
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 668
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->setSnId(Ljava/lang/String;)V

    goto :goto_1f

    .line 672
    .end local v0           #attrName:Ljava/lang/String;
    :cond_32
    const/4 v2, 0x0

    .line 673
    .local v2, eventType:I
    :cond_33
    :goto_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_75

    .line 674
    const/4 v6, 0x2

    if-ne v2, v6, :cond_33

    .line 675
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 677
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Profile;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V

    goto :goto_33

    .line 678
    :cond_51
    const-string v6, "published"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 679
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->setPublished(Ljava/util/Date;)V

    goto :goto_33

    .line 680
    :cond_61
    const-string v6, "comment"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 681
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->setComment(Ljava/lang/String;)V

    goto :goto_33

    .line 683
    :cond_71
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_33

    .line 687
    .end local v5           #tagName:Ljava/lang/String;
    :cond_75
    return-object v1
.end method

.method private parseUserProfileStatus(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v4, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;

    invoke-direct {v4}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;-><init>()V

    .line 319
    .local v4, status:Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 320
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_32

    .line 321
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 323
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->setId(Ljava/lang/String;)V

    .line 320
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 324
    :cond_22
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 325
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->setSnId(Ljava/lang/String;)V

    goto :goto_1f

    .line 329
    .end local v0           #attrName:Ljava/lang/String;
    :cond_32
    const/4 v1, 0x0

    .line 330
    .local v1, eventType:I
    :cond_33
    :goto_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_75

    .line 331
    const/4 v6, 0x2

    if-ne v1, v6, :cond_33

    .line 332
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 334
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Profile;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V

    goto :goto_33

    .line 335
    :cond_51
    const-string v6, "published"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 336
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->setPublished(Ljava/util/Date;)V

    goto :goto_33

    .line 337
    :cond_61
    const-string v6, "status"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 338
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->setStatus(Ljava/lang/String;)V

    goto :goto_33

    .line 340
    :cond_71
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_33

    .line 344
    .end local v5           #tagName:Ljava/lang/String;
    :cond_75
    return-object v4
.end method

.method private static parseUserProfileStorage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$Storage;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 232
    new-instance v4, Lcom/lge/newbay/client/IProfile$Storage;

    invoke-direct {v4}, Lcom/lge/newbay/client/IProfile$Storage;-><init>()V

    .line 233
    .local v4, storage:Lcom/lge/newbay/client/IProfile$Storage;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 234
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_23

    .line 235
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "unit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 237
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$Storage;->setUnit(Ljava/lang/String;)V

    .line 234
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 241
    .end local v0           #attrName:Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    .line 242
    .local v1, eventType:I
    :cond_24
    :goto_24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_66

    .line 243
    const/4 v6, 0x2

    if-ne v1, v6, :cond_24

    .line 244
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "limit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 246
    invoke-static {p0, v7}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$Storage;->setLimit(I)V

    goto :goto_24

    .line 247
    :cond_42
    const-string v6, "available"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 248
    invoke-static {p0, v7}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$Storage;->setAvailable(I)V

    goto :goto_24

    .line 249
    :cond_52
    const-string v6, "usage"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 250
    invoke-static {p0, v7}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IProfile$Storage;->setUsage(I)V

    goto :goto_24

    .line 252
    :cond_62
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_24

    .line 256
    .end local v5           #tagName:Ljava/lang/String;
    :cond_66
    return-object v4
.end method


# virtual methods
.method public addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "UTF-8"

    .line 693
    const-string v5, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/comments"

    const-string v6, "{sns.uid}"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, uri:Ljava/lang/String;
    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-virtual {p0, v4}, Lcom/lge/newbay/client/impl/Profile;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 696
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "comment"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 700
    .local v1, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 702
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, commentId:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x0

    :goto_44
    return-object v5

    :cond_45
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_44
.end method

.method public getAllComments(Ljava/lang/String;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 424
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getAllComments([Ljava/lang/String;II)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 8
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
    .line 415
    const-string v1, "/sng/user/{session.token}/snss/{sns.uid.array}/profile/comments?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getAllComments(Ljava/lang/String;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getAllProfile(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Profile;->getAllProfile(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllProfile(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 120
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 121
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getAllProfile([Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 102
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Profile;->getAllProfile([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllProfile([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 107
    const-string v1, "/sng/user/{session.token}/snss/{sns.uid.array}/profiles?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0, p4, p5}, Lcom/lge/newbay/client/impl/Profile;->getAllProfile(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getAllStatus(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Profile;->getAllStatus(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllStatus(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 279
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 280
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getAllStatus([Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 261
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Profile;->getAllStatus([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getAllStatus([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 266
    const-string v1, "/sng/user/{session.token}/snss/{sns.uid.array}/profile/status?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0, p4, p5}, Lcom/lge/newbay/client/impl/Profile;->getAllStatus(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getCommentsCount([Ljava/lang/String;)I
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
    .line 380
    const-string v3, "/sng/user/{session.token}/snss/{sns.uid.array}/profile/comments/summary"

    const-string v4, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, uri:Ljava/lang/String;
    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, v1, v3}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 382
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 383
    .local v2, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Profile;->getCommentsCount(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    return v3
.end method

.method public getFriendsStatusHistory(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 477
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 478
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFriendsStatusHistory(Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    .registers 7
    .parameter "snsId"
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
    .line 469
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/profile/status/friends/history?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 471
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getProfileStatusHistory(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getProfileStatusHistory(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 463
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 464
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getProfileStatusHistory(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
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
    .line 454
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/status/history?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v1, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 457
    const-string v1, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getProfileStatusHistory(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getUserCommentAsync(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
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
    .line 543
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/newbay/client/impl/Profile;->getUserCommentAsync(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I

    move-result v0

    return v0
.end method

.method public getUserCommentAsync(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
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
    .line 548
    if-nez p3, :cond_d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 549
    invoke-direct/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Profile;->getFullUserCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I

    move-result v0

    .line 551
    :goto_c
    return v0

    :cond_d
    invoke-direct/range {p0 .. p7}, Lcom/lge/newbay/client/impl/Profile;->getPartialUserCommentAsync(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;)I

    move-result v0

    goto :goto_c
.end method

.method public getUserCommentList(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Ljava/util/List;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;",
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
    .line 483
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Profile;->getUserCommentList(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserCommentList(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;",
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
    .line 487
    if-nez p3, :cond_7

    .line 488
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/lge/newbay/client/impl/Profile;->getFullUserCommentList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 491
    :goto_6
    return-object v0

    :cond_7
    invoke-direct/range {p0 .. p6}, Lcom/lge/newbay/client/impl/Profile;->getPartialUserCommentList(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 429
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 10
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
    .line 434
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/comments?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v1, "{page.num}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 437
    const-string v1, "{page.size}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p0, v0, p5, p6}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getUserComments(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Profile;->getUserComments(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getUserComments(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 448
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 449
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getUserProfile(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
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
    .line 132
    const-string v2, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, p1, v2}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 133
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 134
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Lcom/lge/newbay/client/impl/Profile;->getSnsUserProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;

    move-result-object v2

    return-object v2
.end method

.method public getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    .registers 6
    .parameter "snSId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getUserProfile(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;

    move-result-object v1

    return-object v1
.end method

.method public getUserProfileComment(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
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
    .line 634
    const-string v2, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, p1, v2}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 635
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 636
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Profile;->getSnsUserProfileComment(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;

    move-result-object v2

    return-object v2
.end method

.method public getUserProfileComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "commentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 627
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/comment/{comment.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 629
    const-string v1, "{comment.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getUserProfileComment(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;

    move-result-object v1

    return-object v1
.end method

.method public getUserStatus(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Profile;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 292
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 294
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Profile;->getSnsUserProfileStatus(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;

    move-result-object v2

    return-object v2
.end method

.method public getUserStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/status"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Profile;->getUserStatus(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;

    move-result-object v1

    return-object v1
.end method

.method public updateAllStatus([Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "snsId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "UTF-8"

    .line 350
    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, snsIdstr:Ljava/lang/String;
    const-string v5, "/sng/user/{session.token}/snss/{sns.uid.array}/profile/status"

    const-string v6, "{sns.uid.array}"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, uri:Ljava/lang/String;
    const-string v5, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {p0, v4, v5}, Lcom/lge/newbay/client/impl/Profile;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 353
    .local v1, httpPut:Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "X-HTTP-Method-Override"

    const-string v6, "PUT"

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "snsUids"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "status"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v0, v2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 358
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Profile;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 361
    return-void
.end method

.method public updateUserStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "UTF-8"

    .line 366
    const-string v4, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/profile/status"

    const-string v5, "{sns.uid}"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, uri:Ljava/lang/String;
    const-string v4, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {p0, v3, v4}, Lcom/lge/newbay/client/impl/Profile;->createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 368
    .local v1, httpPut:Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "X-HTTP-Method-Override"

    const-string v5, "PUT"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "status"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 372
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 374
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Profile;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 375
    return-void
.end method
