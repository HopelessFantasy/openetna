.class Lcom/android/calculator2/CalculatorEditable;
.super Landroid/text/SpannableStringBuilder;
.source "CalculatorEditable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorEditable$1;,
        Lcom/android/calculator2/CalculatorEditable$Factory;
    }
.end annotation


# static fields
.field private static final ORIGINALS:[C

.field private static final REPLACEMENTS:[C


# instance fields
.field private isInsideReplace:Z

.field private mLogic:Lcom/android/calculator2/Logic;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 23
    new-array v0, v1, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/calculator2/CalculatorEditable;->ORIGINALS:[C

    .line 24
    new-array v0, v1, [C

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/calculator2/CalculatorEditable;->REPLACEMENTS:[C

    return-void

    .line 23
    :array_10
    .array-data 0x2
        0x2dt 0x0t
        0x2at 0x0t
        0x2ft 0x0t
    .end array-data

    .line 24
    nop

    :array_18
    .array-data 0x2
        0x12t 0x22t
        0xd7t 0x0t
        0xf7t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;)V
    .registers 4
    .parameter "source"
    .parameter "logic"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    .line 30
    iput-object p2, p0, Lcom/android/calculator2/CalculatorEditable;->mLogic:Lcom/android/calculator2/Logic;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;Lcom/android/calculator2/CalculatorEditable$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorEditable;-><init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;)V

    return-void
.end method

.method private internalReplace(IILjava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 16
    .parameter "start"
    .parameter "end"
    .parameter "delta"

    .prologue
    const/16 v11, 0x2e

    const/4 v9, 0x0

    const/16 v8, 0x2212

    const/4 v7, 0x1

    const-string v10, ""

    .line 50
    iget-object v5, p0, Lcom/android/calculator2/CalculatorEditable;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v5, p3}, Lcom/android/calculator2/Logic;->acceptInsert(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 51
    iget-object v5, p0, Lcom/android/calculator2/CalculatorEditable;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v5}, Lcom/android/calculator2/Logic;->cleared()V

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditable;->length()I

    move-result p2

    .line 56
    :cond_1a
    sget-object v5, Lcom/android/calculator2/CalculatorEditable;->ORIGINALS:[C

    array-length v5, v5

    sub-int v0, v5, v7

    .local v0, i:I
    :goto_1f
    if-ltz v0, :cond_30

    .line 57
    sget-object v5, Lcom/android/calculator2/CalculatorEditable;->ORIGINALS:[C

    aget-char v5, v5, v0

    sget-object v6, Lcom/android/calculator2/CalculatorEditable;->REPLACEMENTS:[C

    aget-char v6, v6, v0

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 60
    :cond_30
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 61
    .local v1, length:I
    if-ne v1, v7, :cond_a3

    .line 62
    invoke-virtual {p3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 65
    .local v4, text:C
    if-nez p1, :cond_4b

    invoke-static {v4}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_4b

    if-eq v4, v8, :cond_4b

    .line 66
    const-string v5, ""

    invoke-super {p0, p1, p2, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 96
    .end local v4           #text:C
    :goto_4a
    return-object v5

    .line 70
    .restart local v4       #text:C
    :cond_4b
    if-ne v4, v11, :cond_6d

    .line 71
    sub-int v2, p1, v7

    .line 72
    .local v2, p:I
    :goto_4f
    if-ltz v2, :cond_5e

    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorEditable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 73
    add-int/lit8 v2, v2, -0x1

    goto :goto_4f

    .line 75
    :cond_5e
    if-ltz v2, :cond_6d

    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorEditable;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_6d

    .line 76
    const-string v5, ""

    invoke-super {p0, p1, p2, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_4a

    .line 80
    .end local v2           #p:I
    :cond_6d
    if-lez p1, :cond_81

    sub-int v5, p1, v7

    invoke-virtual {p0, v5}, Lcom/android/calculator2/CalculatorEditable;->charAt(I)C

    move-result v5

    move v3, v5

    .line 83
    .local v3, prevChar:C
    :goto_76
    if-ne v4, v8, :cond_83

    if-ne v3, v8, :cond_83

    .line 84
    const-string v5, ""

    invoke-super {p0, p1, p2, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_4a

    .end local v3           #prevChar:C
    :cond_81
    move v3, v9

    .line 80
    goto :goto_76

    .line 88
    .restart local v3       #prevChar:C
    :cond_83
    invoke-static {v4}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 89
    :goto_89
    invoke-static {v3}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_a3

    if-ne v4, v8, :cond_95

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_a3

    .line 91
    :cond_95
    add-int/lit8 p1, p1, -0x1

    .line 92
    if-lez p1, :cond_a1

    sub-int v5, p1, v7

    invoke-virtual {p0, v5}, Lcom/android/calculator2/CalculatorEditable;->charAt(I)C

    move-result v5

    move v3, v5

    :goto_a0
    goto :goto_89

    :cond_a1
    move v3, v9

    goto :goto_a0

    .line 96
    .end local v3           #prevChar:C
    .end local v4           #text:C
    :cond_a3
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_4a
.end method


# virtual methods
.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 22
    invoke-virtual/range {p0 .. p5}, Lcom/android/calculator2/CalculatorEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 9
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-boolean v1, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    if-eqz v1, :cond_a

    .line 37
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 44
    :goto_9
    return-object v1

    .line 39
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    .line 41
    :try_start_d
    invoke-interface {p3, p4, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, delta:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorEditable;->internalReplace(IILjava/lang/String;)Landroid/text/SpannableStringBuilder;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    move-result-object v1

    .line 44
    iput-boolean v2, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    goto :goto_9

    .end local v0           #delta:Ljava/lang/String;
    :catchall_1c
    move-exception v1

    iput-boolean v2, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    throw v1
.end method
