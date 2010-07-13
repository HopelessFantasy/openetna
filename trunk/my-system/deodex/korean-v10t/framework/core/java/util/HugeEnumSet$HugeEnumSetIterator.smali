.class Ljava/util/HugeEnumSet$HugeEnumSetIterator;
.super Ljava/lang/Object;
.source "HugeEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HugeEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HugeEnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private bitsPosition:I

.field canProcess:Z

.field private currentElementMask:J

.field final synthetic this$0:Ljava/util/HugeEnumSet;

.field private unProcessedBits:[J


# direct methods
.method private constructor <init>(Ljava/util/HugeEnumSet;)V
    .registers 6
    .parameter

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    const/4 v3, 0x0

    .line 65
    iput-object p1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->canProcess:Z

    .line 66
    invoke-static {p1}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    .line 67
    invoke-static {p1}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v0

    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    invoke-static {p1}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    array-length v0, v0

    iput v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    .line 69
    invoke-direct {p0, v3}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->findNextNoneZeroPosition(I)V

    .line 70
    iget v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    array-length v1, v1

    if-ne v0, v1, :cond_37

    .line 71
    iput-boolean v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->canProcess:Z

    .line 73
    :cond_37
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    invoke-direct {p0, p1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;)V

    return-void
.end method

.method private findNextNoneZeroPosition(I)V
    .registers 7
    .parameter "start"

    .prologue
    .line 76
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 77
    const-wide/16 v1, 0x0

    iget-object v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    invoke-static {v3}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v3

    aget-wide v3, v3, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_17

    .line 78
    iput v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    .line 82
    :cond_16
    return-void

    .line 76
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 85
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    iget-boolean v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->canProcess:Z

    return v0
.end method

.method public next()Ljava/lang/Enum;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    iget-boolean v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->canProcess:Z

    if-nez v1, :cond_a

    .line 90
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 92
    :cond_a
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    iget v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    aget-wide v1, v1, v2

    iget-object v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    iget v4, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    aget-wide v3, v3, v4

    neg-long v3, v3

    and-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    .line 94
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    iget v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    aget-wide v3, v1, v2

    iget-wide v5, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    sub-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 95
    const-wide/16 v1, 0x0

    iget-object v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->unProcessedBits:[J

    iget v4, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    aget-wide v3, v3, v4

    cmp-long v1, v1, v3

    if-nez v1, :cond_41

    .line 96
    iget v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    .line 97
    .local v0, oldBitsPosition:I
    iget v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->findNextNoneZeroPosition(I)V

    .line 98
    iget v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    if-ne v1, v0, :cond_41

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->canProcess:Z

    .line 102
    .end local v0           #oldBitsPosition:I
    :cond_41
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    invoke-static {v1}, Ljava/util/HugeEnumSet;->access$100(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;

    move-result-object v1

    iget-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    iget v3, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    mul-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 11

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet$HugeEnumSetIterator;,"Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    const-wide/16 v8, 0x0

    .line 107
    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_e

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 110
    :cond_e
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    invoke-static {v0}, Ljava/util/HugeEnumSet;->access$000(Ljava/util/HugeEnumSet;)[J

    move-result-object v0

    iget v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->bitsPosition:I

    aget-wide v2, v0, v1

    iget-wide v4, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 111
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    invoke-static {v0}, Ljava/util/HugeEnumSet;->access$210(Ljava/util/HugeEnumSet;)I

    .line 112
    iput-wide v8, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentElementMask:J

    .line 113
    return-void
.end method
