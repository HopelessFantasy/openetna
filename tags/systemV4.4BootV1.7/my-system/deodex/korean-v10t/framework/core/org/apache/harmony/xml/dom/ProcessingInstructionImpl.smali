.class public Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# instance fields
.field private data:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "document"
    .parameter "target"
    .parameter "data"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 43
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x7

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    .line 72
    return-void
.end method
