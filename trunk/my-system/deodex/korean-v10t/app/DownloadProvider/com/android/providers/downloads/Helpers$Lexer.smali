.class Lcom/android/providers/downloads/Helpers$Lexer;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/Helpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lexer"
.end annotation


# static fields
.field public static final TOKEN_AND_OR:I = 0x3

.field public static final TOKEN_CLOSE_PAREN:I = 0x2

.field public static final TOKEN_COLUMN:I = 0x4

.field public static final TOKEN_COMPARE:I = 0x5

.field public static final TOKEN_END:I = 0x9

.field public static final TOKEN_IS:I = 0x7

.field public static final TOKEN_NULL:I = 0x8

.field public static final TOKEN_OPEN_PAREN:I = 0x1

.field public static final TOKEN_START:I = 0x0

.field public static final TOKEN_VALUE:I = 0x6


# instance fields
.field private final mAllowedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChars:[C

.field private mCurrentToken:I

.field private mOffset:I

.field private final mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 652
    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 656
    iput-object p1, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    .line 657
    iput-object p2, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mAllowedColumns:Ljava/util/Set;

    .line 658
    iget-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    .line 659
    iget-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    array-length v1, v1

    iget-object v2, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 660
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 661
    return-void
.end method

.method private static final isIdentifierChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 808
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x41

    if-lt p0, v0, :cond_c

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1c

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_14

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1c

    :cond_14
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1e

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static final isIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 802
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_14

    const/16 v0, 0x41

    if-lt p0, v0, :cond_c

    const/16 v0, 0x5a

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public advance()V
    .registers 11

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/16 v7, 0x27

    const/4 v6, 0x5

    const/16 v5, 0x3d

    .line 668
    iget-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    .line 671
    .local v0, chars:[C
    :goto_9
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_1d

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1d

    .line 672
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_9

    .line 676
    :cond_1d
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ne v3, v4, :cond_27

    .line 677
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 794
    :cond_26
    :goto_26
    return-void

    .line 682
    :cond_27
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_39

    .line 683
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 684
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto :goto_26

    .line 689
    :cond_39
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_4b

    .line 690
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 691
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto :goto_26

    .line 696
    :cond_4b
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_5c

    .line 697
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 698
    iput v9, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto :goto_26

    .line 703
    :cond_5c
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_7c

    .line 704
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 705
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 706
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_26

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_26

    .line 707
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_26

    .line 713
    :cond_7c
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_9e

    .line 714
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 715
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 716
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_26

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_26

    .line 717
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_26

    .line 723
    :cond_9e
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_c9

    .line 724
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 725
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 726
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_26

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-eq v3, v5, :cond_c1

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_26

    .line 727
    :cond_c1
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto/16 :goto_26

    .line 733
    :cond_c9
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_f4

    .line 734
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 735
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 736
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_ec

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_ec

    .line 737
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto/16 :goto_26

    .line 740
    :cond_ec
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected character after !"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 748
    :cond_f4
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    invoke-static {v3}, Lcom/android/providers/downloads/Helpers$Lexer;->isIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 749
    iget v1, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 750
    .local v1, startOffset:I
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 751
    :goto_106
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_11c

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    invoke-static {v3}, Lcom/android/providers/downloads/Helpers$Lexer;->isIdentifierChar(C)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 752
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_106

    .line 754
    :cond_11c
    iget-object v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    iget v4, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, word:Ljava/lang/String;
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    sub-int/2addr v3, v1

    if-gt v3, v8, :cond_159

    .line 756
    const-string v3, "IS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_136

    .line 757
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_26

    .line 760
    :cond_136
    const-string v3, "OR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_146

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 761
    :cond_146
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_26

    .line 764
    :cond_14b
    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 765
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_26

    .line 769
    :cond_159
    iget-object v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mAllowedColumns:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 770
    iput v8, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_26

    .line 773
    :cond_165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unrecognized column or keyword"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    .end local v1           #startOffset:I
    .end local v2           #word:Ljava/lang/String;
    :cond_16d
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v7, :cond_1b7

    .line 778
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 779
    :goto_179
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_1a0

    .line 780
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v7, :cond_199

    .line 781
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    if-ge v3, v4, :cond_1a0

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-char v3, v0, v3

    if-ne v3, v7, :cond_1a0

    .line 782
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 787
    :cond_199
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_179

    .line 789
    :cond_1a0
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ne v3, v4, :cond_1ad

    .line 790
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unterminated string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 792
    :cond_1ad
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 793
    iput v9, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_26

    .line 798
    :cond_1b7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "illegal character"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public currentToken()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    return v0
.end method
