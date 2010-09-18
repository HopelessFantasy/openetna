.class Lorg/apache/harmony/xml/parsers/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"


# instance fields
.field private parser:Lorg/xml/sax/Parser;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, features:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    .line 45
    new-instance v2, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v2}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v4, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    goto :goto_12

    .line 50
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_34
    return-void
.end method


# virtual methods
.method public getParser()Lorg/xml/sax/Parser;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    if-nez v0, :cond_d

    .line 55
    new-instance v0, Lorg/xml/sax/helpers/XMLReaderAdapter;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, v1}, Lorg/xml/sax/helpers/XMLReaderAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    .line 58
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->parser:Lorg/xml/sax/Parser;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .registers 4

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 77
    :goto_8
    return v1

    .line 76
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, ex:Lorg/xml/sax/SAXException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserImpl;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
