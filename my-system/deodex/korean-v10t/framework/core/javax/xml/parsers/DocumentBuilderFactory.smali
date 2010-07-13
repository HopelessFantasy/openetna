.class public abstract Ljavax/xml/parsers/DocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DocumentBuilderFactory.java"


# instance fields
.field private coalesce:Z

.field private expandEntityReferences:Z

.field private ignoreComments:Z

.field private ignoreElementContentWhitespace:Z

.field private namespaceAware:Z

.field private validate:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 239
    const-string v1, "javax.xml.parsers.DocumentBuilderFactory"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, factory:Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 243
    :try_start_8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #factory:Ljava/lang/String;
    check-cast v0, Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    move-object v1, v0

    .line 251
    :goto_13
    return-object v1

    .line 245
    :catch_14
    move-exception v1

    .line 251
    :cond_15
    :try_start_15
    new-instance v1, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_13

    .line 252
    :catch_1b
    move-exception v1

    .line 256
    new-instance v1, Ljavax/xml/parsers/FactoryConfigurationError;

    const-string v2, "Cannot create DocumentBuilderFactory"

    invoke-direct {v1, v2}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public isCoalescing()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalesce:Z

    return v0
.end method

.method public isExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityReferences:Z

    return v0
.end method

.method public isIgnoringComments()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreElementContentWhitespace:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validate:Z

    return v0
.end method

.method public isXIncludeAware()Z
    .registers 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setCoalescing(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 284
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalesce:Z

    .line 285
    return-void
.end method

.method public setExpandEntityReferences(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 296
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityReferences:Z

    .line 297
    return-void
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public setIgnoringComments(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 344
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    .line 345
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 356
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreElementContentWhitespace:Z

    .line 357
    return-void
.end method

.method public setNamespaceAware(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 368
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    .line 369
    return-void
.end method

.method public setValidating(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 390
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validate:Z

    .line 391
    return-void
.end method

.method public setXIncludeAware(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
