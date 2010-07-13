.class public Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;
.source "SAXParserFactoryImpl.java"


# static fields
.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_8

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_8
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 50
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNamespaceAware()Z
    .registers 3

    .prologue
    .line 59
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 60
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 61
    .local v0, ex:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public isValidating()Z
    .registers 3

    .prologue
    .line 68
    :try_start_0
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->getFeature(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 69
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, ex:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public newSAXParser()Ljavax/xml/parsers/SAXParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 77
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v2, "No validating SAXParser implementation available"

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_e
    :try_start_e
    new-instance v1, Lorg/apache/harmony/xml/parsers/SAXParserImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/parsers/SAXParserImpl;-><init>(Ljava/util/Map;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    return-object v1

    .line 83
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_8

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_8
    const-string v0, "http://xml.org/sax/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 95
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_16
    if-eqz p2, :cond_20

    .line 99
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_1f
    return-void

    .line 102
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->features:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public setNamespaceAware(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 109
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 113
    return-void

    .line 110
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, ex:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public setValidating(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 118
    :try_start_0
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v1, p1}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 122
    return-void

    .line 119
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, ex:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
