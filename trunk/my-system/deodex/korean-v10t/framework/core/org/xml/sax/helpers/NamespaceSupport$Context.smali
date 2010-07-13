.class final Lorg/xml/sax/helpers/NamespaceSupport$Context;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Context"
.end annotation


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private declSeen:Z

.field private declarations:Ljava/util/Vector;

.field declsOK:Z

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field prefixTable:Ljava/util/Hashtable;

.field final synthetic this$0:Lorg/xml/sax/helpers/NamespaceSupport;

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 550
    iput-object p1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->this$0:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 834
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    .line 836
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 551
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->copyTables()V

    .line 552
    return-void
.end method

.method private copyTables()V
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_2e

    .line 801
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 805
    :goto_e
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_36

    .line 806
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 810
    :goto_1c
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 811
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    .line 813
    return-void

    .line 803
    :cond_2e
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    goto :goto_e

    .line 808
    :cond_36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    goto :goto_1c
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 584
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 585
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 586
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 587
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 588
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 589
    return-void
.end method

.method declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"

    .prologue
    const-string v1, ""

    .line 602
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    if-nez v0, :cond_e

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t declare any more prefixes in this context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_e
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    if-nez v0, :cond_15

    .line 606
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->copyTables()V

    .line 608
    :cond_15
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_20

    .line 609
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    .line 612
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 614
    const-string v0, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 615
    const-string v0, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 624
    :goto_3b
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 625
    return-void

    .line 618
    :cond_41
    iput-object p2, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    goto :goto_3b

    .line 621
    :cond_44
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b
.end method

.method getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_9

    .line 760
    invoke-static {}, Lorg/xml/sax/helpers/NamespaceSupport;->access$100()Ljava/util/Enumeration;

    move-result-object v0

    .line 762
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_8
.end method

.method getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 743
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 744
    const/4 v0, 0x0

    .line 746
    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_5
.end method

.method getPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_9

    .line 779
    invoke-static {}, Lorg/xml/sax/helpers/NamespaceSupport;->access$100()Ljava/util/Enumeration;

    move-result-object v0

    .line 781
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_8
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 721
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 722
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 726
    .end local p0
    :goto_a
    return-object v0

    .line 723
    .restart local p0
    :cond_b
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_11

    .line 724
    const/4 v0, 0x0

    goto :goto_a

    .line 726
    :cond_11
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_a
.end method

.method processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 16
    .parameter "qName"
    .parameter "isAttribute"

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string v12, "xmlns"

    const-string v10, ""

    .line 645
    iput-boolean v8, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 648
    if-eqz p2, :cond_1b

    .line 649
    iget-object v5, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 657
    .local v5, table:Ljava/util/Hashtable;
    :goto_d
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 658
    .local v3, name:[Ljava/lang/String;
    if-eqz v3, :cond_1e

    move-object v7, v3

    .line 707
    :goto_1a
    return-object v7

    .line 651
    .end local v3           #name:[Ljava/lang/String;
    .end local v5           #table:Ljava/util/Hashtable;
    :cond_1b
    iget-object v5, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .restart local v5       #table:Ljava/util/Hashtable;
    goto :goto_d

    .line 666
    .restart local v3       #name:[Ljava/lang/String;
    :cond_1e
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    .line 667
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 668
    const/16 v7, 0x3a

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 672
    .local v1, index:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_60

    .line 673
    if-eqz p2, :cond_52

    .line 674
    const-string v7, "xmlns"

    if-ne p1, v12, :cond_4d

    iget-object v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->this$0:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-static {v7}, Lorg/xml/sax/helpers/NamespaceSupport;->access$000(Lorg/xml/sax/helpers/NamespaceSupport;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 675
    const-string v7, "http://www.w3.org/xmlns/2000/"

    aput-object v7, v3, v8

    .line 683
    :goto_42
    aget-object v7, v3, v9

    aput-object v7, v3, v11

    .line 706
    :goto_46
    aget-object v7, v3, v9

    invoke-virtual {v5, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 707
    goto :goto_1a

    .line 677
    :cond_4d
    const-string v7, ""

    aput-object v10, v3, v8

    goto :goto_42

    .line 678
    :cond_52
    iget-object v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    if-nez v7, :cond_5b

    .line 679
    const-string v7, ""

    aput-object v10, v3, v8

    goto :goto_42

    .line 681
    :cond_5b
    iget-object v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    aput-object v7, v3, v8

    goto :goto_42

    .line 688
    :cond_60
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, prefix:Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, local:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 692
    iget-object v6, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 696
    .local v6, uri:Ljava/lang/String;
    :goto_74
    if-eqz v6, :cond_80

    if-nez p2, :cond_8b

    const-string v7, "xmlns"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 698
    :cond_80
    const/4 v7, 0x0

    goto :goto_1a

    .line 694
    .end local v6           #uri:Ljava/lang/String;
    :cond_82
    iget-object v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6       #uri:Ljava/lang/String;
    goto :goto_74

    .line 700
    :cond_8b
    aput-object v6, v3, v8

    .line 701
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v11

    goto :goto_46
.end method

.method setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 564
    iput-object p1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    .line 566
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 567
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 568
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 569
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 570
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 573
    return-void
.end method
