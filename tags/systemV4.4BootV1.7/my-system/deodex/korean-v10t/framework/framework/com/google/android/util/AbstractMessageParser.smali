.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$1;,
        Lcom/google/android/util/AbstractMessageParser$Part;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Format;,
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$Resources;
    }
.end annotation


# static fields
.field public static final musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextChar:I

.field private nextClass:I

.field private parseAcronyms:Z

.field private parseFormatting:Z

.field private parseMeText:Z

.field private parseMusic:Z

.field private parseSmilies:Z

.field private parseUrls:Z

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 76
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .registers 9
    .parameter "text"
    .parameter "parseSmilies"
    .parameter "parseAcronyms"
    .parameter "parseFormatting"
    .parameter "parseUrls"
    .parameter "parseMusic"
    .parameter "parseMeText"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 90
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    .line 94
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    .line 95
    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    .line 96
    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    .line 97
    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    .line 98
    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    .line 99
    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    .line 100
    return-void
.end method

.method private addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    return-void
.end method

.method private addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "url"
    .parameter "text"

    .prologue
    .line 452
    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 453
    return-void
.end method

.method private buildParts(Ljava/lang/String;)V
    .registers 6
    .parameter "meText"

    .prologue
    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 222
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 223
    .local v1, token:Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 224
    :cond_29
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-direct {v3}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_33
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    .end local v1           #token:Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_3d
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 231
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-virtual {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    .line 233
    :cond_51
    return-void
.end method

.method private getCharClass(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 563
    if-ltz p1, :cond_a

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_c

    .line 564
    :cond_a
    const/4 v1, 0x0

    .line 580
    :goto_b
    return v1

    .line 567
    :cond_c
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 568
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 569
    const/4 v1, 0x1

    goto :goto_b

    .line 570
    :cond_1a
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 571
    const/4 v1, 0x2

    goto :goto_b

    .line 572
    :cond_22
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 573
    const/4 v1, 0x3

    goto :goto_b

    .line 574
    :cond_2a
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 578
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    goto :goto_b

    .line 580
    :cond_37
    const/4 v1, 0x4

    goto :goto_b
.end method

.method private isDomainChar(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 315
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_10

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isFormatChar(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 631
    sparse-switch p0, :sswitch_data_8

    .line 636
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 633
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 631
    nop

    :sswitch_data_8
    .sparse-switch
        0x2a -> :sswitch_5
        0x5e -> :sswitch_5
        0x5f -> :sswitch_5
    .end sparse-switch
.end method

.method private static isPunctuation(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 616
    sparse-switch p0, :sswitch_data_8

    .line 622
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 619
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 616
    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2c -> :sswitch_5
        0x2e -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method private static isSmileyBreak(CC)Z
    .registers 3
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 591
    sparse-switch p0, :sswitch_data_c

    .line 611
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 599
    :sswitch_5
    sparse-switch p1, :sswitch_data_52

    goto :goto_3

    .line 607
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_4

    .line 591
    nop

    :sswitch_data_c
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2b -> :sswitch_5
        0x2d -> :sswitch_5
        0x2f -> :sswitch_5
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x40 -> :sswitch_5
        0x5b -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x5e -> :sswitch_5
        0x7c -> :sswitch_5
        0x7d -> :sswitch_5
        0x7e -> :sswitch_5
    .end sparse-switch

    .line 599
    :sswitch_data_52
    .sparse-switch
        0x23 -> :sswitch_9
        0x24 -> :sswitch_9
        0x25 -> :sswitch_9
        0x2a -> :sswitch_9
        0x2f -> :sswitch_9
        0x3c -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x40 -> :sswitch_9
        0x5b -> :sswitch_9
        0x5c -> :sswitch_9
        0x5e -> :sswitch_9
        0x7e -> :sswitch_9
    .end sparse-switch
.end method

.method private isSmileyBreak(I)Z
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 534
    if-lez p1, :cond_21

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_21

    .line 535
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    .line 540
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private isURLBreak(I)Z
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 548
    sub-int v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    move v0, v1

    .line 557
    :goto_b
    return v0

    .line 552
    :pswitch_c
    const/4 v0, 0x0

    goto :goto_b

    .line 548
    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private isValidDomain(Ljava/lang/String;)Z
    .registers 4
    .parameter "domain"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isWordBreak(I)Z
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 529
    sub-int v0, p1, v2

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v0, v1, :cond_f

    move v0, v2

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object p0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 4
    .parameter "root"
    .parameter "p"
    .parameter "start"

    .prologue
    .line 1387
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 8
    .parameter "root"
    .parameter "p"
    .parameter "start"
    .parameter "smiley"

    .prologue
    .line 1397
    move v1, p2

    .line 1398
    .local v1, index:I
    const/4 v0, 0x0

    .line 1399
    .local v0, bestMatch:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 1400
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1401
    if-nez p0, :cond_1e

    move v1, v2

    .line 1411
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1d
    return-object v0

    .line 1403
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1404
    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1405
    move-object v0, p0

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2

    .line 1406
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_2d
    if-eqz p3, :cond_38

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1407
    move-object v0, p0

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_38
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2
.end method

.method private static matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .registers 5
    .parameter "root"
    .parameter "str"

    .prologue
    .line 1369
    const/4 v0, 0x0

    .line 1370
    .local v0, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 1371
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1372
    if-nez p0, :cond_16

    move v0, v1

    .line 1378
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2

    .line 1374
    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1375
    const/4 v2, 0x1

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_15

    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_1f
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_1
.end method

.method private parseAcronym()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-boolean v1, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    if-nez v1, :cond_7

    move v1, v3

    .line 309
    :goto_6
    return v1

    .line 303
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v1

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v1, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 304
    .local v0, match:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_19

    move v1, v3

    .line 305
    goto :goto_6

    .line 307
    :cond_19
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 308
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 309
    const/4 v1, 0x1

    goto :goto_6
.end method

.method private parseFormatting()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 472
    iget-boolean v8, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    if-nez v8, :cond_8

    move v8, v10

    .line 524
    :goto_7
    return v8

    .line 475
    :cond_8
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 476
    .local v2, endChar:I
    :goto_a
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_21

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 480
    :cond_21
    iget v8, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    if-eq v2, v8, :cond_2b

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v8

    if-nez v8, :cond_2d

    :cond_2b
    move v8, v10

    .line 481
    goto :goto_7

    .line 487
    :cond_2d
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 490
    .local v6, seenCharacters:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .local v4, index:I
    :goto_34
    if-ge v4, v2, :cond_7c

    .line 491
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 492
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 493
    .local v5, key:Ljava/lang/Character;
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 496
    new-instance v8, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v8, v0, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-direct {p0, v8}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 490
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 498
    :cond_51
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    .line 499
    .local v7, start:Lcom/google/android/util/AbstractMessageParser$Format;
    if-eqz v7, :cond_69

    .line 501
    invoke-virtual {v7, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 502
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 506
    :cond_69
    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Format;

    .end local v7           #start:Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-direct {v7, v0, v11}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 507
    .restart local v7       #start:Lcom/google/android/util/AbstractMessageParser$Format;
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-direct {p0, v7}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 509
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 515
    .end local v0           #ch:C
    .end local v5           #key:Ljava/lang/Character;
    .end local v7           #start:Lcom/google/android/util/AbstractMessageParser$Format;
    :cond_7c
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_84
    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 516
    .restart local v5       #key:Ljava/lang/Character;
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_84

    .line 517
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-direct {v1, v8, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 518
    .local v1, end:Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-virtual {v1, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 519
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    goto :goto_84

    .line 523
    .end local v1           #end:Lcom/google/android/util/AbstractMessageParser$Format;
    .end local v5           #key:Ljava/lang/Character;
    :cond_a8
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    move v8, v11

    .line 524
    goto/16 :goto_7
.end method

.method private parseMusicTrack()Z
    .registers 5

    .prologue
    const-string v3, "\u266b "

    .line 244
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string v1, "\u266b "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 245
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string v2, "\u266b "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private parseSmiley()Z
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 277
    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    if-nez v3, :cond_a

    move v3, v5

    .line 293
    :goto_9
    return v3

    .line 280
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v3

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v3, p0, v4, v6}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 282
    .local v0, match:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_1c

    move v3, v5

    .line 283
    goto :goto_9

    .line 285
    :cond_1c
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v2

    .line 286
    .local v2, previousCharClass:I
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    .line 287
    .local v1, nextCharClass:I
    if-eq v2, v7, :cond_36

    if-ne v2, v8, :cond_3c

    :cond_36
    if-eq v1, v7, :cond_3a

    if-ne v1, v8, :cond_3c

    :cond_3a
    move v3, v5

    .line 289
    goto :goto_9

    .line 291
    :cond_3c
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Smiley;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 292
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    move v3, v6

    .line 293
    goto :goto_9
.end method

.method private parseText()V
    .registers 7

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, buf:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 257
    .local v2, start:I
    :cond_7
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 258
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_5a

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    :goto_19
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Html;

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 270
    return-void

    .line 259
    :sswitch_36
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 260
    :sswitch_3c
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 261
    :sswitch_42
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 262
    :sswitch_48
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 263
    :sswitch_4e
    const-string v3, "&apos;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 264
    :sswitch_54
    const-string v3, "<br>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 258
    :sswitch_data_5a
    .sparse-switch
        0xa -> :sswitch_54
        0x22 -> :sswitch_48
        0x26 -> :sswitch_42
        0x27 -> :sswitch_4e
        0x3c -> :sswitch_36
        0x3e -> :sswitch_3c
    .end sparse-switch
.end method

.method private parseURL()Z
    .registers 14

    .prologue
    const/16 v12, 0x3a

    const/16 v10, 0x2e

    const/4 v11, 0x0

    .line 333
    iget-boolean v9, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    if-eqz v9, :cond_11

    iget v9, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    move-result v9

    if-nez v9, :cond_13

    :cond_11
    move v9, v11

    .line 444
    :goto_12
    return v9

    .line 337
    :cond_13
    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 340
    .local v6, start:I
    move v4, v6

    .line 341
    .local v4, index:I
    :goto_16
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2d

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 345
    :cond_2d
    const-string v7, ""

    .line 346
    .local v7, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 348
    .local v3, done:Z
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_3a

    move v9, v11

    .line 349
    goto :goto_12

    .line 350
    :cond_3a
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_5a

    .line 352
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cf

    move v9, v11

    .line 354
    goto :goto_12

    .line 356
    .end local v5           #scheme:Ljava/lang/String;
    :cond_5a
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_12f

    .line 358
    :goto_62
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_78

    .line 359
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, ch:C
    if-eq v0, v10, :cond_88

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    if-nez v9, :cond_88

    .line 369
    .end local v0           #ch:C
    :cond_78
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, domain:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8b

    move v9, v11

    .line 371
    goto :goto_12

    .line 363
    .end local v2           #domain:Ljava/lang/String;
    .restart local v0       #ch:C
    :cond_88
    add-int/lit8 v4, v4, 0x1

    .line 365
    goto :goto_62

    .line 376
    .end local v0           #ch:C
    .restart local v2       #domain:Ljava/lang/String;
    :cond_8b
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c4

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_c4

    .line 377
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 378
    .restart local v0       #ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 379
    add-int/lit8 v4, v4, 0x1

    .line 380
    :goto_ad
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_c4

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 393
    .end local v0           #ch:C
    :cond_c4
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_e8

    .line 394
    const/4 v3, 0x1

    .line 423
    :cond_cd
    :goto_cd
    const-string v7, "http://"

    .line 430
    .end local v2           #domain:Ljava/lang/String;
    :cond_cf
    if-nez v3, :cond_132

    .line 431
    :goto_d1
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_132

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_132

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    .line 396
    .restart local v2       #domain:Ljava/lang/String;
    :cond_e8
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 397
    .restart local v0       #ch:C
    const/16 v9, 0x3f

    if-ne v0, v9, :cond_114

    .line 400
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_fe

    .line 401
    const/4 v3, 0x1

    goto :goto_cd

    .line 403
    :cond_fe
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 404
    .local v1, ch2:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_112

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 405
    :cond_112
    const/4 v3, 0x1

    goto :goto_cd

    .line 408
    .end local v1           #ch2:C
    :cond_114
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 409
    const/4 v3, 0x1

    goto :goto_cd

    .line 410
    :cond_11c
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_124

    .line 411
    const/4 v3, 0x1

    goto :goto_cd

    .line 412
    :cond_124
    const/16 v9, 0x2f

    if-eq v0, v9, :cond_cd

    const/16 v9, 0x23

    if-eq v0, v9, :cond_cd

    move v9, v11

    .line 416
    goto/16 :goto_12

    .end local v0           #ch:C
    .end local v2           #domain:Ljava/lang/String;
    :cond_12f
    move v9, v11

    .line 425
    goto/16 :goto_12

    .line 437
    :cond_132
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, urlText:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 441
    invoke-direct {p0, v7, v8}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 444
    const/4 v9, 0x1

    goto/16 :goto_12
.end method

.method protected static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_18

    .line 1320
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1319
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1322
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .registers 7
    .parameter "url"
    .parameter "text"

    .prologue
    .line 183
    if-nez p0, :cond_4

    .line 184
    const/4 v4, 0x0

    .line 212
    :goto_3
    return-object v4

    .line 188
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    move-result-object v2

    .line 189
    .local v2, video:Lcom/google/android/util/AbstractMessageParser$Video;
    if-eqz v2, :cond_c

    move-object v4, v2

    .line 190
    goto :goto_3

    .line 194
    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-result-object v3

    .line 195
    .local v3, ytVideo:Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    if-eqz v3, :cond_14

    move-object v4, v3

    .line 196
    goto :goto_3

    .line 200
    :cond_14
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    move-result-object v1

    .line 201
    .local v1, photo:Lcom/google/android/util/AbstractMessageParser$Photo;
    if-eqz v1, :cond_1c

    move-object v4, v1

    .line 202
    goto :goto_3

    .line 206
    :cond_1c
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-result-object v0

    .line 207
    .local v0, flickrPhoto:Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    if-eqz v0, :cond_24

    move-object v4, v0

    .line 208
    goto :goto_3

    .line 212
    :cond_24
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-direct {v4, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public final getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3
    .parameter "index"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object p0
.end method

.method public final getPartCount()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public parse()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 118
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 119
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    .line 173
    :goto_d
    return-void

    .line 124
    :cond_e
    const/4 v1, 0x0

    .line 125
    .local v1, meText:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string v4, "/me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 127
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 132
    :cond_40
    const/4 v2, 0x0

    .line 133
    .local v2, wasSmiley:Z
    :cond_41
    :goto_41
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 134
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-nez v3, :cond_65

    .line 135
    if-eqz v2, :cond_5d

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    if-nez v3, :cond_65

    .line 136
    :cond_5d
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "last chunk did not end at word break"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 140
    :cond_65
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 141
    const/4 v2, 0x1

    goto :goto_41

    .line 143
    :cond_6d
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    move-result v3

    if-nez v3, :cond_41

    .line 146
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    goto :goto_41

    .line 152
    :cond_84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_85
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_dc

    .line 153
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 154
    if-lez v0, :cond_b6

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_b6

    .line 155
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    .line 157
    :cond_b6
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d9

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_d9

    .line 158
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    .line 152
    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 164
    :cond_dc
    const/4 v0, 0x0

    :goto_dd
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10f

    .line 165
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v3

    if-eqz v3, :cond_10c

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3, v5}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10c

    .line 167
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    add-int/lit8 v0, v0, -0x1

    .line 164
    :cond_10c
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 172
    :cond_10f
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public toHtml()Ljava/lang/String;
    .registers 14

    .prologue
    const-string v12, "<a href=\""

    const-string v11, "</a>"

    const-string v10, "\">"

    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1230
    .local v2, html:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Part;

    .line 1231
    .local v6, part:Lcom/google/android/util/AbstractMessageParser$Part;
    const/4 v1, 0x0

    .line 1233
    .local v1, caps:Z
    const-string v8, "<p>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_165

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 1235
    .local v7, token:Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1236
    invoke-virtual {v7, v1}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    :goto_44
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1307
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    move-result v1

    goto :goto_2b

    .line 1238
    :cond_4f
    sget-object v8, Lcom/google/android/util/AbstractMessageParser$1;->$SwitchMap$com$google$android$util$AbstractMessageParser$Token$Type:[I

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_172

    .line 1302
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown token type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1240
    :pswitch_7b
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Link;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1249
    :pswitch_9d
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1253
    :pswitch_a5
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1258
    :pswitch_ad
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1263
    :pswitch_b9
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v8, v0

    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_44

    .line 1272
    :pswitch_e4
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v8, v0

    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_44

    .line 1282
    :pswitch_10f
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Photo;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v9

    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Photo;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_44

    .line 1293
    :pswitch_13e
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Photo;

    move-object v5, v0

    .line 1294
    .local v5, p:Lcom/google/android/util/AbstractMessageParser$Photo;
    const-string v8, "<a href=\""

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    move-object v0, v7

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v8, "\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v8, "</a>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_44

    .line 1310
    .end local v5           #p:Lcom/google/android/util/AbstractMessageParser$Photo;
    .end local v7           #token:Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_165
    const-string v8, "</p>\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 1313
    .end local v1           #caps:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #part:Lcom/google/android/util/AbstractMessageParser$Part;
    :cond_16c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1238
    nop

    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_9d
        :pswitch_a5
        :pswitch_ad
        :pswitch_b9
        :pswitch_e4
        :pswitch_10f
        :pswitch_13e
    .end packed-switch
.end method
