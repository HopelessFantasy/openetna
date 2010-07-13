.class public abstract Lorg/apache/harmony/xml/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# static fields
.field private static final EMPTY_LIST:Lorg/w3c/dom/NodeList;


# instance fields
.field document:Lorg/apache/harmony/xml/dom/DocumentImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 2
    .parameter "document"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 46
    return-void
.end method

.method private static matchesName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .parameter "required"
    .parameter "actual"
    .parameter "wildcard"

    .prologue
    const/4 v1, 0x1

    .line 153
    if-eqz p2, :cond_d

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 161
    :goto_c
    return v0

    .line 157
    :cond_d
    if-nez p0, :cond_15

    .line 158
    if-nez p1, :cond_13

    move v0, v1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .line 161
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "deep"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v0, p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 123
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchesName(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "name"
    .parameter "wildcard"

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/harmony/xml/dom/NodeImpl;->matchesName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public matchesNameNS(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "wildcard"

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/apache/harmony/xml/dom/NodeImpl;->matchesName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lorg/apache/harmony/xml/dom/NodeImpl;->matchesName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public normalize()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 2
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 138
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 141
    return-void
.end method
