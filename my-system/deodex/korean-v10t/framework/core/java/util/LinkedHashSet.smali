.class public Ljava/util/LinkedHashSet;
.super Ljava/util/HashSet;
.source "LinkedHashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x279328a56a22d5e2L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    .local p0, this:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 59
    .local p0, this:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 60
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 73
    .local p0, this:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_23

    const/16 v3, 0xb

    :goto_b
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 85
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_23
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 90
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    return-void
.end method


# virtual methods
.method createBackingMap(IF)Ljava/util/HashMap;
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method
