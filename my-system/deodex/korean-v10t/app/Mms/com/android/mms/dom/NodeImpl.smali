.class public abstract Lcom/android/mms/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/events/EventTarget;


# instance fields
.field private final mChildNodes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTarget:Lorg/w3c/dom/events/EventTarget;

.field mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

.field private mParentNode:Lorg/w3c/dom/Node;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;)V
    .registers 3
    .parameter "owner"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    .line 39
    new-instance v0, Lcom/android/mms/dom/events/EventTargetImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/dom/events/EventTargetImpl;-><init>(Lorg/w3c/dom/events/EventTarget;)V

    iput-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    .line 46
    iput-object p1, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    .line 47
    return-void
.end method

.method private setParentNode(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter "parentNode"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    .line 206
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .registers 5
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 214
    return-void
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/android/mms/dom/NodeImpl;

    move-object v1, v0

    invoke-direct {v1, p0}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 55
    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "deep"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .registers 3
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/events/EventException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, firstChild:Lorg/w3c/dom/Node;
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_b} :catch_c

    .line 82
    :goto_b
    return-object v1

    .line 79
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, lastChild:Lorg/w3c/dom/Node;
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_b} :catch_c

    .line 93
    :goto_b
    return-object v1

    .line 90
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq p0, v2, :cond_20

    .line 108
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/android/mms/dom/NodeImpl;

    iget-object v1, v2, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    .line 109
    .local v1, siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 110
    .local v0, indexOfThis:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v2, p0

    .line 112
    .end local v0           #indexOfThis:I
    .end local v1           #siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    :goto_1f
    return-object v2

    .restart local p0
    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public abstract getNodeName()Ljava/lang/String;
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
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq p0, v2, :cond_21

    .line 139
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/android/mms/dom/NodeImpl;

    iget-object v1, v2, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    .line 140
    .local v1, siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, indexOfThis:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v2, p0

    .line 143
    .end local v0           #indexOfThis:I
    .end local v1           #siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    :goto_20
    return-object v2

    .restart local p0
    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public normalize()V
    .registers 1

    .prologue
    .line 167
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
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 172
    check-cast p1, Lcom/android/mms/dom/NodeImpl;

    .end local p1
    invoke-direct {p1, v1}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 176
    return-object v1

    .line 174
    .restart local p1
    :cond_14
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .registers 5
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 218
    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 7
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 183
    :try_start_8
    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/w3c/dom/DOMException; {:try_start_8 .. :try_end_d} :catch_30

    .line 187
    :goto_d
    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 188
    check-cast p1, Lcom/android/mms/dom/NodeImpl;

    .end local p1
    invoke-direct {p1, p0}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 189
    move-object v0, p2

    check-cast v0, Lcom/android/mms/dom/NodeImpl;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 193
    return-object p2

    .line 191
    .restart local p1
    :cond_26
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const-string v3, "Old child does not exist"

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 184
    :catch_30
    move-exception v1

    goto :goto_d
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
    .line 198
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
    .line 202
    return-void
.end method
