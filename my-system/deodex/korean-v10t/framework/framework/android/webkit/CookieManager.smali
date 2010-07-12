.class public final Landroid/webkit/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CookieManager$Cookie;
    }
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String; = null

.field private static final COMMA:C = ','

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

#the value of this static final field might be set in the static constructor
.field private static final HTTP_ONLY_LENGTH:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final MAX_COOKIE_COUNT_PER_BASE_DOMAIN:I = 0x32

.field private static final MAX_COOKIE_LENGTH:I = 0x1000

.field private static final MAX_DOMAIN_COUNT:I = 0xc8

.field private static final MAX_RAM_COOKIES_COUNT:I = 0x3e8

.field private static final MAX_RAM_DOMAIN_COUNT:I = 0xf

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

#the value of this static final field might be set in the static constructor
.field private static final SECURE_LENGTH:I = 0x0

.field private static final SEMICOLON:C = ';'

.field private static final WHITE_SPACE:C = ' '

.field private static sRef:Landroid/webkit/CookieManager;


# instance fields
.field private mAcceptCookie:Z

.field private mCookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    .line 71
    const-string v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    .line 100
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 105
    sget-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    const/high16 v2, 0x3f40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    .line 94
    iput-boolean v3, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    .line 194
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/CookieManager;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object p1
.end method

.method private getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "host"

    .prologue
    const/16 v3, 0x2e

    .line 686
    const/4 v2, 0x0

    .line 687
    .local v2, startIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 688
    .local v1, nextIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 689
    .local v0, lastIndex:I
    :goto_b
    if-ge v1, v0, :cond_14

    .line 690
    add-int/lit8 v2, v1, 0x1

    .line 691
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_b

    .line 693
    :cond_14
    if-lez v2, :cond_1b

    .line 694
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 696
    :goto_1a
    return-object v3

    :cond_1b
    move-object v3, p1

    goto :goto_1a
.end method

.method private getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v3, 0x2e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    iget-object v2, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_6d

    iget-object v2, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_6d

    .line 639
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 640
    .local v1, ret:[Ljava/lang/String;
    iget-object v2, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 641
    iget-object v2, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 643
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 644
    .local v0, index:I
    if-ne v0, v6, :cond_3b

    .line 645
    iget-object v2, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 649
    const-string v2, "localhost"

    aput-object v2, v1, v4

    .line 656
    :cond_2f
    :goto_2f
    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_59

    move-object v2, v7

    .line 676
    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :goto_3a
    return-object v2

    .line 651
    .restart local v0       #index:I
    .restart local v1       #ret:[Ljava/lang/String;
    :cond_3b
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_2f

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_2f

    .line 670
    :cond_59
    aget-object v2, v1, v5

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 671
    if-eq v0, v6, :cond_6b

    .line 672
    aget-object v2, v1, v5

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_6b
    move-object v2, v1

    .line 674
    goto :goto_3a

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_6d
    move-object v2, v7

    .line 676
    goto :goto_3a
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManager;
    .registers 2

    .prologue
    .line 209
    const-class v0, Landroid/webkit/CookieManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    if-nez v1, :cond_e

    .line 210
    new-instance v1, Landroid/webkit/CookieManager;

    invoke-direct {v1}, Landroid/webkit/CookieManager;-><init>()V

    sput-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    .line 212
    :cond_e
    sget-object v1, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 209
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 29
    .parameter "host"
    .parameter "path"
    .parameter "cookieString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v15, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/4 v10, 0x0

    .line 719
    .local v10, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 721
    .local v13, length:I
    :cond_a
    :goto_a
    const/4 v5, 0x0

    .line 724
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    if-ltz v10, :cond_f

    if-lt v10, v13, :cond_10

    .line 934
    :cond_f
    return-object v15

    .line 729
    :cond_10
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 730
    add-int/lit8 v10, v10, 0x1

    .line 731
    goto :goto_a

    .line 743
    :cond_22
    const/16 v19, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 744
    .local v17, semicolonIndex:I
    const/16 v19, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 745
    .local v7, equalIndex:I
    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 749
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_4c

    move/from16 v0, v17

    move v1, v7

    if-lt v0, v1, :cond_f

    .line 753
    :cond_4c
    new-instance v5, Landroid/webkit/CookieManager$Cookie;

    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/webkit/CookieManager$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    move-object/from16 v0, p3

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 755
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8a

    .line 756
    const/16 v19, 0x22

    add-int/lit8 v20, v7, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 757
    const/16 v19, -0x1

    move v0, v10

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 762
    :cond_8a
    const/16 v19, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 763
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9f

    .line 764
    move/from16 v17, v13

    .line 766
    :cond_9f
    sub-int v19, v17, v7

    const/16 v20, 0x1000

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d3

    .line 768
    add-int/lit8 v19, v7, 0x1

    move v0, v7

    add-int/lit16 v0, v0, 0x1000

    move/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 779
    :goto_bf
    move/from16 v10, v17

    .line 782
    :cond_c1
    :goto_c1
    if-ltz v10, :cond_c5

    if-lt v10, v13, :cond_fa

    .line 930
    :cond_c5
    :goto_c5
    if-eqz v5, :cond_a

    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 931
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 770
    :cond_d3
    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_e0

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_e8

    .line 773
    :cond_e0
    const-string v19, ""

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto :goto_bf

    .line 775
    :cond_e8
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto :goto_bf

    .line 787
    :cond_fa
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_118

    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11b

    .line 789
    :cond_118
    add-int/lit8 v10, v10, 0x1

    .line 790
    goto :goto_c1

    .line 794
    :cond_11b
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12d

    .line 795
    add-int/lit8 v10, v10, 0x1

    .line 796
    goto :goto_c5

    .line 801
    :cond_12d
    sub-int v19, v13, v10

    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_16a

    sget v19, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v19, v19, v10

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "secure"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16a

    .line 804
    sget v19, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v10, v10, v19

    .line 805
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 806
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c1

    .line 812
    :cond_16a
    sub-int v19, v13, v10

    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a0

    sget v19, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v19, v19, v10

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "httponly"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a0

    .line 816
    sget v19, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v10, v10, v19

    .line 817
    move-object/from16 v0, p3

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c1

    .line 821
    :cond_1a0
    const/16 v19, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 822
    if-lez v7, :cond_3d9

    .line 823
    move-object/from16 v0, p3

    move v1, v10

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 825
    .local v14, name:Ljava/lang/String;
    const-string v19, "expires"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e2

    .line 826
    const/16 v19, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 831
    .local v3, comaIndex:I
    const/16 v19, -0x1

    move v0, v3

    move/from16 v1, v19

    if-eq v0, v1, :cond_1e2

    sub-int v19, v3, v7

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1e2

    .line 833
    add-int/lit8 v10, v3, 0x1

    .line 836
    .end local v3           #comaIndex:I
    :cond_1e2
    const/16 v19, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 837
    const/16 v19, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 838
    .local v4, commaIndex:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_27d

    const/16 v19, -0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_27d

    .line 839
    move v10, v13

    .line 847
    :goto_208
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 851
    .local v18, value:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_242

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_242

    .line 852
    const/16 v19, 0x22

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 853
    .local v6, endQuote:I
    if-lez v6, :cond_242

    .line 854
    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 857
    .end local v6           #endQuote:I
    :cond_242
    const-string v19, "expires"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29b

    .line 859
    :try_start_24d
    invoke-static/range {v18 .. v18}, Landroid/webkit/HttpDateTime;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_25a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24d .. :try_end_25a} :catch_25c

    goto/16 :goto_c1

    .line 860
    :catch_25c
    move-exception v19

    move-object/from16 v8, v19

    .line 861
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal format for expires: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 840
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .end local v18           #value:Ljava/lang/String;
    :cond_27d
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_287

    .line 841
    move v10, v4

    goto :goto_208

    .line 842
    :cond_287
    const/16 v19, -0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_292

    .line 843
    move/from16 v10, v17

    goto/16 :goto_208

    .line 845
    :cond_292
    move/from16 v0, v17

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_208

    .line 864
    .restart local v18       #value:Ljava/lang/String;
    :cond_29b
    const-string v19, "max-age"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2dc

    .line 866
    :try_start_2a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    mul-long v21, v21, v23

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_2b9
    .catch Ljava/lang/NumberFormatException; {:try_start_2a6 .. :try_end_2b9} :catch_2bb

    goto/16 :goto_c1

    .line 868
    :catch_2bb
    move-exception v19

    move-object/from16 v8, v19

    .line 869
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v19, "webkit"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal format for max-age: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 872
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :cond_2dc
    const-string v19, "path"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f4

    .line 874
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_c1

    .line 875
    move-object/from16 v0, v18

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    goto/16 :goto_c1

    .line 877
    :cond_2f4
    const-string v19, "domain"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c1

    .line 878
    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 879
    .local v11, lastPeriod:I
    if-nez v11, :cond_310

    .line 881
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_c1

    .line 885
    :cond_310
    add-int/lit8 v19, v11, 0x1

    :try_start_312
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 887
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c1

    .line 889
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;
    :try_end_32a
    .catch Ljava/lang/NumberFormatException; {:try_start_312 .. :try_end_32a} :catch_32c

    goto/16 :goto_c1

    .line 892
    :catch_32c
    move-exception v19

    .line 895
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 896
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_358

    .line 898
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 899
    add-int/lit8 v11, v11, 0x1

    .line 901
    :cond_358
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3d0

    .line 902
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    .line 903
    .local v12, len:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 904
    .local v9, hostLen:I
    const/16 v19, 0x1

    sub-int v19, v12, v19

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_394

    sub-int v19, v9, v12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_394

    .line 907
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_c1

    .line 911
    :cond_394
    add-int/lit8 v19, v11, 0x3

    move v0, v12

    move/from16 v1, v19

    if-ne v0, v1, :cond_3c9

    const/16 v19, 0x6

    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_3c9

    const/16 v19, 0x8

    move v0, v12

    move/from16 v1, v19

    if-gt v0, v1, :cond_3c9

    .line 913
    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 914
    .local v16, s:Ljava/lang/String;
    sget-object v19, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    if-ltz v19, :cond_3c9

    .line 915
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_c1

    .line 919
    .end local v16           #s:Ljava/lang/String;
    :cond_3c9
    move-object/from16 v0, v18

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_c1

    .line 922
    .end local v9           #hostLen:I
    .end local v12           #len:I
    :cond_3d0
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_c1

    .line 927
    .end local v4           #commaIndex:I
    .end local v11           #lastPeriod:I
    .end local v14           #name:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_3d9
    move v10, v13

    goto/16 :goto_c1
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .registers 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized deleteACookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 6
    .parameter "cookie"

    .prologue
    .line 552
    monitor-enter p0

    :try_start_1
    iget-byte v2, p1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 553
    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 555
    .local v1, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz v1, :cond_24

    .line 556
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 558
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 562
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_24
    monitor-exit p0

    return-void

    .line 552
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized deleteLRUDomain()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x3e8

    const/16 v12, 0xf

    .line 582
    monitor-enter p0

    const/4 v2, 0x0

    .line 583
    .local v2, count:I
    const/4 v0, 0x0

    .line 584
    .local v0, byteCount:I
    :try_start_7
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    .line 586
    .local v7, mapSize:I
    if-ge v7, v12, :cond_2d

    .line 587
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 588
    .local v1, cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 589
    .local v6, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2d

    if-ge v2, v13, :cond_2d

    .line 590
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 604
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v2, v11

    .line 606
    goto :goto_19

    .line 609
    .end local v1           #cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_2d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v8, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-ge v7, v12, :cond_36

    if-lt v2, v13, :cond_62

    .line 615
    :cond_36
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 616
    .local v4, domains:[Ljava/lang/Object;
    div-int/lit8 v11, v7, 0xa

    add-int/lit8 v9, v11, 0x1

    .local v9, toGo:I
    move v10, v9

    .line 617
    .end local v9           #toGo:I
    .local v10, toGo:I
    :goto_45
    const/4 v11, 0x1

    sub-int v9, v10, v11

    .end local v10           #toGo:I
    .restart local v9       #toGo:I
    if-lez v10, :cond_62

    .line 618
    aget-object v11, v4, v9

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, domain:Ljava/lang/String;
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 624
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_64

    move v10, v9

    .line 625
    .end local v9           #toGo:I
    .restart local v10       #toGo:I
    goto :goto_45

    .line 627
    .end local v3           #domain:Ljava/lang/String;
    .end local v4           #domains:[Ljava/lang/Object;
    .end local v10           #toGo:I
    :cond_62
    monitor-exit p0

    return-object v8

    .line 582
    .end local v7           #mapSize:I
    .end local v8           #retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catchall_64
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .registers 16
    .parameter "uri"

    .prologue
    const/4 v13, 0x0

    .line 384
    monitor-enter p0

    :try_start_2
    iget-boolean v9, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a1

    if-eqz v9, :cond_8

    if-nez p1, :cond_b

    :cond_8
    move-object v9, v13

    .line 439
    :goto_9
    monitor-exit p0

    return-object v9

    .line 388
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, hostAndPath:[Ljava/lang/String;
    if-nez v3, :cond_13

    move-object v9, v13

    .line 390
    goto :goto_9

    .line 393
    :cond_13
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-direct {p0, v9}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 395
    .local v2, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v2, :cond_31

    .line 396
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 398
    iget-object v9, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 402
    .local v5, now:J
    const-string v9, "https"

    iget-object v10, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 403
    .local v8, secure:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 406
    .local v7, ret:Ljava/lang/StringBuilder;
    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 407
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/CookieManager$Cookie;

    .line 408
    .local v1, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/webkit/CookieManager$Cookie;->domainMatch(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/webkit/CookieManager$Cookie;->pathMatch(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    iget-wide v9, v1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_74

    iget-wide v9, v1, Landroid/webkit/CookieManager$Cookie;->expires:J

    cmp-long v9, v9, v5

    if-lez v9, :cond_48

    :cond_74
    iget-boolean v9, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    if-eqz v9, :cond_7a

    if-eqz v8, :cond_48

    :cond_7a
    iget-byte v9, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v10, 0x2

    if-eq v9, v10, :cond_48

    .line 415
    iput-wide v5, v1, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 417
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_91

    .line 418
    const/16 v9, 0x3b

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    :cond_91
    iget-object v9, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/16 v9, 0x3d

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    iget-object v9, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a0
    .catchall {:try_start_b .. :try_end_a0} :catchall_a1

    goto :goto_48

    .line 384
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v2           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #hostAndPath:[Ljava/lang/String;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #now:J
    .end local v7           #ret:Ljava/lang/StringBuilder;
    .end local v8           #secure:Z
    :catchall_a1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 429
    .restart local v0       #baseDomain:Ljava/lang/String;
    .restart local v2       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v3       #hostAndPath:[Ljava/lang/String;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v5       #now:J
    .restart local v7       #ret:Ljava/lang/StringBuilder;
    .restart local v8       #secure:Z
    :cond_a4
    :try_start_a4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_b0

    .line 433
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_a1

    move-result-object v9

    goto/16 :goto_9

    :cond_b0
    move-object v9, v13

    .line 439
    goto/16 :goto_9
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "url"

    .prologue
    .line 367
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_5} :catch_a

    .line 372
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_9
    return-object v2

    .line 368
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 369
    .local v0, ex:Landroid/net/ParseException;
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v2, 0x0

    goto :goto_9
.end method

.method declared-synchronized getUpdatedCookiesSince(J)Ljava/util/ArrayList;
    .registers 11
    .parameter "last"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v2, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    iget-object v6, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 531
    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 532
    .local v5, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 533
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 534
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 535
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 536
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 537
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v6, v0, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_20

    .line 538
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_20

    .line 529
    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v1           #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v2           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :catchall_36
    move-exception v6

    monitor-exit p0

    throw v6

    .line 542
    .restart local v1       #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v2       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v5       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_39
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized hasCookies()Z
    .registers 2

    .prologue
    .line 489
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->hasCookies()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .registers 3

    .prologue
    .line 473
    new-instance v0, Landroid/webkit/CookieManager$2;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$2;-><init>(Landroid/webkit/CookieManager;)V

    .line 482
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 483
    return-void
.end method

.method public removeExpiredCookie()V
    .registers 3

    .prologue
    .line 496
    new-instance v0, Landroid/webkit/CookieManager$3;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$3;-><init>(Landroid/webkit/CookieManager;)V

    .line 518
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 519
    return-void
.end method

.method public removeSessionCookie()V
    .registers 3

    .prologue
    .line 447
    new-instance v0, Landroid/webkit/CookieManager$1;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$1;-><init>(Landroid/webkit/CookieManager;)V

    .line 466
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 467
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .registers 3
    .parameter "accept"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V
    .registers 28
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 259
    monitor-enter p0

    if-eqz p2, :cond_11

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b5

    move-result v21

    const/16 v22, 0x1000

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 356
    :cond_f
    monitor-exit p0

    return-void

    .line 262
    :cond_11
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    if-eqz p1, :cond_f

    .line 269
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v12

    .line 270
    .local v12, hostAndPath:[Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 278
    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4d

    .line 279
    const/16 v21, 0x1

    aget-object v21, v12, v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 280
    .local v14, index:I
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v12, v22

    const/16 v23, 0x0

    if-lez v14, :cond_190

    move/from16 v24, v14

    :goto_47
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21
    :try_end_4d
    .catchall {:try_start_11 .. :try_end_4d} :catchall_1b5

    .line 284
    .end local v14           #index:I
    :cond_4d
    const/4 v9, 0x0

    .line 286
    .local v9, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/16 v21, 0x0

    :try_start_50
    aget-object v21, v12, v21

    const/16 v22, 0x1

    aget-object v22, v12, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/CookieManager;->parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_1b5
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_61} :catch_194

    move-result-object v9

    .line 291
    :goto_62
    if-eqz v9, :cond_f

    :try_start_64
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_f

    .line 295
    const/16 v21, 0x0

    aget-object v21, v12, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, baseDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 297
    .local v8, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v8, :cond_9f

    .line 298
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_9f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 304
    .local v17, now:J
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 305
    .local v19, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_a8
    move v0, v13

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 306
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/CookieManager$Cookie;

    .line 308
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v10, 0x0

    .line 309
    .local v10, done:Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 310
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_b8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_123

    .line 311
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/CookieManager$Cookie;

    .line 312
    .local v6, cookieEntry:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager$Cookie;->exactMatch(Landroid/webkit/CookieManager$Cookie;)Z

    move-result v21

    if-eqz v21, :cond_b8

    .line 315
    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_de

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_1b8

    .line 317
    :cond_de
    move-object v0, v6

    iget-boolean v0, v0, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f3

    const-string v21, "https"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_122

    .line 318
    :cond_f3
    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v6

    iput-object v0, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 319
    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 320
    move-object v0, v5

    iget-boolean v0, v0, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v6

    iput-boolean v0, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 321
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 322
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 323
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object v1, v6

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 329
    :cond_122
    :goto_122
    const/4 v10, 0x1

    .line 336
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    :cond_123
    if-nez v10, :cond_1d1

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_139

    move-object v0, v5

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_1d1

    .line 337
    :cond_139
    move-wide/from16 v0, v17

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 338
    move-wide/from16 v0, v17

    move-object v2, v5

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 339
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v5

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 340
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1ce

    .line 341
    new-instance v20, Landroid/webkit/CookieManager$Cookie;

    invoke-direct/range {v20 .. v20}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 342
    .local v20, toDelete:Landroid/webkit/CookieManager$Cookie;
    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 343
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 344
    .local v16, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_165
    :goto_165
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1c6

    .line 345
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CookieManager$Cookie;

    .line 346
    .local v7, cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    move-object v0, v7

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_165

    move-object v0, v7

    iget-byte v0, v0, Landroid/webkit/CookieManager$Cookie;->mode:B

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_165

    .line 348
    move-object/from16 v20, v7

    goto :goto_165

    .line 280
    .end local v4           #baseDomain:Ljava/lang/String;
    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v7           #cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    .end local v8           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v10           #done:Z
    .end local v13           #i:I
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v17           #now:J
    .end local v19           #size:I
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    .restart local v14       #index:I
    :cond_190
    add-int/lit8 v24, v14, 0x1

    goto/16 :goto_47

    .line 287
    .end local v14           #index:I
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catch_194
    move-exception v21

    move-object/from16 v11, v21

    .line 288
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v21, "webkit"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parse cookie failed for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_64 .. :try_end_1b3} :catchall_1b5

    goto/16 :goto_62

    .line 259
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hostAndPath:[Ljava/lang/String;
    :catchall_1b5
    move-exception v21

    monitor-exit p0

    throw v21

    .line 326
    .restart local v4       #baseDomain:Ljava/lang/String;
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v6       #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v8       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v10       #done:Z
    .restart local v12       #hostAndPath:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v17       #now:J
    .restart local v19       #size:I
    :cond_1b8
    :try_start_1b8
    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 327
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object v1, v6

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    goto/16 :goto_122

    .line 351
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v16       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v20       #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_1c6
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 353
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_1ce
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d1
    .catchall {:try_start_1b8 .. :try_end_1d1} :catchall_1b5

    .line 305
    :cond_1d1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a8
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "url"
    .parameter "value"

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_5} :catch_9

    .line 246
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1, p2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 247
    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_8
    return-void

    .line 242
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 243
    .local v0, ex:Landroid/net/ParseException;
    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method declared-synchronized syncedACookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 3
    .parameter "cookie"

    .prologue
    .line 571
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-byte v0, p1, Landroid/webkit/CookieManager$Cookie;->mode:B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 572
    monitor-exit p0

    return-void

    .line 571
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
