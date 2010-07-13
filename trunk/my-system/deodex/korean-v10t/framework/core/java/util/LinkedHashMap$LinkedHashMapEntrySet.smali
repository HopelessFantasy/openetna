.class final Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;
.super Ljava/util/HashMap$HashMapEntrySet;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LinkedHashMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$HashMapEntrySet",
        "<TKT;TVT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;,"Ljava/util/LinkedHashMap$LinkedHashMapEntrySet<TKT;TVT;>;"
    .local p1, lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TKT;TVT;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$HashMapEntrySet;-><init>(Ljava/util/HashMap;)V

    .line 222
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;,"Ljava/util/LinkedHashMap$LinkedHashMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashIterator;

    new-instance v1, Ljava/util/LinkedHashMap$LinkedHashMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntrySet$1;-><init>(Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;)V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;->hashMap()Ljava/util/HashMap;

    move-result-object p0

    .end local p0           #this:Ljava/util/LinkedHashMap$LinkedHashMapEntrySet;,"Ljava/util/LinkedHashMap$LinkedHashMapEntrySet<TKT;TVT;>;"
    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, p0}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/LinkedHashMap;)V

    return-object v0
.end method
