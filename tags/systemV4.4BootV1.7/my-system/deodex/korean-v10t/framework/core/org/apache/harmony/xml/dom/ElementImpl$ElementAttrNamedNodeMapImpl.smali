.class public Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
.super Ljava/lang/Object;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/ElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementAttrNamedNodeMapImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/dom/ElementImpl;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private indexOfItem(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$100(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$200(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "name"

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->indexOfItem(Ljava/lang/String;)I

    move-result v0

    .line 411
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 412
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 415
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 423
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 426
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 430
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-nez v0, :cond_c

    .line 431
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 434
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 438
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-nez v0, :cond_c

    .line 439
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 442
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;->this$0:Lorg/apache/harmony/xml/dom/ElementImpl;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method
