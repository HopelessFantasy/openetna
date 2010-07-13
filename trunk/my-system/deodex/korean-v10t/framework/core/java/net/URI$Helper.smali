.class Ljava/net/URI$Helper;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Helper"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/net/URI;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URI;Ljava/net/URI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method static synthetic access$100(Ljava/net/URI$Helper;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Helper;->parseURI(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Ljava/net/URI$Helper;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0, p1}, Ljava/net/URI$Helper;->parseAuthority(Z)V

    return-void
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .registers 9
    .parameter "host"

    .prologue
    const/4 v5, 0x0

    const-string v6, "-"

    .line 628
    :try_start_3
    const-string v4, "-."

    invoke-static {p1, v4}, Ljava/net/URIEncoderDecoder;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_8} :catch_2c

    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, label:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .local v3, st:Ljava/util/StringTokenizer;
    :cond_10
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 636
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 637
    const-string v4, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_2a
    move v4, v5

    .line 648
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #st:Ljava/util/StringTokenizer;
    :goto_2b
    return v4

    .line 629
    :catch_2c
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/net/URISyntaxException;
    move v4, v5

    .line 630
    goto :goto_2b

    .line 642
    .end local v1           #e:Ljava/net/URISyntaxException;
    .restart local v2       #label:Ljava/lang/String;
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 643
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 644
    .local v0, ch:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_44

    const/16 v4, 0x39

    if-gt v0, v4, :cond_44

    move v4, v5

    .line 645
    goto :goto_2b

    .line 648
    .end local v0           #ch:C
    :cond_44
    const/4 v4, 0x1

    goto :goto_2b
.end method

.method private isValidHexChar(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 823
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_18

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_10

    const/16 v0, 0x46

    if-le p1, v0, :cond_18

    :cond_10
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .registers 10
    .parameter "forceServer"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5d

    const/16 v5, 0x5b

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 584
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_38

    .line 586
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_24

    .line 587
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K030e"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 590
    :cond_24
    invoke-direct {p0, p2}, Ljava/net/URI$Helper;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 591
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K030f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_36
    move v1, v2

    .line 623
    :goto_37
    return v1

    .line 598
    :cond_38
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_44

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_50

    .line 599
    :cond_44
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0310"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 602
    :cond_50
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 603
    .local v0, index:I
    if-ltz v0, :cond_6b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_6b

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_83

    .line 606
    :cond_6b
    invoke-direct {p0, p2}, Ljava/net/URI$Helper;->isValidDomainName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    move v1, v2

    .line 607
    goto :goto_37

    .line 609
    :cond_73
    if-eqz p1, :cond_81

    .line 610
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0310"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_81
    move v1, v3

    .line 613
    goto :goto_37

    .line 617
    :cond_83
    invoke-direct {p0, p2}, Ljava/net/URI$Helper;->isValidIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    move v1, v2

    .line 618
    goto :goto_37

    .line 620
    :cond_8b
    if-eqz p1, :cond_99

    .line 621
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0311"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_99
    move v1, v3

    .line 623
    goto :goto_37
.end method

.method private isValidIP4Word(Ljava/lang/String;)Z
    .registers 8
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_11

    :cond_f
    move v2, v4

    .line 818
    :goto_10
    return v2

    .line 809
    :cond_11
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 810
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 811
    .local v0, c:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_24

    const/16 v2, 0x39

    if-le v0, v2, :cond_26

    :cond_24
    move v2, v4

    .line 812
    goto :goto_10

    .line 809
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 815
    .end local v0           #c:C
    :cond_29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_33

    move v2, v4

    .line 816
    goto :goto_10

    :cond_33
    move v2, v5

    .line 818
    goto :goto_10
.end method

.method private isValidIP6Address(Ljava/lang/String;)Z
    .registers 13
    .parameter "ipAddress"

    .prologue
    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 683
    .local v3, length:I
    const/4 v1, 0x0

    .line 684
    .local v1, doubleColon:Z
    const/4 v4, 0x0

    .line 685
    .local v4, numberOfColons:I
    const/4 v5, 0x0

    .line 686
    .local v5, numberOfPeriods:I
    const-string v8, ""

    .line 687
    .local v8, word:Ljava/lang/String;
    const/4 v0, 0x0

    .line 688
    .local v0, c:C
    const/4 v7, 0x0

    .line 689
    .local v7, prevChar:C
    const/4 v6, 0x0

    .line 691
    .local v6, offset:I
    const/4 v9, 0x2

    if-ge v3, v9, :cond_11

    .line 692
    const/4 v9, 0x0

    .line 801
    :goto_10
    return v9

    .line 695
    :cond_11
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v3, :cond_cc

    .line 696
    move v7, v0

    .line 697
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 698
    sparse-switch v0, :sswitch_data_104

    .line 770
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_b1

    .line 771
    const/4 v9, 0x0

    goto :goto_10

    .line 702
    :sswitch_25
    if-eqz v2, :cond_29

    .line 703
    const/4 v9, 0x0

    goto :goto_10

    .line 705
    :cond_29
    const/4 v9, 0x1

    sub-int v9, v3, v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5d

    if-eq v9, v10, :cond_36

    .line 706
    const/4 v9, 0x0

    goto :goto_10

    .line 708
    :cond_36
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_4a

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_4a

    .line 710
    const/4 v9, 0x0

    goto :goto_10

    .line 712
    :cond_4a
    const/4 v6, 0x1

    .line 713
    const/4 v9, 0x4

    if-ge v3, v9, :cond_93

    .line 714
    const/4 v9, 0x0

    goto :goto_10

    .line 720
    :sswitch_50
    const/4 v9, 0x1

    sub-int v9, v3, v9

    if-eq v2, v9, :cond_57

    .line 721
    const/4 v9, 0x0

    goto :goto_10

    .line 723
    :cond_57
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    if-eq v9, v10, :cond_93

    .line 724
    const/4 v9, 0x0

    goto :goto_10

    .line 731
    :sswitch_62
    add-int/lit8 v5, v5, 0x1

    .line 732
    const/4 v9, 0x3

    if-le v5, v9, :cond_69

    .line 733
    const/4 v9, 0x0

    goto :goto_10

    .line 735
    :cond_69
    invoke-direct {p0, v8}, Ljava/net/URI$Helper;->isValidIP4Word(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_71

    .line 736
    const/4 v9, 0x0

    goto :goto_10

    .line 738
    :cond_71
    const/4 v9, 0x6

    if-eq v4, v9, :cond_78

    if-nez v1, :cond_78

    .line 739
    const/4 v9, 0x0

    goto :goto_10

    .line 744
    :cond_78
    const/4 v9, 0x7

    if-ne v4, v9, :cond_91

    add-int/lit8 v9, v6, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_91

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_91

    .line 747
    const/4 v9, 0x0

    goto :goto_10

    .line 749
    :cond_91
    const-string v8, ""

    .line 695
    :cond_93
    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 753
    :sswitch_97
    add-int/lit8 v4, v4, 0x1

    .line 754
    const/4 v9, 0x7

    if-le v4, v9, :cond_9f

    .line 755
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 757
    :cond_9f
    if-lez v5, :cond_a4

    .line 758
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 760
    :cond_a4
    const/16 v9, 0x3a

    if-ne v7, v9, :cond_ae

    .line 761
    if-eqz v1, :cond_ad

    .line 762
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 764
    :cond_ad
    const/4 v1, 0x1

    .line 766
    :cond_ae
    const-string v8, ""

    .line 767
    goto :goto_93

    .line 773
    :cond_b1
    invoke-direct {p0, v0}, Ljava/net/URI$Helper;->isValidHexChar(C)Z

    move-result v9

    if-nez v9, :cond_ba

    .line 774
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 776
    :cond_ba
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_93

    .line 781
    :cond_cc
    if-lez v5, :cond_da

    .line 782
    const/4 v9, 0x3

    if-ne v5, v9, :cond_d7

    invoke-direct {p0, v8}, Ljava/net/URI$Helper;->isValidIP4Word(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_101

    .line 783
    :cond_d7
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 788
    :cond_da
    const/4 v9, 0x7

    if-eq v4, v9, :cond_e2

    if-nez v1, :cond_e2

    .line 789
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 795
    :cond_e2
    const-string v9, ""

    if-ne v8, v9, :cond_101

    const/4 v9, 0x1

    sub-int v9, v3, v9

    sub-int/2addr v9, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_101

    const/4 v9, 0x2

    sub-int v9, v3, v9

    sub-int/2addr v9, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_101

    .line 797
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 801
    :cond_101
    const/4 v9, 0x1

    goto/16 :goto_10

    .line 698
    :sswitch_data_104
    .sparse-switch
        0x2e -> :sswitch_62
        0x3a -> :sswitch_97
        0x5b -> :sswitch_25
        0x5d -> :sswitch_50
    .end sparse-switch
.end method

.method private isValidIPv4Address(Ljava/lang/String;)Z
    .registers 10
    .parameter "host"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 656
    const/16 v4, 0x2e

    :try_start_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 657
    .local v1, index:I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 658
    .local v3, num:I
    if-ltz v3, :cond_16

    if-le v3, v7, :cond_18

    :cond_16
    move v4, v6

    .line 678
    .end local v1           #index:I
    .end local v3           #num:I
    :goto_17
    return v4

    .line 661
    .restart local v1       #index:I
    .restart local v3       #num:I
    :cond_18
    const/16 v4, 0x2e

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 662
    .local v2, index2:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 663
    if-ltz v3, :cond_2e

    if-le v3, v7, :cond_30

    :cond_2e
    move v4, v6

    .line 664
    goto :goto_17

    .line 666
    :cond_30
    const/16 v4, 0x2e

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 667
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 668
    if-ltz v3, :cond_46

    if-le v3, v7, :cond_48

    :cond_46
    move v4, v6

    .line 669
    goto :goto_17

    .line 671
    :cond_48
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_51} :catch_58

    move-result v3

    .line 672
    if-ltz v3, :cond_56

    if-le v3, v7, :cond_5c

    :cond_56
    move v4, v6

    .line 673
    goto :goto_17

    .line 675
    .end local v1           #index:I
    .end local v2           #index2:I
    .end local v3           #num:I
    :catch_58
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    move v4, v6

    .line 676
    goto :goto_17

    .line 678
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v2       #index2:I
    .restart local v3       #num:I
    :cond_5c
    const/4 v4, 0x1

    goto :goto_17
.end method

.method private parseAuthority(Z)V
    .registers 15
    .parameter "forceServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string v12, "K00b1"

    .line 499
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    .line 565
    :cond_d
    :goto_d
    return-void

    .line 503
    :cond_e
    const/4 v7, 0x0

    .local v7, tempUserinfo:Ljava/lang/String;
    const/4 v5, 0x0

    .line 504
    .local v5, tempHost:Ljava/lang/String;
    const/4 v2, 0x0

    .line 505
    .local v2, hostindex:I
    const/4 v6, -0x1

    .line 507
    .local v6, tempPort:I
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, temp:Ljava/lang/String;
    const/16 v8, 0x40

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 509
    .local v3, index:I
    if-eq v3, v10, :cond_35

    .line 511
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 512
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7, v9}, Ljava/net/URI$Helper;->validateUserinfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 513
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 514
    add-int/lit8 v2, v3, 0x1

    .line 517
    :cond_35
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 518
    const/16 v8, 0x5d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 520
    .local v1, endindex:I
    if-eq v3, v10, :cond_8e

    if-ge v1, v3, :cond_8e

    .line 522
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v11

    if-ge v3, v8, :cond_8f

    .line 526
    add-int/lit8 v8, v3, 0x1

    :try_start_52
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 527
    if-gez v6, :cond_8f

    .line 528
    if-eqz p1, :cond_d

    .line 529
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v9}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "K00b1"

    invoke-static {v10}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_74} :catch_74

    .line 535
    :catch_74
    move-exception v8

    move-object v0, v8

    .line 536
    .local v0, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_d

    .line 537
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v9}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "K00b1"

    invoke-static {v12}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 544
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_8e
    move-object v5, v4

    .line 547
    :cond_8f
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 548
    if-eqz p1, :cond_d

    .line 549
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v9}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "K030c"

    invoke-static {v10}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 555
    :cond_ab
    invoke-direct {p0, p1, v5}, Ljava/net/URI$Helper;->isValidHost(ZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 561
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8, v7}, Ljava/net/URI;->access$1102(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8, v5}, Ljava/net/URI;->access$1202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8, v6}, Ljava/net/URI;->access$1302(Ljava/net/URI;I)I

    .line 564
    iget-object v8, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v8, v11}, Ljava/net/URI;->access$1402(Ljava/net/URI;Z)Z

    goto/16 :goto_d
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .registers 16
    .parameter "uri"
    .parameter "forceServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x2f

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 317
    move-object v5, p1

    .line 319
    .local v5, temp:Ljava/lang/String;
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, p1}, Ljava/net/URI;->access$202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 326
    .local v0, index:I
    if-eq v0, v8, :cond_2e

    .line 328
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$302(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$300(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI$Helper;->validateFragment(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 334
    :cond_2e
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index1:I
    move v0, v1

    .line 335
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 336
    .local v2, index2:I
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 340
    .local v3, index3:I
    if-eq v0, v8, :cond_9d

    if-ge v2, v0, :cond_45

    if-ne v2, v8, :cond_9d

    :cond_45
    if-ge v3, v0, :cond_49

    if-ne v3, v8, :cond_9d

    .line 343
    :cond_49
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, v12}, Ljava/net/URI;->access$402(Ljava/net/URI;Z)Z

    .line 344
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$502(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$500(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6f

    .line 346
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "K0342"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 349
    :cond_6f
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$500(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v9}, Ljava/net/URI$Helper;->validateScheme(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$602(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$600(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a7

    .line 352
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "K0303"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 356
    :cond_9d
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, v9}, Ljava/net/URI;->access$402(Ljava/net/URI;Z)Z

    .line 357
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, v5}, Ljava/net/URI;->access$602(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    :cond_a7
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$500(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c7

    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$600(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_18a

    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$600(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_18a

    .line 362
    :cond_c7
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, v9}, Ljava/net/URI;->access$702(Ljava/net/URI;Z)Z

    .line 366
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$600(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    .line 367
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 368
    if-eq v0, v8, :cond_f5

    .line 369
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$802(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 371
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$800(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v0

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI$Helper;->validateQuery(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    :cond_f5
    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_184

    .line 376
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 377
    if-eq v0, v8, :cond_13b

    .line 378
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$902(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$1002(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    :goto_115
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_178

    .line 394
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/net/URI;->access$902(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    :goto_127
    const/4 v4, 0x0

    .line 403
    .local v4, pathIndex:I
    if-le v2, v8, :cond_12b

    .line 404
    add-int/2addr v4, v2

    .line 406
    :cond_12b
    if-le v0, v8, :cond_12e

    .line 407
    add-int/2addr v4, v0

    .line 409
    :cond_12e
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$1000(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Ljava/net/URI$Helper;->validatePath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 415
    .end local v4           #pathIndex:I
    :goto_137
    invoke-direct {p0, p2}, Ljava/net/URI$Helper;->parseAuthority(Z)V

    .line 416
    return-void

    .line 381
    :cond_13b
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URI;->access$902(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_170

    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$800(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_170

    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$300(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_170

    .line 384
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "K0304"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 388
    :cond_170
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    const-string v7, ""

    invoke-static {v6, v7}, Ljava/net/URI;->access$1002(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_115

    .line 396
    :cond_178
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$900(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x3

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI$Helper;->validateAuthority(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_127

    .line 399
    :cond_184
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, v5}, Ljava/net/URI;->access$1002(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_127

    .line 411
    :cond_18a
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6, v12}, Ljava/net/URI;->access$702(Ljava/net/URI;Z)Z

    .line 412
    iget-object v6, p0, Ljava/net/URI$Helper;->this$0:Ljava/net/URI;

    invoke-static {v6}, Ljava/net/URI;->access$600(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    invoke-direct {p0, p1, v6, v7}, Ljava/net/URI$Helper;->validateSsp(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_137
.end method

.method private validateAuthority(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "authority"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 447
    :try_start_0
    const-string v1, "@[]_-!.~\'()*,;:$&+="

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 452
    return-void

    .line 448
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 449
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0307"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateFragment(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "fragment"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 478
    :try_start_0
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 483
    return-void

    .line 479
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 480
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K030a"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validatePath(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "path"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 462
    return-void

    .line 458
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 459
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0308"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateQuery(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "query"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 467
    :try_start_0
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 473
    return-void

    .line 468
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 469
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0309"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateScheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "uri"
    .parameter "scheme"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "K0305"

    .line 421
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 422
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_f

    const/16 v2, 0x7a

    if-le v0, v2, :cond_23

    :cond_f
    const/16 v2, 0x41

    if-lt v0, v2, :cond_17

    const/16 v2, 0x5a

    if-le v0, v2, :cond_23

    .line 423
    :cond_17
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "K0305"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 427
    :cond_23
    :try_start_23
    const-string v2, "+-."

    invoke-static {p2, v2}, Ljava/net/URIEncoderDecoder;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/URISyntaxException; {:try_start_23 .. :try_end_28} :catch_29

    .line 432
    return-void

    .line 428
    :catch_29
    move-exception v2

    move-object v1, v2

    .line 429
    .local v1, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "K0305"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v4

    add-int/2addr v4, p3

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2
.end method

.method private validateSsp(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "uri"
    .parameter "ssp"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 442
    return-void

    .line 438
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 439
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0306"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getIndex()I

    move-result v3

    add-int/2addr v3, p3

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private validateUserinfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "uri"
    .parameter "userinfo"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 570
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 571
    .local v0, ch:C
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_13

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_21

    .line 572
    :cond_13
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "K030d"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int v4, p3, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 569
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    .end local v0           #ch:C
    :cond_24
    return-void
.end method
