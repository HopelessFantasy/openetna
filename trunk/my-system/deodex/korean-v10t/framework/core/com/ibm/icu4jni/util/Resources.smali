.class public Lcom/ibm/icu4jni/util/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu4jni/util/Resources$1;,
        Lcom/ibm/icu4jni/util/Resources$Locale;,
        Lcom/ibm/icu4jni/util/Resources$Variant;,
        Lcom/ibm/icu4jni/util/Resources$Language;,
        Lcom/ibm/icu4jni/util/Resources$Currency;,
        Lcom/ibm/icu4jni/util/Resources$Country;,
        Lcom/ibm/icu4jni/util/Resources$ISO4CurrenciesToDigits;,
        Lcom/ibm/icu4jni/util/Resources$ISO4Currencies;,
        Lcom/ibm/icu4jni/util/Resources$ISO3Languages;,
        Lcom/ibm/icu4jni/util/Resources$ISO3Countries;
    }
.end annotation


# static fields
.field private static availableLocales:[Ljava/lang/String;

.field private static availableTimezones:[Ljava/lang/String;

.field private static defaultTimezoneNames:[[Ljava/lang/String;

.field private static final initialLocale:Ljava/lang/String;

.field private static isoCountries:[Ljava/lang/String;

.field private static isoLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->isoLanguages:[Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->isoCountries:[Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->availableLocales:[Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getDefaultLocaleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu4jni/util/Resources;->initialLocale:Ljava/lang/String;

    .line 191
    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->defaultTimezoneNames:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/util/Resources;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/util/Resources;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Z)[[Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/util/Resources;->getContentImpl(Ljava/lang/String;Z)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/ibm/icu4jni/util/Resources;->getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/ibm/icu4jni/util/Resources;->getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/ibm/icu4jni/util/Resources;->getCurrencyCodeNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/ibm/icu4jni/util/Resources;->getFractionDigitsNative(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/util/Resources;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/util/Resources;->getCurrencySymbolNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createTimeZoneNamesFor(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 13
    .parameter "locale"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 213
    .local v3, start:J
    const/4 v5, 0x5

    new-array v0, v5, [[Ljava/lang/String;

    .line 214
    .local v0, arrayToFill:[[Ljava/lang/String;
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getKnownTimezones()[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 215
    sget-object v5, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v0, v8

    .line 216
    sget-object v5, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v0, v9

    .line 217
    sget-object v5, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v0, v10

    .line 218
    sget-object v5, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v0, v11

    .line 223
    invoke-static {v0, p0}, Lcom/ibm/icu4jni/util/Resources;->getTimeZonesNative([[Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v5, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x5

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 229
    .local v2, result:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    sget-object v5, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_72

    .line 230
    aget-object v5, v2, v1

    aget-object v6, v0, v7

    aget-object v6, v6, v1

    aput-object v6, v5, v7

    .line 231
    aget-object v5, v2, v1

    aget-object v6, v0, v8

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    .line 232
    aget-object v5, v2, v1

    aget-object v6, v0, v9

    aget-object v6, v6, v1

    aput-object v6, v5, v9

    .line 233
    aget-object v5, v2, v1

    aget-object v6, v0, v10

    aget-object v6, v6, v1

    aput-object v6, v5, v10

    .line 234
    aget-object v5, v2, v1

    aget-object v6, v0, v11

    aget-object v6, v6, v1

    aput-object v6, v5, v11

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 237
    :cond_72
    const-class v5, Lcom/ibm/icu4jni/util/Resources;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded time zone names for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 241
    return-object v2
.end method

.method public static getAvailableLocales()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->availableLocales:[Ljava/lang/String;

    if-nez v0, :cond_a

    .line 142
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getAvailableLocalesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->availableLocales:[Ljava/lang/String;

    .line 145
    :cond_a
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->availableLocales:[Ljava/lang/String;

    return-object v0
.end method

.method private static native getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method private static native getContentImpl(Ljava/lang/String;Z)[[Ljava/lang/Object;
.end method

.method private static native getCurrencyCodeNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getCurrencySymbolNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static getDefaultLocaleName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayTimeZone(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"
    .parameter "isDST"
    .parameter "style"
    .parameter "locale"

    .prologue
    .line 173
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu4jni/util/Resources;->getDisplayTimeZoneNative(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayTimeZoneNative(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayTimeZones(Ljava/lang/String;)[[Ljava/lang/String;
    .registers 3
    .parameter "locale"

    .prologue
    .line 257
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getDefaultLocaleName()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, defaultLocaleName:Ljava/lang/String;
    if-nez p0, :cond_7

    .line 259
    move-object p0, v0

    .line 265
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/ibm/icu4jni/util/Resources;->initialLocale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 267
    sget-object v1, Lcom/ibm/icu4jni/util/Resources;->defaultTimezoneNames:[[Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 268
    invoke-static {p0}, Lcom/ibm/icu4jni/util/Resources;->createTimeZoneNamesFor(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu4jni/util/Resources;->defaultTimezoneNames:[[Ljava/lang/String;

    .line 270
    :cond_1f
    sget-object v1, Lcom/ibm/icu4jni/util/Resources;->defaultTimezoneNames:[[Ljava/lang/String;

    .line 273
    :goto_21
    return-object v1

    :cond_22
    invoke-static {p0}, Lcom/ibm/icu4jni/util/Resources;->createTimeZoneNamesFor(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method private static native getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getFractionDigitsNative(Ljava/lang/String;)I
.end method

.method private static native getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->isoCountries:[Ljava/lang/String;

    if-nez v0, :cond_a

    .line 128
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getISOCountriesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->isoCountries:[Ljava/lang/String;

    .line 131
    :cond_a
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->isoCountries:[Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->isoLanguages:[Ljava/lang/String;

    if-nez v0, :cond_a

    .line 114
    invoke-static {}, Lcom/ibm/icu4jni/util/Resources;->getISOLanguagesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->isoLanguages:[Ljava/lang/String;

    .line 117
    :cond_a
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->isoLanguages:[Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 4
    .parameter "bundleName"
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p1, :cond_b

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_b
    const-string v0, "Locale"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 84
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$Locale;

    invoke-direct {v0, p1}, Lcom/ibm/icu4jni/util/Resources$Locale;-><init>(Ljava/lang/String;)V

    .line 103
    :goto_18
    return-object v0

    .line 85
    :cond_19
    const-string v0, "Country"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 86
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$Country;

    invoke-direct {v0, p1}, Lcom/ibm/icu4jni/util/Resources$Country;-><init>(Ljava/lang/String;)V

    goto :goto_18

    .line 87
    :cond_27
    const-string v0, "Currency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 88
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$Currency;

    invoke-direct {v0, p1}, Lcom/ibm/icu4jni/util/Resources$Currency;-><init>(Ljava/lang/String;)V

    goto :goto_18

    .line 89
    :cond_35
    const-string v0, "Language"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 90
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$Language;

    invoke-direct {v0, p1}, Lcom/ibm/icu4jni/util/Resources$Language;-><init>(Ljava/lang/String;)V

    goto :goto_18

    .line 91
    :cond_43
    const-string v0, "Variant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 92
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$Variant;

    invoke-direct {v0, p1}, Lcom/ibm/icu4jni/util/Resources$Variant;-><init>(Ljava/lang/String;)V

    goto :goto_18

    .line 93
    :cond_51
    const-string v0, "ISO3Countries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 94
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$ISO3Countries;

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/util/Resources$ISO3Countries;-><init>(Lcom/ibm/icu4jni/util/Resources$1;)V

    goto :goto_18

    .line 95
    :cond_5f
    const-string v0, "ISO3Languages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 96
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$ISO3Languages;

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/util/Resources$ISO3Languages;-><init>(Lcom/ibm/icu4jni/util/Resources$1;)V

    goto :goto_18

    .line 97
    :cond_6d
    const-string v0, "ISO4CurrenciesToDigits"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 98
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$ISO4CurrenciesToDigits;

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/util/Resources$ISO4CurrenciesToDigits;-><init>(Lcom/ibm/icu4jni/util/Resources$1;)V

    goto :goto_18

    .line 99
    :cond_7b
    const-string v0, "ISO4Currencies"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 100
    new-instance v0, Lcom/ibm/icu4jni/util/Resources$ISO4Currencies;

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/util/Resources$ISO4Currencies;-><init>(Lcom/ibm/icu4jni/util/Resources$1;)V

    goto :goto_18

    :cond_89
    move-object v0, v1

    .line 103
    goto :goto_18
.end method

.method public static getKnownTimezones()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    if-nez v0, :cond_a

    .line 157
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    .line 160
    :cond_a
    sget-object v0, Lcom/ibm/icu4jni/util/Resources;->availableTimezones:[Ljava/lang/String;

    return-object v0
.end method

.method private static native getTimeZonesNative([[Ljava/lang/String;Ljava/lang/String;)V
.end method
