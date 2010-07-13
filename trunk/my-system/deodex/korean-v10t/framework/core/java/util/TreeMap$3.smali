.class Ljava/util/TreeMap$3;
.super Ljava/util/AbstractCollection;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .registers 2
    .parameter

    .prologue
    .line 1510
    .local p0, this:Ljava/util/TreeMap$3;,"Ljava/util/TreeMap.3;"
    iput-object p1, p0, Ljava/util/TreeMap$3;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1506
    .local p0, this:Ljava/util/TreeMap$3;,"Ljava/util/TreeMap.3;"
    iget-object v0, p0, Ljava/util/TreeMap$3;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1507
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 1496
    .local p0, this:Ljava/util/TreeMap$3;,"Ljava/util/TreeMap.3;"
    iget-object v0, p0, Ljava/util/TreeMap$3;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1511
    .local p0, this:Ljava/util/TreeMap$3;,"Ljava/util/TreeMap.3;"
    new-instance v0, Ljava/util/TreeMap$UnboundedValueIterator;

    iget-object v1, p0, Ljava/util/TreeMap$3;->this$0:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap$UnboundedValueIterator;-><init>(Ljava/util/TreeMap;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1501
    .local p0, this:Ljava/util/TreeMap$3;,"Ljava/util/TreeMap.3;"
    iget-object v0, p0, Ljava/util/TreeMap$3;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->size:I

    return v0
.end method
