.class public abstract Ljavax/xml/parsers/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract getParser()Lorg/xml/sax/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getXMLReader()Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract isNamespaceAware()Z
.end method

.method public abstract isValidating()Z
.end method

.method public isXIncludeAware()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V
    .registers 6
    .parameter "file"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_a

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file must not be a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_18
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, source:Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 158
    return-void
.end method

.method public parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 6
    .parameter "file"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_a

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file must not be a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_18
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, source:Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 181
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;)V
    .registers 5
    .parameter "stream"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p1, :cond_a

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 200
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;Ljava/lang/String;)V
    .registers 7
    .parameter "stream"
    .parameter "handler"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p1, :cond_a

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stream must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 221
    .local v0, source:Lorg/xml/sax/InputSource;
    if-eqz p3, :cond_14

    .line 222
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 224
    :cond_14
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 225
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 4
    .parameter "stream"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 241
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;)V
    .registers 7
    .parameter "stream"
    .parameter "handler"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_a

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stream must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 262
    .local v0, source:Lorg/xml/sax/InputSource;
    if-eqz p3, :cond_14

    .line 263
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 265
    :cond_14
    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 266
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/xml/sax/HandlerBase;)V
    .registers 5
    .parameter "uri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_a

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 285
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 5
    .parameter "uri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_a

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 304
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .registers 6
    .parameter "source"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    .line 321
    .local v0, parser:Lorg/xml/sax/Parser;
    if-nez p1, :cond_e

    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "source must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_e
    if-eqz p2, :cond_1c

    .line 326
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 327
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 328
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 329
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 332
    :cond_1c
    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V

    .line 333
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 6
    .parameter "source"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    if-nez p1, :cond_a

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "source must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_a
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 354
    .local v0, reader:Lorg/xml/sax/XMLReader;
    if-eqz p2, :cond_1c

    .line 355
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 356
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 357
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 358
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 361
    :cond_1c
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 362
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 372
    return-void
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method
