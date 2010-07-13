.class Ljava/util/Hashtable$4;
.super Ljava/util/AbstractCollection;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Hashtable;->values()Ljava/util/Collection;
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
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 904
    .local p0, this:Ljava/util/Hashtable$4;,"Ljava/util/Hashtable.4;"
    iput-object p1, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 900
    .local p0, this:Ljava/util/Hashtable$4;,"Ljava/util/Hashtable.4;"
    iget-object v0, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 901
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 886
    .local p0, this:Ljava/util/Hashtable$4;,"Ljava/util/Hashtable.4;"
    iget-object v0, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 887
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 888
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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, this:Ljava/util/Hashtable$4;,"Ljava/util/Hashtable.4;"
    new-instance v0, Ljava/util/Hashtable$HashIterator;

    iget-object v1, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable$4$1;

    invoke-direct {v2, p0}, Ljava/util/Hashtable$4$1;-><init>(Ljava/util/Hashtable$4;)V

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;Ljava/util/MapEntry$Type;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 893
    .local p0, this:Ljava/util/Hashtable$4;,"Ljava/util/Hashtable.4;"
    iget-object v0, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 894
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$4;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->elementCount:I

    monitor-exit v0

    return v1

    .line 895
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
