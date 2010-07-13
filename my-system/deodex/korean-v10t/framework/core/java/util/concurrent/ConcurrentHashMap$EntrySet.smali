.class final Ljava/util/concurrent/ConcurrentHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 1201
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1222
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1223
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    const/4 v5, 0x0

    .line 1206
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_7

    move v3, v5

    .line 1210
    :goto_6
    return v3

    .line 1208
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1209
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1210
    .local v2, v:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_6

    :cond_23
    move v3, v5

    goto :goto_6
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1203
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 1213
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 1214
    const/4 v2, 0x0

    .line 1216
    :goto_5
    return v2

    .line 1215
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1216
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1219
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1227
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1228
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1229
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$SimpleEntry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-direct {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1230
    :cond_22
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1233
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1234
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #this:Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySet;"
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1235
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$SimpleEntry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-direct {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1236
    :cond_22
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
