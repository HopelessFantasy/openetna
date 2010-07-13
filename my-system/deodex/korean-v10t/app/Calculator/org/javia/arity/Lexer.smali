.class Lorg/javia/arity/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final ADD:I = 0x1

.field static final CALL:I = 0xb

.field static final COMMA:I = 0xc

.field static final CONST:I = 0xa

.field static final DIV:I = 0x4

.field static final END:I = 0xf

.field private static final END_MARKER:C = '$'

.field static final FACT:I = 0x8

.field static final LPAREN:I = 0xd

.field static final MOD:I = 0x5

.field static final MUL:I = 0x3

.field static final NUMBER:I = 0x9

.field static final POWER:I = 0x7

.field static final RPAREN:I = 0xe

.field static final SQRT:I = 0x10

.field static final SUB:I = 0x2

.field static final TOK_ADD:Lorg/javia/arity/Token; = null

.field static final TOK_COMMA:Lorg/javia/arity/Token; = null

.field static final TOK_CONST:Lorg/javia/arity/Token; = null

.field static final TOK_DIV:Lorg/javia/arity/Token; = null

.field static final TOK_END:Lorg/javia/arity/Token; = null

.field static final TOK_FACT:Lorg/javia/arity/Token; = null

.field static final TOK_LPAREN:Lorg/javia/arity/Token; = null

.field static final TOK_MOD:Lorg/javia/arity/Token; = null

.field static final TOK_MUL:Lorg/javia/arity/Token; = null

.field static final TOK_NUMBER:Lorg/javia/arity/Token; = null

.field static final TOK_POWER:Lorg/javia/arity/Token; = null

.field static final TOK_RPAREN:Lorg/javia/arity/Token; = null

.field static final TOK_SQRT:Lorg/javia/arity/Token; = null

.field static final TOK_SUB:Lorg/javia/arity/Token; = null

.field static final TOK_UMIN:Lorg/javia/arity/Token; = null

.field static final UMIN:I = 0x6

.field private static final WHITESPACE:Ljava/lang/String; = " \n\r\t"


# instance fields
.field private exception:Lorg/javia/arity/SyntaxException;

.field private input:[C

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 39
    new-instance v0, Lorg/javia/arity/Token;

    invoke-direct {v0, v6, v8, v5, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_ADD:Lorg/javia/arity/Token;

    .line 40
    new-instance v0, Lorg/javia/arity/Token;

    invoke-direct {v0, v5, v8, v5, v7}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    .line 42
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x5

    invoke-direct {v0, v8, v7, v5, v1}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    .line 43
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x6

    invoke-direct {v0, v7, v7, v5, v1}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    .line 44
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v5, v2}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_MOD:Lorg/javia/arity/Token;

    .line 46
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_UMIN:Lorg/javia/arity/Token;

    .line 48
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v8, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    .line 49
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v7, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_FACT:Lorg/javia/arity/Token;

    .line 50
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_SQRT:Lorg/javia/arity/Token;

    .line 52
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v6, v6, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    .line 53
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xe

    invoke-direct {v0, v1, v5, v4, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    .line 54
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v6, v4, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_COMMA:Lorg/javia/arity/Token;

    .line 55
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4, v4, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    .line 57
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x9

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v4, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    .line 58
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xa

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v4, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    .line 67
    iput-object p1, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    .line 68
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/javia/arity/Lexer;->init(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method init(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    iput-object p1, v0, Lorg/javia/arity/SyntaxException;->expression:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_16

    .line 91
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    .line 93
    :cond_16
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 94
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    const/16 v2, 0x24

    aput-char v2, v1, v0

    .line 95
    iput v3, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 96
    return-void
.end method

.method nextToken()Lorg/javia/arity/Token;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x39

    const/16 v4, 0x30

    const/4 v5, 0x1

    .line 99
    :goto_7
    const-string v0, " \n\r\t"

    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    iget v2, p0, Lorg/javia/arity/Lexer;->pos:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_1c

    .line 100
    iget v0, p0, Lorg/javia/arity/Lexer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    goto :goto_7

    .line 103
    :cond_1c
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    iget v1, p0, Lorg/javia/arity/Lexer;->pos:I

    aget-char v0, v0, v1

    .line 104
    iget v1, p0, Lorg/javia/arity/Lexer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 106
    packed-switch v0, :pswitch_data_1a0

    .line 118
    :pswitch_2b
    const/16 v2, 0x5e

    if-ne v0, v2, :cond_50

    .line 119
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    .line 175
    :goto_31
    return-object v0

    .line 107
    :pswitch_32
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_FACT:Lorg/javia/arity/Token;

    goto :goto_31

    .line 108
    :pswitch_35
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    goto :goto_31

    .line 109
    :pswitch_38
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MOD:Lorg/javia/arity/Token;

    goto :goto_31

    .line 110
    :pswitch_3b
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    goto :goto_31

    .line 111
    :pswitch_3e
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    goto :goto_31

    .line 112
    :pswitch_41
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    goto :goto_31

    .line 113
    :pswitch_44
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_ADD:Lorg/javia/arity/Token;

    goto :goto_31

    .line 114
    :pswitch_47
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_COMMA:Lorg/javia/arity/Token;

    goto :goto_31

    .line 115
    :pswitch_4a
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    goto :goto_31

    .line 116
    :pswitch_4d
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    goto :goto_31

    .line 122
    :cond_50
    iget v2, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 123
    if-gt v4, v0, :cond_56

    if-le v0, v6, :cond_5a

    :cond_56
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_d1

    :cond_5a
    move v9, v2

    move v2, v0

    move v0, v9

    .line 124
    :goto_5d
    if-gt v4, v2, :cond_61

    if-le v2, v6, :cond_6d

    :cond_61
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x45

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x65

    if-ne v2, v3, :cond_88

    .line 125
    :cond_6d
    const/16 v3, 0x45

    if-eq v2, v3, :cond_75

    const/16 v3, 0x65

    if-ne v2, v3, :cond_7f

    :cond_75
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v2, v2, v0

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_7f

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_7f
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    move v2, v0

    move v0, v3

    goto :goto_5d

    .line 130
    :cond_88
    sub-int v2, v0, v5

    iput v2, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 131
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    sub-int/2addr v0, v5

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 134
    :try_start_94
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 135
    sget-object v2, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;

    move-result-object v0

    goto :goto_31

    .line 137
    :cond_a5
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 138
    sget-object v4, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    invoke-virtual {v4, v2, v3}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_ae} :catch_b0

    move-result-object v0

    goto :goto_31

    .line 140
    :catch_b0
    move-exception v2

    .line 141
    iget-object v2, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 143
    :cond_d1
    const/16 v3, 0x61

    if-gt v3, v0, :cond_d9

    const/16 v3, 0x7a

    if-le v0, v3, :cond_e1

    :cond_d9
    const/16 v3, 0x41

    if-gt v3, v0, :cond_136

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_136

    :cond_e1
    move v0, v2

    .line 146
    :goto_e2
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    .line 148
    const/16 v2, 0x61

    if-gt v2, v0, :cond_f0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_19c

    :cond_f0
    const/16 v2, 0x41

    if-gt v2, v0, :cond_f8

    const/16 v2, 0x5a

    if-le v0, v2, :cond_19c

    :cond_f8
    if-gt v4, v0, :cond_fc

    if-le v0, v6, :cond_19c

    .line 150
    :cond_fc
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    sub-int v4, v3, v5

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move v0, v3

    .line 151
    :goto_107
    const-string v3, " \n\r\t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_118

    .line 152
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    move v2, v0

    move v0, v3

    goto :goto_107

    .line 154
    :cond_118
    const/16 v3, 0x28

    if-ne v2, v3, :cond_12b

    .line 155
    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 156
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v8, v5, v8}, Lorg/javia/arity/Token;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_31

    .line 158
    :cond_12b
    sub-int/2addr v0, v5

    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 159
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    invoke-virtual {v0, v1}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_31

    .line 161
    :cond_136
    const/16 v2, 0x391

    if-lt v0, v2, :cond_13e

    const/16 v2, 0x3a9

    if-le v0, v2, :cond_14a

    :cond_13e
    const/16 v2, 0x3b1

    if-lt v0, v2, :cond_146

    const/16 v2, 0x3c9

    if-le v0, v2, :cond_14a

    :cond_146
    const/16 v2, 0x221e

    if-ne v0, v2, :cond_165

    .line 163
    :cond_14a
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_31

    .line 165
    :cond_165
    sparse-switch v0, :sswitch_data_1c2

    .line 177
    iget-object v2, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 167
    :sswitch_188
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    goto/16 :goto_31

    .line 169
    :sswitch_18c
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    goto/16 :goto_31

    .line 171
    :sswitch_190
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    goto/16 :goto_31

    .line 173
    :sswitch_194
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    goto/16 :goto_31

    .line 175
    :sswitch_198
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_SQRT:Lorg/javia/arity/Token;

    goto/16 :goto_31

    :cond_19c
    move v0, v3

    goto/16 :goto_e2

    .line 106
    nop

    :pswitch_data_1a0
    .packed-switch 0x21
        :pswitch_32
        :pswitch_2b
        :pswitch_2b
        :pswitch_35
        :pswitch_38
        :pswitch_2b
        :pswitch_2b
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_2b
        :pswitch_4d
    .end packed-switch

    .line 165
    :sswitch_data_1c2
    .sparse-switch
        0x5e -> :sswitch_188
        0xd7 -> :sswitch_18c
        0xf7 -> :sswitch_190
        0x2212 -> :sswitch_194
        0x221a -> :sswitch_198
    .end sparse-switch
.end method

.method scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lorg/javia/arity/Lexer;->init(Ljava/lang/String;)V

    .line 73
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 74
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 75
    iget-object v1, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    const-string v2, "invalid character \'$\'"

    invoke-virtual {v1, v2, v0}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 77
    :cond_15
    invoke-virtual {p2}, Lorg/javia/arity/TokenConsumer;->start()V

    .line 80
    :cond_18
    iget v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 81
    invoke-virtual {p0}, Lorg/javia/arity/Lexer;->nextToken()Lorg/javia/arity/Token;

    move-result-object v1

    .line 82
    iput v0, v1, Lorg/javia/arity/Token;->position:I

    .line 83
    invoke-virtual {p2, v1}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 84
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    if-ne v1, v0, :cond_18

    .line 85
    return-void
.end method
