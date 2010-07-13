.class public Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlListGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlListGDataParser.java"


# static fields
.field private static final LIST_FEED_POST_REL:Ljava/lang/String; = "http://schemas.google.com/g/2005#post"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "is"
    .parameter "xmlParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlListGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 62
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v4, p1, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    if-nez v4, :cond_10

    .line 63
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expected ListEntry!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    move-object v3, v0

    .line 67
    .local v3, row:Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, name:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .registers 13
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlListGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 77
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v9, p1, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;

    if-nez v9, :cond_10

    .line 78
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Expected ListFeed!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 80
    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;

    move-object v4, v0

    .line 82
    .local v4, listFeed:Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, name:Ljava/lang/String;
    const-string v9, "link"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 108
    :cond_20
    :goto_20
    return-void

    .line 91
    :cond_21
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .line 92
    .local v6, numAttrs:I
    const/4 v8, 0x0

    .line 93
    .local v8, rel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 94
    .local v2, href:Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, attrName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_29
    if-ge v3, v6, :cond_4b

    .line 96
    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v9, "rel"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 98
    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 99
    :cond_3e
    const-string v9, "href"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 100
    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 103
    :cond_4b
    invoke-static {v8}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 104
    const-string v9, "http://schemas.google.com/g/2005#post"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 105
    invoke-virtual {v4, v2}, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;->setEditUri(Ljava/lang/String;)V

    goto :goto_20
.end method
