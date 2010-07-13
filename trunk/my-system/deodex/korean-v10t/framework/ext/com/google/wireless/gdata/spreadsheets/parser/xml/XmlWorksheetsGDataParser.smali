.class public Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlWorksheetsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlWorksheetsGDataParser.java"


# static fields
.field protected static final CELLS_FEED_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#cellsfeed"

.field protected static final LIST_FEED_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#listfeed"


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
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetFeed;-><init>()V

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
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlWorksheetsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 67
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v4, p1, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    if-nez v4, :cond_11

    .line 68
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expected WorksheetEntry!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    move-object v3, v0

    .line 73
    .local v3, worksheet:Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, name:Ljava/lang/String;
    const-string v4, "rowCount"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 75
    invoke-static {v2}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->setRowCount(I)V

    .line 81
    :cond_2c
    :goto_2c
    return-void

    .line 77
    :cond_2d
    const-string v4, "colCount"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 78
    invoke-static {v2}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->setColCount(I)V

    goto :goto_2c
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 9
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "application/atom+xml"

    .line 89
    const-string v2, "http://schemas.google.com/spreadsheets/2006#listfeed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "application/atom+xml"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 90
    move-object v0, p4

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    move-object v1, v0

    .line 91
    .local v1, sheet:Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;
    invoke-virtual {v1, p3}, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->setListFeedUri(Ljava/lang/String;)V

    .line 97
    .end local v1           #sheet:Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;
    :cond_19
    :goto_19
    return-void

    .line 92
    :cond_1a
    const-string v2, "http://schemas.google.com/spreadsheets/2006#cellsfeed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "application/atom+xml"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 94
    move-object v0, p4

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    move-object v1, v0

    .line 95
    .restart local v1       #sheet:Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;
    invoke-virtual {v1, p3}, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->setCellFeedUri(Ljava/lang/String;)V

    goto :goto_19
.end method
