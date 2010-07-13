.class public final enum Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;
.super Ljava/lang/Enum;
.source "RuleBasedNumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/text/RuleBasedNumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RBNFType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

.field public static final enum DURATION:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

.field public static final enum ORDINAL:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

.field public static final enum SPELLOUT:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    const-string v1, "SPELLOUT"

    invoke-direct {v0, v1, v2, v2}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->SPELLOUT:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    .line 43
    new-instance v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    const-string v1, "ORDINAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->ORDINAL:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    .line 49
    new-instance v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v4, v4}, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->DURATION:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    sget-object v1, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->SPELLOUT:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->ORDINAL:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->DURATION:Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->$VALUES:[Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->type:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;
    .registers 2
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    return-object p0
.end method

.method public static final values()[Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->$VALUES:[Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    invoke-virtual {v0}, [Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;

    return-object v0
.end method


# virtual methods
.method getType()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/ibm/icu4jni/text/RuleBasedNumberFormat$RBNFType;->type:I

    return v0
.end method
