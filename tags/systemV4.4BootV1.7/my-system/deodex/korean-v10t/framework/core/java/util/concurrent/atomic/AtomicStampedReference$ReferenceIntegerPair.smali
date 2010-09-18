.class Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicStampedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceIntegerPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final integer:I

.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->reference:Ljava/lang/Object;

    iput p2, p0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->integer:I

    .line 28
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->integer:I

    return v0
.end method
