.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final CURRENT_SERIAL_VERTION:I = 0x3

.field private static final NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient dform:Lcom/ibm/icu4jni/text/DecimalFormat;

.field private transient icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

.field private transient parseBigDecimal:Z

.field private transient serialVersionOnStream:I

.field private transient symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-class v5, Ljava/lang/String;

    .line 964
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    .line 1290
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positivePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "positiveSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativePrefix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negativeSuffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "posSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negPrefixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "negSuffixPattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "multiplier"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingSize"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingUsed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "decimalSeparatorAlwaysShown"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parseBigDecimal"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "symbols"

    const-class v4, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useExponentialNotation"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minExponentDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 585
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Number"

    invoke-static {v0, v1}, Ljava/text/DecimalFormat;->getPattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 599
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .registers 6
    .parameter "pattern"
    .parameter "value"

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 566
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/DecimalFormat;->parseBigDecimal:Z

    .line 576
    const/4 v1, 0x3

    iput v1, p0, Ljava/text/DecimalFormat;->serialVersionOnStream:I

    .line 615
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 616
    const-string v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, v1, v2}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 617
    .local v0, locale:Ljava/util/Locale;
    new-instance v1, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-direct {v1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    .line 618
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, v1, v2}, Ljava/text/DecimalFormat;->copySymbols(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;Ljava/text/DecimalFormatSymbols;)V

    .line 620
    new-instance v1, Lcom/ibm/icu4jni/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-direct {v1, p1, v2}, Lcom/ibm/icu4jni/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    .line 622
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 623
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 624
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 625
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 626
    return-void
.end method

.method private copySymbols(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;Ljava/text/DecimalFormatSymbols;)V
    .registers 4
    .parameter "icu"
    .parameter "dfs"

    .prologue
    .line 1477
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 1480
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 1482
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setDigit(C)V

    .line 1483
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1484
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 1489
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 1490
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 1492
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setPercent(C)V

    .line 1493
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 1494
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 1495
    return-void
.end method

.method private getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "fieldName"
    .parameter "target"

    .prologue
    .line 1529
    new-instance v1, Ljava/text/DecimalFormat$2;

    invoke-direct {v1, p0, p2, p1}, Ljava/text/DecimalFormat$2;-><init>(Ljava/text/DecimalFormat;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 1545
    .local v0, value:Ljava/lang/Object;
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 30
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v5

    .line 1383
    .local v5, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v25, "positivePrefix"

    const-string v26, ""

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1384
    .local v22, positivePrefix:Ljava/lang/String;
    const-string v25, "positiveSuffix"

    const-string v26, ""

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1385
    .local v23, positiveSuffix:Ljava/lang/String;
    const-string v25, "negativePrefix"

    const-string v26, "-"

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1386
    .local v17, negativePrefix:Ljava/lang/String;
    const-string v25, "negativeSuffix"

    const-string v26, ""

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1388
    .local v18, negativeSuffix:Ljava/lang/String;
    const-string v25, "posPrefixPattern"

    const-string v26, ""

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1389
    .local v20, posPrefixPattern:Ljava/lang/String;
    const-string v25, "posSuffixPattern"

    const-string v26, ""

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1390
    .local v21, posSuffixPattern:Ljava/lang/String;
    const-string v25, "negPrefixPattern"

    const-string v26, "-"

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1391
    .local v15, negPrefixPattern:Ljava/lang/String;
    const-string v25, "negSuffixPattern"

    const-string v26, ""

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1393
    .local v16, negSuffixPattern:Ljava/lang/String;
    const-string v25, "multiplier"

    const/16 v26, 0x1

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v14

    .line 1394
    .local v14, multiplier:I
    const-string v25, "groupingSize"

    const/16 v26, 0x3

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    .line 1396
    .local v6, groupingSize:B
    const-string v25, "groupingUsed"

    const/16 v26, 0x1

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v7

    .line 1398
    .local v7, groupingUsed:Z
    const-string v25, "decimalSeparatorAlwaysShown"

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    .line 1400
    .local v4, decimalSeparatorAlwaysShown:Z
    const-string v25, "parseBigDecimal"

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v19

    .line 1401
    .local v19, parseBigDecimal:Z
    const-string v25, "symbols"

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/text/DecimalFormatSymbols;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 1403
    const-string v25, "useExponentialNotation"

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v24

    .line 1405
    .local v24, useExponentialNotation:Z
    const-string v25, "minExponentDigits"

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v11

    .line 1407
    .local v11, minExponentDigits:B
    const-string v25, "maximumIntegerDigits"

    const/16 v26, 0x135

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v10

    .line 1408
    .local v10, maximumIntegerDigits:I
    const-string v25, "minimumIntegerDigits"

    const/16 v26, 0x135

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v13

    .line 1409
    .local v13, minimumIntegerDigits:I
    const-string v25, "maximumFractionDigits"

    const/16 v26, 0x154

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v9

    .line 1410
    .local v9, maximumFractionDigits:I
    const-string v25, "minimumFractionDigits"

    const/16 v26, 0x154

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v12

    .line 1411
    .local v12, minimumFractionDigits:I
    const-string v25, "serialVersionOnStream"

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/DecimalFormat;->serialVersionOnStream:I

    .line 1413
    const-string v25, "locale"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Locale;

    .line 1419
    .local v8, locale:Ljava/util/Locale;
    new-instance v25, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;->copySymbols(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;Ljava/text/DecimalFormatSymbols;)V

    .line 1421
    new-instance v25, Lcom/ibm/icu4jni/text/DecimalFormat;

    const-string v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/ibm/icu4jni/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    .line 1424
    const-string v25, "useExponentialNotation"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/Boolean;

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1426
    const-string v25, "minExponentDigits"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/Byte;

    move-object/from16 v0, v27

    move v1, v11

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1432
    const-string v25, "posPrefixPattern"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1433
    const-string v25, "posSuffixPattern"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1434
    const-string v25, "negPrefixPattern"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1435
    const-string v25, "negSuffixPattern"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMultiplier(I)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setGroupingSize(I)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1448
    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v25

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_2ce

    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v25

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_2ce

    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v25

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_2ce

    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v25

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2da

    .line 1453
    :cond_2ce
    new-instance v25, Ljava/io/InvalidObjectException;

    const-string v26, "text.09"

    invoke-static/range {v26 .. v26}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1455
    :cond_2da
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/DecimalFormat;->serialVersionOnStream:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_314

    .line 1456
    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1457
    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1458
    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1459
    invoke-super/range {p0 .. p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1461
    :cond_314
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/DecimalFormat;->serialVersionOnStream:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_337

    .line 1462
    const-string v25, "useExponentialNotation"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    move-object/from16 v26, v0

    sget-object v27, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Ljava/text/DecimalFormat;->setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    :cond_337
    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/DecimalFormat;->serialVersionOnStream:I

    .line 1466
    return-void
.end method

.method private setInternalField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "fieldName"
    .parameter "target"
    .parameter "value"

    .prologue
    .line 1505
    new-instance v0, Ljava/text/DecimalFormat$1;

    invoke-direct {v0, p0, p2, p1, p3}, Ljava/text/DecimalFormat$1;-><init>(Ljava/text/DecimalFormat;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1520
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 16
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-string v13, "posSuffixPattern"

    const-string v12, "posPrefixPattern"

    const-string v11, "negSuffixPattern"

    const-string v10, "negPrefixPattern"

    const-string v9, "minExponentDigits"

    .line 1327
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1328
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "positivePrefix"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1329
    const-string v7, "positiveSuffix"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1330
    const-string v7, "negativePrefix"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1331
    const-string v7, "negativeSuffix"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1332
    const-string v7, "posPrefixPattern"

    iget-object v7, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {p0, v12, v7}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1334
    .local v4, posPrefixPattern:Ljava/lang/String;
    const-string v7, "posPrefixPattern"

    invoke-virtual {v0, v12, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1335
    const-string v7, "posSuffixPattern"

    iget-object v7, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {p0, v13, v7}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1337
    .local v5, posSuffixPattern:Ljava/lang/String;
    const-string v7, "posSuffixPattern"

    invoke-virtual {v0, v13, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1338
    const-string v7, "negPrefixPattern"

    iget-object v7, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {p0, v10, v7}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1340
    .local v2, negPrefixPattern:Ljava/lang/String;
    const-string v7, "negPrefixPattern"

    invoke-virtual {v0, v10, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1341
    const-string v7, "negSuffixPattern"

    iget-object v7, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {p0, v11, v7}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1343
    .local v3, negSuffixPattern:Ljava/lang/String;
    const-string v7, "negSuffixPattern"

    invoke-virtual {v0, v11, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1344
    const-string v7, "multiplier"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMultiplier()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1345
    const-string v7, "groupingSize"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getGroupingSize()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1347
    const-string v7, "groupingUsed"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->isGroupingUsed()Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1349
    const-string v7, "decimalSeparatorAlwaysShown"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1351
    const-string v7, "parseBigDecimal"

    iget-boolean v8, p0, Ljava/text/DecimalFormat;->parseBigDecimal:Z

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1352
    const-string v7, "symbols"

    iget-object v8, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1353
    const-string v7, "useExponentialNotation"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {p0, v7, v8}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1355
    .local v6, useExponentialNotation:Z
    const-string v7, "useExponentialNotation"

    invoke-virtual {v0, v7, v6}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1356
    const-string v7, "minExponentDigits"

    iget-object v7, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-direct {p0, v9, v7}, Ljava/text/DecimalFormat;->getInternalField(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 1358
    .local v1, minExponentDigits:B
    const-string v7, "minExponentDigits"

    invoke-virtual {v0, v9, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1359
    const-string v7, "maximumIntegerDigits"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1360
    const-string v7, "minimumIntegerDigits"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1361
    const-string v7, "maximumFractionDigits"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1362
    const-string v7, "minimumFractionDigits"

    iget-object v8, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v8}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1363
    const-string v7, "serialVersionOnStream"

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1364
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1366
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 639
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 654
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 667
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 668
    .local v0, clone:Ljava/text/DecimalFormat;
    iget-object v1, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu4jni/text/DecimalFormat;

    iput-object v1, v0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    .line 669
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DecimalFormatSymbols;

    iput-object p0, v0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 670
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 687
    if-ne p0, p1, :cond_6

    move v2, v4

    .line 694
    :goto_5
    return v2

    .line 690
    :cond_6
    instance-of v2, p1, Ljava/text/DecimalFormat;

    if-nez v2, :cond_c

    move v2, v3

    .line 691
    goto :goto_5

    .line 693
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v1, v0

    .line 694
    .local v1, format:Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    if-nez v2, :cond_1c

    iget-object v2, v1, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    if-nez v2, :cond_1a

    move v2, v4

    goto :goto_5

    :cond_1a
    move v2, v3

    goto :goto_5

    :cond_1c
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    iget-object v3, v1, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v2, v3}, Lcom/ibm/icu4jni/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "value"
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 745
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu4jni/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "value"
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 772
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu4jni/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "number"
    .parameter "toAppendTo"
    .parameter "pos"

    .prologue
    .line 802
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_a

    .line 803
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 805
    :cond_a
    if-eqz p2, :cond_e

    if-nez p3, :cond_14

    .line 806
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 808
    :cond_14
    instance-of v0, p1, Ljava/math/BigInteger;

    if-nez v0, :cond_1c

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_23

    .line 809
    :cond_1c
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu4jni/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 811
    :goto_22
    return-object v0

    :cond_23
    invoke-super {p0, p1, p2, p3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_22
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 3
    .parameter "object"

    .prologue
    .line 715
    if-nez p1, :cond_8

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_8
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 4

    .prologue
    .line 834
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/DecimalFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v1

    .line 835
    .local v1, cur:Ljava/util/Currency;
    if-nez v1, :cond_10

    const-string v2, "XXX"

    move-object v0, v2

    .line 837
    .local v0, code:Ljava/lang/String;
    :goto_b
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    return-object v2

    .line 835
    .end local v0           #code:Ljava/lang/String;
    :cond_10
    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_b
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method public getGroupingSize()I
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMultiplier()I
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .registers 2

    .prologue
    .line 917
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .registers 2

    .prologue
    .line 1127
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .registers 2

    .prologue
    .line 930
    iget-boolean v0, p0, Ljava/text/DecimalFormat;->parseBigDecimal:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 8
    .parameter "string"
    .parameter "position"

    .prologue
    .line 992
    iget-object v2, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v2, p1, p2}, Lcom/ibm/icu4jni/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 993
    .local v1, number:Ljava/lang/Number;
    if-nez v1, :cond_a

    .line 994
    const/4 v2, 0x0

    .line 1042
    :goto_9
    return-object v2

    .line 1020
    :cond_a
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1021
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1e

    .line 1022
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_9

    .line 1024
    :cond_1e
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_40

    move-object v0, v1

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_40

    move-object v0, v1

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1027
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 1029
    :cond_40
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_4e

    .line 1030
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_4e
    move-object v2, v1

    .line 1032
    goto :goto_9

    .line 1034
    :cond_50
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-nez v2, :cond_58

    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_62

    .line 1035
    :cond_58
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_9

    .line 1039
    :cond_62
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v2

    if-eqz v2, :cond_78

    sget-object v2, Ljava/text/DecimalFormat;->NEGATIVE_ZERO_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1040
    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    goto :goto_9

    :cond_78
    move-object v2, v1

    .line 1042
    goto :goto_9
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 4
    .parameter "currency"

    .prologue
    .line 1074
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    .line 1077
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 1078
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1054
    if-eqz p1, :cond_20

    .line 1055
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 1056
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    .line 1057
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {p0, v0, v1}, Ljava/text/DecimalFormat;->copySymbols(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;Ljava/text/DecimalFormatSymbols;)V

    .line 1058
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->icuSymbols:Lcom/ibm/icu4jni/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setDecimalFormatSymbols(Lcom/ibm/icu4jni/text/DecimalFormatSymbols;)V

    .line 1060
    :cond_20
    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1090
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1091
    return-void
.end method

.method public setGroupingSize(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1103
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setGroupingSize(I)V

    .line 1104
    return-void
.end method

.method public setGroupingUsed(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1116
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1117
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1144
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1145
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1146
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1162
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1163
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1164
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1178
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1179
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1180
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1194
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1195
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1196
    return-void
.end method

.method public setMultiplier(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1207
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setMultiplier(I)V

    .line 1208
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1218
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1229
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1230
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 1264
    iput-boolean p1, p0, Ljava/text/DecimalFormat;->parseBigDecimal:Z

    .line 1265
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 948
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 949
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1240
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1251
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1252
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1286
    iget-object v0, p0, Ljava/text/DecimalFormat;->dform:Lcom/ibm/icu4jni/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
