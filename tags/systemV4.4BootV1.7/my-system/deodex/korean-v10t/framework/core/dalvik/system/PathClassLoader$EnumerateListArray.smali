.class Ldalvik/system/PathClassLoader$EnumerateListArray;
.super Ljava/lang/Object;
.source "PathClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/PathClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumerateListArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private i:I

.field private final mList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .parameter "list"

    .prologue
    .line 484
    .local p0, this:Ldalvik/system/PathClassLoader$EnumerateListArray;,"Ldalvik/system/PathClassLoader$EnumerateListArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->i:I

    .line 485
    iput-object p1, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->mList:Ljava/util/ArrayList;

    .line 486
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 489
    .local p0, this:Ldalvik/system/PathClassLoader$EnumerateListArray;,"Ldalvik/system/PathClassLoader$EnumerateListArray<TT;>;"
    iget v0, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->i:I

    iget-object v1, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Ldalvik/system/PathClassLoader$EnumerateListArray;,"Ldalvik/system/PathClassLoader$EnumerateListArray<TT;>;"
    iget v0, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->i:I

    iget-object v1, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 494
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 495
    :cond_10
    iget-object v0, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->mList:Ljava/util/ArrayList;

    iget v1, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldalvik/system/PathClassLoader$EnumerateListArray;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
