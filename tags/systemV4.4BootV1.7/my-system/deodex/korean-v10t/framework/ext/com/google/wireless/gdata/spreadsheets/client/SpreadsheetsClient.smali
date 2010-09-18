.class public Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;
.super Lcom/google/wireless/gdata/client/GDataServiceClient;
.source "SpreadsheetsClient.java"


# static fields
.field private static final SERVICE:Ljava/lang/String; = "wise"

.field public static final SPREADSHEETS_BASE_FEED_URL:Ljava/lang/String; = "http://spreadsheets.google.com/feeds/spreadsheets/private/full"


# instance fields
.field private final baseFeedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .registers 4
    .parameter "client"
    .parameter "spreadsheetFactory"

    .prologue
    .line 67
    const-string v0, "http://spreadsheets.google.com/feeds/spreadsheets/private/full"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;Ljava/lang/String;)V
    .registers 4
    .parameter "client"
    .parameter "spreadsheetFactory"
    .parameter "baseFeedUrl"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    .line 56
    iput-object p3, p0, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->baseFeedUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private getParserForTypedFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 8
    .parameter "feedEntryClass"
    .parameter "feedUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v0

    .line 91
    .local v0, gDataClient:Lcom/google/wireless/gdata/client/GDataClient;
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataParserFactory()Lcom/google/wireless/gdata/client/GDataParserFactory;

    move-result-object v1

    .line 93
    .local v1, gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;
    invoke-interface {v0, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 94
    .local v2, is:Ljava/io/InputStream;
    invoke-interface {v1, p1, v2}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .registers 9
    .parameter "feedUri"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataParserFactory()Lcom/google/wireless/gdata/client/GDataParserFactory;

    move-result-object v0

    .line 104
    .local v0, factory:Lcom/google/wireless/gdata/client/GDataParserFactory;
    invoke-interface {v0, p3}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;

    move-result-object v3

    .line 106
    .local v3, serializer:Lcom/google/wireless/gdata/serializer/GDataSerializer;
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v4

    invoke-interface {v4, p1, p2, v3}, Lcom/google/wireless/gdata/client/GDataClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v1

    .line 107
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v2

    .line 109
    .local v2, parser:Lcom/google/wireless/gdata/parser/GDataParser;
    :try_start_18
    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/GDataParser;->parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    move-result-object v4

    .line 111
    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    return-object v4

    :catchall_20
    move-exception v4

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    throw v4
.end method

.method public getBaseFeedUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->baseFeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParserForCellsFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 4
    .parameter "feedUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 127
    const-class v0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getParserForTypedFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 8
    .parameter "feedEntryClass"
    .parameter "feedUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v0

    .line 148
    .local v0, gDataClient:Lcom/google/wireless/gdata/client/GDataClient;
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataParserFactory()Lcom/google/wireless/gdata/client/GDataParserFactory;

    move-result-object v1

    .line 149
    .local v1, gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;
    invoke-interface {v0, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 150
    .local v2, is:Ljava/io/InputStream;
    invoke-interface {v1, p1, v2}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v3

    return-object v3
.end method

.method public getParserForListFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 4
    .parameter "feedUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 165
    const-class v0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getParserForTypedFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public getParserForSpreadsheetsFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 4
    .parameter "feedUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 180
    const-class v0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getParserForTypedFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public getParserForWorksheetsFeed(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 4
    .parameter "feedUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 195
    const-class v0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getParserForTypedFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "wise"

    return-object v0
.end method

.method public updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .registers 10
    .parameter "entry"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataParserFactory()Lcom/google/wireless/gdata/client/GDataParserFactory;

    move-result-object v1

    .line 217
    .local v1, factory:Lcom/google/wireless/gdata/client/GDataParserFactory;
    invoke-interface {v1, p1}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;

    move-result-object v4

    .line 219
    .local v4, serializer:Lcom/google/wireless/gdata/serializer/GDataSerializer;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, editUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 221
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "No edit URI -- cannot update."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_1a
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/client/SpreadsheetsClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v5

    invoke-interface {v5, v0, p2, v4}, Lcom/google/wireless/gdata/client/GDataClient;->updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v2

    .line 225
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v3

    .line 227
    .local v3, parser:Lcom/google/wireless/gdata/parser/GDataParser;
    :try_start_2a
    invoke-interface {v3}, Lcom/google/wireless/gdata/parser/GDataParser;->parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_32

    move-result-object v5

    .line 229
    invoke-interface {v3}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    return-object v5

    :catchall_32
    move-exception v5

    invoke-interface {v3}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    throw v5
.end method
