.class public Lorg/apache/harmony/xml/dom/ElementImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/AttrImpl;",
            ">;"
        }
    .end annotation
.end field

.field private localName:Ljava/lang/String;

.field private namespaceAware:Z

.field private namespaceURI:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 9
    .parameter "document"
    .parameter "name"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 78
    iput-boolean v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 80
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, p:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_33

    .line 82
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, prefix:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, localName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 86
    :cond_2d
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 89
    .end local v0           #localName:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_33
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 90
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 94
    :cond_3f
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "document"
    .parameter "namespaceURI"
    .parameter "qualifiedName"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 56
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    .line 58
    if-eqz p3, :cond_19

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 59
    :cond_19
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 62
    :cond_21
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, p:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setPrefix(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 68
    :cond_38
    invoke-static {p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 69
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 72
    :cond_45
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private indexOfAttribute(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 99
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 100
    .local v0, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/xml/dom/AttrImpl;->matchesName(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v1

    .line 105
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_19
    return v2

    .line 98
    .restart local v0       #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1d
    const/4 v2, -0x1

    goto :goto_19
.end method

.method private indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 110
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 111
    .local v0, attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lorg/apache/harmony/xml/dom/AttrImpl;->matchesNameNS(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v1

    .line 116
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_19
    return v2

    .line 109
    .restart local v0       #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    .end local v0           #attr:Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1d
    const/4 v2, -0x1

    goto :goto_19
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 122
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_9

    .line 123
    const-string v1, ""

    .line 126
    :goto_8
    return-object v1

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 132
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_9

    .line 133
    const-string v1, ""

    .line 136
    :goto_8
    return-object v1

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "name"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 143
    const/4 v1, 0x0

    .line 146
    .end local p0
    :goto_8
    return-object v1

    .restart local p0
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    move-object v1, p0

    goto :goto_8
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 153
    const/4 v1, 0x0

    .line 156
    .end local p0
    :goto_8
    return-object v1

    .restart local p0
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    move-object v1, p0

    goto :goto_8
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 161
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;-><init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V

    return-object v0
.end method

.method getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7
    .parameter "name"

    .prologue
    .line 165
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v3, p0

    .line 178
    :goto_d
    return-object v3

    .line 169
    :cond_e
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 170
    .local v2, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 171
    check-cast v2, Lorg/apache/harmony/xml/dom/ElementImpl;

    .end local v2           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v2, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 172
    .local v0, element:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_14

    move-object v3, v0

    .line 173
    goto :goto_d

    .line 178
    .end local v0           #element:Lorg/w3c/dom/Element;
    :cond_31
    const/4 v3, 0x0

    goto :goto_d
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .parameter "name"

    .prologue
    .line 182
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 183
    .local v0, list:Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 184
    return-object v0
.end method

.method getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V
    .registers 7
    .parameter "list"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-virtual {p0, p2, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->matchesName(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 189
    invoke-virtual {p1, p0}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 192
    :cond_a
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 193
    .local v1, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_10

    .line 194
    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    .end local v1           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    goto :goto_10

    .line 197
    :cond_28
    return-void
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 200
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 201
    .local v0, list:Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-object v0
.end method

.method getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "list"
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    const/4 v3, 0x1

    .line 207
    invoke-virtual {p0, p2, p3, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->matchesNameNS(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 208
    invoke-virtual {p1, p0}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 211
    :cond_a
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 212
    .local v1, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_10

    .line 213
    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    .end local v1           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 217
    :cond_28
    return-void
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string v1, ""

    goto :goto_1e
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 264
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_c
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 273
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 275
    :cond_c
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 7
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 278
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v1, v0

    .line 280
    .local v1, oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v2

    if-eq v2, p0, :cond_13

    .line 281
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 284
    :cond_13
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    iput-object v4, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 287
    return-object v1
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
    .line 291
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 293
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_f

    .line 294
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 295
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 298
    :cond_f
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 305
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_f

    .line 306
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 307
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 310
    :cond_f
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 9
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 314
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v2, v0

    .line 316
    .local v2, newAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v4, v2, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_14

    .line 317
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 320
    :cond_14
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 321
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/16 v5, 0xa

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 324
    :cond_22
    const/4 v3, 0x0

    .line 326
    .local v3, oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, i:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3b

    .line 328
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v3, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 329
    .restart local v3       #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    :cond_3b
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iput-object p0, v2, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 335
    return-object v3
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 9
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 339
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    move-object v2, v0

    .line 341
    .local v2, newAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v4, v2, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_14

    .line 342
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 345
    :cond_14
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 346
    new-instance v4, Lorg/w3c/dom/DOMException;

    const/16 v5, 0xa

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 349
    :cond_22
    const/4 v3, 0x0

    .line 351
    .local v3, oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 352
    .local v1, i:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3f

    .line 353
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v3, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 354
    .restart local v3       #oldAttrImpl:Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 357
    :cond_3f
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iput-object p0, v2, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 360
    return-object v3
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"

    .prologue
    const/16 v2, 0xe

    .line 365
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-nez v0, :cond_c

    .line 366
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 369
    :cond_c
    if-eqz p1, :cond_38

    .line 370
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 371
    :cond_1a
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 374
    :cond_20
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 375
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 379
    :cond_38
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 380
    return-void
.end method
