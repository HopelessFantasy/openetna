.class public Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;
.super Lcom/lge/feed/parser/xmlpull/AbstractFeedProcessor;
.source "AtomFeedProcessor.java"


# static fields
.field public static final ATOM_03_NS:Ljava/lang/String; = "http://purl.org/atom/ns#"

.field public static final ATOM_10_NS:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field protected static final ATTR_BASE:Ljava/lang/String; = "base"

.field public static final TYPE_ATOM_03:Ljava/lang/String; = "atom_0.3"

.field public static final TYPE_ATOM_10:Ljava/lang/String; = "atom_1.0"

.field public static final TYPE_ATOM_UNKNOWN:Ljava/lang/String; = "atom_unknown"

.field public static boostMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->boostMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/feed/parser/xmlpull/AbstractFeedProcessor;-><init>()V

    .line 46
    return-void
.end method

.method private getCategory(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Category;
    .registers 8
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/lge/feed/atom/Category;

    invoke-direct {v0}, Lcom/lge/feed/atom/Category;-><init>()V

    .line 277
    .local v0, c:Lcom/lge/feed/atom/Category;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 278
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_4a

    .line 279
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, name:Ljava/lang/String;
    const-string v4, "term"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 281
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/feed/atom/Category;->setTerm(Ljava/lang/String;)V

    .line 278
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 282
    :cond_22
    const-string v4, "scheme"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 283
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/feed/atom/Category;->setScheme(Ljava/lang/String;)V

    goto :goto_1f

    .line 284
    :cond_32
    const-string v4, "label"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 285
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/feed/atom/Category;->setLabel(Ljava/lang/String;)V

    goto :goto_1f

    .line 287
    :cond_42
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/lge/feed/atom/Category;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 290
    .end local v3           #name:Ljava/lang/String;
    :cond_4a
    :goto_4a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_55

    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_4a

    .line 293
    :cond_55
    return-object v0
.end method

.method private getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;
    .registers 12
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Lcom/lge/feed/atom/Content;

    invoke-direct {v0}, Lcom/lge/feed/atom/Content;-><init>()V

    .line 393
    .local v0, c:Lcom/lge/feed/atom/Content;
    const-string v6, "text/plain"

    .line 394
    .local v6, type:Ljava/lang/String;
    const-string v3, "text"

    .line 395
    .local v3, mode:Ljava/lang/String;
    const/4 v5, 0x0

    .line 396
    .local v5, src:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 397
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_46

    .line 398
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, name:Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 400
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 397
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 401
    :cond_24
    const-string v8, "mode"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 402
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 403
    :cond_31
    const-string v8, "src"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 404
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    .line 406
    :cond_3e
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/lge/feed/atom/Content;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 409
    .end local v4           #name:Ljava/lang/String;
    :cond_46
    invoke-virtual {v0, v6}, Lcom/lge/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, v3}, Lcom/lge/feed/atom/Content;->setMode(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, v5}, Lcom/lge/feed/atom/Content;->setSrc(Ljava/lang/String;)V

    .line 412
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 414
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 415
    const-string v8, "base64"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 416
    invoke-static {v7}, Lcom/lge/util/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    :cond_69
    :goto_69
    invoke-virtual {v0, v7}, Lcom/lge/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 422
    :cond_6c
    :goto_6c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_84

    .line 423
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_6c

    .line 417
    :cond_77
    const-string v8, "escaped"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 418
    invoke-static {v7}, Lcom/lge/util/Util;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_69

    .line 426
    :cond_84
    return-object v0
.end method

.method private getGenerator(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Generator;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/lge/feed/atom/Generator;

    invoke-direct {v0}, Lcom/lge/feed/atom/Generator;-><init>()V

    .line 298
    .local v0, g:Lcom/lge/feed/atom/Generator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 299
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_4a

    .line 300
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, name:Ljava/lang/String;
    const-string v5, "url"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 302
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/feed/atom/Generator;->setUrl(Ljava/lang/String;)V

    .line 299
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 303
    :cond_22
    const-string v5, "uri"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 304
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/feed/atom/Generator;->setUrl(Ljava/lang/String;)V

    goto :goto_1f

    .line 305
    :cond_32
    const-string v5, "version"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 306
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/feed/atom/Generator;->setVersion(Ljava/lang/String;)V

    goto :goto_1f

    .line 308
    :cond_42
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/lge/feed/atom/Generator;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 311
    .end local v3           #name:Ljava/lang/String;
    :cond_4a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_57

    .line 313
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/feed/atom/Generator;->setValue(Ljava/lang/String;)V

    .line 315
    :cond_57
    :goto_57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_62

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_57

    .line 318
    :cond_62
    return-object v0
.end method

.method private getLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Link;
    .registers 8
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v2, Lcom/lge/feed/atom/Link;

    invoke-direct {v2}, Lcom/lge/feed/atom/Link;-><init>()V

    .line 361
    .local v2, link:Lcom/lge/feed/atom/Link;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 362
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_80

    .line 363
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, name:Ljava/lang/String;
    const-string v4, "rel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 365
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 362
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 366
    :cond_22
    const-string v4, "type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 367
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/feed/atom/Link;->setType(Ljava/lang/String;)V

    goto :goto_1f

    .line 368
    :cond_32
    const-string v4, "href"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 369
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/feed/atom/Link;->setHref(Ljava/lang/String;)V

    goto :goto_1f

    .line 370
    :cond_42
    const-string v4, "title"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 371
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/feed/atom/Link;->setTitle(Ljava/lang/String;)V

    goto :goto_1f

    .line 372
    :cond_52
    const-string v4, "hreflang"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 373
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/feed/atom/Link;->setHreflang(Ljava/lang/String;)V

    goto :goto_1f

    .line 374
    :cond_62
    const-string v4, "length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 376
    :try_start_6a
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/lge/feed/atom/Link;->setLength(J)V
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_1f

    .line 377
    :catch_76
    move-exception v4

    goto :goto_1f

    .line 381
    :cond_78
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/feed/atom/Link;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 384
    .end local v3           #name:Ljava/lang/String;
    :cond_80
    :goto_80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8b

    .line 385
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_80

    .line 387
    :cond_8b
    return-object v2
.end method

.method private getPerson(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Person;
    .registers 10
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v5, Lcom/lge/feed/atom/Person;

    invoke-direct {v5}, Lcom/lge/feed/atom/Person;-><init>()V

    .line 324
    .local v5, p:Lcom/lge/feed/atom/Person;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 325
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_1a

    .line 326
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, name:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lcom/lge/feed/atom/Person;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 329
    .end local v4           #name:Ljava/lang/String;
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 330
    .local v0, eventType:I
    :goto_1e
    const/4 v7, 0x3

    if-eq v0, v7, :cond_7a

    .line 331
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3d

    .line 332
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 333
    .restart local v4       #name:Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 334
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_3d

    .line 336
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lge/feed/atom/Person;->setName(Ljava/lang/String;)V

    .line 353
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_3d
    :goto_3d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1e

    .line 338
    .restart local v4       #name:Ljava/lang/String;
    :cond_42
    const-string v7, "uri"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 339
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 340
    .restart local v6       #value:Ljava/lang/String;
    if-eqz v6, :cond_3d

    .line 341
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lge/feed/atom/Person;->setUri(Ljava/lang/String;)V

    goto :goto_3d

    .line 343
    .end local v6           #value:Ljava/lang/String;
    :cond_58
    const-string v7, "email"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 344
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 345
    .restart local v6       #value:Ljava/lang/String;
    if-eqz v6, :cond_3d

    .line 346
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lge/feed/atom/Person;->setEmail(Ljava/lang/String;)V

    goto :goto_3d

    .line 349
    .end local v6           #value:Ljava/lang/String;
    :cond_6e
    invoke-virtual {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getMarkup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Markup;

    move-result-object v3

    .line 350
    .local v3, m:Lcom/lge/feed/Markup;
    invoke-virtual {v5}, Lcom/lge/feed/atom/Person;->getKnownMarkup()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 355
    .end local v3           #m:Lcom/lge/feed/Markup;
    .end local v4           #name:Ljava/lang/String;
    :cond_7a
    return-object v5
.end method


# virtual methods
.method public getEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Entry;
    .registers 12
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Lcom/lge/feed/atom/Entry;

    invoke-direct {v1}, Lcom/lge/feed/atom/Entry;-><init>()V

    .line 211
    .local v1, e:Lcom/lge/feed/atom/Entry;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v3, v8, :cond_2a

    .line 212
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, name:Ljava/lang/String;
    const-string v8, "base"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 214
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setXmlBase(Ljava/lang/String;)V

    .line 211
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 216
    :cond_22
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/lge/feed/atom/Entry;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 219
    .end local v6           #name:Ljava/lang/String;
    :cond_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 220
    .local v2, eventType:I
    :goto_2e
    const/4 v8, 0x3

    if-eq v2, v8, :cond_18c

    .line 221
    const/4 v8, 0x2

    if-ne v2, v8, :cond_47

    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 223
    .restart local v6       #name:Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 224
    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setTitle(Lcom/lge/feed/atom/Content;)V

    .line 270
    .end local v6           #name:Ljava/lang/String;
    :cond_47
    :goto_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2e

    .line 225
    .restart local v6       #name:Ljava/lang/String;
    :cond_4c
    const-string v8, "link"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 226
    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Link;

    move-result-object v4

    .line 227
    .local v4, link:Lcom/lge/feed/atom/Link;
    const-string v8, "alternate"

    invoke-virtual {v4}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 228
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getAlternateLinks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 230
    :cond_6c
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 232
    .end local v4           #link:Lcom/lge/feed/atom/Link;
    :cond_74
    const-string v8, "author"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 233
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getPerson(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Person;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 234
    :cond_88
    const-string v8, "contributor"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 235
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getContributors()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getPerson(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Person;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 236
    :cond_9c
    const-string v8, "id"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_47

    .line 239
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setId(Ljava/lang/String;)V

    goto :goto_47

    .line 241
    .end local v7           #value:Ljava/lang/String;
    :cond_b2
    const-string v8, "source"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 242
    invoke-virtual {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Feed;

    move-result-object v8

    check-cast v8, Lcom/lge/feed/atom/AtomFeed;

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setSource(Lcom/lge/feed/atom/AtomFeed;)V

    goto :goto_47

    .line 243
    :cond_c4
    const-string v8, "rights"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 245
    .restart local v7       #value:Ljava/lang/String;
    if-eqz v7, :cond_47

    .line 246
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setRights(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 248
    .end local v7           #value:Ljava/lang/String;
    :cond_db
    const-string v8, "updated"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setUpdated(Ljava/util/Date;)V

    goto/16 :goto_47

    .line 250
    :cond_f0
    const-string v8, "published"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_105

    .line 251
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setPublished(Ljava/util/Date;)V

    goto/16 :goto_47

    .line 252
    :cond_105
    const-string v8, "category"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    .line 253
    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getCategory(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Category;

    move-result-object v0

    .line 254
    .local v0, c:Lcom/lge/feed/atom/Category;
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getCategories()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 255
    .end local v0           #c:Lcom/lge/feed/atom/Category;
    :cond_11a
    const-string v8, "modified"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setModified(Ljava/util/Date;)V

    goto/16 :goto_47

    .line 257
    :cond_12f
    const-string v8, "issued"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_144

    .line 258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setIssued(Ljava/util/Date;)V

    goto/16 :goto_47

    .line 259
    :cond_144
    const-string v8, "created"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_159

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setCreated(Ljava/util/Date;)V

    goto/16 :goto_47

    .line 261
    :cond_159
    const-string v8, "summary"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16a

    .line 262
    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/feed/atom/Entry;->setSummary(Lcom/lge/feed/atom/Content;)V

    goto/16 :goto_47

    .line 263
    :cond_16a
    const-string v8, "content"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 264
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getContents()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 266
    :cond_17f
    invoke-virtual {p0, p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getMarkup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Markup;

    move-result-object v5

    .line 267
    .local v5, m:Lcom/lge/feed/Markup;
    invoke-virtual {v1}, Lcom/lge/feed/atom/Entry;->getKnownMarkup()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47

    .line 272
    .end local v5           #m:Lcom/lge/feed/Markup;
    .end local v6           #name:Ljava/lang/String;
    :cond_18c
    return-object v1
.end method

.method public getFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Feed;
    .registers 3
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/Feed;
    .registers 23
    .parameter "xpp"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, namespace:Ljava/lang/String;
    const-string v18, "http://www.w3.org/2005/Atom"

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_46

    .line 68
    const-string v16, "atom_1.0"

    .line 74
    .local v16, type:Ljava/lang/String;
    :goto_11
    new-instance v3, Lcom/lge/feed/atom/AtomFeed;

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lge/feed/atom/AtomFeed;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, atom:Lcom/lge/feed/atom/AtomFeed;
    sget-boolean v18, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->boostMode:Z

    if-nez v18, :cond_66

    .line 76
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    .line 77
    .local v10, l:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_22
    if-ge v9, v10, :cond_66

    .line 78
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, name:Ljava/lang/String;
    const-string v18, "base"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_57

    .line 80
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setXmlBase(Ljava/lang/String;)V

    .line 77
    :goto_43
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 69
    .end local v3           #atom:Lcom/lge/feed/atom/AtomFeed;
    .end local v9           #i:I
    .end local v10           #l:I
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :cond_46
    const-string v18, "http://purl.org/atom/ns#"

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_54

    .line 70
    const-string v16, "atom_0.3"

    .restart local v16       #type:Ljava/lang/String;
    goto :goto_11

    .line 72
    .end local v16           #type:Ljava/lang/String;
    :cond_54
    const-string v16, "atom_unknown"

    .restart local v16       #type:Ljava/lang/String;
    goto :goto_11

    .line 82
    .restart local v3       #atom:Lcom/lge/feed/atom/AtomFeed;
    .restart local v9       #i:I
    .restart local v10       #l:I
    .restart local v13       #name:Ljava/lang/String;
    :cond_57
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object v1, v13

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/feed/atom/AtomFeed;->setUnknownAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 88
    .end local v9           #i:I
    .end local v10           #l:I
    .end local v13           #name:Ljava/lang/String;
    :cond_66
    :try_start_66
    sget-boolean v18, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->boostMode:Z

    if-eqz v18, :cond_f4

    .line 89
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    .line 90
    .local v7, eventType:I
    :goto_6e
    const/16 v18, 0x3

    move v0, v7

    move/from16 v1, v18

    if-eq v0, v1, :cond_2ec

    .line 91
    const/16 v18, 0x2

    move v0, v7

    move/from16 v1, v18

    if-ne v0, v1, :cond_a5

    .line 92
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 93
    .restart local v13       #name:Ljava/lang/String;
    const-string v18, "link"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c1

    .line 94
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Link;

    move-result-object v11

    .line 95
    .local v11, link:Lcom/lge/feed/atom/Link;
    const-string v18, "alternate"

    invoke-virtual {v11}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_aa

    .line 96
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getAlternateLinks()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v11           #link:Lcom/lge/feed/atom/Link;
    .end local v13           #name:Ljava/lang/String;
    :cond_a5
    :goto_a5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    goto :goto_6e

    .line 98
    .restart local v11       #link:Lcom/lge/feed/atom/Link;
    .restart local v13       #name:Ljava/lang/String;
    :cond_aa
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_b4} :catch_b5
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_b4} :catch_d9

    goto :goto_a5

    .line 194
    .end local v7           #eventType:I
    .end local v11           #link:Lcom/lge/feed/atom/Link;
    .end local v13           #name:Ljava/lang/String;
    :catch_b5
    move-exception v18

    move-object/from16 v5, v18

    .line 195
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v18, Lcom/lge/feed/parser/FeedParseException;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/lge/feed/parser/FeedParseException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 100
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #eventType:I
    .restart local v13       #name:Ljava/lang/String;
    :cond_c1
    :try_start_c1
    const-string v18, "entry"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f0

    .line 101
    invoke-virtual/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Entry;

    move-result-object v6

    .line 102
    .local v6, entry:Lcom/lge/feed/atom/Entry;
    if-eqz p2, :cond_e5

    .line 103
    move-object/from16 v0, p2

    move-object v1, v6

    invoke-interface {v0, v1}, Lcom/lge/feed/Feed$FeedEntryCallback;->onEntry(Lcom/lge/feed/atom/Entry;)V
    :try_end_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c1 .. :try_end_d8} :catch_b5
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_d8} :catch_d9

    goto :goto_a5

    .line 196
    .end local v6           #entry:Lcom/lge/feed/atom/Entry;
    .end local v7           #eventType:I
    .end local v13           #name:Ljava/lang/String;
    :catch_d9
    move-exception v18

    move-object/from16 v5, v18

    .line 197
    .local v5, e:Ljava/io/IOException;
    new-instance v18, Lcom/lge/feed/parser/FeedParseException;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/lge/feed/parser/FeedParseException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 105
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #entry:Lcom/lge/feed/atom/Entry;
    .restart local v7       #eventType:I
    .restart local v13       #name:Ljava/lang/String;
    :cond_e5
    :try_start_e5
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 108
    .end local v6           #entry:Lcom/lge/feed/atom/Entry;
    :cond_f0
    invoke-virtual/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a5

    .line 114
    .end local v7           #eventType:I
    .end local v13           #name:Ljava/lang/String;
    :cond_f4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    .line 115
    .restart local v7       #eventType:I
    :goto_f8
    const/16 v18, 0x3

    move v0, v7

    move/from16 v1, v18

    if-eq v0, v1, :cond_2ec

    .line 116
    const/16 v18, 0x2

    move v0, v7

    move/from16 v1, v18

    if-ne v0, v1, :cond_11c

    .line 117
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 118
    .restart local v13       #name:Ljava/lang/String;
    const-string v18, "title"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_121

    .line 119
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v4

    .line 120
    .local v4, c:Lcom/lge/feed/atom/Content;
    invoke-virtual {v3, v4}, Lcom/lge/feed/atom/AtomFeed;->setTitle(Lcom/lge/feed/atom/Content;)V

    .line 190
    .end local v4           #c:Lcom/lge/feed/atom/Content;
    .end local v13           #name:Ljava/lang/String;
    :cond_11c
    :goto_11c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    goto :goto_f8

    .line 121
    .restart local v13       #name:Ljava/lang/String;
    :cond_121
    const-string v18, "link"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_152

    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Link;

    move-result-object v11

    .line 123
    .restart local v11       #link:Lcom/lge/feed/atom/Link;
    const-string v18, "alternate"

    invoke-virtual {v11}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_147

    .line 124
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getAlternateLinks()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 126
    :cond_147
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 128
    .end local v11           #link:Lcom/lge/feed/atom/Link;
    :cond_152
    const-string v18, "author"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16c

    .line 129
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getPerson(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Person;

    move-result-object v15

    .line 130
    .local v15, p:Lcom/lge/feed/atom/Person;
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getAuthors()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 131
    .end local v15           #p:Lcom/lge/feed/atom/Person;
    :cond_16c
    const-string v18, "contributor"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_186

    .line 132
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getPerson(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Person;

    move-result-object v15

    .line 133
    .restart local v15       #p:Lcom/lge/feed/atom/Person;
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getContributors()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 134
    .end local v15           #p:Lcom/lge/feed/atom/Person;
    :cond_186
    const-string v18, "tagline"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_199

    .line 135
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v4

    .line 136
    .restart local v4       #c:Lcom/lge/feed/atom/Content;
    invoke-virtual {v3, v4}, Lcom/lge/feed/atom/AtomFeed;->setTagline(Lcom/lge/feed/atom/Content;)V

    goto :goto_11c

    .line 137
    .end local v4           #c:Lcom/lge/feed/atom/Content;
    :cond_199
    const-string v18, "id"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b6

    .line 138
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, value:Ljava/lang/String;
    if-eqz v17, :cond_11c

    .line 140
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setId(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 142
    .end local v17           #value:Ljava/lang/String;
    :cond_1b6
    const-string v18, "generator"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1ca

    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getGenerator(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Generator;

    move-result-object v8

    .line 144
    .local v8, g:Lcom/lge/feed/atom/Generator;
    invoke-virtual {v3, v8}, Lcom/lge/feed/atom/AtomFeed;->setGenerator(Lcom/lge/feed/atom/Generator;)V

    goto/16 :goto_11c

    .line 145
    .end local v8           #g:Lcom/lge/feed/atom/Generator;
    :cond_1ca
    const-string v18, "copyright"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e7

    .line 146
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 147
    .restart local v17       #value:Ljava/lang/String;
    if-eqz v17, :cond_11c

    .line 148
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setCopyright(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 150
    .end local v17           #value:Ljava/lang/String;
    :cond_1e7
    const-string v18, "info"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1fb

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v4

    .line 152
    .restart local v4       #c:Lcom/lge/feed/atom/Content;
    invoke-virtual {v3, v4}, Lcom/lge/feed/atom/AtomFeed;->setInfo(Lcom/lge/feed/atom/Content;)V

    goto/16 :goto_11c

    .line 153
    .end local v4           #c:Lcom/lge/feed/atom/Content;
    :cond_1fb
    const-string v18, "modified"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_216

    .line 154
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setModified(Ljava/util/Date;)V

    goto/16 :goto_11c

    .line 155
    :cond_216
    const-string v18, "entry"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23b

    .line 156
    invoke-virtual/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Entry;

    move-result-object v6

    .line 157
    .restart local v6       #entry:Lcom/lge/feed/atom/Entry;
    if-eqz p2, :cond_22f

    .line 158
    move-object/from16 v0, p2

    move-object v1, v6

    invoke-interface {v0, v1}, Lcom/lge/feed/Feed$FeedEntryCallback;->onEntry(Lcom/lge/feed/atom/Entry;)V

    goto/16 :goto_11c

    .line 160
    :cond_22f
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11c

    .line 162
    .end local v6           #entry:Lcom/lge/feed/atom/Entry;
    :cond_23b
    const-string v18, "category"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_256

    .line 163
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getCategory(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Category;

    move-result-object v4

    .line 164
    .local v4, c:Lcom/lge/feed/atom/Category;
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getCategories()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11c

    .line 165
    .end local v4           #c:Lcom/lge/feed/atom/Category;
    :cond_256
    const-string v18, "subtitle"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26a

    .line 166
    invoke-direct/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getContent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/Content;

    move-result-object v4

    .line 167
    .local v4, c:Lcom/lge/feed/atom/Content;
    invoke-virtual {v3, v4}, Lcom/lge/feed/atom/AtomFeed;->setSubtitle(Lcom/lge/feed/atom/Content;)V

    goto/16 :goto_11c

    .line 168
    .end local v4           #c:Lcom/lge/feed/atom/Content;
    :cond_26a
    const-string v18, "rights"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_287

    .line 169
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 170
    .restart local v17       #value:Ljava/lang/String;
    if-eqz v17, :cond_11c

    .line 171
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setRights(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 173
    .end local v17           #value:Ljava/lang/String;
    :cond_287
    const-string v18, "updated"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a2

    .line 174
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/util/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setUpdated(Ljava/util/Date;)V

    goto/16 :goto_11c

    .line 175
    :cond_2a2
    const-string v18, "icon"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2bf

    .line 176
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 177
    .restart local v17       #value:Ljava/lang/String;
    if-eqz v17, :cond_11c

    .line 178
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setIcon(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 180
    .end local v17           #value:Ljava/lang/String;
    :cond_2bf
    const-string v18, "logo"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2dc

    .line 181
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 182
    .restart local v17       #value:Ljava/lang/String;
    if-eqz v17, :cond_11c

    .line 183
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/feed/atom/AtomFeed;->setLogo(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 186
    .end local v17           #value:Ljava/lang/String;
    :cond_2dc
    invoke-virtual/range {p0 .. p1}, Lcom/lge/feed/parser/xmlpull/atom/AtomFeedProcessor;->getMarkup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/Markup;

    move-result-object v12

    .line 187
    .local v12, m:Lcom/lge/feed/Markup;
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getKnownMarkup()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e5 .. :try_end_2ea} :catch_b5
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_2ea} :catch_d9

    goto/16 :goto_11c

    .line 193
    .end local v12           #m:Lcom/lge/feed/Markup;
    .end local v13           #name:Ljava/lang/String;
    :cond_2ec
    return-object v3
.end method
