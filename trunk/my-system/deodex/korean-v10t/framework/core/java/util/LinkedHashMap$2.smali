.class Ljava/util/LinkedHashMap$2;
.super Ljava/util/AbstractCollection;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
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
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 558
    .local p0, this:Ljava/util/LinkedHashMap$2;,"Ljava/util/LinkedHashMap.2;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$2;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 554
    .local p0, this:Ljava/util/LinkedHashMap$2;,"Ljava/util/LinkedHashMap.2;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$2;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 555
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 544
    .local p0, this:Ljava/util/LinkedHashMap$2;,"Ljava/util/LinkedHashMap.2;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$2;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, this:Ljava/util/LinkedHashMap$2;,"Ljava/util/LinkedHashMap.2;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashIterator;

    new-instance v1, Ljava/util/LinkedHashMap$2$1;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap$2$1;-><init>(Ljava/util/LinkedHashMap$2;)V

    iget-object v2, p0, Ljava/util/LinkedHashMap$2;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 549
    .local p0, this:Ljava/util/LinkedHashMap$2;,"Ljava/util/LinkedHashMap.2;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$2;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
