.class Lcom/lge/util/CursorList$CursorIterator;
.super Ljava/lang/Object;
.source "CursorList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/util/CursorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CursorIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/util/CursorList;


# direct methods
.method constructor <init>(Lcom/lge/util/CursorList;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iput-object p1, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add operation is not supported from CursorIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 41
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v0}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 45
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v0}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v0}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 50
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    iget-object v1, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v1}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/util/CursorList;->createObject(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 52
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 56
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v0}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v0}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    iget-object v1, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v1}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/util/CursorList;->createObject(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 63
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public previousIndex()I
    .registers 3

    .prologue
    .line 67
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    iget-object v0, p0, Lcom/lge/util/CursorList$CursorIterator;->this$0:Lcom/lge/util/CursorList;

    invoke-static {v0}, Lcom/lge/util/CursorList;->access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 71
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove operation is not supported from CursorIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/lge/util/CursorList$CursorIterator;,"Lcom/lge/util/CursorList<TT;>.CursorIterator;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add operation is not supported from CursorIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
