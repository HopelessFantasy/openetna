.class public Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlSpreadsheetsGDataParser.java"


# static fields
.field protected static final WORKSHEET_FEED_REL:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"


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
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 8
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
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V

    .line 62
    const-string v2, "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "application/atom+xml"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 64
    move-object v0, p4

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;

    move-object v1, v0

    .line 65
    .local v1, sheet:Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;
    invoke-virtual {v1, p3}, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;->setWorksheetFeedUri(Ljava/lang/String;)V

    .line 67
    .end local v1           #sheet:Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;
    :cond_1a
    return-void
.end method
