.class Lorg/javia/arity/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final LEFT:I = 0x2

.field static final PREFIX:I = 0x1

.field static final RIGHT:I = 0x3

.field static final SUFIX:I = 0x4


# instance fields
.field arity:I

.field final assoc:I

.field final id:I

.field name:Ljava/lang/String;

.field position:I

.field final priority:I

.field value:D

.field final vmop:B


# direct methods
.method constructor <init>(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    .line 38
    iput p1, p0, Lorg/javia/arity/Token;->id:I

    .line 39
    iput p2, p0, Lorg/javia/arity/Token;->priority:I

    .line 40
    iput p3, p0, Lorg/javia/arity/Token;->assoc:I

    .line 41
    int-to-byte v0, p4

    iput-byte v0, p0, Lorg/javia/arity/Token;->vmop:B

    .line 42
    const/16 v0, 0xb

    if-ne p1, v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput v0, p0, Lorg/javia/arity/Token;->arity:I

    .line 43
    return-void

    .line 42
    :cond_17
    const/4 v0, -0x3

    goto :goto_14
.end method


# virtual methods
.method setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method setPos(I)Lorg/javia/arity/Token;
    .registers 2
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lorg/javia/arity/Token;->position:I

    .line 47
    return-object p0
.end method

.method setValue(D)Lorg/javia/arity/Token;
    .registers 3
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lorg/javia/arity/Token;->value:D

    .line 52
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, ""

    .line 61
    iget v0, p0, Lorg/javia/arity/Token;->id:I

    packed-switch v0, :pswitch_data_58

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/javia/arity/Token;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 63
    :pswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Token;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 65
    :pswitch_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 67
    :pswitch_55
    iget-object v0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    goto :goto_1c

    .line 61
    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1d
        :pswitch_55
        :pswitch_33
    .end packed-switch
.end method
