.class Ljava/util/HashMap$1;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/HashMap;->keySet()Ljava/util/Set;
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
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 537
    .local p0, this:Ljava/util/HashMap$1;,"Ljava/util/HashMap.1;"
    iput-object p1, p0, Ljava/util/HashMap$1;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 527
    .local p0, this:Ljava/util/HashMap$1;,"Ljava/util/HashMap.1;"
    iget-object v0, p0, Ljava/util/HashMap$1;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 528
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 517
    .local p0, this:Ljava/util/HashMap$1;,"Ljava/util/HashMap.1;"
    iget-object v0, p0, Ljava/util/HashMap$1;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

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
    .line 538
    .local p0, this:Ljava/util/HashMap$1;,"Ljava/util/HashMap.1;"
    new-instance v0, Ljava/util/HashMap$HashMapIterator;

    new-instance v1, Ljava/util/HashMap$1$1;

    invoke-direct {v1, p0}, Ljava/util/HashMap$1$1;-><init>(Ljava/util/HashMap$1;)V

    iget-object v2, p0, Ljava/util/HashMap$1;->this$0:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap$HashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 532
    .local p0, this:Ljava/util/HashMap$1;,"Ljava/util/HashMap.1;"
    iget-object v1, p0, Ljava/util/HashMap$1;->this$0:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->removeEntry(Ljava/lang/Object;)Ljava/util/HashMap$Entry;

    move-result-object v0

    .line 533
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 522
    .local p0, this:Ljava/util/HashMap$1;,"Ljava/util/HashMap.1;"
    iget-object v0, p0, Ljava/util/HashMap$1;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
