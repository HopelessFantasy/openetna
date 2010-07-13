.class public final Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private final DecimalSeparator:I

.field private final Digit:I

.field private final Exponent:I

.field private final GroupingSeparator:I

.field private final MinusSign:I

.field private final MonetaryDecimalSeparator:I

.field private NaN:Ljava/lang/String;

.field private final PatternSeparator:I

.field private final PerMill:I

.field private final Percent:I

.field private final ZeroDigit:I

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private transient locale:Ljava/util/Locale;

.field transient patternChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-class v5, Ljava/lang/String;

    .line 521
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "currencySymbol"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "digit"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "exponential"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "infinity"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "intlCurrencySymbol"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minusSign"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monetarySeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "NaN"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "patternSeparator"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "percent"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "perMill"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zeroDigit"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "locale"

    const-class v4, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .parameter "locale"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v2, 0x0

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->ZeroDigit:I

    const/4 v2, 0x1

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->Digit:I

    const/4 v2, 0x2

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->DecimalSeparator:I

    .line 59
    const/4 v2, 0x3

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->GroupingSeparator:I

    const/4 v2, 0x4

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->PatternSeparator:I

    const/4 v2, 0x5

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->Percent:I

    .line 60
    const/4 v2, 0x6

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->PerMill:I

    const/4 v2, 0x7

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->Exponent:I

    const/16 v2, 0x8

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->MonetaryDecimalSeparator:I

    .line 61
    const/16 v2, 0x9

    iput v2, p0, Ljava/text/DecimalFormatSymbols;->MinusSign:I

    .line 94
    invoke-static {p1}, Ljava/text/Format;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 95
    .local v0, bundle:Ljava/util/ResourceBundle;
    const-string v2, "DecimalPatternChars"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    .line 96
    const-string v2, "Infinity"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 97
    const-string v2, "NaN"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 100
    :try_start_45
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 101
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_5b} :catch_5c

    .line 108
    :goto_5b
    return-void

    .line 103
    :catch_5c
    move-exception v2

    move-object v1, v2

    .line 104
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 105
    const-string v2, "CurrencySymbol"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 106
    const-string v2, "IntCurrencySymbol"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    goto :goto_5b
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x45

    const/16 v5, 0x2e

    const-string v4, ""

    .line 562
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 563
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const/16 v2, 0xa

    new-array v2, v2, [C

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    .line 564
    const-string v2, "currencySymbol"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 565
    const-string v2, "decimalSeparator"

    invoke-virtual {v1, v2, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 566
    const-string v2, "digit"

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 567
    const-string v2, "groupingSeparator"

    const/16 v3, 0x2c

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 568
    const-string v2, "infinity"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 569
    const-string v2, "intlCurrencySymbol"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 570
    const-string v2, "minusSign"

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 571
    const-string v2, "NaN"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 572
    const-string v2, "patternSeparator"

    const/16 v3, 0x3b

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 573
    const-string v2, "percent"

    const/16 v3, 0x25

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 574
    const-string v2, "perMill"

    const/16 v3, 0x2030

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 575
    const-string v2, "zeroDigit"

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 576
    const-string v2, "locale"

    invoke-virtual {v1, v2, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 577
    const-string v2, "serialVersionOnStream"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_bd

    .line 578
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 579
    invoke-virtual {p0, v6}, Ljava/text/DecimalFormatSymbols;->setExponential(C)V

    .line 586
    :goto_b4
    :try_start_b4
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b4 .. :try_end_bc} :catch_d0

    .line 590
    :goto_bc
    return-void

    .line 581
    :cond_bd
    const-string v2, "monetarySeparator"

    invoke-virtual {v1, v2, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 582
    const-string v2, "exponential"

    invoke-virtual {v1, v2, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setExponential(C)V

    goto :goto_b4

    .line 587
    :catch_d0
    move-exception v2

    move-object v0, v2

    .line 588
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_bc
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
    .line 540
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 541
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    const-string v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 543
    const-string v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 544
    const-string v1, "exponential"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getExponential()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 545
    const-string v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 546
    const-string v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    const-string v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    const-string v1, "minusSign"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 549
    const-string v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 550
    const-string v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    const-string v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 552
    const-string v1, "percent"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 553
    const-string v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 554
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 555
    const-string v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 556
    const-string v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 558
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 122
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    .line 123
    .local v1, symbols:Ljava/text/DecimalFormatSymbols;
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    invoke-virtual {v2}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [C

    iput-object p0, v1, Ljava/text/DecimalFormatSymbols;->patternChars:[C
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v2, v1

    .line 126
    .end local v1           #symbols:Ljava/text/DecimalFormatSymbols;
    :goto_11
    return-object v2

    .line 125
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 126
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 151
    :goto_5
    return v2

    .line 147
    :cond_6
    instance-of v2, p1, Ljava/text/DecimalFormatSymbols;

    if-nez v2, :cond_c

    move v2, v4

    .line 148
    goto :goto_5

    .line 150
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    move-object v1, v0

    .line 151
    .local v1, obj:Ljava/text/DecimalFormatSymbols;
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v5

    goto :goto_5

    :cond_44
    move v2, v4

    goto :goto_5
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public getDigit()C
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x1

    aget-char v0, v0, v1

    return v0
.end method

.method getExponential()C
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x7

    aget-char v0, v0, v1

    return v0
.end method

.method public getGroupingSeparator()C
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x3

    aget-char v0, v0, v1

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMinusSign()C
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/16 v1, 0x9

    aget-char v0, v0, v1

    return v0
.end method

.method public getMonetaryDecimalSeparator()C
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/16 v1, 0x8

    aget-char v0, v0, v1

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternSeparator()C
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x4

    aget-char v0, v0, v1

    return v0
.end method

.method public getPerMill()C
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x6

    aget-char v0, v0, v1

    return v0
.end method

.method public getPercent()C
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x5

    aget-char v0, v0, v1

    return v0
.end method

.method public getZeroDigit()C
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 318
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 3
    .parameter "currency"

    .prologue
    .line 337
    if-nez p1, :cond_8

    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 340
    :cond_8
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne p1, v0, :cond_d

    .line 346
    :goto_c
    return-void

    .line 343
    :cond_d
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 344
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_c
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 388
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setDecimalSeparator(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 399
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x2

    aput-char p1, v0, v1

    .line 400
    return-void
.end method

.method public setDigit(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 410
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x1

    aput-char p1, v0, v1

    .line 411
    return-void
.end method

.method setExponential(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 518
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x7

    aput-char p1, v0, v1

    .line 519
    return-void
.end method

.method public setGroupingSeparator(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 421
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x3

    aput-char p1, v0, v1

    .line 422
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 432
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 361
    if-nez p1, :cond_8

    .line 362
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 363
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 378
    :cond_7
    :goto_7
    return-void

    .line 367
    :cond_8
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 372
    :try_start_10
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 373
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_20} :catch_23

    .line 377
    :goto_20
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    goto :goto_7

    .line 374
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 375
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_20
.end method

.method public setMinusSign(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 443
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/16 v1, 0x9

    aput-char p1, v0, v1

    .line 444
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 455
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/16 v1, 0x8

    aput-char p1, v0, v1

    .line 456
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 466
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setPatternSeparator(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 478
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x4

    aput-char p1, v0, v1

    .line 479
    return-void
.end method

.method public setPerMill(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 500
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x6

    aput-char p1, v0, v1

    .line 501
    return-void
.end method

.method public setPercent(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 489
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x5

    aput-char p1, v0, v1

    .line 490
    return-void
.end method

.method public setZeroDigit(C)V
    .registers 4
    .parameter "value"

    .prologue
    .line 511
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->patternChars:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 512
    return-void
.end method
