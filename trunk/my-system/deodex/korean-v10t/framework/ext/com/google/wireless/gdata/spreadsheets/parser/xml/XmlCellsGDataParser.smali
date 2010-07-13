.class public Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlCellsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlCellsGDataParser.java"


# static fields
.field private static final CELL_FEED_POST_REL:Ljava/lang/String; = "http://schemas.google.com/g/2005#post"


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
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/CellFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/CellFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 11
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlCellsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 62
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v7, p1, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    if-nez v7, :cond_11

    .line 63
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Expected CellEntry!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 65
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    move-object v6, v0

    .line 67
    .local v6, row:Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, name:Ljava/lang/String;
    const-string v7, "cell"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 70
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 71
    .local v2, count:I
    const/4 v1, 0x0

    .line 72
    .local v1, attrName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    if-ge v3, v2, :cond_77

    .line 73
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v7, "row"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 75
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->setRow(I)V

    .line 72
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 77
    :cond_43
    const-string v7, "col"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 78
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->setCol(I)V

    goto :goto_40

    .line 80
    :cond_57
    const-string v7, "numericValue"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 81
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->setNumericValue(Ljava/lang/String;)V

    goto :goto_40

    .line 82
    :cond_67
    const-string v7, "inputValue"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 83
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->setInputValue(Ljava/lang/String;)V

    goto :goto_40

    .line 88
    :cond_77
    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->setValue(Ljava/lang/String;)V

    .line 90
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_7e
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
    .line 97
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlCellsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 98
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v9, p1, Lcom/google/wireless/gdata/spreadsheets/data/CellFeed;

    if-nez v9, :cond_10

    .line 99
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Expected CellFeed!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/CellFeed;

    move-object v2, v0

    .line 103
    .local v2, cellFeed:Lcom/google/wireless/gdata/spreadsheets/data/CellFeed;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, name:Ljava/lang/String;
    const-string v9, "link"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 125
    :cond_20
    :goto_20
    return-void

    .line 108
    :cond_21
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .line 109
    .local v6, numAttrs:I
    const/4 v8, 0x0

    .line 110
    .local v8, rel:Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, href:Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, attrName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_29
    if-ge v4, v6, :cond_4b

    .line 113
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v9, "rel"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 115
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 116
    :cond_3e
    const-string v9, "href"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 117
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    .line 120
    :cond_4b
    invoke-static {v8}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 121
    const-string v9, "http://schemas.google.com/g/2005#post"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 122
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata/spreadsheets/data/CellFeed;->setEditUri(Ljava/lang/String;)V

    goto :goto_20
.end method
