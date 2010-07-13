.class public Lcom/android/providers/downloads/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field public static final LOCALE_CO_BE:I = 0x4

.field public static final LOCALE_CO_CA:I = 0x7

.field public static final LOCALE_CO_CH:I = 0x5

.field public static final LOCALE_CO_ES:I = 0x3

.field public static final LOCALE_CO_FR:I = 0x2

.field public static final LOCALE_CO_GB:I = 0x1

.field public static final LOCALE_CO_KR:I = 0x6

.field public static final LOCALE_CO_NONE:I = -0x1

.field public static final LOCALE_OP_ATT:I = 0x1

.field public static final LOCALE_OP_CLARO:I = 0x2

.field public static final LOCALE_OP_CMCC:I = 0x3

.field public static final LOCALE_OP_CUGSM:I = 0x4

.field public static final LOCALE_OP_H3G:I = 0x5

.field public static final LOCALE_OP_MOV:I = 0x6

.field public static final LOCALE_OP_NONE:I = -0x1

.field public static final LOCALE_OP_O2:I = 0x9

.field public static final LOCALE_OP_OPEN:I = 0x8

.field public static final LOCALE_OP_ORG:I = 0x7

.field public static final LOCALE_OP_ROGERS:I = 0x12

.field public static final LOCALE_OP_SMART:I = 0xa

.field public static final LOCALE_OP_TIM:I = 0xb

.field public static final LOCALE_OP_TME:I = 0xc

.field public static final LOCALE_OP_TMN:I = 0xe

.field public static final LOCALE_OP_TMO:I = 0xd

.field public static final LOCALE_OP_TNR:I = 0xf

.field public static final LOCALE_OP_VDF:I = 0x10

.field public static final LOCALE_OP_VIVO:I = 0x11

.field private static final LOG_TAG:Ljava/lang/String; = "browser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountry()I
    .registers 5

    .prologue
    .line 72
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, mccStr:Ljava/lang/String;
    const/4 v0, -0x1

    .line 75
    .local v0, mcc:I
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ !!! Country = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 79
    const/4 v0, 0x1

    .line 95
    :goto_26
    return v0

    .line 80
    :cond_27
    const-string v2, "FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 81
    const/4 v0, 0x2

    goto :goto_26

    .line 82
    :cond_31
    const-string v2, "ES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 83
    const/4 v0, 0x3

    goto :goto_26

    .line 84
    :cond_3b
    const-string v2, "BE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 85
    const/4 v0, 0x4

    goto :goto_26

    .line 86
    :cond_45
    const-string v2, "CH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 87
    const/4 v0, 0x5

    goto :goto_26

    .line 88
    :cond_4f
    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 89
    const/4 v0, 0x6

    goto :goto_26

    .line 90
    :cond_59
    const-string v2, "CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 91
    const/4 v0, 0x7

    goto :goto_26

    .line 93
    :cond_63
    const/4 v0, -0x1

    goto :goto_26
.end method

.method public static getOperator()I
    .registers 5

    .prologue
    .line 42
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, opStr:Ljava/lang/String;
    const/4 v1, -0x1

    .line 45
    .local v1, operator:I
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ !!! Operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v2, "ORG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 49
    const/4 v1, 0x7

    .line 67
    :goto_26
    return v1

    .line 50
    :cond_27
    const-string v2, "VDF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 51
    const/16 v1, 0x10

    goto :goto_26

    .line 52
    :cond_32
    const-string v2, "TMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 53
    const/16 v1, 0xd

    goto :goto_26

    .line 54
    :cond_3d
    const-string v2, "H3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 55
    const/4 v1, 0x5

    goto :goto_26

    .line 56
    :cond_47
    const-string v2, "TIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 57
    const/16 v1, 0xb

    goto :goto_26

    .line 58
    :cond_52
    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 59
    const/4 v1, 0x1

    goto :goto_26

    .line 60
    :cond_5c
    const-string v2, "RGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 61
    const/16 v1, 0x12

    goto :goto_26

    .line 62
    :cond_67
    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 63
    const/16 v1, 0x8

    goto :goto_26

    .line 65
    :cond_72
    const/16 v1, 0x8

    goto :goto_26
.end method
