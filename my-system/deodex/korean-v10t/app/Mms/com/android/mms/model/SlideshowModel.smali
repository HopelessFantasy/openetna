.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowModel"

.field private static mContentRestriction:Lcom/android/mms/model/ContentRestriction;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 87
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "layouts"
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "contentResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 97
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 98
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 101
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 102
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 103
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 104
    invoke-virtual {v1, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_13

    .line 106
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2a
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .registers 3
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .registers 21
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v18

    .line 121
    .local v18, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v10

    .line 122
    .local v10, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    .line 123
    .local v4, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v8

    .line 124
    .local v8, w:I
    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v9

    .line 125
    .local v9, h:I
    if-eqz v8, :cond_18

    if-nez v9, :cond_36

    .line 126
    :cond_18
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v8

    .line 127
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v9

    .line 128
    invoke-interface {v4, v8}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 129
    invoke-interface {v4, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 131
    :cond_36
    new-instance v4, Lcom/android/mms/model/RegionModel;

    .end local v4           #srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 135
    .local v4, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v7, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 137
    .local v6, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 139
    .local v8, regionsNum:I
    const/4 v5, 0x0

    .end local v9           #h:I
    .end local v10           #sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    .local v5, i:I
    :goto_4c
    if-ge v5, v8, :cond_147

    .line 140
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 142
    .local v9, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    const-string v10, "SlideshowModel"

    const-string v11, "----------createFromPduBody-----------"

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getId() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getFit() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getLeft() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getTop() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getWidth() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getHeight() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v10, "SlideshowModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sre.getBackgroundColor() :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v10, Lcom/android/mms/model/RegionModel;

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v13

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v14

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v15

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v16

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v10 .. v17}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 154
    .local v10, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4c

    .line 156
    .end local v9           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    .end local v10           #r:Lcom/android/mms/model/RegionModel;
    :cond_147
    new-instance v12, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v12, v4, v7}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 159
    .local v12, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v4

    .line 160
    .local v4, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 161
    .local v11, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 162
    .local v14, slidesNum:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v13, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v4, 0x0

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .end local v6           #nlRegions:Lorg/w3c/dom/NodeList;
    .end local v7           #regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    .end local v8           #regionsNum:I
    .restart local v5       #i:I
    :goto_15f
    if-ge v5, v14, :cond_239

    .line 167
    const/4 v6, 0x0

    .line 170
    .local v6, par:Lorg/w3c/dom/smil/SMILParElement;
    :try_start_162
    invoke-interface {v11, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILParElement;
    :try_end_168
    .catch Ljava/lang/ClassCastException; {:try_start_162 .. :try_end_168} :catch_16f

    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v4, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object v10, v4

    .line 175
    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v10, par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_169
    if-nez v10, :cond_17b

    .line 164
    .end local v10           #par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_16b
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_15f

    .line 171
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    :catch_16f
    move-exception v4

    .line 172
    .local v4, e:Ljava/lang/ClassCastException;
    const-string v7, "SlideshowModel"

    invoke-virtual {v4}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v6

    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v10       #par:Lorg/w3c/dom/smil/SMILParElement;
    goto :goto_169

    .line 179
    .end local v4           #e:Ljava/lang/ClassCastException;
    :cond_17b
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 180
    .local v7, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 181
    .local v8, mediaNum:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v9, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v4, 0x0

    .local v4, j:I
    move v6, v4

    .end local v4           #j:I
    .local v6, j:I
    :goto_18a
    if-ge v6, v8, :cond_1f8

    .line 184
    const/4 v15, 0x0

    .line 187
    .local v15, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :try_start_18d
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILMediaElement;
    :try_end_193
    .catch Ljava/lang/ClassCastException; {:try_start_18d .. :try_end_193} :catch_1ac

    .end local v15           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v15, v4

    .line 192
    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v15       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_194
    if-eqz v15, :cond_1a8

    .line 194
    :try_start_196
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    .line 196
    .local v4, media:Lcom/android/mms/model/MediaModel;
    check-cast v15, Lorg/w3c/dom/events/EventTarget;

    .end local v15           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {v15, v4}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 198
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a8
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_196 .. :try_end_1a8} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1a8} :catch_1cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_196 .. :try_end_1a8} :catch_1da
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_196 .. :try_end_1a8} :catch_1e9

    .line 183
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    :cond_1a8
    :goto_1a8
    add-int/lit8 v4, v6, 0x1

    .end local v6           #j:I
    .local v4, j:I
    move v6, v4

    .end local v4           #j:I
    .restart local v6       #j:I
    goto :goto_18a

    .line 188
    .restart local v15       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1ac
    move-exception v4

    .line 189
    .local v4, e:Ljava/lang/ClassCastException;
    const-string v16, "SlideshowModel"

    invoke-virtual {v4}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_194

    .line 199
    .end local v4           #e:Ljava/lang/ClassCastException;
    .end local v15           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1bc
    move-exception v4

    .line 200
    .local v4, e:Landroid/lge/lgdrm/DrmException;
    const-string v15, "SlideshowModel"

    invoke-virtual {v4}, Landroid/lge/lgdrm/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a8

    .line 201
    .end local v4           #e:Landroid/lge/lgdrm/DrmException;
    :catch_1cb
    move-exception v4

    .line 202
    .local v4, e:Ljava/io/IOException;
    const-string v15, "SlideshowModel"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a8

    .line 203
    .end local v4           #e:Ljava/io/IOException;
    :catch_1da
    move-exception v4

    .line 204
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v15, "SlideshowModel"

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a8

    .line 205
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_1e9
    move-exception v4

    .line 206
    .local v4, e:Lcom/android/mms/UnsupportContentTypeException;
    const-string v15, "SlideshowModel"

    invoke-virtual {v4}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a8

    .line 211
    .end local v4           #e:Lcom/android/mms/UnsupportContentTypeException;
    :cond_1f8
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 212
    .local v4, duration:I
    const-string v6, "SlideshowModel"

    .end local v6           #j:I
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duration :"

    .end local v8           #mediaNum:I
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-nez v4, :cond_223

    .line 222
    const-string v4, "SlideshowModel"

    .end local v4           #duration:I
    const-string v6, "Set duration 5sec !!"

    invoke-static {v4, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v4, 0x1388

    .line 226
    .restart local v4       #duration:I
    :cond_223
    new-instance v6, Lcom/android/mms/model/SlideModel;

    invoke-direct {v6, v4, v9}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 227
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v4

    .end local v4           #duration:I
    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 228
    check-cast v10, Lorg/w3c/dom/events/EventTarget;

    .end local v10           #par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-static {v10, v6}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 229
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16b

    .line 232
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    .end local v9           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_239
    new-instance v11, Lcom/android/mms/model/SlideshowModel;

    .end local v11           #slideNodes:Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v14, v18

    move-object/from16 v15, p1

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/ContentResolver;)V

    .line 234
    .end local v14           #slidesNum:I
    .local v11, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v11, v11}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 235
    return-object v11
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .registers 3
    .parameter "context"

    .prologue
    .line 109
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .registers 6
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 436
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 438
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 439
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_14

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1b

    .line 441
    :cond_14
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 443
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1b
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .registers 36
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 251
    new-instance v23, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 253
    .local v23, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v20

    .line 254
    .local v20, operatorCode:Ljava/lang/String;
    const/4 v9, 0x0

    .line 255
    .local v9, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    const-string v30, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, creationMode_flexValues:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2ea

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/mms/model/SlideModel;

    .line 258
    .local v24, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/model/MediaModel;

    .line 259
    .local v19, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_65

    .line 260
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v29

    if-eqz v29, :cond_4c

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z

    move-result v29

    if-nez v29, :cond_4c

    .line 261
    const/4 v9, 0x1

    .line 262
    goto :goto_30

    .line 266
    :cond_4c
    :try_start_4c
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v29

    const-string v30, "image/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_159

    .line 268
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v13, v0

    .line 269
    .local v13, im:Lcom/android/mms/model/ImageModel;
    const/16 v29, 0x1

    move-object v0, v13

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction(Z)V
    :try_end_65
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4c .. :try_end_65} :catch_17c
    .catch Lcom/android/mms/ResolutionException; {:try_start_4c .. :try_end_65} :catch_1bc

    .line 302
    .end local v13           #im:Lcom/android/mms/model/ImageModel;
    :cond_65
    :goto_65
    new-instance v22, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 304
    .local v22, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v29

    if-eqz v29, :cond_8b

    .line 305
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v28, v0

    .line 307
    .local v28, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_30

    .line 311
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 315
    .end local v28           #text:Lcom/android/mms/model/TextModel;
    :cond_8b
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 317
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v26

    .line 319
    .local v26, src:Ljava/lang/String;
    const-string v29, "cid:"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    .line 320
    .local v27, startWithContentId:Z
    if-eqz v27, :cond_1d9

    .line 321
    const-string v29, "cid:"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 327
    .local v17, location:Ljava/lang/String;
    :goto_b8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 330
    move-object/from16 v18, v17

    .line 331
    .local v18, locationBuffer:Ljava/lang/String;
    const/4 v15, 0x0

    .line 333
    .local v15, isKorName:Z
    if-nez v27, :cond_e6

    .line 334
    const/4 v10, 0x0

    .local v10, i:I
    :goto_c9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v29

    move v0, v10

    move/from16 v1, v29

    if-ge v0, v1, :cond_e6

    .line 335
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(C)I

    move-result v29

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1dd

    .line 337
    const/4 v15, 0x1

    .line 344
    .end local v10           #i:I
    :cond_e6
    if-eqz v15, :cond_1e9

    .line 345
    const/16 v16, 0x0

    .line 347
    .local v16, korFileName:[B
    :try_start_ea
    const-string v29, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/Base64;->encodeBase64([B)[B
    :try_end_f7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ea .. :try_end_f7} :catch_1e1

    move-result-object v16

    .line 352
    :goto_f8
    new-instance v8, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 353
    .local v8, encFileName:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "=?utf-8?B?"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "?="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, KTFormatFileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 355
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 362
    .end local v3           #KTFormatFileName:Ljava/lang/String;
    .end local v8           #encFileName:Ljava/lang/String;
    .end local v16           #korFileName:[B
    :goto_132
    if-eqz v27, :cond_201

    .line 364
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 373
    :goto_13f
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v29

    if-eqz v29, :cond_22f

    .line 377
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 399
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    :goto_150
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_30

    .line 271
    .end local v15           #isKorName:Z
    .end local v17           #location:Ljava/lang/String;
    .end local v18           #locationBuffer:Ljava/lang/String;
    .end local v22           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v26           #src:Ljava/lang/String;
    .end local v27           #startWithContentId:Z
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    :cond_159
    :try_start_159
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v29

    const-string v30, "video/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_199

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;

    move-result-object v29

    sput-object v29, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 274
    sget-object v29, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/android/mms/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V
    :try_end_17a
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_159 .. :try_end_17a} :catch_17c
    .catch Lcom/android/mms/ResolutionException; {:try_start_159 .. :try_end_17a} :catch_1bc

    goto/16 :goto_65

    .line 282
    :catch_17c
    move-exception v29

    move-object/from16 v6, v29

    .line 283
    .local v6, e:Lcom/android/mms/UnsupportContentTypeException;
    if-eqz v5, :cond_65

    .line 285
    const-string v29, "0"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_30

    .line 287
    const-string v29, "1"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_65

    goto/16 :goto_30

    .line 276
    .end local v6           #e:Lcom/android/mms/UnsupportContentTypeException;
    :cond_199
    :try_start_199
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v29

    const-string v30, "audio/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_65

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;

    move-result-object v29

    sput-object v29, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 279
    sget-object v29, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V
    :try_end_1ba
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_199 .. :try_end_1ba} :catch_17c
    .catch Lcom/android/mms/ResolutionException; {:try_start_199 .. :try_end_1ba} :catch_1bc

    goto/16 :goto_65

    .line 292
    :catch_1bc
    move-exception v29

    move-object/from16 v6, v29

    .line 293
    .local v6, e:Lcom/android/mms/ResolutionException;
    if-eqz v5, :cond_65

    .line 295
    const-string v29, "0"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_30

    const-string v29, "1"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_65

    goto/16 :goto_30

    .line 323
    .end local v6           #e:Lcom/android/mms/ResolutionException;
    .restart local v22       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v26       #src:Ljava/lang/String;
    .restart local v27       #startWithContentId:Z
    :cond_1d9
    move-object/from16 v17, v26

    .restart local v17       #location:Ljava/lang/String;
    goto/16 :goto_b8

    .line 334
    .restart local v10       #i:I
    .restart local v15       #isKorName:Z
    .restart local v18       #locationBuffer:Ljava/lang/String;
    :cond_1dd
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c9

    .line 348
    .end local v10           #i:I
    .restart local v16       #korFileName:[B
    :catch_1e1
    move-exception v29

    move-object/from16 v7, v29

    .line 350
    .local v7, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_f8

    .line 357
    .end local v7           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v16           #korFileName:[B
    :cond_1e9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 358
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    goto/16 :goto_132

    .line 367
    :cond_201
    const-string v29, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 368
    .local v14, index:I
    const/16 v29, -0x1

    move v0, v14

    move/from16 v1, v29

    if-ne v0, v1, :cond_221

    move-object/from16 v4, v17

    .line 370
    .local v4, contentId:Ljava/lang/String;
    :goto_214
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto/16 :goto_13f

    .line 368
    .end local v4           #contentId:Ljava/lang/String;
    :cond_221
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v4, v29

    goto :goto_214

    .line 378
    .end local v14           #index:I
    :cond_22f
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v29

    if-eqz v29, :cond_2ad

    .line 380
    const-string v29, "KTF"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_29a

    .line 382
    :try_start_241
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x26

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 383
    const/16 v29, 0x26

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V
    :try_end_265
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_241 .. :try_end_265} :catch_267

    goto/16 :goto_150

    .line 384
    :catch_267
    move-exception v29

    move-object/from16 v6, v29

    .line 385
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v29, "SlideshowModel"

    const-string v30, "Unsupported encoding: CharacterSets.EUC_KR, "

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 387
    check-cast v19, Lcom/android/mms/model/TextModel;

    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    goto/16 :goto_150

    .line 390
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    :cond_29a
    check-cast v19, Lcom/android/mms/model/TextModel;

    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto/16 :goto_150

    .line 393
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    :cond_2ad
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v29

    if-nez v29, :cond_2bf

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v29

    if-nez v29, :cond_2bf

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v29

    if-eqz v29, :cond_2cc

    .line 394
    :cond_2bf
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto/16 :goto_150

    .line 396
    :cond_2cc
    const-string v29, "SlideshowModel"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupport media: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_150

    .line 403
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #isKorName:Z
    .end local v17           #location:Ljava/lang/String;
    .end local v18           #locationBuffer:Ljava/lang/String;
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v22           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #slide:Lcom/android/mms/model/SlideModel;
    .end local v26           #src:Ljava/lang/String;
    .end local v27           #startWithContentId:Z
    :cond_2ea
    if-eqz v9, :cond_30e

    if-eqz p3, :cond_30e

    if-eqz p1, :cond_30e

    .line 404
    const v29, 0x7f07005a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 407
    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 411
    :cond_30e
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 412
    .local v21, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 413
    new-instance v25, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 414
    .local v25, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v29, "smil"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 415
    const-string v29, "smil.xml"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 416
    const-string v29, "application/smil"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 417
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 418
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 420
    return-object v23
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .registers 4
    .parameter "document"

    .prologue
    .line 247
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .registers 7
    .parameter "location"
    .parameter "object"

    .prologue
    .line 560
    if-eqz p2, :cond_2e

    .line 561
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 562
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 564
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 565
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 566
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 567
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 568
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1a

    .line 570
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_2a
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 572
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #increaseSize:I
    :cond_2e
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 475
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 476
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 478
    if-eqz p1, :cond_33

    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 480
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 481
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 482
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1e

    .line 484
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_2e
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v3, v4

    .line 487
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_32
    return v3

    :cond_33
    const/4 v3, 0x0

    goto :goto_32
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 576
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMessageSize(I)V
    .registers 5
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 703
    sget-object v0, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 704
    return-void
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 495
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3f

    .line 496
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 497
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 498
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 499
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_23

    .line 506
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_33
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 507
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 508
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 510
    :cond_3f
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .registers 3
    .parameter "decreaseSize"

    .prologue
    .line 462
    if-lez p1, :cond_7

    .line 463
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 465
    :cond_7
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .registers 7
    .parameter "location"

    .prologue
    .line 580
    const/4 v2, 0x0

    .line 583
    .local v2, sm:Lcom/android/mms/model/SlideModel;
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v2, v0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_c

    .line 588
    :goto_b
    return-object v2

    .line 584
    :catch_c
    move-exception v3

    move-object v1, v3

    .line 585
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "SlideshowModel"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getRestriction()Lcom/android/mms/model/ContentRestriction;
    .registers 2

    .prologue
    .line 708
    sget-object v0, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-eqz v0, :cond_7

    .line 709
    sget-object v0, Lcom/android/mms/model/SlideshowModel;->mContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 711
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public increaseMessageSize(I)V
    .registers 3
    .parameter "increaseSize"

    .prologue
    .line 456
    if-lez p1, :cond_7

    .line 457
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 459
    :cond_7
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 723
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-eq v1, v4, :cond_a

    move v1, v3

    .line 735
    :goto_9
    return v1

    .line 726
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 728
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_1b

    move v1, v3

    .line 729
    goto :goto_9

    .line 732
    :cond_1b
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v3

    .line 733
    goto :goto_9

    :cond_23
    move v1, v4

    .line 735
    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .registers 4
    .parameter "context"

    .prologue
    .line 424
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .registers 4
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 684
    if-eqz p2, :cond_7

    .line 685
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 686
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 688
    :cond_7
    return-void
.end method

.method public prepareForSend()V
    .registers 4

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 744
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 745
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_15

    .line 746
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 749
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_15
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 659
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 660
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_b

    .line 662
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1b
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .registers 4
    .parameter "location"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 609
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_20

    .line 610
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 611
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 612
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 613
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 615
    :cond_20
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 529
    if-eqz p1, :cond_1e

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 530
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 531
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 532
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 533
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 536
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .registers 9
    .parameter "location"
    .parameter "object"

    .prologue
    .line 619
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 620
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_21

    .line 621
    const/4 v3, 0x0

    .line 622
    .local v3, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 623
    .local v0, addSize:I
    if-eqz v4, :cond_15

    .line 624
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 626
    :cond_15
    if-le v0, v3, :cond_49

    .line 627
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 628
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 634
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_21
    :goto_21
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 635
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2e

    .line 636
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 639
    :cond_2e
    if-eqz p2, :cond_4f

    .line 640
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 641
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 642
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_39

    .line 630
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0       #addSize:I
    .restart local v3       #removeSize:I
    :cond_49
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_21

    .line 646
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_4f
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 647
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 448
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 449
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .registers 8
    .parameter "pb"

    .prologue
    .line 691
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 692
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 693
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 694
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v3, :cond_16

    .line 695
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_16

    .line 699
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_34
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_12

    .line 240
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 241
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 243
    :cond_12
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public toSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_a

    .line 429
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .registers 4

    .prologue
    .line 676
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 678
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 679
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_b

    .line 681
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1b
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 667
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 669
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 670
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_b

    .line 672
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1b
    return-void
.end method
