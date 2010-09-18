.class public abstract Lcom/lge/feed/parser/xmlpull/AbstractFeedProcessor;
.super Ljava/lang/Object;
.source "AbstractFeedProcessor.java"

# interfaces
.implements Lcom/lge/feed/parser/xmlpull/FeedProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, eventType:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 64
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/lge/feed/parser/xmlpull/AbstractFeedProcessor;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 68
    :cond_e
    return-void
.end method

.method protected getMarkup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Markup;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v3, Lcom/lge/feed/Markup;

    invoke-direct {v3}, Lcom/lge/feed/Markup;-><init>()V

    .line 33
    .local v3, m:Lcom/lge/feed/Markup;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 34
    .local v2, l:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/feed/Markup;->setTag(Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/feed/Markup;->setPrefix(Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/feed/Markup;->setNamespace(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v2, :cond_2f

    .line 39
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/lge/feed/Markup;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 42
    :cond_2f
    :goto_2f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, eventType:I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_56

    .line 43
    const/4 v5, 0x4

    if-ne v0, v5, :cond_4b

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/feed/Markup;->setText(Ljava/lang/String;)V

    goto :goto_2f

    .line 48
    .end local v4           #value:Ljava/lang/String;
    :cond_4b
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2f

    .line 49
    invoke-virtual {p0, p1}, Lcom/lge/feed/parser/xmlpull/AbstractFeedProcessor;->getMarkup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Markup;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/feed/Markup;->addChild(Lcom/lge/feed/Markup;)V

    goto :goto_2f

    .line 52
    :cond_56
    return-object v3
.end method
