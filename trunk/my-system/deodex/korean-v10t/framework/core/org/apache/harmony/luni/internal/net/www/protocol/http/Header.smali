.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private keyTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private props:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x14

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 64
    .local v5, next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 67
    .local v6, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .local v4, linkedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, element:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 72
    .end local v0           #element:Ljava/lang/String;
    :cond_46
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 74
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #linkedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5           #next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6           #value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4c
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 102
    if-nez p1, :cond_8

    .line 103
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 106
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 108
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_20

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .restart local v0       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_20
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 80
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 81
    .local v0, clone:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    .line 82
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    .line 84
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 85
    .local v3, next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 87
    .local v4, v:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v5, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_23

    .line 90
    .end local v0           #clone:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .end local v4           #v:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_45
    move-exception v5

    move-object v1, v5

    .line 91
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v5, 0x0

    .end local v1           #e:Ljava/lang/CloneNotSupportedException;
    :goto_48
    return-object v5

    .restart local v0       #clone:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_49
    move-object v5, v0

    .line 89
    goto :goto_48
.end method

.method public get(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 173
    if-ltz p1, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1a

    .line 174
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 176
    :goto_19
    return-object v0

    .restart local p0
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 203
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 204
    .local v0, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_10

    .line 205
    const/4 v1, 0x0

    .line 207
    .end local p0
    :goto_f
    return-object v1

    .restart local p0
    :cond_10
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_f
.end method

.method public getFieldMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/util/HashMap;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    .local v1, next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 159
    .local v3, v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 161
    .end local v1           #next:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .end local v3           #v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method

.method public getKey(I)Ljava/lang/String;
    .registers 4
    .parameter "pos"

    .prologue
    .line 189
    if-ltz p1, :cond_18

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_18

    .line 190
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 192
    :goto_17
    return-object v0

    .restart local p0
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 126
    if-nez p1, :cond_8

    .line 127
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 130
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->keyTable:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 133
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v1, :cond_1a

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_19
    return-void

    .line 136
    :cond_1a
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 137
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_19

    .line 139
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, propKey:Ljava/lang/String;
    if-eqz v2, :cond_40

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 141
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_40
    add-int/lit8 v0, v0, 0x2

    goto :goto_21
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .registers 5
    .parameter "statusLine"

    .prologue
    .line 226
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->statusLine:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->props:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 236
    return-void
.end method
