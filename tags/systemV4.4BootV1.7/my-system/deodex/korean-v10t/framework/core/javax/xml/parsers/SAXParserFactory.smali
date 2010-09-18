.class public abstract Ljavax/xml/parsers/SAXParserFactory;
.super Ljava/lang/Object;
.source "SAXParserFactory.java"


# instance fields
.field private namespaceAware:Z

.field private validating:Z

.field private xincludeAware:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static newInstance()Ljavax/xml/parsers/SAXParserFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 160
    const-string v2, "javax.xml.parsers.SAXParserFactory"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, factory:Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 164
    :try_start_8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/SAXParserFactory;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    move-object v2, v0

    .line 171
    :goto_13
    return-object v2

    .line 165
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v2, v1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1c
    :try_start_1c
    new-instance v2, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;

    invoke-direct {v2}, Lorg/apache/harmony/xml/parsers/SAXParserFactoryImpl;-><init>()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_13

    .line 172
    :catch_22
    move-exception v2

    .line 176
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    const-string v3, "Cannot create SAXParserFactory"

    invoke-direct {v2, v3}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public isNamespaceAware()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    return v0
.end method

.method public isXIncludeAware()Z
    .registers 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract newSAXParser()Ljavax/xml/parsers/SAXParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public setNamespaceAware(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 245
    iput-boolean p1, p0, Ljavax/xml/parsers/SAXParserFactory;->namespaceAware:Z

    .line 246
    return-void
.end method

.method public setValidating(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 267
    iput-boolean p1, p0, Ljavax/xml/parsers/SAXParserFactory;->validating:Z

    .line 268
    return-void
.end method

.method public setXIncludeAware(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
