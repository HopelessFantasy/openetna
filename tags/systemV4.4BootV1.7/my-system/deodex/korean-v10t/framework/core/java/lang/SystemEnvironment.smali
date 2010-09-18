.class Ljava/lang/SystemEnvironment;
.super Ljava/lang/Object;
.source "System.java"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field private map:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    .line 690
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t modify environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 698
    if-nez p1, :cond_8

    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 702
    :cond_8
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 707
    if-nez p1, :cond_8

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 711
    :cond_8
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Ljava/lang/SystemEnvironment;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 720
    if-nez p1, :cond_8

    .line 721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 724
    :cond_8
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 684
    invoke-virtual {p0, p1, p2}, Ljava/lang/SystemEnvironment;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t modify environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .parameter "map"

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t modify environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Ljava/lang/SystemEnvironment;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 744
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t modify environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Ljava/lang/SystemEnvironment;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
