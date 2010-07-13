.class public abstract Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "LeafNodeImpl.java"


# instance fields
.field index:I

.field parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 2
    .parameter "document"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 48
    :cond_12
    const/4 v0, 0x0

    .line 51
    .end local p0
    :goto_13
    return-object v0

    .restart local p0
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v0, p0

    goto :goto_13
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    if-nez v0, :cond_a

    .line 60
    :cond_8
    const/4 v0, 0x0

    .line 63
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v0, p0

    goto :goto_9
.end method

.method isParentOf(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
