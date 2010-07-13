.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANADA:Ljava/util/Locale; = null

.field public static final CANADA_FRENCH:Ljava/util/Locale; = null

.field public static final CHINA:Ljava/util/Locale; = null

.field public static final CHINESE:Ljava/util/Locale; = null

.field public static final ENGLISH:Ljava/util/Locale; = null

.field public static final FRANCE:Ljava/util/Locale; = null

.field public static final FRENCH:Ljava/util/Locale; = null

.field public static final GERMAN:Ljava/util/Locale; = null

.field public static final GERMANY:Ljava/util/Locale; = null

.field public static final ITALIAN:Ljava/util/Locale; = null

.field public static final ITALY:Ljava/util/Locale; = null

.field public static final JAPAN:Ljava/util/Locale; = null

.field public static final JAPANESE:Ljava/util/Locale; = null

.field public static final KOREA:Ljava/util/Locale; = null

.field public static final KOREAN:Ljava/util/Locale; = null

.field public static final PRC:Ljava/util/Locale; = null

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale; = null

.field public static final TAIWAN:Ljava/util/Locale; = null

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale; = null

.field public static final UK:Ljava/util/Locale; = null

.field public static final US:Ljava/util/Locale; = null

.field private static availableLocales:[Ljava/util/Locale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x7ef811609c30f9ecL

.field private static final setLocalePermission:Ljava/util/PropertyPermission;


# instance fields
.field private transient countryCode:Ljava/lang/String;

.field private transient languageCode:Ljava/lang/String;

.field private transient variantCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const-string v5, "fr"

    const-string v9, "CN"

    const-string v8, "en"

    const-string v7, "zh"

    const-string v6, ""

    .line 60
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3}, Ljava/util/Locale;-><init>()V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 67
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v4, "CA"

    invoke-direct {v3, v8, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 74
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v4, "CA"

    invoke-direct {v3, v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 81
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v4, "CN"

    invoke-direct {v3, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 88
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v4, ""

    invoke-direct {v3, v7, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 95
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v4, ""

    invoke-direct {v3, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 102
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v4, "FR"

    invoke-direct {v3, v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 109
    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v4, ""

    invoke-direct {v3, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 116
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, ""

    invoke-direct {v3, v4, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 123
    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, "DE"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 130
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, ""

    invoke-direct {v3, v4, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 137
    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, "IT"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 144
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, "JP"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 151
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, ""

    invoke-direct {v3, v4, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 158
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, "KR"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 165
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, ""

    invoke-direct {v3, v4, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 172
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v4, "CN"

    invoke-direct {v3, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 179
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v4, "CN"

    invoke-direct {v3, v7, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 186
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v4, "TW"

    invoke-direct {v3, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 193
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v4, "TW"

    invoke-direct {v3, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 200
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v4, "GB"

    invoke-direct {v3, v8, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 207
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v4, "US"

    invoke-direct {v3, v8, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 209
    new-instance v3, Ljava/util/PropertyPermission;

    const-string v4, "user.language"

    const-string v5, "write"

    invoke-direct {v3, v4, v5}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->setLocalePermission:Ljava/util/PropertyPermission;

    .line 213
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.language"

    const-string v5, "en"

    invoke-direct {v3, v4, v8}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, language:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.region"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, region:Ljava/lang/String;
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "user.variant"

    const-string v5, ""

    invoke-direct {v3, v4, v6}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, variant:Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    .line 901
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "country"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "hashcode"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "language"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "variant"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    sput-object v3, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const-string v0, "en"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 234
    const-string v0, "US"

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 235
    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "language"

    .prologue
    const-string v1, ""

    .line 247
    const-string v0, ""

    const-string v0, ""

    invoke-direct {p0, p1, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 260
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_f

    .line 280
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_f
    invoke-static {p1}, Lorg/apache/harmony/luni/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 286
    const-string v0, "iw"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 294
    :cond_23
    :goto_23
    invoke-static {p2}, Lorg/apache/harmony/luni/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 297
    return-void

    .line 287
    :cond_2c
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 288
    const-string v0, "in"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_23

    .line 289
    :cond_3b
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "yi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 290
    const-string v0, "ji"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_23
.end method

.method static find()[Ljava/util/Locale;
    .registers 14

    .prologue
    const/16 v13, 0x5f

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 434
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getAvailableLocales()[Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, locales:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v6, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Locale;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v7, v2

    if-ge v1, v7, :cond_58

    .line 437
    aget-object v4, v2, v1

    .line 438
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 439
    .local v0, first:I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 441
    .local v5, second:I
    if-ne v0, v11, :cond_2a

    .line 443
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 444
    :cond_2a
    if-ne v5, v11, :cond_3f

    .line 446
    new-instance v7, Ljava/util/Locale;

    invoke-virtual {v4, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 449
    :cond_3f
    new-instance v7, Ljava/util/Locale;

    invoke-virtual {v4, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 452
    .end local v0           #first:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #second:I
    :cond_58
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v3, v7, [Ljava/util/Locale;

    .line 453
    .local v3, result:[Ljava/util/Locale;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 465
    sget-object v0, Ljava/util/Locale;->availableLocales:[Ljava/util/Locale;

    if-nez v0, :cond_a

    .line 476
    invoke-static {}, Ljava/util/Locale;->find()[Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->availableLocales:[Ljava/util/Locale;

    .line 479
    :cond_a
    sget-object v0, Ljava/util/Locale;->availableLocales:[Ljava/util/Locale;

    invoke-virtual {v0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method static getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 3
    .parameter "clName"
    .parameter "locale"

    .prologue
    .line 893
    new-instance v0, Ljava/util/Locale$1;

    invoke-direct {v0, p0, p1}, Ljava/util/Locale$1;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ResourceBundle;

    return-object p0
.end method

.method public static getDefault()Ljava/util/Locale;
    .registers 1

    .prologue
    .line 500
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 773
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 797
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-string v3, ""

    .line 918
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 919
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "country"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 920
    const-string v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 921
    const-string v1, "variant"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 922
    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 848
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    if-eqz p0, :cond_14

    .line 849
    :try_start_5
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 850
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 851
    sget-object v2, Ljava/util/Locale;->setLocalePermission:Ljava/util/PropertyPermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 853
    :cond_10
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    .line 857
    monitor-exit v1

    return-void

    .line 855
    .end local v0           #security:Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1a

    .line 848
    :catchall_1a
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 909
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 910
    const-string v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 911
    const-string v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    const-string v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 913
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 914
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 310
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 312
    :goto_4
    return-object v1

    .line 311
    :catch_5
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 339
    :goto_5
    return v2

    .line 333
    :cond_6
    instance-of v2, p1, Ljava/util/Locale;

    if-eqz v2, :cond_30

    .line 334
    move-object v0, p1

    check-cast v0, Ljava/util/Locale;

    move-object v1, v0

    .line 335
    .local v1, o:Ljava/util/Locale;
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v5

    goto :goto_5

    :cond_2e
    move v2, v4

    goto :goto_5

    .end local v1           #o:Ljava/util/Locale;
    :cond_30
    move v2, v4

    .line 339
    goto :goto_5
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .parameter "locale"

    .prologue
    const-string v3, "Country"

    .line 526
    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    .line 527
    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    .line 544
    :goto_c
    return-object v3

    .line 531
    :cond_d
    :try_start_d
    const-string v3, "Country"

    invoke-static {v3, p1}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 533
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_1f

    move-object v3, v2

    .line 536
    goto :goto_c

    .line 539
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq p1, v3, :cond_2f

    .line 540
    const-string v3, "Country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 542
    :cond_2f
    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_34} :catch_36

    move-result-object v3

    goto :goto_c

    .line 543
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #result:Ljava/lang/String;
    :catch_36
    move-exception v3

    move-object v1, v3

    .line 544
    .local v1, e:Ljava/util/MissingResourceException;
    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    goto :goto_c
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 557
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .parameter "locale"

    .prologue
    const-string v3, "Language"

    .line 571
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    .line 572
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    .line 589
    :goto_c
    return-object v3

    .line 576
    :cond_d
    :try_start_d
    const-string v3, "Language"

    invoke-static {v3, p1}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 578
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_1f

    move-object v3, v2

    .line 581
    goto :goto_c

    .line 584
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq p1, v3, :cond_2f

    .line 585
    const-string v3, "Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 587
    :cond_2f
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_34} :catch_36

    move-result-object v3

    goto :goto_c

    .line 588
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #result:Ljava/lang/String;
    :catch_36
    move-exception v3

    move-object v1, v3

    .line 589
    .local v1, e:Ljava/util/MissingResourceException;
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_c
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 601
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    const-string v4, " ("

    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, count:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 616
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 617
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    add-int/lit8 v1, v1, 0x1

    .line 620
    :cond_1a
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 621
    if-ne v1, v3, :cond_29

    .line 622
    const-string v2, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    :cond_29
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    add-int/lit8 v1, v1, 0x1

    .line 627
    :cond_32
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    .line 628
    if-ne v1, v3, :cond_56

    .line 629
    const-string v2, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    :cond_41
    :goto_41
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    add-int/lit8 v1, v1, 0x1

    .line 636
    :cond_4a
    if-le v1, v3, :cond_51

    .line 637
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 630
    :cond_56
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 631
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 651
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .parameter "locale"

    .prologue
    const-string v3, "Variant"

    .line 665
    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    .line 666
    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    .line 706
    :goto_c
    return-object v3

    .line 695
    :cond_d
    :try_start_d
    const-string v3, "Variant"

    invoke-static {v3, p1}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 696
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_1f

    move-object v3, v2

    .line 698
    goto :goto_c

    .line 701
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq p1, v3, :cond_2f

    .line 702
    const-string v3, "Variant"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 704
    :cond_2f
    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_34} :catch_36

    move-result-object v3

    goto :goto_c

    .line 705
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #result:Ljava/lang/String;
    :catch_36
    move-exception v3

    move-object v1, v3

    .line 706
    .local v1, e:Ljava/util/MissingResourceException;
    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_c
.end method

.method public getISO3Country()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 721
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 722
    const-string v1, ""

    .line 726
    :goto_a
    return-object v1

    .line 724
    :cond_b
    const-string v1, "ISO3Countries"

    invoke-static {v1, p0}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 726
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public getISO3Language()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 741
    const-string v1, ""

    .line 745
    :goto_a
    return-object v1

    .line 743
    :cond_b
    const-string v1, "ISO3Languages"

    invoke-static {v1, p0}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 745
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 3

    .prologue
    .line 833
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x5f

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 878
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 879
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_1c
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3c

    .line 882
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_41

    .line 883
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :goto_37
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 885
    :cond_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37
.end method
