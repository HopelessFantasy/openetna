.class public Lorg/apache/harmony/xml/dom/AttrImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field private localName:Ljava/lang/String;

.field private namespaceAware:Z

.field private namespaceURI:Ljava/lang/String;

.field ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

.field private prefix:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 9
    .parameter "document"
    .parameter "name"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 85
    iput-boolean v4, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 87
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, prefixSeparator:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    .line 89
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, prefix:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, localName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 93
    :cond_26
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 96
    .end local v0           #localName:Ljava/lang/String;
    .end local v1           #prefix:Ljava/lang/String;
    :cond_2c
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 97
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 101
    :cond_38
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "document"
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    const/16 v3, 0xe

    const-string v4, ""

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 53
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    .line 55
    if-eqz p3, :cond_16

    const-string v1, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 56
    :cond_16
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v3, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 59
    :cond_1c
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, prefixSeparator:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->setPrefix(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 65
    :cond_33
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 67
    const-string v1, ""

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 68
    new-instance v1, Lorg/w3c/dom/DOMException;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 71
    :cond_47
    const-string v1, "xmlns"

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 72
    new-instance v1, Lorg/w3c/dom/DOMException;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 75
    :cond_61
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 76
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 79
    :cond_72
    const-string v1, ""

    iput-object v4, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string v1, ""

    goto :goto_1e
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecified()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"

    .prologue
    const/16 v2, 0xe

    .line 156
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-nez v0, :cond_c

    .line 157
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 160
    :cond_c
    if-eqz p1, :cond_40

    .line 161
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 162
    :cond_22
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 165
    :cond_28
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 166
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 170
    :cond_40
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    .line 175
    return-void
.end method
