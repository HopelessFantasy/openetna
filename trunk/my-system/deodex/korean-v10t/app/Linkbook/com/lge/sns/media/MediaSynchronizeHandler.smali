.class public Lcom/lge/sns/media/MediaSynchronizeHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaSynchronizeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSynchronizeHandler"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_HREF:Ljava/lang/String; = "href"

.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_LINK:Ljava/lang/String; = "link"

.field private static final TAG_REL:Ljava/lang/String; = "rel"

.field private static final VALUE_REL_NEXT:Ljava/lang/String; = "next"

.field private static final VALUE_REL_SELF_SMALL:Ljava/lang/String; = "self-small"


# instance fields
.field private hasEntry:Z

.field private hasUri:Z

.field private nextLink:Ljava/lang/String;

.field private thumbnailLinkBuffer:Ljava/lang/StringBuffer;

.field private uriBuffer:Ljava/lang/StringBuffer;

.field private uriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasEntry:Z

    .line 28
    iput-boolean v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasUri:Z

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriBuffer:Ljava/lang/StringBuffer;

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->thumbnailLinkBuffer:Ljava/lang/StringBuffer;

    .line 60
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "leng"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasUri:Z

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 170
    :cond_9
    return-void
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "MediaSynchronizeHandler"

    const-string v1, "MediaSynchronizeHandler : endDocument"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 68
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v5, 0x0

    const-string v6, "MediaSynchronizeHandler"

    .line 139
    const-string v3, "entry"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 140
    iget-object v3, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/newbay/client/Uris;->getMediaFileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$MediaFileParam;

    move-result-object v1

    .line 141
    .local v1, param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    if-eqz v1, :cond_89

    .line 143
    const-string v3, "MediaSynchronizeHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSynchronizeHandler : fileId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in folderId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFolderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "MediaSynchronizeHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSynchronizeHandler : thumbnailLink "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->thumbnailLinkBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFolderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lge/newbay/client/Uris$MediaFileParam;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->thumbnailLinkBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_89
    iget-object v3, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 152
    iget-object v3, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->thumbnailLinkBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 154
    iput-boolean v5, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasEntry:Z

    .line 160
    .end local v1           #param:Lcom/lge/newbay/client/Uris$MediaFileParam;
    :cond_95
    :goto_95
    return-void

    .line 155
    :cond_96
    const-string v3, "id"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 156
    iget-boolean v3, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasEntry:Z

    if-eqz v3, :cond_95

    .line 157
    iput-boolean v5, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasUri:Z

    goto :goto_95
.end method

.method public getNextLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->nextLink:Ljava/lang/String;

    return-object v0
.end method

.method public getUriMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "MediaSynchronizeHandler"

    const-string v1, "MediaSynchronizeHandler : startDocument"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriMap:Ljava/util/HashMap;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->nextLink:Ljava/lang/String;

    .line 77
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 78
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "rel"

    const-string v7, "href"

    .line 88
    const-string v4, "link"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 89
    iget-boolean v4, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasEntry:Z

    if-nez v4, :cond_5e

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, rel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, link:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_15
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_3b

    .line 93
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, name:Ljava/lang/String;
    const-string v4, "rel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 95
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 96
    :cond_2e
    const-string v4, "href"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 97
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 101
    .end local v2           #name:Ljava/lang/String;
    :cond_3b
    const-string v4, "next"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 103
    const-string v4, "MediaSynchronizeHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaSynchronizeHandler : nextLink = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object v1, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->nextLink:Ljava/lang/String;

    .line 132
    .end local v0           #index:I
    .end local v1           #link:Ljava/lang/String;
    .end local v3           #rel:Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 108
    :cond_5e
    const/4 v3, 0x0

    .line 109
    .restart local v3       #rel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 110
    .restart local v1       #link:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_61
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_87

    .line 111
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2       #name:Ljava/lang/String;
    const-string v4, "rel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 113
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    :cond_77
    :goto_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 114
    :cond_7a
    const-string v4, "href"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 115
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_77

    .line 119
    .end local v2           #name:Ljava/lang/String;
    :cond_87
    const-string v4, "self-small"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 120
    iget-object v4, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->thumbnailLinkBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 121
    iget-object v4, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->thumbnailLinkBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5d

    .line 124
    .end local v0           #index:I
    .end local v1           #link:Ljava/lang/String;
    .end local v3           #rel:Ljava/lang/String;
    :cond_9a
    const-string v4, "entry"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 125
    iput-boolean v6, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasEntry:Z

    goto :goto_5d

    .line 126
    :cond_a5
    const-string v4, "id"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 127
    iget-boolean v4, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasEntry:Z

    if-eqz v4, :cond_5d

    .line 128
    iput-boolean v6, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->hasUri:Z

    .line 129
    iget-object v4, p0, Lcom/lge/sns/media/MediaSynchronizeHandler;->uriBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_5d
.end method
