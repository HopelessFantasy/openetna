.class public abstract Lcom/android/mms/dom/DocumentImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 43
    return-void
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/mms/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/AttrImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 3
    .parameter "data"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 3
    .parameter "data"

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDocumentElement()Lorg/w3c/dom/Element;
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .parameter "elementId"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .parameter "tagname"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 136
    const/16 v0, 0x9

    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "importedNode"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method
