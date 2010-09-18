.class Ljava/util/LinkedHashMap$1;
.super Ljava/util/AbstractSet;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    .local p0, this:Ljava/util/LinkedHashMap$1;,"Ljava/util/LinkedHashMap.1;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 491
    .local p0, this:Ljava/util/LinkedHashMap$1;,"Ljava/util/LinkedHashMap.1;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 492
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 481
    .local p0, this:Ljava/util/LinkedHashMap$1;,"Ljava/util/LinkedHashMap.1;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, this:Ljava/util/LinkedHashMap$1;,"Ljava/util/LinkedHashMap.1;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashIterator;

    new-instance v1, Ljava/util/LinkedHashMap$1$1;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap$1$1;-><init>(Ljava/util/LinkedHashMap$1;)V

    iget-object v2, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 496
    .local p0, this:Ljava/util/LinkedHashMap$1;,"Ljava/util/LinkedHashMap.1;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 497
    iget-object v0, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const/4 v0, 0x1

    .line 500
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 486
    .local p0, this:Ljava/util/LinkedHashMap$1;,"Ljava/util/LinkedHashMap.1;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$1;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
