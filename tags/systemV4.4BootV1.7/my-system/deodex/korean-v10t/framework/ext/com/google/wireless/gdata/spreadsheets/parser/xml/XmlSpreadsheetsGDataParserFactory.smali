.class public Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlSpreadsheetsGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataParserFactory;


# instance fields
.field private xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V
    .registers 2
    .parameter "xmlFactory"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .line 31
    return-void
.end method


# virtual methods
.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 7
    .parameter "entryClass"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 62
    .local v1, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    const-class v2, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;

    if-ne p1, v2, :cond_10

    .line 63
    new-instance v2, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParser;

    invoke-direct {v2, p2, v1}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 69
    :goto_f
    return-object v2

    .line 64
    :cond_10
    const-class v2, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;

    if-ne p1, v2, :cond_24

    .line 65
    new-instance v2, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlWorksheetsGDataParser;

    invoke-direct {v2, p2, v1}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlWorksheetsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 73
    .end local v1           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 74
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Failed to create parser"

    invoke-direct {v2, v3, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 66
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_24
    :try_start_24
    const-class v2, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    if-ne p1, v2, :cond_2e

    .line 67
    new-instance v2, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlCellsGDataParser;

    invoke-direct {v2, p2, v1}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlCellsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    .line 68
    :cond_2e
    const-class v2, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    if-ne p1, v2, :cond_38

    .line 69
    new-instance v2, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlListGDataParser;

    invoke-direct {v2, p2, v1}, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlListGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    .line 71
    :cond_38
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Unrecognized feed requested."

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_40} :catch_1a
.end method

.method public createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .registers 4
    .parameter "entry"

    .prologue
    .line 87
    instance-of v0, p1, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    if-eqz v0, :cond_c

    .line 88
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlListEntryGDataSerializer;

    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v0, v1, p1}, Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlListEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 90
    :goto_b
    return-object v0

    .line 89
    :cond_c
    instance-of v0, p1, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    if-eqz v0, :cond_18

    .line 90
    new-instance v0, Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlCellEntryGDataSerializer;

    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/parser/xml/XmlSpreadsheetsGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v0, v1, p1}, Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlCellEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    goto :goto_b

    .line 92
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a ListEntry or CellEntry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
