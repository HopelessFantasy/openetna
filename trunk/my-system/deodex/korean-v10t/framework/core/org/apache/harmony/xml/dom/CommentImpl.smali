.class public Lorg/apache/harmony/xml/dom/CommentImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "CommentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .parameter "document"
    .parameter "data"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "#comment"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x8

    return v0
.end method
