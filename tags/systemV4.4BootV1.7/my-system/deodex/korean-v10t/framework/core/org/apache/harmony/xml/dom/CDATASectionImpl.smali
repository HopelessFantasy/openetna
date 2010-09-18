.class public Lorg/apache/harmony/xml/dom/CDATASectionImpl;
.super Lorg/apache/harmony/xml/dom/TextImpl;
.source "CDATASectionImpl.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "document"
    .parameter "data"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x4

    return v0
.end method
