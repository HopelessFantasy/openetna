.class Ljava/util/Formatter$ParserStateMachine;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserStateMachine"
.end annotation


# static fields
.field private static final CONVERSION_TYPE_STATE:I = 0x6

.field private static final ENTRY_STATE:I = 0x1

.field private static final EOS:C = '\uffff'

.field private static final EXIT_STATE:I = 0x0

.field private static final FLAGS_STATE:I = 0x3

.field private static final PRECISION_STATE:I = 0x5

.field private static final START_CONVERSION_STATE:I = 0x2

.field private static final SUFFIX_STATE:I = 0x7

.field private static final WIDTH_STATE:I = 0x4


# instance fields
.field private currentChar:C

.field private format:Ljava/nio/CharBuffer;

.field private state:I

.field private token:Ljava/util/Formatter$FormatToken;


# direct methods
.method constructor <init>(Ljava/nio/CharBuffer;)V
    .registers 3
    .parameter "format"

    .prologue
    .line 2643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2637
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2639
    const/4 v0, 0x0

    iput-char v0, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    .line 2641
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    .line 2644
    iput-object p1, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    .line 2645
    return-void
.end method

.method private getFormatString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2726
    iget-object v2, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 2727
    .local v0, end:I
    iget-object v2, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 2728
    iget-object v2, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    iget-object v3, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getFormatStringStartIndex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2730
    .local v1, formatString:Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2731
    return-object v1
.end method

.method private getNextFormatChar()C
    .registers 2

    .prologue
    .line 2719
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2720
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    .line 2722
    :goto_e
    return v0

    :cond_f
    const v0, 0xffff

    goto :goto_e
.end method

.method private parseInt(Ljava/nio/CharBuffer;)I
    .registers 8
    .parameter "buffer"

    .prologue
    const/4 v5, 0x1

    .line 2849
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    sub-int v3, v4, v5

    .line 2850
    .local v3, start:I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    .line 2851
    .local v1, end:I
    :cond_b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2852
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2853
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    sub-int v1, v4, v5

    .line 2857
    :cond_21
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2858
    invoke-virtual {p1, v3, v1}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2859
    .local v2, intStr:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2861
    :try_start_30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_33} :catch_35

    move-result v4

    .line 2863
    :goto_34
    return v4

    .line 2862
    :catch_35
    move-exception v0

    .line 2863
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_34
.end method

.method private process_CONVERSION_TYPE_STATE()V
    .registers 3

    .prologue
    .line 2827
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setConversionType(C)V

    .line 2828
    const/16 v0, 0x74

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-eq v0, v1, :cond_13

    const/16 v0, 0x54

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v0, v1, :cond_17

    .line 2829
    :cond_13
    const/4 v0, 0x7

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2834
    :goto_16
    return-void

    .line 2831
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    goto :goto_16
.end method

.method private process_ENTRY_STATE()V
    .registers 3

    .prologue
    .line 2735
    const v0, 0xffff

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v0, v1, :cond_b

    .line 2736
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2742
    :cond_a
    :goto_a
    return-void

    .line 2737
    :cond_b
    const/16 v0, 0x25

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v0, v1, :cond_a

    .line 2739
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    goto :goto_a
.end method

.method private process_EXIT_STATE()V
    .registers 3

    .prologue
    .line 2842
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->getFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setPlainText(Ljava/lang/String;)V

    .line 2843
    return-void
.end method

.method private process_FlAGS_STATE()V
    .registers 4

    .prologue
    .line 2791
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setFlag(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2803
    :goto_a
    return-void

    .line 2793
    :cond_b
    iget-char v0, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2794
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-direct {p0, v1}, Ljava/util/Formatter$ParserStateMachine;->parseInt(Ljava/nio/CharBuffer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 2795
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    goto :goto_a

    .line 2796
    :cond_22
    const/16 v0, 0x2e

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v0, v1, :cond_2c

    .line 2797
    const/4 v0, 0x5

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    goto :goto_a

    .line 2799
    :cond_2c
    const/4 v0, 0x6

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2801
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    iget-object v1, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_a
.end method

.method private process_PRECISION_STATE()V
    .registers 3

    .prologue
    .line 2816
    iget-char v0, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2817
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-direct {p0, v1}, Ljava/util/Formatter$ParserStateMachine;->parseInt(Ljava/nio/CharBuffer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2823
    const/4 v0, 0x6

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2824
    return-void

    .line 2821
    :cond_17
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->getFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private process_START_CONVERSION_STATE()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 2745
    iget-char v4, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 2746
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    sub-int v3, v4, v6

    .line 2747
    .local v3, position:I
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-direct {p0, v4}, Ljava/util/Formatter$ParserStateMachine;->parseInt(Ljava/nio/CharBuffer;)I

    move-result v2

    .line 2748
    .local v2, number:I
    const/4 v1, 0x0

    .line 2749
    .local v1, nextChar:C
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2750
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 2752
    :cond_27
    const/16 v4, 0x24

    if-ne v4, v1, :cond_47

    .line 2755
    move v0, v2

    .line 2758
    .local v0, argIndex:I
    if-lez v0, :cond_3a

    .line 2759
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    sub-int v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    .line 2764
    :cond_35
    iput v7, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2778
    .end local v0           #argIndex:I
    :goto_37
    iput-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    .line 2788
    .end local v1           #nextChar:C
    .end local v2           #number:I
    .end local v3           #position:I
    :goto_39
    return-void

    .line 2760
    .restart local v0       #argIndex:I
    .restart local v1       #nextChar:C
    .restart local v2       #number:I
    .restart local v3       #position:I
    :cond_3a
    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 2761
    new-instance v4, Ljava/util/MissingFormatArgumentException;

    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->getFormatString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2767
    .end local v0           #argIndex:I
    :cond_47
    const/16 v4, 0x30

    iget-char v5, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v4, v5, :cond_55

    .line 2768
    iput v7, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2769
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_37

    .line 2772
    :cond_55
    const/4 v4, 0x4

    iput v4, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2774
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2775
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4, v2}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    goto :goto_37

    .line 2779
    .end local v1           #nextChar:C
    .end local v2           #number:I
    .end local v3           #position:I
    :cond_6a
    const/16 v4, 0x3c

    iget-char v5, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v4, v5, :cond_79

    .line 2780
    iput v7, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2781
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    goto :goto_39

    .line 2783
    :cond_79
    iput v7, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2785
    iget-object v4, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_39
.end method

.method private process_SUFFIX_STATE()V
    .registers 3

    .prologue
    .line 2837
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setDateSuffix(C)V

    .line 2838
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2839
    return-void
.end method

.method private process_WIDTH_STATE()V
    .registers 4

    .prologue
    .line 2806
    const/16 v0, 0x2e

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v0, v1, :cond_a

    .line 2807
    const/4 v0, 0x5

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2813
    :goto_9
    return-void

    .line 2809
    :cond_a
    const/4 v0, 0x6

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2811
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    iget-object v1, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9
.end method


# virtual methods
.method getNextFormatToken()Ljava/util/Formatter$FormatToken;
    .registers 3

    .prologue
    .line 2659
    new-instance v0, Ljava/util/Formatter$FormatToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$FormatToken;-><init>(Ljava/util/Formatter$1;)V

    iput-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    .line 2660
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter$ParserStateMachine;->format:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setFormatStringStartIndex(I)V

    .line 2665
    :goto_13
    iget v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    if-eqz v0, :cond_33

    .line 2667
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->getNextFormatChar()C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    .line 2668
    const v0, 0xffff

    iget-char v1, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    iget v1, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    if-eq v0, v1, :cond_33

    .line 2670
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->getFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2675
    :cond_33
    iget v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_13

    .line 2678
    :pswitch_39
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_EXIT_STATE()V

    .line 2679
    iget-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    return-object v0

    .line 2683
    :pswitch_3f
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_ENTRY_STATE()V

    goto :goto_13

    .line 2688
    :pswitch_43
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_START_CONVERSION_STATE()V

    goto :goto_13

    .line 2692
    :pswitch_47
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_FlAGS_STATE()V

    goto :goto_13

    .line 2696
    :pswitch_4b
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_WIDTH_STATE()V

    goto :goto_13

    .line 2700
    :pswitch_4f
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_PRECISION_STATE()V

    goto :goto_13

    .line 2704
    :pswitch_53
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_CONVERSION_TYPE_STATE()V

    goto :goto_13

    .line 2708
    :pswitch_57
    invoke-direct {p0}, Ljava/util/Formatter$ParserStateMachine;->process_SUFFIX_STATE()V

    goto :goto_13

    .line 2675
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
        :pswitch_57
    .end packed-switch
.end method

.method reset()V
    .registers 2

    .prologue
    .line 2648
    const v0, 0xffff

    iput-char v0, p0, Ljava/util/Formatter$ParserStateMachine;->currentChar:C

    .line 2649
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/Formatter$ParserStateMachine;->state:I

    .line 2650
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Formatter$ParserStateMachine;->token:Ljava/util/Formatter$FormatToken;

    .line 2651
    return-void
.end method
