.class Ljava/util/prefs/XMLParser$1;
.super Ljava/lang/Object;
.source "XMLParser.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/XMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 7
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "http://java.sun.com/dtd/preferences.dtd"

    .line 143
    const-string v1, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 144
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT preferences (root)>    <!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\" >    <!ELEMENT root (map, node*) >    <!ATTLIST root type (system|user) #REQUIRED >    <!ELEMENT node (map, node*) >    <!ATTLIST node name CDATA #REQUIRED >    <!ELEMENT map (entry*) >    <!ELEMENT entry EMPTY >    <!ATTLIST entry key   CDATA #REQUIRED value CDATA #REQUIRED >"

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 146
    .local v0, result:Lorg/xml/sax/InputSource;
    const-string v1, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {v0, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 147
    return-object v0

    .line 150
    .end local v0           #result:Lorg/xml/sax/InputSource;
    :cond_1c
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "prefs.1"

    invoke-static {v2, p2}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
