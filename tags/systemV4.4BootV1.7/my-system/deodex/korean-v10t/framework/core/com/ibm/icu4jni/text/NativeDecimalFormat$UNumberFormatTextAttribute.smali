.class final enum Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;
.super Ljava/lang/Enum;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/text/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UNumberFormatTextAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_CURRENCY_CODE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_DEFAULT_RULESET:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_NEGATIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_NEGATIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_PADDING_CHARACTER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_POSITIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_POSITIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

.field public static final enum UNUM_PUBLIC_RULESETS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_POSITIVE_PREFIX"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 71
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_POSITIVE_SUFFIX"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 72
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_NEGATIVE_PREFIX"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 73
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_NEGATIVE_SUFFIX"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 74
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_PADDING_CHARACTER"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_PADDING_CHARACTER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 75
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_CURRENCY_CODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_CURRENCY_CODE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 76
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_DEFAULT_RULESET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_DEFAULT_RULESET:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 77
    new-instance v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    const-string v1, "UNUM_PUBLIC_RULESETS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_PUBLIC_RULESETS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_POSITIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_PREFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_NEGATIVE_SUFFIX:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_PADDING_CHARACTER:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_CURRENCY_CODE:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_DEFAULT_RULESET:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->UNUM_PUBLIC_RULESETS:Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->$VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;
    .registers 2
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    return-object p0
.end method

.method public static final values()[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->$VALUES:[Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    invoke-virtual {v0}, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu4jni/text/NativeDecimalFormat$UNumberFormatTextAttribute;

    return-object v0
.end method
