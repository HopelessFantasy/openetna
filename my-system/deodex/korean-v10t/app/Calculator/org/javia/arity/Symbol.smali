.class Lorg/javia/arity/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# static fields
.field static final CONST_ARITY:I = -0x3


# instance fields
.field private arity:I

.field fun:Lorg/javia/arity/Function;

.field private name:Ljava/lang/String;

.field op:B

.field valueIm:D

.field valueRe:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 40
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DD)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;DD)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x3

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    .line 45
    iput-wide p2, p0, Lorg/javia/arity/Symbol;->valueRe:D

    .line 46
    iput-wide p4, p0, Lorg/javia/arity/Symbol;->valueIm:D

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    .line 31
    iput-byte p3, p0, Lorg/javia/arity/Symbol;->op:B

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/javia/arity/Function;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p2}, Lorg/javia/arity/Function;->arity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    .line 36
    iput-object p2, p0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    .line 37
    return-void
.end method

.method static newEmpty(Lorg/javia/arity/Symbol;)Lorg/javia/arity/Symbol;
    .registers 5
    .parameter

    .prologue
    .line 50
    new-instance v0, Lorg/javia/arity/Symbol;

    iget-object v1, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    iget v2, p0, Lorg/javia/arity/Symbol;->arity:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IB)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 64
    check-cast p1, Lorg/javia/arity/Symbol;

    .line 65
    iget-object v0, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/javia/arity/Symbol;->arity:I

    iget v1, p1, Lorg/javia/arity/Symbol;->arity:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/javia/arity/Symbol;->arity:I

    add-int/2addr v0, v1

    return v0
.end method

.method isEmpty()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    iget-byte v0, p0, Lorg/javia/arity/Symbol;->op:B

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-nez v0, :cond_18

    iget-wide v0, p0, Lorg/javia/arity/Symbol;->valueRe:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_18

    iget-wide v0, p0, Lorg/javia/arity/Symbol;->valueIm:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lorg/javia/arity/Symbol;->name:Ljava/lang/String;

    .line 59
    iput p2, p0, Lorg/javia/arity/Symbol;->arity:I

    .line 60
    return-object p0
.end method
