.class Lorg/javia/arity/RPN;
.super Lorg/javia/arity/TokenConsumer;
.source "RPN.java"


# instance fields
.field consumer:Lorg/javia/arity/TokenConsumer;

.field exception:Lorg/javia/arity/SyntaxException;

.field prevTokenId:I

.field stack:Ljava/util/Stack;


# direct methods
.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 35
    iput-object p1, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    .line 36
    return-void
.end method

.method static final isOperand(I)Z
    .registers 2
    .parameter

    .prologue
    .line 64
    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/16 v0, 0xe

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private popHigher(I)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    .line 55
    :goto_4
    if-eqz v0, :cond_19

    iget v1, v0, Lorg/javia/arity/Token;->priority:I

    if-lt v1, p1, :cond_19

    .line 56
    iget-object v1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v1, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 58
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    goto :goto_4

    .line 61
    :cond_19
    return-void
.end method

.method private top()Lorg/javia/arity/Token;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/javia/arity/Token;

    move-object v0, p0

    goto :goto_9
.end method


# virtual methods
.method push(Lorg/javia/arity/Token;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 72
    iget v0, p1, Lorg/javia/arity/Token;->priority:I

    .line 73
    iget v1, p1, Lorg/javia/arity/Token;->id:I

    .line 74
    packed-switch v1, :pswitch_data_fe

    .line 137
    :pswitch_a
    iget v2, p1, Lorg/javia/arity/Token;->assoc:I

    if-ne v2, v3, :cond_c8

    .line 138
    iget v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v0}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 139
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 141
    :cond_1b
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 159
    :goto_21
    iget v0, v0, Lorg/javia/arity/Token;->id:I

    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 160
    :cond_25
    return-void

    .line 77
    :pswitch_26
    iget v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v0}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 78
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 80
    :cond_33
    iget-object v0, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v0, p1}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    move-object v0, p1

    .line 81
    goto :goto_21

    .line 94
    :pswitch_3a
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    if-ne v1, v4, :cond_60

    .line 95
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v1

    iget v2, v1, Lorg/javia/arity/Token;->arity:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/javia/arity/Token;->arity:I

    .line 100
    :cond_47
    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 101
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_f8

    .line 103
    iget v1, v0, Lorg/javia/arity/Token;->id:I

    if-ne v1, v4, :cond_73

    .line 104
    iget-object v1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v1, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 108
    :cond_59
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-object v0, p1

    goto :goto_21

    .line 96
    :cond_60
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v1}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 97
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "unexpected ) or END"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 105
    :cond_73
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    if-eq v0, v1, :cond_59

    .line 106
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "expected LPAREN or CALL"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 114
    :pswitch_82
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v1}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v1

    if-nez v1, :cond_95

    .line 115
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "misplaced COMMA"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 117
    :cond_95
    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 118
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_a2

    iget v1, v0, Lorg/javia/arity/Token;->id:I

    if-eq v1, v4, :cond_ad

    .line 120
    :cond_a2
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "COMMA not inside CALL"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 122
    :cond_ad
    iget v1, v0, Lorg/javia/arity/Token;->arity:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/javia/arity/Token;->arity:I

    move-object v0, p1

    .line 124
    goto/16 :goto_21

    .line 128
    :pswitch_b6
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    .line 129
    iget v1, p1, Lorg/javia/arity/Token;->position:I

    iput v1, v0, Lorg/javia/arity/Token;->position:I

    .line 131
    :cond_bc
    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 132
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v1

    if-nez v1, :cond_bc

    move-object v0, p1

    .line 133
    goto/16 :goto_21

    .line 144
    :cond_c8
    iget v2, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v2}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 145
    const/4 v0, 0x2

    if-ne v1, v0, :cond_dc

    .line 147
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_UMIN:Lorg/javia/arity/Token;

    .line 148
    iget-object v1, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    .line 150
    :cond_dc
    if-eq v1, v3, :cond_25

    .line 154
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "operator without operand"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 156
    :cond_e9
    iget v1, p1, Lorg/javia/arity/Token;->assoc:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_fb

    move v1, v3

    :goto_ef
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 157
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f8
    move-object v0, p1

    goto/16 :goto_21

    .line 156
    :cond_fb
    const/4 v1, 0x0

    goto :goto_ef

    .line 74
    nop

    :pswitch_data_fe
    .packed-switch 0x9
        :pswitch_26
        :pswitch_26
        :pswitch_a
        :pswitch_82
        :pswitch_a
        :pswitch_3a
        :pswitch_b6
    .end packed-switch
.end method

.method setConsumer(Lorg/javia/arity/TokenConsumer;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    .line 40
    return-void
.end method

.method start()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 46
    iget-object v0, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v0}, Lorg/javia/arity/TokenConsumer;->start()V

    .line 47
    return-void
.end method
