.class public Lorg/apache/harmony/xml/ExpatReader;
.super Ljava/lang/Object;
.source "ExpatReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatReader$Feature;
    }
.end annotation


# static fields
.field private static final LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field contentHandler:Lorg/xml/sax/ContentHandler;

.field entityResolver:Lorg/xml/sax/EntityResolver;

.field errorHandler:Lorg/xml/sax/ErrorHandler;

.field lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private processNamespacePrefixes:Z

.field private processNamespaces:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xml/ExpatReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    .line 59
    return-void
.end method

.method private parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "in"
    .parameter "encoding"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    iget-boolean v3, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    move-object v1, p2

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v0, parser:Lorg/apache/harmony/xml/ExpatParser;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseDocument(Ljava/io/InputStream;)V

    .line 330
    return-void
.end method

.method private parse(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "in"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser;

    const-string v1, "UTF-16"

    iget-boolean v3, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, parser:Lorg/apache/harmony/xml/ExpatParser;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseDocument(Ljava/io/Reader;)V

    .line 318
    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p1, :cond_a

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_a
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    const/4 v0, 0x0

    .line 90
    :goto_13
    return v0

    .line 81
    :cond_14
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 82
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    goto :goto_13

    .line 85
    :cond_1f
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 86
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    goto :goto_13

    .line 89
    :cond_2a
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 90
    const/4 v0, 0x1

    goto :goto_13

    .line 93
    :cond_34
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_a

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_a
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    .line 143
    :cond_15
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNamespaceProcessingEnabled()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .registers 3
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/ExpatReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 334
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v4, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    iget-boolean v5, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    if-ne v4, v5, :cond_e

    .line 264
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    const-string v5, "The \'namespace-prefix\' feature is not supported while the \'namespaces\' feature is enabled."

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_e
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    .line 271
    .local v2, reader:Ljava/io/Reader;
    if-eqz v2, :cond_28

    .line 273
    :try_start_14
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_23

    .line 276
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 306
    :goto_22
    return-void

    .line 276
    :catchall_23
    move-exception v4

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v4

    .line 282
    :cond_28
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 283
    .local v1, in:Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, encoding:Ljava/lang/String;
    if-eqz v1, :cond_46

    .line 286
    :try_start_32
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v0, v4, v5}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_41

    .line 289
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_22

    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4

    .line 294
    :cond_46
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, systemId:Ljava/lang/String;
    if-nez v3, :cond_54

    .line 296
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "No input specified."

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_54
    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 302
    :try_start_58
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v0, v4, v3}, Lorg/apache/harmony/xml/ExpatReader;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_63

    .line 304
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_22

    :catchall_63
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 188
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 189
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 4
    .parameter "ignored"

    .prologue
    .line 177
    sget-object v0, Lorg/apache/harmony/xml/ExpatReader;->logger:Ljava/util/logging/Logger;

    const-string v1, "DTD handlers aren\'t supported."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 166
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 167
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 197
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_a

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_a
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 103
    if-eqz p2, :cond_37

    .line 104
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2d
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 112
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    .line 124
    :cond_37
    :goto_37
    return-void

    .line 116
    :cond_38
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 117
    iput-boolean p2, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespacePrefixes:Z

    goto :goto_37

    .line 121
    :cond_43
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 122
    if-nez p2, :cond_37

    .line 126
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot disable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_66
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .parameter "lexicalHandler"

    .prologue
    .line 230
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 231
    return-void
.end method

.method public setNamespaceProcessingEnabled(Z)V
    .registers 2
    .parameter "processNamespaces"

    .prologue
    .line 252
    iput-boolean p1, p0, Lorg/apache/harmony/xml/ExpatReader;->processNamespaces:Z

    .line 253
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_a

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_a
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 154
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1b

    .line 155
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 156
    return-void

    .line 158
    .restart local p2
    :cond_1b
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "value doesn\'t implement org.xml.sax.ext.LexicalHandler"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_23
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
