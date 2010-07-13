.class final Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Ljava/util/concurrent/ConcurrentHashMap$HashIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
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
    .line 1109
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 1163
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    const/4 v4, 0x0

    .line 1135
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v2, :cond_a

    .line 1136
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1140
    :goto_9
    return v2

    .line 1137
    :cond_a
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_10

    move v2, v4

    .line 1138
    goto :goto_9

    .line 1139
    :cond_10
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1140
    .local v1, e:Ljava/util/Map$Entry;
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    goto :goto_9

    :cond_32
    move v2, v4

    goto :goto_9
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_c

    .line 1117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_c
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_c

    .line 1123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_c
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    const/4 v3, 0x0

    .line 1145
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v2, :cond_a

    .line 1146
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 1150
    :goto_9
    return v2

    .line 1148
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1149
    .local v0, k:Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1150
    .local v1, v:Ljava/lang/Object;
    if-nez v0, :cond_19

    move v2, v3

    :goto_15
    if-nez v1, :cond_1e

    :goto_17
    xor-int/2addr v2, v3

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_17
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1109
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1112
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_c

    .line 1129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_c
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1156
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_9

    .line 1157
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
