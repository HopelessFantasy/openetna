.class Lcom/android/calculator2/Logic;
.super Ljava/lang/Object;
.source "Logic.java"


# static fields
.field private static final INFINITY:Ljava/lang/String; = "Infinity"

.field private static final INFINITY_UNICODE:Ljava/lang/String; = "\u221e"

.field private static final LINE_LENGTH_LANDSCAPE:I = 0x15

.field private static final LINE_LENGTH_PORTRAIT:I = 0xe

.field static final MINUS:C = '\u2212'

.field private static final NAN:Ljava/lang/String; = "NaN"

.field private static final ROUND_DIGITS:I = 0x1


# instance fields
.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private final mEnterString:Ljava/lang/String;

.field private mEqualButton:Landroid/widget/Button;

.field private final mErrorString:Ljava/lang/String;

.field private mHistory:Lcom/android/calculator2/History;

.field private mIsError:Z

.field private final mLineLength:I

.field private final mOrientationPortrait:Z

.field private mResult:Ljava/lang/String;

.field private mSymbols:Lorg/javia/arity/Symbols;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;Landroid/widget/Button;)V
    .registers 11
    .parameter "context"
    .parameter "history"
    .parameter "display"
    .parameter "equalButton"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    .line 34
    const-string v1, ""

    iput-object v5, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 37
    iput-boolean v4, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_61

    move v1, v3

    :goto_2e
    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mOrientationPortrait:Z

    .line 58
    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mOrientationPortrait:Z

    if-eqz v1, :cond_63

    const/16 v1, 0xe

    :goto_36
    iput v1, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 63
    :try_start_38
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    const-string v3, "log(x)=log10(x)"

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V
    :try_end_45
    .catch Lorg/javia/arity/SyntaxException; {:try_start_38 .. :try_end_45} :catch_66

    .line 67
    iput-object p2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    .line 68
    iput-object p3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 69
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1, p0}, Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V

    .line 70
    iput-object p4, p0, Lcom/android/calculator2/Logic;->mEqualButton:Landroid/widget/Button;

    .line 71
    const v1, 0x7f050014

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mEnterString:Ljava/lang/String;

    .line 73
    invoke-direct {p0, v4}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 74
    return-void

    :cond_61
    move v1, v4

    .line 56
    goto :goto_2e

    .line 58
    :cond_63
    const/16 v1, 0x15

    goto :goto_36

    .line 64
    :catch_66
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Lorg/javia/arity/SyntaxException;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearWithHistory(Z)V
    .registers 5
    .parameter "scroll"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_17

    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_c
    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 99
    return-void

    .line 95
    :cond_17
    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_c
.end method

.method private getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isOperator(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 206
    const-string v0, "+\u2212\u00d7\u00f7/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static isOperator(Ljava/lang/String;)Z
    .registers 4
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_14

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method private setText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v0, p1, v1}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 92
    return-void
.end method


# virtual methods
.method acceptInsert(Ljava/lang/String;)Z
    .registers 5
    .parameter "delta"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p1}, Lcom/android/calculator2/Logic;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_24

    :cond_22
    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method clear(Z)V
    .registers 5
    .parameter "scroll"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const-string v1, ""

    if-eqz p1, :cond_f

    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_8
    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->cleared()V

    .line 104
    return-void

    .line 102
    :cond_f
    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_8
.end method

.method cleared()V
    .registers 2

    .prologue
    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 110
    return-void
.end method

.method eatHorizontalMove(Z)Z
    .registers 7
    .parameter "toLeft"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 78
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 79
    .local v0, cursorPos:I
    if-eqz p1, :cond_14

    if-nez v0, :cond_12

    move v2, v4

    :goto_11
    return v2

    :cond_12
    move v2, v3

    goto :goto_11

    :cond_14
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lt v0, v2, :cond_1c

    move v2, v4

    goto :goto_11

    :cond_1c
    move v2, v3

    goto :goto_11
.end method

.method evaluate(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-string v4, ""

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 182
    const-string v2, ""

    move-object v2, v4

    .line 197
    :goto_12
    return-object v2

    .line 186
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 187
    .local v1, size:I
    :goto_17
    if-lez v1, :cond_2f

    sub-int v2, v1, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 188
    const/4 v2, 0x0

    sub-int v3, v1, v5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 189
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 192
    :cond_2f
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v2, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v2

    iget v4, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    invoke-static {v2, v3, v4, v5}, Lorg/javia/arity/Util;->doubleToString(DII)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, result:Ljava/lang/String;
    const-string v2, "NaN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 194
    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 195
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    goto :goto_12

    .line 197
    :cond_48
    const/16 v2, 0x2d

    const/16 v3, 0x2212

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Infinity"

    const-string v4, "\u221e"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12
.end method

.method insert(Ljava/lang/String;)V
    .registers 3
    .parameter "delta"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorDisplay;->insert(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method onClear()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 131
    return-void
.end method

.method onDelete()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-eqz v0, :cond_15

    .line 122
    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 127
    :goto_14
    return-void

    .line 124
    :cond_15
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorDisplay;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_14
.end method

.method onDown()V
    .registers 5

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 168
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 170
    :cond_11
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 171
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 173
    :cond_26
    return-void
.end method

.method onEnter()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 134
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 136
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 153
    :goto_11
    return-void

    .line 138
    :cond_12
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 140
    :try_start_17
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;
    :try_end_1d
    .catch Lorg/javia/arity/SyntaxException; {:try_start_17 .. :try_end_1d} :catch_29

    .line 145
    :goto_1d
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 147
    invoke-direct {p0, v3}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    goto :goto_11

    .line 141
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 142
    .local v0, e:Lorg/javia/arity/SyntaxException;
    iput-boolean v3, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 143
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_1d

    .line 149
    .end local v0           #e:Lorg/javia/arity/SyntaxException;
    :cond_32
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method onUp()V
    .registers 5

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 158
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 160
    :cond_11
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 161
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 163
    :cond_26
    return-void
.end method

.method updateHistory()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 177
    return-void
.end method
