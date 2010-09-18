.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static codesToCurrencies:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static currencyVars:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private transient defaultFractionDigits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/util/Currency;->codesToCurrencies:Ljava/util/Hashtable;

    .line 38
    const-string v0, "EURO, HK, PREEURO"

    sput-object v0, Ljava/util/Currency;->currencyVars:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "currencyCode"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .registers 7
    .parameter "currencyCode"

    .prologue
    .line 63
    sget-object v4, Ljava/util/Currency;->codesToCurrencies:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Currency;

    .line 65
    .local v1, currency:Ljava/util/Currency;
    if-nez v1, :cond_29

    .line 66
    const-string v4, "ISO4CurrenciesToDigits"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 68
    .local v0, bundle:Ljava/util/ResourceBundle;
    new-instance v1, Ljava/util/Currency;

    .end local v1           #currency:Ljava/util/Currency;
    invoke-direct {v1, p0}, Ljava/util/Currency;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v1       #currency:Ljava/util/Currency;
    const/4 v2, 0x0

    .line 72
    .local v2, defaultFractionDigits:Ljava/lang/String;
    :try_start_1a
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/util/MissingResourceException; {:try_start_1a .. :try_end_1d} :catch_2a

    move-result-object v2

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Ljava/util/Currency;->defaultFractionDigits:I

    .line 80
    sget-object v4, Ljava/util/Currency;->codesToCurrencies:Ljava/util/Hashtable;

    invoke-virtual {v4, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #defaultFractionDigits:Ljava/lang/String;
    :cond_29
    return-object v1

    .line 73
    .restart local v0       #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #defaultFractionDigits:Ljava/lang/String;
    :catch_2a
    move-exception v3

    .line 74
    .local v3, e:Ljava/util/MissingResourceException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "K0322"

    invoke-static {v5, p0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .registers 9
    .parameter "locale"

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, country:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, variant:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    sget-object v5, Ljava/util/Currency;->currencyVars:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_30

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_30
    const-string v5, "ISO4Currencies"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 106
    .local v0, bundle:Ljava/util/ResourceBundle;
    const/4 v2, 0x0

    .line 108
    .local v2, currencyCode:Ljava/lang/String;
    :try_start_3b
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/util/MissingResourceException; {:try_start_3b .. :try_end_3e} :catch_49

    move-result-object v2

    .line 114
    const-string v5, "None"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 115
    const/4 v5, 0x0

    .line 118
    :goto_48
    return-object v5

    .line 109
    :catch_49
    move-exception v3

    .line 110
    .local v3, e:Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "K0323"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    .end local v3           #e:Ljava/util/MissingResourceException;
    :cond_5a
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto :goto_48
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Ljava/util/Currency;->defaultFractionDigits:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .parameter "locale"

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 169
    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 199
    .end local p0
    :goto_e
    return-object v3

    .line 173
    .restart local p0
    :cond_f
    const-string v3, "Locale"

    invoke-static {v3, p1}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 174
    .local v0, bundle:Ljava/util/ResourceBundle;
    const-string v3, "IntCurrencySymbol"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 176
    const-string v3, "CurrencySymbol"

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    goto :goto_e

    .line 180
    .restart local p0
    :cond_2f
    const/4 v0, 0x0

    .line 182
    :try_start_30
    const-string v3, "Currency"

    invoke-static {v3, p1}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_35
    .catch Ljava/util/MissingResourceException; {:try_start_30 .. :try_end_35} :catch_4b

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 190
    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    goto :goto_e

    .line 183
    :catch_4b
    move-exception v3

    move-object v1, v3

    .line 184
    .local v1, e:Ljava/util/MissingResourceException;
    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    goto :goto_e

    .line 195
    .end local v1           #e:Ljava/util/MissingResourceException;
    :cond_50
    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_5c

    move-object v3, v2

    .line 197
    goto :goto_e

    .line 199
    :cond_5c
    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method
