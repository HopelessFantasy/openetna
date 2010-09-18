.class public Lorg/apache/harmony/xml/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/xml/dom/NodeImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method add(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 57
    const/4 v0, 0x0

    .line 59
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v0, p0

    goto :goto_9
.end method
