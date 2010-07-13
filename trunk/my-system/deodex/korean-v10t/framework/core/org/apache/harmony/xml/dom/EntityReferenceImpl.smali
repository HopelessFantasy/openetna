.class public Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lorg/w3c/dom/EntityReference;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "document"
    .parameter "name"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 39
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x5

    return v0
.end method
