.class public Lcom/lge/newbay/client/impl/Message;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Message.java"

# interfaces
.implements Lcom/lge/newbay/client/IMessage;


# static fields
.field static final ATTR_THREAD_ID:Ljava/lang/String; = "threadId"

.field static final KEY_MESSAGE_ID:Ljava/lang/String; = "{message.id}"

.field static final KEY_THREAD_ID:Ljava/lang/String; = "{thread.id}"

.field static final PARAM_MESSAGE:Ljava/lang/String; = "message"

.field static final PARAM_RECIPIENT_UID:Ljava/lang/String; = "recipientUid"

.field static final PARAM_SUBJECT:Ljava/lang/String; = "subject"

.field static final TAG_MESSAGE_SUMMARY:Ljava/lang/String; = "messagesSummary"

.field static final TAG_SN_MESSAGE:Ljava/lang/String; = "snsMessage"

.field static final TAG_SN_MESSAGE_BODY:Ljava/lang/String; = "body"

.field static final TAG_SN_MESSAGE_RECIPIENT:Ljava/lang/String; = "recipient"

.field static final TAG_SN_MESSAGE_RECIPIENTS:Ljava/lang/String; = "recipients"

.field static final TAG_SN_MESSAGE_SUBJECT:Ljava/lang/String; = "subject"

.field static final TAG_SN_MESSAGE_UNREAD:Ljava/lang/String; = "unread"

.field static final URI_GET_MESSAGE:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}/entry/{message.id}"

.field static final URI_GET_MESSAGE_COUNT:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/messages/summary"

.field static final URI_GET_MESSAGE_THREAD:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}?pageNum={page.num}&pageSize={page.size}"

.field static final URI_GET_MESSAGE_THREADS:Ljava/lang/String; = "/sng/user/{session.token}/snss/{sns.uid.array}/messages?pageNum={page.num}&pageSize={page.size}"

.field static final URI_POST_MESSAGE:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/messages"

.field static final URI_POST_REPLY_MESSAGE:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}/entry/{message.id}"


# direct methods
.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/Message;->processMessages(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)Z

    move-result v0

    return v0
.end method

.method private getFullMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 23
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 527
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v12, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/feed/atom/Entry;>;"
    const/4 v8, 0x1

    const/16 v9, 0xa

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v13

    .line 529
    .local v13, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz p6, :cond_23

    .line 530
    if-nez v13, :cond_4e

    const/4 v4, 0x0

    :goto_1d
    move-object/from16 v0, p6

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 532
    :cond_23
    :goto_23
    if-eqz v13, :cond_55

    .line 533
    invoke-virtual {v13}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v14

    .line 534
    .local v14, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v14, :cond_32

    .line 535
    invoke-virtual {v14}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 537
    :cond_32
    const-string v4, "next"

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/lge/newbay/client/impl/Message;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v15

    .line 538
    .local v15, next:Lcom/lge/feed/atom/Link;
    if-eqz v15, :cond_53

    .line 539
    invoke-virtual {v15}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v13

    goto :goto_23

    .line 530
    .end local v14           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v15           #next:Lcom/lge/feed/atom/Link;
    :cond_4e
    invoke-virtual {v13}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v4

    goto :goto_1d

    .line 541
    .restart local v14       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v15       #next:Lcom/lge/feed/atom/Link;
    :cond_53
    const/4 v13, 0x0

    goto :goto_23

    .line 544
    .end local v14           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v15           #next:Lcom/lge/feed/atom/Link;
    :cond_55
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/lge/newbay/client/impl/Message;->getMessage(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v4

    return v4
.end method

.method private getFullMessageAsync([Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 15
    .parameter "snsIds"
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
    .line 438
    const/4 v2, 0x1

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v7

    .line 439
    .local v7, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v6, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/feed/atom/Entry;>;"
    if-eqz p4, :cond_19

    .line 441
    invoke-virtual {v7}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 443
    :cond_19
    :goto_19
    if-eqz v7, :cond_3b

    .line 444
    invoke-virtual {v7}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v8

    .line 445
    .local v8, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v8, :cond_28

    .line 446
    invoke-virtual {v8}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 448
    :cond_28
    const-string v0, "next"

    invoke-virtual {p0, v8, v0}, Lcom/lge/newbay/client/impl/Message;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v9

    .line 449
    .local v9, next:Lcom/lge/feed/atom/Link;
    if-eqz v9, :cond_39

    .line 450
    invoke-virtual {v9}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v7

    goto :goto_19

    .line 452
    :cond_39
    const/4 v7, 0x0

    goto :goto_19

    .line 455
    .end local v8           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v9           #next:Lcom/lge/feed/atom/Link;
    :cond_3b
    invoke-direct {p0, v6, p4}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    return v0
.end method

.method private getFullMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 22
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 380
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMessage$SnMessage;>;"
    const/4 v8, 0x1

    const/16 v9, 0xa

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v12

    .line 382
    .local v12, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    :goto_18
    if-eqz v12, :cond_4c

    .line 383
    invoke-virtual {v12}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v13

    .line 384
    .local v13, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v13, :cond_2e

    .line 385
    invoke-virtual {v13}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/lge/newbay/client/impl/Message;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    :cond_2e
    const-string v4, "next"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/lge/newbay/client/impl/Message;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v15

    .line 388
    .local v15, next:Lcom/lge/feed/atom/Link;
    if-eqz v15, :cond_4a

    .line 389
    invoke-virtual {v15}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v12

    goto :goto_18

    .line 391
    :cond_4a
    const/4 v12, 0x0

    goto :goto_18

    .line 394
    .end local v13           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v15           #next:Lcom/lge/feed/atom/Link;
    :cond_4c
    return-object v14
.end method

.method private getFullMessageList([Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 15
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 316
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMessage$SnMessage;>;"
    const/4 v2, 0x1

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v6

    .line 318
    .local v6, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    :goto_10
    if-eqz v6, :cond_36

    .line 319
    invoke-virtual {v6}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v7

    .line 320
    .local v7, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v7, :cond_23

    .line 321
    invoke-virtual {v7}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getMessageThreadList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    :cond_23
    const-string v0, "next"

    invoke-virtual {p0, v7, v0}, Lcom/lge/newbay/client/impl/Message;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v9

    .line 324
    .local v9, next:Lcom/lge/feed/atom/Link;
    if-eqz v9, :cond_34

    .line 325
    invoke-virtual {v9}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v6

    goto :goto_10

    .line 327
    :cond_34
    const/4 v6, 0x0

    goto :goto_10

    .line 330
    .end local v7           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v9           #next:Lcom/lge/feed/atom/Link;
    :cond_36
    return-object v8
.end method

.method private getMessage(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
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
            "Lcom/lge/newbay/client/IMessage$MessageCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz p1, :cond_10

    .line 564
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 565
    .local v0, length:I
    new-instance v1, Lcom/lge/newbay/client/impl/Message$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/newbay/client/impl/Message$2;-><init>(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)V

    .line 571
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v2, v0

    .line 574
    .end local v0           #length:I
    .end local v1           #t:Ljava/lang/Thread;
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private getMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMessage$SnMessage;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, snMessage:Lcom/lge/newbay/client/IMessage$SnMessage;
    const/4 v0, 0x0

    .line 142
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 143
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 144
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsMessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 147
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Message;->parseSnMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMessage$SnMessage;

    move-result-object v1

    goto :goto_4

    .line 149
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 154
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private getMessageCount(Lorg/xmlpull/v1/XmlPullParser;)I
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

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, eventType:I
    if-eqz p1, :cond_3b

    .line 277
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3b

    .line 278
    if-ne v0, v5, :cond_6

    .line 279
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "messagesSummary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 281
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 282
    if-ne v0, v5, :cond_1a

    .line 283
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 284
    const-string v2, "new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 285
    invoke-static {p1, v3}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v2

    .line 297
    .end local v1           #tagName:Ljava/lang/String;
    :goto_32
    return v2

    .line 287
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_33
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1a

    .line 292
    :cond_37
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .end local v1           #tagName:Ljava/lang/String;
    :cond_3b
    move v2, v3

    .line 297
    goto :goto_32
.end method

.method private getMessageList(Ljava/util/List;)Ljava/util/List;
    .registers 7
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
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 411
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMessage$SnMessage;>;"
    if-eqz p1, :cond_22

    .line 413
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 414
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_22

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Entry;

    .line 416
    .local v0, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual {v0}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/newbay/client/impl/Message;->getMessage(Ljava/lang/String;)Lcom/lge/newbay/client/IMessage$SnMessage;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 419
    .end local v0           #entry:Lcom/lge/feed/atom/Entry;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_22
    return-object v3
.end method

.method private getMessageThread(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
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
            "Lcom/lge/newbay/client/IMessage$MessageCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz p1, :cond_10

    .line 475
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 476
    .local v0, length:I
    new-instance v1, Lcom/lge/newbay/client/impl/Message$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/newbay/client/impl/Message$1;-><init>(Lcom/lge/newbay/client/impl/Message;Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)V

    .line 505
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v2, v0

    .line 508
    .end local v0           #length:I
    .end local v1           #t:Ljava/lang/Thread;
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private getMessageThreadList(Ljava/util/List;)Ljava/util/List;
    .registers 10
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
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 348
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMessage$SnMessage;>;"
    if-eqz p1, :cond_33

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 351
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    if-ge v3, v4, :cond_33

    .line 352
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Entry;

    .line 353
    .local v0, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual {v0}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    .line 354
    .local v1, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz v1, :cond_30

    .line 355
    invoke-virtual {v1}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v2

    .line 356
    .local v2, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v2, :cond_30

    .line 357
    invoke-virtual {v2}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lge/newbay/client/impl/Message;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    .end local v2           #feed:Lcom/lge/feed/atom/AtomFeed;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 362
    .end local v0           #entry:Lcom/lge/feed/atom/Entry;
    .end local v1           #fc:Lcom/lge/newbay/client/AtomFeedContainer;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_33
    return-object v5
.end method

.method private getPartialMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 549
    invoke-virtual/range {p0 .. p7}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    .line 550
    .local v0, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz p8, :cond_c

    .line 551
    if-nez v0, :cond_1d

    const/4 v2, 0x0

    :goto_9
    invoke-interface {p8, v2}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 553
    :cond_c
    if-eqz v0, :cond_22

    .line 554
    invoke-virtual {v0}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    .line 555
    .local v1, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v1, :cond_22

    .line 556
    invoke-virtual {v1}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p8}, Lcom/lge/newbay/client/impl/Message;->getMessage(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v2

    .line 559
    .end local v1           #feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_1c
    return v2

    .line 551
    :cond_1d
    invoke-virtual {v0}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v2

    goto :goto_9

    .line 559
    :cond_22
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private getPartialMessageAsync([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 10
    .parameter "snsIds"
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
    .line 460
    invoke-virtual/range {p0 .. p5}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    .line 461
    .local v0, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz p6, :cond_d

    .line 462
    invoke-virtual {v0}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v2

    invoke-interface {p6, v2}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 464
    :cond_d
    if-eqz v0, :cond_1e

    .line 465
    invoke-virtual {v0}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    .line 466
    .local v1, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v1, :cond_1e

    .line 467
    invoke-virtual {v1}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p6}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v2

    .line 470
    .end local v1           #feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private parseRecipients(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v1, recipients:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;>;"
    const/4 v0, 0x0

    .line 200
    .local v0, eventType:I
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_29

    .line 201
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 202
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "recipient"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 204
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Message;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 206
    :cond_25
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    .line 210
    .end local v2           #tagName:Ljava/lang/String;
    :cond_29
    return-object v1
.end method

.method private parseSnMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMessage$SnMessage;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v4, Lcom/lge/newbay/client/IMessage$SnMessage;

    invoke-direct {v4}, Lcom/lge/newbay/client/IMessage$SnMessage;-><init>()V

    .line 159
    .local v4, snMessage:Lcom/lge/newbay/client/IMessage$SnMessage;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 160
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_42

    .line 161
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 163
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setId(Ljava/lang/String;)V

    .line 160
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 164
    :cond_22
    const-string v6, "snsId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 165
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setSnId(Ljava/lang/String;)V

    goto :goto_1f

    .line 166
    :cond_32
    const-string v6, "threadId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 167
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setThreadId(Ljava/lang/String;)V

    goto :goto_1f

    .line 171
    .end local v0           #attrName:Ljava/lang/String;
    :cond_42
    const/4 v1, 0x0

    .line 172
    .local v1, eventType:I
    :cond_43
    :goto_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_c7

    .line 173
    const/4 v6, 0x2

    if-ne v1, v6, :cond_43

    .line 174
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "author"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 176
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Message;->parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V

    goto :goto_43

    .line 177
    :cond_61
    const-string v6, "published"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 178
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setPublished(Ljava/util/Date;)V

    goto :goto_43

    .line 179
    :cond_71
    const-string v6, "updated"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 180
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextDate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setUpdated(Ljava/util/Date;)V

    goto :goto_43

    .line 181
    :cond_81
    const-string v6, "subject"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 182
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setSubject(Ljava/lang/String;)V

    goto :goto_43

    .line 183
    :cond_91
    const-string v6, "body"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 184
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setBody(Ljava/lang/String;)V

    goto :goto_43

    .line 185
    :cond_a1
    const-string v6, "unread"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 186
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/lge/newbay/client/impl/XppUtil;->getNextBoolean(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setUnread(Z)V

    goto :goto_43

    .line 187
    :cond_b2
    const-string v6, "recipients"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 188
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Message;->parseRecipients(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/IMessage$SnMessage;->setRecipients(Ljava/util/List;)V

    goto :goto_43

    .line 190
    :cond_c2
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_43

    .line 194
    .end local v5           #tagName:Ljava/lang/String;
    :cond_c7
    return-object v4
.end method

.method private processMessages(Ljava/util/List;Lcom/lge/newbay/client/IMessage$MessageCallback;)Z
    .registers 10
    .parameter
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;",
            "Lcom/lge/newbay/client/IMessage$MessageCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    const/4 v6, 0x0

    .line 578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 579
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v3, :cond_2b

    .line 580
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Entry;

    .line 582
    .local v1, entry:Lcom/lge/feed/atom/Entry;
    :try_start_e
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/newbay/client/impl/Message;->getMessage(Ljava/lang/String;)Lcom/lge/newbay/client/IMessage$SnMessage;

    move-result-object v4

    .line 583
    .local v4, message:Lcom/lge/newbay/client/IMessage$SnMessage;
    invoke-interface {p2, v4}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessage(Lcom/lge/newbay/client/IMessage$SnMessage;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1e

    move-result v5

    if-nez v5, :cond_28

    move v5, v6

    .line 592
    .end local v1           #entry:Lcom/lge/feed/atom/Entry;
    .end local v4           #message:Lcom/lge/newbay/client/IMessage$SnMessage;
    :goto_1d
    return v5

    .line 586
    .restart local v1       #entry:Lcom/lge/feed/atom/Entry;
    :catch_1e
    move-exception v5

    move-object v0, v5

    .line 587
    .local v0, e:Ljava/lang/Exception;
    invoke-interface {p2, v1, v0}, Lcom/lge/newbay/client/IMessage$MessageCallback;->notifyMessageError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z

    move-result v5

    if-nez v5, :cond_28

    move v5, v6

    .line 588
    goto :goto_1d

    .line 579
    .end local v0           #e:Ljava/lang/Exception;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 592
    .end local v1           #entry:Lcom/lge/feed/atom/Entry;
    :cond_2b
    const/4 v5, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public getMessage(Ljava/lang/String;)Lcom/lge/newbay/client/IMessage$SnMessage;
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
    .line 133
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Message;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 134
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 136
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Message;->getMessage(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/IMessage$SnMessage;

    move-result-object v2

    return-object v2
.end method

.method public getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IMessage$SnMessage;
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}/entry/{message.id}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "{thread.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "{message.id}"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getMessage(Ljava/lang/String;)Lcom/lge/newbay/client/IMessage$SnMessage;

    move-result-object v1

    return-object v1
.end method

.method public getMessageAsXmlString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/Message;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 270
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 17
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 513
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/lge/newbay/client/impl/Message;->getMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    return v0
.end method

.method public getMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 518
    if-nez p4, :cond_e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 519
    invoke-direct/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Message;->getFullMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    .line 521
    :goto_d
    return v0

    :cond_e
    invoke-direct/range {p0 .. p8}, Lcom/lge/newbay/client/impl/Message;->getPartialMessageAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    goto :goto_d
.end method

.method public getMessageAsync([Ljava/lang/String;IILjava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 13
    .parameter "snsIds"
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
    .line 425
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/newbay/client/impl/Message;->getMessageAsync([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    return v0
.end method

.method public getMessageAsync([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I
    .registers 8
    .parameter "snsIds"
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
    .line 429
    if-nez p2, :cond_7

    .line 430
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/lge/newbay/client/impl/Message;->getFullMessageAsync([Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    .line 432
    :goto_6
    return v0

    :cond_7
    invoke-direct/range {p0 .. p6}, Lcom/lge/newbay/client/impl/Message;->getPartialMessageAsync([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;Lcom/lge/newbay/client/IMessage$MessageCallback;)I

    move-result v0

    goto :goto_6
.end method

.method public getMessageCount([Ljava/lang/String;)I
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
    .line 250
    const-string v3, "/sng/user/{session.token}/snss/{sns.uid.array}/messages/summary"

    const-string v4, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Message;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 252
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Accept"

    const-string v4, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 254
    .local v2, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Message;->getMessageCount(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    return v3
.end method

.method public getMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Ljava/util/List;
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 366
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/newbay/client/impl/Message;->getMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 371
    if-nez p4, :cond_d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 372
    invoke-direct/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Message;->getFullMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 374
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual/range {p0 .. p7}, Lcom/lge/newbay/client/impl/Message;->getPartialMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method public getMessageList([Ljava/lang/String;IILjava/util/Date;)Ljava/util/List;
    .registers 11
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "ifModifiedSince"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 302
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Message;->getMessageList([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageList([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 7
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 307
    if-nez p2, :cond_7

    .line 308
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/newbay/client/impl/Message;->getFullMessageList([Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 310
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual/range {p0 .. p5}, Lcom/lge/newbay/client/impl/Message;->getPartialMessageList([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public getMessageListAsXmlString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 258
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}?pageNum={page.num}&pageSize={page.size}"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, uri:Ljava/lang/String;
    const-string v2, "{sns.user.uid}"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v2, "{thread.id}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v2, "{page.num}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v2, "{page.size}"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "application/atom+xml"

    invoke-virtual {p0, v1, v2, p6, p7}, Lcom/lge/newbay/client/impl/Message;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 265
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 99
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
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
    .line 104
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{sns.user.uid}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "{thread.id}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "{page.num}"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "{page.size}"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0, p6, p7}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getMessageThread(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMessageThread(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 119
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Message;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 120
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getMessageThreads(Ljava/lang/String;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMessageThreads(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 93
    const-string v1, "application/atom+xml"

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/lge/newbay/client/impl/Message;->createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 94
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getMessageThreads([Ljava/lang/String;IILjava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 75
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
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
    .line 80
    const-string v1, "/sng/user/{session.token}/snss/{sns.uid.array}/messages?pageNum={page.num}&pageSize={page.size}"

    const-string v2, "{sns.uid.array}"

    invoke-static {p1}, Lcom/lge/util/Util;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, uri:Ljava/lang/String;
    const-string v1, "{page.num}"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "{page.size}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0, p4, p5}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v1

    return-object v1
.end method

.method public getPartialMessageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    const/4 v2, 0x0

    .line 400
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMessage$SnMessage;>;"
    invoke-virtual/range {p0 .. p7}, Lcom/lge/newbay/client/impl/Message;->getMessageThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    .line 401
    .local v0, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz v0, :cond_15

    .line 402
    invoke-virtual {v0}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    .line 403
    .local v1, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v1, :cond_15

    .line 404
    invoke-virtual {v1}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Message;->getMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 407
    .end local v1           #feed:Lcom/lge/feed/atom/AtomFeed;
    :cond_15
    return-object v2
.end method

.method public getPartialMessageList([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 10
    .parameter "snsIds"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IMessage$SnMessage;",
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
    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IMessage$SnMessage;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/lge/newbay/client/impl/Message;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    .line 337
    .local v0, fc:Lcom/lge/newbay/client/AtomFeedContainer;
    if-eqz v0, :cond_15

    .line 338
    invoke-virtual {v0}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    .line 339
    .local v1, feed:Lcom/lge/feed/atom/AtomFeed;
    if-eqz v1, :cond_15

    .line 340
    invoke-virtual {v1}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/newbay/client/impl/Message;->getMessageThreadList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 343
    .end local v1           #feed:Lcom/lge/feed/atom/AtomFeed;
    :cond_15
    return-object v2
.end method

.method public replyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"
    .parameter "recipientUid"
    .parameter "subject"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "UTF-8"

    .line 232
    const-string v5, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/message/thread/{thread.id}/entry/{message.id}"

    const-string v6, "{sns.uid}"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, uri:Ljava/lang/String;
    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 234
    const-string v5, "{thread.id}"

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 235
    const-string v5, "{message.id}"

    invoke-virtual {v4, v5, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {p0, v4}, Lcom/lge/newbay/client/impl/Message;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 237
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "recipientUid"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "subject"

    invoke-direct {v5, v6, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "message"

    invoke-direct {v5, v6, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v0, v2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 243
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 245
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, returnId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    const/4 v5, 0x0

    :goto_64
    return-object v5

    :cond_65
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_64
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "recipientUid"
    .parameter "subject"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "UTF-8"

    .line 215
    const-string v5, "/sng/user/{session.token}/sns/{sns.uid}/user/{sns.user.uid}/messages"

    const-string v6, "{sns.uid}"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, uri:Ljava/lang/String;
    const-string v5, "{sns.user.uid}"

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {p0, v4}, Lcom/lge/newbay/client/impl/Message;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 218
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "recipientUid"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "subject"

    invoke-direct {v5, v6, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "message"

    invoke-direct {v5, v6, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v0, v2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 224
    .local v0, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Message;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, returnId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    const/4 v5, 0x0

    :goto_58
    return-object v5

    :cond_59
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_58
.end method
