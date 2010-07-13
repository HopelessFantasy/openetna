.class final enum Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;
.super Ljava/lang/Enum;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/text/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UNumberFormatAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_DECIMAL_ALWAYS_SHOWN:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_FORMAT_WIDTH:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_GROUPING_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_LENIENT_PARSE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MAX_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MAX_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MAX_SIGNIFICANT_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MIN_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MIN_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MIN_SIGNIFICANT_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_MULTIPLIER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_PADDING_POSITION:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_PARSE_INT_ONLY:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_ROUNDING_INCREMENT:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_ROUNDING_MODE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_SECONDARY_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

.field public static final enum UNUM_SIGNIFICANT_DIGITS_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_PARSE_INT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_PARSE_INT_ONLY:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 48
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_GROUPING_USED"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 49
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_DECIMAL_ALWAYS_SHOWN"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_DECIMAL_ALWAYS_SHOWN:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 50
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MAX_INTEGER_DIGITS"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 51
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MIN_INTEGER_DIGITS"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 52
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_INTEGER_DIGITS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 53
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MAX_FRACTION_DIGITS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 54
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MIN_FRACTION_DIGITS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 55
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_FRACTION_DIGITS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 56
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MULTIPLIER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MULTIPLIER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 57
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_GROUPING_SIZE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 58
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_ROUNDING_MODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_ROUNDING_MODE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 59
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_ROUNDING_INCREMENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_ROUNDING_INCREMENT:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 60
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_FORMAT_WIDTH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_FORMAT_WIDTH:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 61
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_PADDING_POSITION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_PADDING_POSITION:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 62
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_SECONDARY_GROUPING_SIZE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_SECONDARY_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 63
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_SIGNIFICANT_DIGITS_USED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_SIGNIFICANT_DIGITS_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 64
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MIN_SIGNIFICANT_DIGITS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_SIGNIFICANT_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 65
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_MAX_SIGNIFICANT_DIGITS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_SIGNIFICANT_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 66
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    const-string v1, "UNUM_LENIENT_PARSE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_LENIENT_PARSE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    .line 46
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_PARSE_INT_ONLY:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_DECIMAL_ALWAYS_SHOWN:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_INTEGER_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_FRACTION_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MULTIPLIER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_ROUNDING_MODE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_ROUNDING_INCREMENT:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_FORMAT_WIDTH:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_PADDING_POSITION:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_SECONDARY_GROUPING_SIZE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_SIGNIFICANT_DIGITS_USED:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MIN_SIGNIFICANT_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_MAX_SIGNIFICANT_DIGITS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->UNUM_LENIENT_PARSE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->$VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;
    .registers 2
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    return-object p0
.end method

.method public static final values()[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->$VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    invoke-virtual {v0}, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatAttribute;

    return-object v0
.end method
