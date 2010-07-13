.class Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;
.super Ljava/lang/Object;
.source "ExpatPullParser.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser$Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaxHandler"
.end annotation


# instance fields
.field depth:I

.field final synthetic this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser$Document;)V
    .registers 3
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xml/ExpatPullParser$Document;Lorg/apache/harmony/xml/ExpatPullParser$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;-><init>(Lorg/apache/harmony/xml/ExpatPullParser$Document;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 8
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 884
    if-nez p3, :cond_3

    .line 896
    :goto_2
    return-void

    .line 889
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    if-nez v0, :cond_1c

    .line 890
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    new-instance v1, Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    iget v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v3, v3, Lorg/apache/harmony/xml/ExpatPullParser$Document;->namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    invoke-virtual {v3}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->build()Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    move-result-object v3

    invoke-direct {v1, p3, v2, v3}, Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;-><init>(IILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    iput-object v1, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    .line 895
    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->textEvent:Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;->append([CII)V

    goto :goto_2
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 900
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 874
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-boolean v2, v2, Lorg/apache/harmony/xml/ExpatPullParser$Document;->processNamespaces:Z

    if-eqz v2, :cond_28

    move-object v1, p2

    .line 876
    .local v1, name:Ljava/lang/String;
    :goto_7
    iget v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    const/4 v2, 0x1

    sub-int v2, v0, v2

    iput v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    .line 877
    .local v0, depth:I
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    new-instance v3, Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;

    iget-object v4, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v4, v4, Lorg/apache/harmony/xml/ExpatPullParser$Document;->namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    invoke-virtual {v4}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->build()Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    move-result-object v4

    invoke-direct {v3, p1, v1, v0, v4}, Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->add(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V

    .line 879
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v2, v2, Lorg/apache/harmony/xml/ExpatPullParser$Document;->namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    invoke-virtual {v2, v0}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->pop(I)V

    .line 880
    return-void

    .end local v0           #depth:I
    .end local v1           #name:Ljava/lang/String;
    :cond_28
    move-object v1, p3

    .line 874
    goto :goto_7
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 901
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 903
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 905
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 898
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 906
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 899
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"

    .prologue
    .line 867
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-boolean v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->processNamespaces:Z

    if-eqz v0, :cond_29

    move-object v2, p2

    .line 869
    .local v2, name:Ljava/lang/String;
    :goto_7
    iget-object v7, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v3, v1, Lorg/apache/harmony/xml/ExpatPullParser$Document;->parser:Lorg/apache/harmony/xml/ExpatParser;

    iget v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v1, v1, Lorg/apache/harmony/xml/ExpatPullParser$Document;->namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->build()Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    move-result-object v5

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-boolean v6, v1, Lorg/apache/harmony/xml/ExpatPullParser$Document;->processNamespaces:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xml/ExpatPullParser$StartTagEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser;ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;Z)V

    invoke-virtual {v7, v0}, Lorg/apache/harmony/xml/ExpatPullParser$Document;->add(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V

    .line 871
    return-void

    .end local v2           #name:Ljava/lang/String;
    :cond_29
    move-object v2, p3

    .line 867
    goto :goto_7
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->this$1:Lorg/apache/harmony/xml/ExpatPullParser$Document;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatPullParser$Document;->namespaceStackBuilder:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;

    iget v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Document$SaxHandler;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->push(Ljava/lang/String;Ljava/lang/String;I)V

    .line 863
    return-void
.end method
