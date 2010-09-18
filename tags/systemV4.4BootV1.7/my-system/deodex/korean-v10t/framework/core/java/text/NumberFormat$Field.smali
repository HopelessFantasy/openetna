.class public Ljava/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Ljava/text/NumberFormat$Field; = null

.field public static final DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field; = null

.field public static final EXPONENT:Ljava/text/NumberFormat$Field; = null

.field public static final EXPONENT_SIGN:Ljava/text/NumberFormat$Field; = null

.field public static final EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field; = null

.field public static final FRACTION:Ljava/text/NumberFormat$Field; = null

.field public static final GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field; = null

.field public static final INTEGER:Ljava/text/NumberFormat$Field; = null

.field public static final PERCENT:Ljava/text/NumberFormat$Field; = null

.field public static final PERMILLE:Ljava/text/NumberFormat$Field; = null

.field public static final SIGN:Ljava/text/NumberFormat$Field; = null

.field private static final serialVersionUID:J = 0x6802a038193ff37aL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 839
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    .line 846
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    .line 853
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    .line 860
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    .line 867
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    .line 874
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    .line 881
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 889
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    .line 897
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    .line 904
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "per mille"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    .line 911
    new-instance v0, Ljava/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Ljava/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "fieldName"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 923
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 935
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 936
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    .line 966
    :goto_a
    return-object v0

    .line 938
    :cond_b
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 939
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 941
    :cond_16
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 942
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 944
    :cond_21
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 945
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 947
    :cond_2c
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 948
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 950
    :cond_37
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 951
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 953
    :cond_42
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 954
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 956
    :cond_4d
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 957
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 959
    :cond_58
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 960
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 962
    :cond_63
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 963
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 965
    :cond_6e
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {p0, v0}, Ljava/text/NumberFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 966
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    goto :goto_a

    .line 969
    :cond_79
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "text.02"

    invoke-static {v1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
