.class Ljava/util/Vector$1;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Vector;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .parameter

    .prologue
    .line 373
    .local p0, this:Ljava/util/Vector$1;,"Ljava/util/Vector.1;"
    iput-object p1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector$1;->pos:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 4

    .prologue
    .line 368
    .local p0, this:Ljava/util/Vector$1;,"Ljava/util/Vector.1;"
    iget-object v0, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 369
    :try_start_3
    iget v1, p0, Ljava/util/Vector$1;->pos:I

    iget-object v2, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    if-ge v1, v2, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 370
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, this:Ljava/util/Vector$1;,"Ljava/util/Vector.1;"
    iget-object v0, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 375
    :try_start_3
    iget v1, p0, Ljava/util/Vector$1;->pos:I

    iget-object v2, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    if-ge v1, v2, :cond_19

    .line 376
    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget-object v1, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector$1;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector$1;->pos:I

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    .line 378
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    .line 379
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 378
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method
