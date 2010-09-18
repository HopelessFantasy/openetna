.class final enum Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;
.super Ljava/lang/Enum;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/text/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UNumberFormatSymbol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_DECIMAL_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_EXPONENTIAL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_FORMAT_SYMBOL_COUNT:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_INFINITY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_MINUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_MONETARY_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_NAN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_PAD_ESCAPE_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_PATTERN_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_PERCENT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_PERMILL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_PLUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_SIGNIFICANT_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

.field public static final enum UNUM_ZERO_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_DECIMAL_SEPARATOR_SYMBOL"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DECIMAL_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 26
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_GROUPING_SEPARATOR_SYMBOL"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 27
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_PATTERN_SEPARATOR_SYMBOL"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PATTERN_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 28
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_PERCENT_SYMBOL"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERCENT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 29
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_ZERO_DIGIT_SYMBOL"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_ZERO_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 30
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_DIGIT_SYMBOL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 31
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_MINUS_SIGN_SYMBOL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MINUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 32
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_PLUS_SIGN_SYMBOL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PLUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 33
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_CURRENCY_SYMBOL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 34
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_INTL_CURRENCY_SYMBOL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 35
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_MONETARY_SEPARATOR_SYMBOL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 36
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_EXPONENTIAL_SYMBOL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_EXPONENTIAL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 37
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_PERMILL_SYMBOL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERMILL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 38
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_PAD_ESCAPE_SYMBOL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PAD_ESCAPE_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 39
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_INFINITY_SYMBOL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INFINITY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 40
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_NAN_SYMBOL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_NAN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 41
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_SIGNIFICANT_DIGIT_SYMBOL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_SIGNIFICANT_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 42
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 43
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    const-string v1, "UNUM_FORMAT_SYMBOL_COUNT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_FORMAT_SYMBOL_COUNT:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    .line 24
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DECIMAL_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PATTERN_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERCENT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_ZERO_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MINUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PLUS_SIGN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INTL_CURRENCY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_EXPONENTIAL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PERMILL_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_PAD_ESCAPE_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_INFINITY_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_NAN_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_SIGNIFICANT_DIGIT_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_MONETARY_GROUPING_SEPARATOR_SYMBOL:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->UNUM_FORMAT_SYMBOL_COUNT:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->$VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;
    .registers 2
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    return-object p0
.end method

.method public static final values()[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->$VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    invoke-virtual {v0}, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatSymbol;

    return-object v0
.end method
