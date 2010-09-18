.class public Lorg/xml/sax/helpers/XMLFilterImpl;
.super Ljava/lang/Object;
.source "XMLFilterImpl.java"

# interfaces
.implements Lorg/xml/sax/XMLFilter;
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private locator:Lorg/xml/sax/Locator;

.field private parent:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    .line 707
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    .line 708
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 709
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 710
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 711
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 3
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    .line 707
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    .line 708
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 709
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 710
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 711
    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 92
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 93
    return-void
.end method

.method private setupParse()V
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_c

    .line 692
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No parent for filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_c
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 695
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 696
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 697
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 698
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 566
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 568
    :cond_9
    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 475
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 477
    :cond_9
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_9
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 508
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 510
    :cond_9
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_9

    .line 655
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 657
    :cond_9
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_9

    .line 671
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 673
    :cond_9
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 182
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParent()Lorg/xml/sax/XMLReader;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_b

    .line 226
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 228
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 584
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 586
    :cond_9
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_9
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .registers 3
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    .line 353
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setupParse()V

    .line 335
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 336
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_9
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 4
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_b

    .line 378
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 380
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 284
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 285
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 262
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 263
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .parameter "locator"

    .prologue
    .line 443
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    .line 444
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_b

    .line 445
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 447
    :cond_b
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 240
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 241
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 306
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 307
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
    .line 155
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_a

    .line 156
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 160
    return-void

    .line 158
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 117
    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    .line 118
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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
    .line 203
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_a

    .line 204
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-void

    .line 206
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 617
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 619
    :cond_9
    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 460
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 462
    :cond_9
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 529
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 531
    :cond_9
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_9

    .line 492
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_9
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notationName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_9
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_9

    .line 639
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 641
    :cond_9
    return-void
.end method
