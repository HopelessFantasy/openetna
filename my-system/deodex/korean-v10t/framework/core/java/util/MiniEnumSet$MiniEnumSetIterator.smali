.class Ljava/util/MiniEnumSet$MiniEnumSetIterator;
.super Ljava/lang/Object;
.source "MiniEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/MiniEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniEnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canProcess:Z

.field private currentElementMask:J

.field final synthetic this$0:Ljava/util/MiniEnumSet;

.field private unProcessedBits:J


# direct methods
.method private constructor <init>(Ljava/util/MiniEnumSet;)V
    .registers 6
    .parameter

    .prologue
    .line 60
    .local p0, this:Ljava/util/MiniEnumSet$MiniEnumSetIterator;,"Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iput-object p1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->canProcess:Z

    .line 61
    invoke-static {p1}, Ljava/util/MiniEnumSet;->access$000(Ljava/util/MiniEnumSet;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    .line 62
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->canProcess:Z

    .line 65
    :cond_19
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    .local p0, this:Ljava/util/MiniEnumSet$MiniEnumSetIterator;,"Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    invoke-direct {p0, p1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 68
    .local p0, this:Ljava/util/MiniEnumSet$MiniEnumSetIterator;,"Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-boolean v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->canProcess:Z

    return v0
.end method

.method public next()Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Ljava/util/MiniEnumSet$MiniEnumSetIterator;,"Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-boolean v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->canProcess:Z

    if-nez v0, :cond_a

    .line 73
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 75
    :cond_a
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentElementMask:J

    .line 76
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentElementMask:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    .line 77
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->unProcessedBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->canProcess:Z

    .line 80
    :cond_24
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    invoke-static {v0}, Ljava/util/MiniEnumSet;->access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;

    move-result-object v0

    iget-wide v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentElementMask:J

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    .local p0, this:Ljava/util/MiniEnumSet$MiniEnumSetIterator;,"Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    invoke-virtual {p0}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 8

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet$MiniEnumSetIterator;,"Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    const-wide/16 v5, 0x0

    .line 84
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentElementMask:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_e

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 87
    :cond_e
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    iget-wide v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentElementMask:J

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Ljava/util/MiniEnumSet;->access$074(Ljava/util/MiniEnumSet;J)J

    .line 88
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    invoke-static {v1}, Ljava/util/MiniEnumSet;->access$000(Ljava/util/MiniEnumSet;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/MiniEnumSet;->access$202(Ljava/util/MiniEnumSet;I)I

    .line 89
    iput-wide v5, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentElementMask:J

    .line 90
    return-void
.end method
