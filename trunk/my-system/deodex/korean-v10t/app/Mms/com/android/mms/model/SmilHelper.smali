.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field private static final TAG:Ljava/lang/String; = "SmilHelper"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .registers 4
    .parameter "target"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 391
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 392
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 393
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 394
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 395
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .registers 3
    .parameter "document"

    .prologue
    .line 145
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 147
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x40a0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 148
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 149
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .registers 4
    .parameter "target"
    .parameter "slide"

    .prologue
    const/4 v1, 0x0

    .line 401
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 402
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 403
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .registers 4
    .parameter "tag"
    .parameter "document"
    .parameter "src"

    .prologue
    .line 154
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 156
    .local v0, mediaElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v0, p2}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 13
    .parameter "slideshow"

    .prologue
    .line 247
    const-string v1, "SmilHelper"

    const-string v2, "Creating SMIL document from SlideshowModel."

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v2, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v2}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 252
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v1, "smil"

    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 253
    .local v6, smilElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v2, v6}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 256
    const-string v1, "head"

    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 257
    .local v1, headElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 260
    const-string v3, "layout"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 262
    .local v5, layoutElement:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v1, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 265
    const-string v1, "root-layout"

    .end local v1           #headElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 267
    .local v4, rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    .line 268
    .local v3, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 269
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 270
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, bgColor:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 272
    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 274
    :cond_54
    invoke-interface {v5, v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v1

    .line 278
    .local v1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v9, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3           #layouts:Lcom/android/mms/model/LayoutModel;
    .end local v4           #rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    .local v1, i$:Ljava/util/Iterator;
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/RegionModel;

    .line 280
    .local v3, r:Lcom/android/mms/model/RegionModel;
    const-string v4, "region"

    invoke-interface {v2, v4}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 281
    .local v4, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 283
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 284
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 285
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 286
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v3

    .end local v3           #r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v4, v3}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 291
    .end local v4           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_a6
    const-string v1, "body"

    .end local v1           #i$:Ljava/util/Iterator;
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 292
    .local v1, bodyElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, txtRegionPresentInLayout:Z
    const/4 v3, 0x0

    .line 296
    .local v3, imgRegionPresentInLayout:Z
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move p0, v3

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #imgRegionPresentInLayout:Z
    .end local v6           #smilElement:Lorg/w3c/dom/smil/SMILElement;
    .local p0, imgRegionPresentInLayout:Z
    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 298
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v7

    .line 299
    .local v7, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x447a

    div-float/2addr v6, v8

    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 301
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v8, v0

    invoke-static {v8, v3}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 304
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v10, v4

    .end local v4           #txtRegionPresentInLayout:Z
    .local v10, txtRegionPresentInLayout:Z
    :goto_df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 305
    .local v6, media:Lcom/android/mms/model/MediaModel;
    const/4 v4, 0x0

    .line 306
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, src:Ljava/lang/String;
    instance-of v8, v6, Lcom/android/mms/model/TextModel;

    if-eqz v8, :cond_16c

    .line 308
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object v8, v0

    .line 309
    .local v8, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11f

    .line 310
    const-string v4, "SmilHelper"

    .end local v4           #src:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty text part ignored: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v8

    .end local v8           #text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_df

    .line 313
    .restart local v4       #src:Ljava/lang/String;
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    .restart local v8       #text:Lcom/android/mms/model/TextModel;
    :cond_11f
    const-string v8, "text"

    .end local v8           #text:Lcom/android/mms/model/TextModel;
    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 314
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v8, v0

    const-string v11, "Text"

    invoke-static {v8, v9, v5, v11, v10}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v8

    .end local v10           #txtRegionPresentInLayout:Z
    .local v8, txtRegionPresentInLayout:Z
    move v10, v8

    .end local v8           #txtRegionPresentInLayout:Z
    .restart local v10       #txtRegionPresentInLayout:Z
    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v8, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .line 341
    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    :goto_132
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result p0

    .line 342
    .local p0, begin:I
    if-eqz p0, :cond_154

    .line 343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #begin:I
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v11, "ms"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 344
    .local p0, duration:Ljava/lang/String;
    const-string v11, "begin"

    invoke-interface {v8, v11, p0}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local p0           #duration:Ljava/lang/String;
    :cond_154
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result p0

    .line 347
    .local p0, duration:I
    if-eqz p0, :cond_161

    .line 348
    int-to-float p0, p0

    const/high16 v11, 0x447a

    div-float/2addr p0, v11

    invoke-interface {v8, p0}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 350
    .end local p0           #duration:I
    :cond_161
    invoke-interface {v7, v8}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    check-cast v8, Lorg/w3c/dom/events/EventTarget;

    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {v8, v6}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    move p0, v4

    .line 353
    .end local v4           #imgRegionPresentInLayout:Z
    .local p0, imgRegionPresentInLayout:Z
    goto/16 :goto_df

    .line 319
    .local v4, src:Ljava/lang/String;
    :cond_16c
    instance-of v8, v6, Lcom/android/mms/model/ImageModel;

    if-eqz v8, :cond_183

    .line 320
    const-string v8, "img"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 321
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v8, v0

    const-string v11, "Image"

    invoke-static {v8, v9, v5, v11, p0}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result p0

    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v8       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_132

    .line 326
    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_183
    instance-of v8, v6, Lcom/android/mms/model/VideoModel;

    if-eqz v8, :cond_19a

    .line 327
    const-string v8, "video"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 328
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v8, v0

    const-string v11, "Image"

    invoke-static {v8, v9, v5, v11, p0}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result p0

    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v8       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_132

    .line 333
    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_19a
    instance-of v8, v6, Lcom/android/mms/model/AudioModel;

    if-eqz v8, :cond_1a7

    .line 334
    const-string v8, "audio"

    invoke-static {v8, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v8, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v8       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_132

    .line 336
    .end local v8           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_1a7
    const-string v4, "SmilHelper"

    .end local v4           #src:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupport media: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_df

    :cond_1c1
    move v4, v10

    .line 354
    .end local v10           #txtRegionPresentInLayout:Z
    .local v4, txtRegionPresentInLayout:Z
    goto/16 :goto_b8

    .line 356
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_1c4
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .end local p0           #imgRegionPresentInLayout:Z
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    .local p0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, p0}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 358
    const-string v1, "SmilHelper"

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, p0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-object v2
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 11
    .parameter "pb"

    .prologue
    .line 161
    const-string v0, "SmilHelper"

    const-string v1, "Creating default SMIL document."

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 167
    .local v1, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v0, "smil"

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILElement;

    .line 168
    .local v3, smil:Lorg/w3c/dom/smil/SMILElement;
    const-string v0, "xmlns"

    const-string v2, "http://www.w3.org/2001/SMIL20/Language"

    invoke-interface {v3, v0, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-interface {v1, v3}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 172
    const-string v0, "head"

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 173
    .local v0, head:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 175
    const-string v2, "layout"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 176
    .local v2, layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    const-string v0, "body"

    .end local v0           #head:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 180
    .local v0, body:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 181
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v4

    .line 184
    .local v4, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 185
    .local v7, partsNum:I
    if-nez v7, :cond_4c

    move-object v0, v4

    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object p0, v1

    .line 243
    .end local v1           #document:Lorg/w3c/dom/smil/SMILDocument;
    .end local v2           #layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    .end local v3           #smil:Lorg/w3c/dom/smil/SMILElement;
    .local p0, document:Lcom/android/mms/dom/smil/SmilDocumentImpl;
    :goto_4b
    return-object p0

    .line 189
    .local v0, body:Lorg/w3c/dom/smil/SMILElement;
    .restart local v1       #document:Lorg/w3c/dom/smil/SMILDocument;
    .restart local v2       #layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    .restart local v3       #smil:Lorg/w3c/dom/smil/SMILElement;
    .restart local v4       #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_4c
    const/4 v2, 0x0

    .line 190
    .local v2, hasText:Z
    const/4 v0, 0x0

    .line 191
    .local v0, hasMedia:Z
    const/4 v3, 0x0

    .local v3, i:I
    move v9, v3

    .end local v3           #i:I
    .local v9, i:I
    move-object v3, v4

    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    move v4, v9

    .end local v9           #i:I
    .local v4, i:I
    :goto_52
    if-ge v4, v7, :cond_e0

    .line 193
    if-eqz v3, :cond_58

    if-eqz v0, :cond_e4

    .line 194
    :cond_58
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v3

    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v0, 0x0

    move-object v5, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v5, par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v2

    .end local v2           #hasText:Z
    .local v3, hasText:Z
    move v2, v0

    .line 199
    .end local v0           #hasMedia:Z
    .local v2, hasMedia:Z
    :goto_61
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 200
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 216
    .local v0, contentType:Ljava/lang/String;
    const-string v8, "text/plain"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7e

    const-string v8, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 218
    :cond_7e
    const-string v0, "text"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v3

    .end local v3           #hasText:Z
    invoke-static {v0, v1, v3}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 220
    .local v0, textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v5, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 221
    const/4 v0, 0x1

    .local v0, hasText:Z
    move v9, v2

    .end local v2           #hasMedia:Z
    .local v9, hasMedia:Z
    move v2, v0

    .end local v0           #hasText:Z
    .local v2, hasText:Z
    move v0, v9

    .line 191
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v9           #hasMedia:Z
    .local v0, hasMedia:Z
    :goto_8f
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    move-object v3, v5

    .end local v5           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    goto :goto_52

    .line 222
    .local v0, contentType:Ljava/lang/String;
    .local v2, hasMedia:Z
    .local v3, hasText:Z
    .restart local v5       #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v6       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_94
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 223
    const-string v0, "img"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    .end local v2           #hasMedia:Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 225
    .local v0, imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v5, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 226
    const/4 v0, 0x1

    .local v0, hasMedia:Z
    move v2, v3

    .line 227
    .end local v3           #hasText:Z
    .local v2, hasText:Z
    goto :goto_8f

    .local v0, contentType:Ljava/lang/String;
    .local v2, hasMedia:Z
    .restart local v3       #hasText:Z
    :cond_aa
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 228
    const-string v0, "video"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    .end local v2           #hasMedia:Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 230
    .local v0, videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v5, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 231
    const/4 v0, 0x1

    .local v0, hasMedia:Z
    move v2, v3

    .line 232
    .end local v3           #hasText:Z
    .local v2, hasText:Z
    goto :goto_8f

    .local v0, contentType:Ljava/lang/String;
    .local v2, hasMedia:Z
    .restart local v3       #hasText:Z
    :cond_c0
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #contentType:Ljava/lang/String;
    if-eqz v0, :cond_d6

    .line 233
    const-string v0, "audio"

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    .end local v2           #hasMedia:Z
    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 235
    .local v0, audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v5, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 236
    const/4 v0, 0x1

    .local v0, hasMedia:Z
    move v2, v3

    .line 237
    .end local v3           #hasText:Z
    .local v2, hasText:Z
    goto :goto_8f

    .line 239
    .end local v0           #hasMedia:Z
    .local v2, hasMedia:Z
    .restart local v3       #hasText:Z
    :cond_d6
    const-string v0, "SmilHelper"

    const-string v6, "unsupport media type"

    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    invoke-static {v0, v6}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .end local v2           #hasMedia:Z
    .restart local v0       #hasMedia:Z
    move v2, v3

    .end local v3           #hasText:Z
    .local v2, hasText:Z
    goto :goto_8f

    .end local v5           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_e0
    move-object v0, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object p0, v1

    .line 243
    .local p0, document:Lcom/android/mms/dom/smil/SmilDocumentImpl;
    goto/16 :goto_4b

    .local v0, hasMedia:Z
    .restart local v3       #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_e4
    move-object v5, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v5       #par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v2

    .end local v2           #hasText:Z
    .local v3, hasText:Z
    move v2, v0

    .end local v0           #hasMedia:Z
    .local v2, hasMedia:Z
    goto/16 :goto_61
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .registers 5
    .parameter
    .parameter "rId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 366
    .local v1, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 370
    .end local v1           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .registers 6
    .parameter "body"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 102
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_20

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 104
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v1

    .line 110
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1c
    return-object v3

    .line 102
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 110
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 2
    .parameter "model"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 3
    .parameter "pb"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 76
    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 79
    .local v0, document:Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_b

    .line 80
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 83
    :cond_b
    if-nez v0, :cond_11

    .line 85
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 88
    :cond_11
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 9
    .parameter "smilPart"

    .prologue
    const-string v7, "Failed to parse SMIL document."

    const-string v6, "SmilHelper"

    .line 125
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 126
    .local v1, data:[B
    if-eqz v1, :cond_37

    .line 127
    const-string v4, "SmilHelper"

    const-string v5, "Parsing SMIL document."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v4, "SmilHelper"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 131
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 132
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2c} :catch_2e
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_2c} :catch_39
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_2c} :catch_43

    move-result-object v4

    .line 141
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #document:Lorg/w3c/dom/smil/SMILDocument;
    :goto_2d
    return-object v4

    .line 134
    :catch_2e
    move-exception v4

    move-object v3, v4

    .line 135
    .local v3, e:Ljava/io/IOException;
    const-string v4, "SmilHelper"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v7, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v3           #e:Ljava/io/IOException;
    :cond_37
    :goto_37
    const/4 v4, 0x0

    goto :goto_2d

    .line 136
    :catch_39
    move-exception v4

    move-object v3, v4

    .line 137
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v4, "SmilHelper"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v7, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 138
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_43
    move-exception v4

    move-object v3, v4

    .line 139
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v4, "SmilHelper"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v7, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "srme"
    .parameter
    .parameter "smilLayout"
    .parameter "regionId"
    .parameter "regionPresentInLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 379
    .local v0, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_10

    if-eqz v0, :cond_10

    .line 380
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 381
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 382
    const/4 v1, 0x1

    .line 384
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .registers 1
    .parameter "in"

    .prologue
    .line 115
    return-object p0
.end method
