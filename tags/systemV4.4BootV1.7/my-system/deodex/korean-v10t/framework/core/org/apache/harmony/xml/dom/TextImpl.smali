.class public Lorg/apache/harmony/xml/dom/TextImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "document"
    .parameter "data"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x3

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .registers 6
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/xml/dom/TextImpl;->substringData(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 58
    .local v0, newText:Lorg/w3c/dom/Text;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->deleteData(II)V

    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 61
    .local v1, refNode:Lorg/w3c/dom/Node;
    if-nez v1, :cond_23

    .line 62
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 67
    :goto_22
    return-object p0

    .line 64
    :cond_23
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_22
.end method
