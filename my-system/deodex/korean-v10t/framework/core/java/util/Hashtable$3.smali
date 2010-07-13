.class Ljava/util/Hashtable$3;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Hashtable;->keySet()Ljava/util/Set;
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
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    .local p0, this:Ljava/util/Hashtable$3;,"Ljava/util/Hashtable.3;"
    iput-object p1, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 657
    .local p0, this:Ljava/util/Hashtable$3;,"Ljava/util/Hashtable.3;"
    iget-object v0, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 658
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 643
    .local p0, this:Ljava/util/Hashtable$3;,"Ljava/util/Hashtable.3;"
    iget-object v0, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 645
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
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
    .line 673
    .local p0, this:Ljava/util/Hashtable$3;,"Ljava/util/Hashtable.3;"
    new-instance v0, Ljava/util/Hashtable$HashIterator;

    iget-object v1, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable$3$1;

    invoke-direct {v2, p0}, Ljava/util/Hashtable$3$1;-><init>(Ljava/util/Hashtable$3;)V

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;Ljava/util/MapEntry$Type;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 662
    .local p0, this:Ljava/util/Hashtable$3;,"Ljava/util/Hashtable.3;"
    iget-object v0, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 663
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 664
    iget-object v1, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 667
    :goto_13
    return v0

    :cond_14
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_13

    .line 668
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 650
    .local p0, this:Ljava/util/Hashtable$3;,"Ljava/util/Hashtable.3;"
    iget-object v0, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 651
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$3;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->elementCount:I

    monitor-exit v0

    return v1

    .line 652
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
