.class public Lcom/lge/feed/Markup;
.super Ljava/lang/Object;
.source "Markup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x39bf148d2da52d31L


# instance fields
.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;"
        }
    .end annotation
.end field

.field private namespace:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter "tag"
    .parameter "prefix"
    .parameter "namespace"
    .parameter
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p4, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, children:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/Markup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/lge/feed/Markup;->prefix:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/lge/feed/Markup;->namespace:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    .line 76
    iput-object p5, p0, Lcom/lge/feed/Markup;->text:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    .line 78
    return-void
.end method


# virtual methods
.method public addChild(Lcom/lge/feed/Markup;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 214
    instance-of v2, p1, Lcom/lge/feed/Markup;

    if-eqz v2, :cond_34

    .line 215
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/Markup;

    move-object v1, v0

    .line 216
    .local v1, m:Lcom/lge/feed/Markup;
    iget-object v2, p0, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    iget-object v3, v1, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/feed/Markup;->text:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/Markup;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    .line 219
    .end local v1           #m:Lcom/lge/feed/Markup;
    :goto_31
    return v2

    .line 216
    .restart local v1       #m:Lcom/lge/feed/Markup;
    :cond_32
    const/4 v2, 0x0

    goto :goto_31

    .line 219
    .end local v1           #m:Lcom/lge/feed/Markup;
    :cond_34
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_31
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/lge/feed/Markup;
    .registers 3
    .parameter "i"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/lge/feed/Markup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/feed/Markup;

    move-object v0, p0

    :goto_f
    return-object v0

    .restart local p0
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/feed/Markup;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/feed/Markup;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/feed/Markup;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/lge/feed/Markup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeChild(I)Lcom/lge/feed/Markup;
    .registers 3
    .parameter "i"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/lge/feed/Markup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_10

    iget-object v0, p0, Lcom/lge/feed/Markup;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/feed/Markup;

    move-object v0, p0

    :goto_f
    return-object v0

    .restart local p0
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/feed/Markup;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .registers 2
    .parameter "namespace"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/feed/Markup;->namespace:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/feed/Markup;->prefix:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .parameter "tag"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lge/feed/Markup;->text:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, ">"

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/Markup;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/Markup;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
