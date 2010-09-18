.class public Lcom/android/mms/dom/ElementImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# instance fields
.field private mAttributes:Lorg/w3c/dom/NamedNodeMap;

.field private mTagName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 4
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 28
    new-instance v0, Lcom/android/mms/dom/NamedNodeMapImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/NamedNodeMapImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    .line 36
    iput-object p2, p0, Lcom/android/mms/dom/ElementImpl;->mTagName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 45
    .local v0, attrNode:Lorg/w3c/dom/Attr;
    const-string v1, ""

    .line 46
    .local v1, attrValue:Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 47
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_c
    return-object v1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "name"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "name"

    .prologue
    .line 67
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/dom/NodeListImpl;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 106
    .local v0, attribute:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_c

    .line 107
    iget-object v1, p0, Lcom/android/mms/dom/ElementImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lcom/android/mms/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 109
    :cond_c
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 111
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 117
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method
