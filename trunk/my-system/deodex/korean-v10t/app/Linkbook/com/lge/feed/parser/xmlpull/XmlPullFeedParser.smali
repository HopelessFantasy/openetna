.class public Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;
.super Ljava/lang/Object;
.source "XmlPullFeedParser.java"

# interfaces
.implements Lcom/lge/feed/parser/FeedParser;


# instance fields
.field final factory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field final pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 33
    invoke-static {}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->getInstance()Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;->pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    .line 34
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Lcom/lge/feed/Feed;
    .registers 9
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, f:Lcom/lge/feed/Feed;
    :try_start_2
    iget-object v4, p0, Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 46
    .local v3, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 47
    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, eventType:I
    :cond_12
    :goto_12
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_28

    .line 50
    const/4 v4, 0x2

    if-ne v0, v4, :cond_12

    .line 51
    iget-object v4, p0, Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;->pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    invoke-virtual {v4, v3}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->createFeedProcessor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/parser/xmlpull/FeedProcessor;

    move-result-object v2

    .line 52
    .local v2, p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    if-eqz v2, :cond_12

    .line 53
    invoke-interface {v2, v3}, Lcom/lge/feed/parser/xmlpull/FeedProcessor;->getFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Feed;

    move-result-object v1

    goto :goto_12

    .line 57
    .end local v2           #p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    :cond_28
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/feed/Feed;->setEncoding(Ljava/lang/String;)V
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2f} :catch_32
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_30

    .line 63
    .end local v0           #eventType:I
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :goto_2f
    return-object v1

    .line 60
    :catch_30
    move-exception v4

    goto :goto_2f

    .line 58
    :catch_32
    move-exception v4

    goto :goto_2f
.end method

.method public parse(Ljava/io/Reader;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;
    .registers 10
    .parameter "reader"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, f:Lcom/lge/feed/Feed;
    :try_start_2
    iget-object v4, p0, Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 78
    .local v3, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 79
    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, eventType:I
    :cond_12
    :goto_12
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_29

    .line 82
    const/4 v4, 0x2

    if-ne v0, v4, :cond_12

    .line 83
    iget-object v4, p0, Lcom/lge/feed/parser/xmlpull/XmlPullFeedParser;->pf:Lcom/lge/feed/parser/xmlpull/ProcessorFactory;

    invoke-virtual {v4, v3}, Lcom/lge/feed/parser/xmlpull/ProcessorFactory;->createFeedProcessor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/parser/xmlpull/FeedProcessor;

    move-result-object v2

    .line 84
    .local v2, p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    if-eqz v2, :cond_12

    .line 85
    invoke-interface {v2, v3, p2}, Lcom/lge/feed/parser/xmlpull/FeedProcessor;->getFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_26} :catch_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_26} :catch_28

    move-result-object v1

    goto :goto_12

    .line 91
    .end local v0           #eventType:I
    .end local v2           #p:Lcom/lge/feed/parser/xmlpull/FeedProcessor;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_28
    move-exception v4

    .line 94
    :cond_29
    :goto_29
    return-object v1

    .line 89
    :catch_2a
    move-exception v4

    goto :goto_29
.end method
