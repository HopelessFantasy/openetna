.class public Lcom/android/mms/dom/AttrImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "owner"
    .parameter "name"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 35
    iput-object p2, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x2

    return v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

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
    .line 56
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    return-object v0
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
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 98
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
    .line 63
    iput-object p1, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    .line 64
    return-void
.end method
