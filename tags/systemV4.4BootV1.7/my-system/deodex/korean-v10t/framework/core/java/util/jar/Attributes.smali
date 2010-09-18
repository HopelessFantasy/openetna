.class public Ljava/util/jar/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Attributes$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 286
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Attributes;)V
    .registers 3
    .parameter "attrib"

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iget-object v0, p1, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 299
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 320
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 466
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_14

    .line 470
    .local v0, clone:Ljava/util/jar/Attributes;
    iget-object p0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iput-object p0, v0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    move-object v2, v0

    .line 471
    .end local v0           #clone:Ljava/util/jar/Attributes;
    :goto_13
    return-object v2

    .line 467
    .restart local p0
    :catch_14
    move-exception v2

    move-object v1, v2

    .line 468
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 331
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 343
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 498
    if-ne p0, p1, :cond_4

    .line 499
    const/4 v0, 0x1

    .line 504
    .end local p1
    :goto_3
    return v0

    .line 501
    .restart local p1
    :cond_4
    instance-of v0, p1, Ljava/util/jar/Attributes;

    if-eqz v0, :cond_13

    .line 502
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    check-cast p1, Ljava/util/jar/Attributes;

    .end local p1
    iget-object v1, p1, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 504
    .restart local p1
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 367
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 531
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    new-instance v1, Ljava/util/jar/Attributes$Name;

    invoke-direct {v1, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 518
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 406
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    check-cast p1, Ljava/util/jar/Attributes$Name;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, attrib:Ljava/util/Map;,"Ljava/util/Map<**>;"
    if-eqz p1, :cond_6

    instance-of v0, p1, Ljava/util/jar/Attributes;

    if-nez v0, :cond_c

    .line 420
    :cond_6
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 422
    :cond_c
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 423
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "val"

    .prologue
    .line 546
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    new-instance v1, Ljava/util/jar/Attributes$Name;

    invoke-direct {v1, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 436
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
