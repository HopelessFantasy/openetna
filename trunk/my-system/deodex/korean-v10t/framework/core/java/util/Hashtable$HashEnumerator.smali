.class final Ljava/util/Hashtable$HashEnumerator;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HashEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Hashtable$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field key:Z

.field start:I

.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;Z)V
    .registers 4
    .parameter
    .parameter "isKey"

    .prologue
    .line 228
    .local p0, this:Ljava/util/Hashtable$HashEnumerator;,"Ljava/util/Hashtable<TK;TV;>.HashEnumerator<TE;>;"
    iput-object p1, p0, Ljava/util/Hashtable$HashEnumerator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-boolean p2, p0, Ljava/util/Hashtable$HashEnumerator;->key:Z

    .line 230
    iget v0, p1, Ljava/util/Hashtable;->lastSlot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable$HashEnumerator;->start:I

    .line 231
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 4

    .prologue
    .local p0, this:Ljava/util/Hashtable$HashEnumerator;,"Ljava/util/Hashtable<TK;TV;>.HashEnumerator<TE;>;"
    const/4 v2, 0x1

    .line 234
    iget-object v0, p0, Ljava/util/Hashtable$HashEnumerator;->entry:Ljava/util/Hashtable$Entry;

    if-eqz v0, :cond_7

    move v0, v2

    .line 243
    :goto_6
    return v0

    .line 237
    :cond_7
    iget v0, p0, Ljava/util/Hashtable$HashEnumerator;->start:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljava/util/Hashtable$HashEnumerator;->start:I

    iget-object v1, p0, Ljava/util/Hashtable$HashEnumerator;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->firstSlot:I

    if-lt v0, v1, :cond_28

    .line 238
    iget-object v0, p0, Ljava/util/Hashtable$HashEnumerator;->this$0:Ljava/util/Hashtable;

    iget-object v0, v0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget v1, p0, Ljava/util/Hashtable$HashEnumerator;->start:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 239
    iget-object v0, p0, Ljava/util/Hashtable$HashEnumerator;->this$0:Ljava/util/Hashtable;

    iget-object v0, v0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget v1, p0, Ljava/util/Hashtable$HashEnumerator;->start:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/Hashtable$HashEnumerator;->entry:Ljava/util/Hashtable$Entry;

    move v0, v2

    .line 240
    goto :goto_6

    .line 243
    :cond_28
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, this:Ljava/util/Hashtable$HashEnumerator;,"Ljava/util/Hashtable<TK;TV;>.HashEnumerator<TE;>;"
    invoke-virtual {p0}, Ljava/util/Hashtable$HashEnumerator;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 249
    iget-boolean v1, p0, Ljava/util/Hashtable$HashEnumerator;->key:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljava/util/Hashtable$HashEnumerator;->entry:Ljava/util/Hashtable$Entry;

    iget-object v1, v1, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    move-object v0, v1

    .line 250
    .local v0, result:Ljava/lang/Object;
    :goto_f
    iget-object v1, p0, Ljava/util/Hashtable$HashEnumerator;->entry:Ljava/util/Hashtable$Entry;

    iget-object v1, v1, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    iput-object v1, p0, Ljava/util/Hashtable$HashEnumerator;->entry:Ljava/util/Hashtable$Entry;

    .line 251
    return-object v0

    .line 249
    .end local v0           #result:Ljava/lang/Object;
    :cond_16
    iget-object v1, p0, Ljava/util/Hashtable$HashEnumerator;->entry:Ljava/util/Hashtable$Entry;

    iget-object v1, v1, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_f

    .line 253
    :cond_1c
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
