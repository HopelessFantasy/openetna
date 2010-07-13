.class public Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlListEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlListEntryGDataSerializer.java"


# static fields
.field public static final NAMESPACE_GSX:Ljava/lang/String; = "gsx"

.field public static final NAMESPACE_GSX_URI:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006/extended"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 3
    .parameter "xmlFactory"
    .parameter "entry"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "gsx"

    const-string v1, "http://schemas.google.com/spreadsheets/2006/extended"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 10
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "http://schemas.google.com/spreadsheets/2006/extended"

    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlListEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;

    .line 53
    .local v0, entry:Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;
    invoke-virtual {v0}, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->getNames()Ljava/util/Vector;

    move-result-object v3

    .line 54
    .local v3, names:Ljava/util/Vector;
    const/4 v2, 0x0

    .line 55
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    .local v1, it:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 59
    .restart local v2       #name:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    if-eqz v4, :cond_12

    .line 61
    const-string v5, "http://schemas.google.com/spreadsheets/2006/extended"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string v5, "http://schemas.google.com/spreadsheets/2006/extended"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .line 66
    :cond_32
    return-void
.end method
