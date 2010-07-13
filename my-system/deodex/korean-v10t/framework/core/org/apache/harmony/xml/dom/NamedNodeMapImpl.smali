.class public Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "NamedNodeMapImpl.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->type:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/xml/dom/NodeImpl;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->type:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method private indexOfItem(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 59
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 60
    .local v1, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->matchesName(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v0

    .line 65
    .end local v1           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_19
    return v2

    .line 58
    .restart local v1       #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v1           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_1d
    const/4 v2, -0x1

    goto :goto_19
.end method

.method private indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 70
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 71
    .local v1, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->matchesNameNS(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v0

    .line 76
    .end local v1           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_19
    return v2

    .line 69
    .restart local v1       #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    .end local v1           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_1d
    const/4 v2, -0x1

    goto :goto_19
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "name"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->indexOfItem(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_8
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_8
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

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
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->indexOfItem(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 99
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 102
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

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
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 110
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 113
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 9
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 118
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 119
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 123
    :cond_14
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_37

    .line 124
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 126
    .local v1, document:Lorg/w3c/dom/Document;
    if-eqz v1, :cond_37

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v3, v1, :cond_37

    .line 127
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 136
    .end local v1           #document:Lorg/w3c/dom/Document;
    :cond_37
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->indexOfItem(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, i:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_47

    .line 139
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    :cond_47
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v3, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object p1
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 9
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 148
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 149
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 153
    :cond_14
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_37

    .line 154
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 156
    .local v1, document:Lorg/w3c/dom/Document;
    if-eqz v1, :cond_37

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-eq v3, v1, :cond_37

    .line 157
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 166
    .end local v1           #document:Lorg/w3c/dom/Document;
    :cond_37
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->indexOfItemNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, i:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4b

    .line 169
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_4b
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/NamedNodeMapImpl;->list:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v3, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p1
.end method
