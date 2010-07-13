.class public Lcom/android/mms/dom/smil/SmilRegionElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRegionElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionElement;


# static fields
.field private static final BACKGROUND_COLOR_ATTRIBUTE_NAME:Ljava/lang/String; = "backgroundColor"

.field private static final BOTTOM_ATTRIBUTE_NAME:Ljava/lang/String; = "bottom"

.field private static final DEBUG:Z = false

.field private static final FILL_ATTRIBUTE:Ljava/lang/String; = "fill"

.field private static final FIT_ATTRIBUTE_NAME:Ljava/lang/String; = "fit"

.field private static final HEIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "height"

.field private static final HIDDEN_ATTRIBUTE:Ljava/lang/String; = "hidden"

.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final LEFT_ATTRIBUTE_NAME:Ljava/lang/String; = "left"

.field private static final MEET_ATTRIBUTE:Ljava/lang/String; = "meet"

.field private static final RIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "right"

.field private static final SCROLL_ATTRIBUTE:Ljava/lang/String; = "scroll"

.field private static final SLICE_ATTRIBUTE:Ljava/lang/String; = "slice"

.field private static final TAG:Ljava/lang/String; = "SmilRegionElementImpl"

.field private static final TITLE_ATTRIBUTE_NAME:Ljava/lang/String; = "title"

.field private static final TOP_ATTRIBUTE_NAME:Ljava/lang/String; = "top"

.field private static final WIDTH_ATTRIBUTE_NAME:Ljava/lang/String; = "width"

.field private static final Z_INDEX_ATTRIBUTE_NAME:Ljava/lang/String; = "z-index"


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private parseRegionLength(Ljava/lang/String;Z)I
    .registers 10
    .parameter "length"
    .parameter "horizontal"

    .prologue
    const/4 v6, 0x0

    const-string v3, "px"

    .line 229
    const-string v2, "px"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 230
    const-string v2, "px"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 241
    .end local p0
    :goto_19
    return v2

    .line 232
    .restart local p0
    :cond_1a
    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 233
    const-wide v2, 0x3f847ae147ae147bL

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    mul-double v0, v2, v4

    .line 234
    .local v0, value:D
    if-eqz p2, :cond_54

    .line 235
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 239
    :goto_4e
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_19

    .line 237
    .restart local p0
    :cond_54
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_4e

    .line 241
    .end local v0           #value:D
    .restart local p0
    :cond_69
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_19
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .registers 7

    .prologue
    const-string v5, "slice"

    const-string v4, "scroll"

    const-string v3, "meet"

    const-string v2, "fill"

    .line 63
    const-string v1, "fit"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, fit:Ljava/lang/String;
    const-string v1, "fill"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 65
    const-string v1, "fill"

    move-object v1, v2

    .line 73
    :goto_19
    return-object v1

    .line 66
    :cond_1a
    const-string v1, "meet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 67
    const-string v1, "meet"

    move-object v1, v3

    goto :goto_19

    .line 68
    :cond_26
    const-string v1, "scroll"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 69
    const-string v1, "scroll"

    move-object v1, v4

    goto :goto_19

    .line 70
    :cond_32
    const-string v1, "slice"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 71
    const-string v1, "slice"

    move-object v1, v5

    goto :goto_19

    .line 73
    :cond_3e
    const-string v1, "hidden"

    goto :goto_19
.end method

.method public getHeight()I
    .registers 6

    .prologue
    const-string v4, "SmilRegionElementImpl"

    .line 152
    :try_start_2
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move-result v2

    .line 167
    :goto_d
    return v2

    .line 153
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, _:Ljava/lang/NumberFormatException;
    const-string v2, "SmilRegionElementImpl"

    const-string v2, "Height attribute is not set or incorrect."

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v1

    .line 158
    .local v1, bbh:I
    :try_start_29
    const-string v2, "top"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_43

    move-result v2

    sub-int/2addr v1, v2

    .line 163
    :goto_35
    :try_start_35
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_3f} :catch_4d

    move-result v2

    sub-int/2addr v1, v2

    :goto_41
    move v2, v1

    .line 167
    goto :goto_d

    .line 159
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 160
    const-string v2, "SmilRegionElementImpl"

    const-string v2, "Top attribute is not set or incorrect."

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 164
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 165
    const-string v2, "SmilRegionElementImpl"

    const-string v2, "Bottom attribute is not set or incorrect."

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 216
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .registers 8

    .prologue
    const-string v6, "SmilRegionElementImpl"

    .line 79
    :try_start_2
    const-string v4, "left"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move-result v4

    .line 91
    :goto_d
    return v4

    .line 80
    :catch_e
    move-exception v4

    move-object v0, v4

    .line 81
    .local v0, _:Ljava/lang/NumberFormatException;
    const-string v4, "SmilRegionElementImpl"

    const-string v4, "Left attribute is not set or incorrect."

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_17
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v1

    .line 85
    .local v1, bbw:I
    const-string v4, "right"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v2

    .line 86
    .local v2, right:I
    const-string v4, "width"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_3e} :catch_43

    move-result v3

    .line 87
    .local v3, width:I
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    goto :goto_d

    .line 88
    .end local v1           #bbw:I
    .end local v2           #right:I
    .end local v3           #width:I
    :catch_43
    move-exception v4

    move-object v0, v4

    .line 89
    const-string v4, "SmilRegionElementImpl"

    const-string v4, "Right or width attribute is not set or incorrect."

    invoke-static {v6, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTop()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    const-string v7, "SmilRegionElementImpl"

    .line 96
    :try_start_3
    const-string v4, "top"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_d} :catch_f

    move-result v4

    .line 108
    :goto_e
    return v4

    .line 97
    :catch_f
    move-exception v4

    move-object v0, v4

    .line 98
    .local v0, _:Ljava/lang/NumberFormatException;
    const-string v4, "SmilRegionElementImpl"

    const-string v4, "Top attribute is not set or incorrect."

    invoke-static {v7, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :try_start_18
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v1

    .line 102
    .local v1, bbh:I
    const-string v4, "bottom"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v2

    .line 103
    .local v2, bottom:I
    const-string v4, "height"

    invoke-virtual {p0, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_3f} :catch_44

    move-result v3

    .line 104
    .local v3, height:I
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    goto :goto_e

    .line 105
    .end local v1           #bbh:I
    .end local v2           #bottom:I
    .end local v3           #height:I
    :catch_44
    move-exception v4

    move-object v0, v4

    .line 106
    const-string v4, "SmilRegionElementImpl"

    const-string v4, "Bottom or height attribute is not set or incorrect."

    invoke-static {v7, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 108
    goto :goto_e
.end method

.method public getWidth()I
    .registers 6

    .prologue
    const-string v4, "SmilRegionElementImpl"

    .line 176
    :try_start_2
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_e

    move-result v2

    .line 191
    :goto_d
    return v2

    .line 177
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, _:Ljava/lang/NumberFormatException;
    const-string v2, "SmilRegionElementImpl"

    const-string v2, "Width attribute is not set or incorrect."

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v1

    .line 182
    .local v1, bbw:I
    :try_start_29
    const-string v2, "left"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_33} :catch_43

    move-result v2

    sub-int/2addr v1, v2

    .line 187
    :goto_35
    :try_start_35
    const-string v2, "right"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_3f} :catch_4d

    move-result v2

    sub-int/2addr v1, v2

    :goto_41
    move v2, v1

    .line 191
    goto :goto_d

    .line 183
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 184
    const-string v2, "SmilRegionElementImpl"

    const-string v2, "Left attribute is not set or incorrect."

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 188
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 189
    const-string v2, "SmilRegionElementImpl"

    const-string v2, "Right attribute is not set or incorrect."

    invoke-static {v4, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public getZIndex()I
    .registers 3

    .prologue
    .line 113
    :try_start_0
    const-string v1, "z-index"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 115
    :goto_a
    return v1

    .line 114
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, _:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 3
    .parameter "backgroundColor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .registers 4
    .parameter "fit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const-string v1, "fit"

    .line 120
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "meet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 124
    :cond_22
    const-string v0, "fit"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_2b
    return-void

    .line 126
    :cond_2c
    const-string v0, "fit"

    const-string v0, "hidden"

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public setHeight(I)V
    .registers 5
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setLeft(I)V
    .registers 4
    .parameter "left"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setTop(I)V
    .registers 4
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setWidth(I)V
    .registers 5
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setZIndex(I)V
    .registers 4
    .parameter "zIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const-string v1, "z-index"

    .line 139
    if-lez p1, :cond_e

    .line 140
    const-string v0, "z-index"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_d
    return-void

    .line 142
    :cond_e
    const-string v0, "z-index"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
