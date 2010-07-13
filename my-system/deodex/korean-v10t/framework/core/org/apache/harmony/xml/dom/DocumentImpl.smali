.class public Lorg/apache/harmony/xml/dom/DocumentImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# instance fields
.field private domImplementation:Lorg/w3c/dom/DOMImplementation;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)V
    .registers 6
    .parameter "impl"
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "doctype"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 54
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    .line 57
    if-eqz p4, :cond_b

    .line 58
    invoke-virtual {p0, p4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 61
    :cond_b
    if-eqz p3, :cond_14

    .line 62
    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 64
    :cond_14
    return-void
.end method

.method static isXMLIdentifier(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 89
    :goto_8
    return v1

    .line 79
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 80
    goto :goto_8

    .line 83
    :cond_15
    const/4 v0, 0x1

    .local v0, i:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_28

    move v1, v2

    .line 85
    goto :goto_8

    .line 83
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 89
    :cond_2b
    const/4 v1, 0x1

    goto :goto_8
.end method

.method private static isXMLIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 71
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x30

    if-lt p0, v0, :cond_e

    const/16 v0, 0x39

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static isXMLIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 67
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_14

    :cond_10
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method cloneNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 15
    .parameter "node"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x9

    .line 104
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    packed-switch v8, :pswitch_data_11e

    .line 167
    new-instance v8, Lorg/w3c/dom/DOMException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot clone unknown node type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    .line 106
    :pswitch_3e
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v6, v0

    .line 107
    .local v6, source:Lorg/w3c/dom/Attr;
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 108
    .local v7, target:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 109
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 171
    .end local v6           #source:Lorg/w3c/dom/Attr;
    :cond_5c
    :goto_5c
    if-eqz p2, :cond_11c

    .line 172
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 173
    .local v4, list:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_63
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_11c

    .line 174
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 175
    .local v2, child:Lorg/w3c/dom/Node;
    invoke-interface {v7, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 113
    .end local v2           #child:Lorg/w3c/dom/Node;
    .end local v3           #i:I
    .end local v4           #list:Lorg/w3c/dom/NodeList;
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_77
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/CharacterData;

    move-object v6, v0

    .line 114
    .local v6, source:Lorg/w3c/dom/CharacterData;
    invoke-interface {v6}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v7

    .line 115
    .restart local v7       #target:Lorg/w3c/dom/Node;
    goto :goto_5c

    .line 118
    .end local v6           #source:Lorg/w3c/dom/CharacterData;
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_84
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Comment;

    move-object v6, v0

    .line 119
    .local v6, source:Lorg/w3c/dom/Comment;
    invoke-interface {v6}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v7

    .line 120
    .restart local v7       #target:Lorg/w3c/dom/Node;
    goto :goto_5c

    .line 124
    .end local v6           #source:Lorg/w3c/dom/Comment;
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_91
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v7

    .line 125
    .restart local v7       #target:Lorg/w3c/dom/Node;
    goto :goto_5c

    .line 128
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_96
    new-instance v8, Lorg/w3c/dom/DOMException;

    const-string v9, "Cannot clone a Document node"

    invoke-direct {v8, v11, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    .line 131
    :pswitch_9e
    new-instance v8, Lorg/w3c/dom/DOMException;

    const-string v9, "Cannot clone a DocumentType node"

    invoke-direct {v8, v11, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    .line 134
    :pswitch_a6
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v6, v0

    .line 135
    .local v6, source:Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 136
    .restart local v7       #target:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 138
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 139
    .local v5, map:Lorg/w3c/dom/NamedNodeMap;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_c2
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_5c

    .line 140
    invoke-interface {v5, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    .line 141
    .local v1, attr:Lorg/w3c/dom/Attr;
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Attr;

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 146
    .end local v1           #attr:Lorg/w3c/dom/Attr;
    .end local v3           #i:I
    .end local v5           #map:Lorg/w3c/dom/NamedNodeMap;
    .end local v6           #source:Lorg/w3c/dom/Element;
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_de
    new-instance v8, Lorg/w3c/dom/DOMException;

    const-string v9, "Cannot clone an Entity node"

    invoke-direct {v8, v11, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    .line 149
    :pswitch_e6
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/EntityReference;

    move-object v6, v0

    .line 150
    .local v6, source:Lorg/w3c/dom/EntityReference;
    invoke-interface {v6}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v7

    .line 151
    .restart local v7       #target:Lorg/w3c/dom/Node;
    goto/16 :goto_5c

    .line 154
    .end local v6           #source:Lorg/w3c/dom/EntityReference;
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_f4
    new-instance v8, Lorg/w3c/dom/DOMException;

    const-string v9, "Cannot clone a Notation node"

    invoke-direct {v8, v11, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    .line 157
    :pswitch_fc
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    move-object v6, v0

    .line 158
    .local v6, source:Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v6}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v7

    .line 159
    .restart local v7       #target:Lorg/w3c/dom/Node;
    goto/16 :goto_5c

    .line 162
    .end local v6           #source:Lorg/w3c/dom/ProcessingInstruction;
    .end local v7           #target:Lorg/w3c/dom/Node;
    :pswitch_10e
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Text;

    move-object v6, v0

    .line 163
    .local v6, source:Lorg/w3c/dom/Text;
    invoke-interface {v6}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    .line 164
    .restart local v7       #target:Lorg/w3c/dom/Node;
    goto/16 :goto_5c

    .line 179
    .end local v6           #source:Lorg/w3c/dom/Text;
    :cond_11c
    return-object v7

    .line 104
    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_3e
        :pswitch_10e
        :pswitch_77
        :pswitch_e6
        :pswitch_de
        :pswitch_fc
        :pswitch_84
        :pswitch_96
        :pswitch_9e
        :pswitch_91
        :pswitch_f4
    .end packed-switch
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

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
    .line 188
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 192
    new-instance v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 3
    .parameter "data"

    .prologue
    .line 196
    new-instance v0, Lorg/apache/harmony/xml/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CommentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .prologue
    .line 200
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
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
    .line 209
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 214
    new-instance v0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

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
    .line 219
    new-instance v0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 3
    .parameter "data"

    .prologue
    .line 223
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 228
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/w3c/dom/DocumentType;

    if-eqz v1, :cond_1d

    .line 229
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/DocumentType;

    move-object v1, p0

    .line 233
    :goto_1c
    return-object v1

    .line 227
    .restart local p0
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .registers 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 238
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1d

    .line 239
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    move-object v1, p0

    .line 243
    :goto_1c
    return-object v1

    .line 237
    .restart local p0
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "elementId"

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 249
    .local v0, root:Lorg/apache/harmony/xml/dom/ElementImpl;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_9
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "tagname"

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 255
    .local v0, root:Lorg/apache/harmony/xml/dom/ElementImpl;
    if-nez v0, :cond_e

    new-instance v1, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    goto :goto_d
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 262
    .local v0, root:Lorg/apache/harmony/xml/dom/ElementImpl;
    if-nez v0, :cond_e

    new-instance v1, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    goto :goto_d
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 277
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
    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 287
    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 288
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Only one root element allowed"

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 290
    :cond_13
    instance-of v0, p1, Lorg/w3c/dom/DocumentType;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 291
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Only one DOCTYPE element allowed"

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 295
    :cond_25
    invoke-super {p0, p1, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method
