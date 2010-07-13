.class public Lcom/lge/util/LRUHashMap;
.super Ljava/util/LinkedHashMap;
.source "LRUHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x373a852418039a2fL


# instance fields
.field entryMax:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter "entryMax"

    .prologue
    .line 26
    .local p0, this:Lcom/lge/util/LRUHashMap;,"Lcom/lge/util/LRUHashMap<TK;TV;>;"
    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 27
    iput p1, p0, Lcom/lge/util/LRUHashMap;->entryMax:I

    .line 28
    return-void
.end method


# virtual methods
.method public getMaxSize()I
    .registers 2

    .prologue
    .line 35
    .local p0, this:Lcom/lge/util/LRUHashMap;,"Lcom/lge/util/LRUHashMap<TK;TV;>;"
    iget v0, p0, Lcom/lge/util/LRUHashMap;->entryMax:I

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/lge/util/LRUHashMap;,"Lcom/lge/util/LRUHashMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lge/util/LRUHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/lge/util/LRUHashMap;->entryMax:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setMaxSize(I)V
    .registers 2
    .parameter "entryMax"

    .prologue
    .line 31
    .local p0, this:Lcom/lge/util/LRUHashMap;,"Lcom/lge/util/LRUHashMap<TK;TV;>;"
    iput p1, p0, Lcom/lge/util/LRUHashMap;->entryMax:I

    .line 32
    return-void
.end method
