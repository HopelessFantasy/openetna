.class Lorg/apache/harmony/xml/ExpatParser;
.super Ljava/lang/Object;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatParser$1;,
        Lorg/apache/harmony/xml/ExpatParser$EntityParser;,
        Lorg/apache/harmony/xml/ExpatParser$ParseException;,
        Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;,
        Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa0

.field static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-16"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final OUTSIDE_START_ELEMENT:Ljava/lang/String; = "Attributes can only be used within the scope of startElement()."

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private attributeCount:I

.field private attributePointer:I

.field private final attributes:Lorg/apache/harmony/xml/ExpatAttributes;

.field private final encoding:Ljava/lang/String;

.field private inStartElement:Z

.field private final locator:Lorg/xml/sax/Locator;

.field private pointer:I

.field private final publicId:Ljava/lang/String;

.field private final systemId:Ljava/lang/String;

.field private final xmlReader:Lorg/apache/harmony/xml/ExpatReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 567
    const-string v0, ""

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->staticInitialize(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "encoding"
    .parameter "xmlReader"
    .parameter "pointer"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 53
    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    .line 55
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 64
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 107
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 109
    iput p3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    .line 110
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "encoding"
    .parameter "xmlReader"
    .parameter "processNamespaces"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 53
    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    .line 55
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 64
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 83
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 95
    if-nez p1, :cond_2f

    const-string v0, "UTF-8"

    :goto_24
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lorg/apache/harmony/xml/ExpatParser;->initialize(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    .line 100
    return-void

    :cond_2f
    move-object v0, p1

    .line 95
    goto :goto_24
.end method

.method static synthetic access$1000(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/harmony/xml/ExpatParser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->line()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->column()I

    move-result v0

    return v0
.end method

.method private native append(ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native append(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native append(I[CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private static native cloneAttributes(II)I
.end method

.method private column()I
    .registers 2

    .prologue
    .line 583
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->column(I)I

    move-result v0

    return v0
.end method

.method private static native column(I)I
.end method

.method private static native createEntityParser(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 524
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 525
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 527
    :cond_9
    return-void
.end method

.method private native initialize(Ljava/lang/String;Z)I
.end method

.method private line()I
    .registers 2

    .prologue
    .line 574
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->line(I)I

    move-result v0

    return v0
.end method

.method private static native line(I)I
.end method

.method static openUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 738
    .local v2, urlConnection:Ljava/net/URLConnection;
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 739
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 740
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 741
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 742
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v3

    return-object v3

    .line 743
    .end local v2           #urlConnection:Ljava/net/URLConnection;
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 744
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 745
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 746
    throw v1
.end method

.method private parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    .registers 10
    .parameter "entityParser"
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v3, "<externalEntity>"

    const-string v3, "</externalEntity>"

    .line 330
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 331
    .local v1, reader:Ljava/io/Reader;
    if-eqz v1, :cond_20

    .line 333
    :try_start_a
    const-string v3, "<externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V

    .line 334
    invoke-direct {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 335
    const-string v3, "</externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    .line 338
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 377
    :goto_1a
    return-void

    .line 338
    :catchall_1b
    move-exception v3

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v3

    .line 344
    :cond_20
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 345
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_48

    .line 347
    :try_start_26
    const-string v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 349
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 350
    const-string v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_43

    .line 354
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1a

    :catchall_43
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 360
    :cond_48
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, systemId:Ljava/lang/String;
    if-nez v2, :cond_59

    .line 363
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    const-string v4, "No input specified."

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 367
    :cond_59
    invoke-static {v2}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 369
    :try_start_5d
    const-string v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 371
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 372
    const-string v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_7a

    .line 375
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1a

    :catchall_7a
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method private parseFragment(Ljava/io/InputStream;)V
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 502
    const/16 v3, 0x1fa0

    new-array v0, v3, [B

    .line 504
    .local v0, buffer:[B
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, length:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 506
    :try_start_b
    iget v3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, v2}, Lorg/apache/harmony/xml/ExpatParser;->append(I[BII)V
    :try_end_11
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_4

    .line 507
    :catch_12
    move-exception v3

    move-object v1, v3

    .line 508
    .local v1, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 511
    .end local v1           #e:Lorg/apache/harmony/xml/ExpatException;
    :cond_21
    return-void
.end method

.method private parseFragment(Ljava/io/Reader;)V
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 486
    const/16 v3, 0xfd0

    new-array v0, v3, [C

    .line 488
    .local v0, buffer:[C
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, length:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 490
    :try_start_b
    iget v3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, v2}, Lorg/apache/harmony/xml/ExpatParser;->append(I[CII)V
    :try_end_11
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_4

    .line 491
    :catch_12
    move-exception v3

    move-object v1, v3

    .line 492
    .local v1, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 495
    .end local v1           #e:Lorg/apache/harmony/xml/ExpatException;
    :cond_21
    return-void
.end method

.method private pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .registers 5
    .parameter "inputSource"

    .prologue
    .line 310
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 311
    .local v1, reader:Ljava/io/Reader;
    if-eqz v1, :cond_9

    .line 312
    const-string v2, "UTF-16"

    .line 316
    :goto_8
    return-object v2

    .line 315
    :cond_9
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, encoding:Ljava/lang/String;
    if-nez v0, :cond_12

    const-string v2, "UTF-8"

    goto :goto_8

    :cond_12
    move-object v2, v0

    goto :goto_8
.end method

.method private native release(I)V
.end method

.method private static native releaseParser(I)V
.end method

.method private startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 515
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_e

    .line 516
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 517
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 519
    :cond_e
    return-void
.end method

.method private static native staticInitialize(Ljava/lang/String;)V
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .registers 7
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/harmony/xml/ExpatParser;->append(ILjava/lang/String;Z)V
    :try_end_6
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 403
    return-void

    .line 400
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 401
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method append([B)V
    .registers 4
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V

    .line 438
    return-void
.end method

.method append([BII)V
    .registers 9
    .parameter "xml"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->append(I[BII)V
    :try_end_5
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_5} :catch_6

    .line 456
    return-void

    .line 453
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 454
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method append([CII)V
    .registers 9
    .parameter "xml"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->append(I[CII)V
    :try_end_5
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_5} :catch_6

    .line 424
    return-void

    .line 421
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 422
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method cloneAttributes()Lorg/xml/sax/Attributes;
    .registers 6

    .prologue
    .line 593
    iget-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    if-nez v1, :cond_c

    .line 594
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_c
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    if-nez v1, :cond_15

    .line 598
    invoke-static {}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->access$400()Lorg/xml/sax/Attributes;

    move-result-object v1

    .line 603
    :goto_14
    return-object v1

    .line 601
    :cond_15
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    invoke-static {v1, v2}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes(II)I

    move-result v0

    .line 603
    .local v0, clonePointer:I
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    iget v3, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(IIILorg/apache/harmony/xml/ExpatParser$1;)V

    goto :goto_14
.end method

.method comment([CI)V
    .registers 5
    .parameter "text"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 172
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_a

    .line 173
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 175
    :cond_a
    return-void
.end method

.method endCdata()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 186
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 187
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 189
    :cond_9
    return-void
.end method

.method endDtd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 216
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 217
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 219
    :cond_9
    return-void
.end method

.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 158
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 159
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_9
    return-void
.end method

.method endNamespace(Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 201
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 202
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 204
    :cond_9
    return-void
.end method

.method protected declared-synchronized finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    if-eqz v0, :cond_d

    .line 546
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/ExpatParser;->release(I)V

    .line 547
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 549
    :cond_d
    monitor-exit p0

    return-void

    .line 545
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 536
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(ILjava/lang/String;Z)V
    :try_end_8
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_8} :catch_9

    .line 540
    return-void

    .line 537
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method handleExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v9, v2, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 239
    .local v9, entityResolver:Lorg/xml/sax/EntityResolver;
    if-nez v9, :cond_7

    .line 304
    :cond_6
    :goto_6
    return-void

    .line 255
    :cond_7
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 257
    :try_start_b
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 258
    .local v11, systemUri:Ljava/net/URI;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v11}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 260
    new-instance v7, Ljava/net/URI;

    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 261
    .local v7, baseUri:Ljava/net/URI;
    invoke-virtual {v7, v11}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v11

    .line 264
    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_52

    move-result-object p3

    .line 273
    .end local v7           #baseUri:Ljava/net/URI;
    .end local v11           #systemUri:Ljava/net/URI;
    :cond_2b
    :goto_2b
    invoke-interface {v9, p2, p3}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v10

    .line 275
    .local v10, inputSource:Lorg/xml/sax/InputSource;
    if-eqz v10, :cond_6

    .line 293
    invoke-direct {p0, v10}, Lorg/apache/harmony/xml/ExpatParser;->pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, encoding:Ljava/lang/String;
    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-static {v2, p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->createEntityParser(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 296
    .local v3, pointer:I
    :try_start_3b
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;

    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V

    .line 300
    .local v0, entityParser:Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    invoke-direct {p0, v0, v10}, Lorg/apache/harmony/xml/ExpatParser;->parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_95

    .line 302
    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(I)V

    goto :goto_6

    .line 266
    .end local v0           #entityParser:Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #pointer:I
    .end local v10           #inputSource:Lorg/xml/sax/InputSource;
    :catch_52
    move-exception v2

    move-object v8, v2

    .line 267
    .local v8, e:Ljava/lang/Exception;
    const-class v2, Lorg/apache/harmony/xml/ExpatParser;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not resolve \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' relative to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 302
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v1       #encoding:Ljava/lang/String;
    .restart local v3       #pointer:I
    .restart local v10       #inputSource:Lorg/xml/sax/InputSource;
    :catchall_95
    move-exception v2

    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(I)V

    throw v2
.end method

.method parseDocument(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 467
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 468
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 469
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 470
    return-void
.end method

.method parseDocument(Ljava/io/Reader;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 477
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 478
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 479
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 480
    return-void
.end method

.method processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 224
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 225
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_9
    return-void
.end method

.method startCdata()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 179
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 180
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 182
    :cond_9
    return-void
.end method

.method startDtd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 209
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 210
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_9
    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributePointer"
    .parameter "attributeCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 136
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-nez v0, :cond_9

    .line 153
    :goto_8
    return-void

    .line 141
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 142
    iput p4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    .line 143
    iput p5, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 145
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1c

    .line 149
    iput-boolean v2, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 150
    iput v3, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 151
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    goto :goto_8

    .line 149
    :catchall_1c
    move-exception v1

    iput-boolean v2, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 150
    iput v3, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 151
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    throw v1
.end method

.method startNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 194
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 195
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_9
    return-void
.end method

.method text([CI)V
    .registers 5
    .parameter "text"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 165
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_a

    .line 166
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 168
    :cond_a
    return-void
.end method
