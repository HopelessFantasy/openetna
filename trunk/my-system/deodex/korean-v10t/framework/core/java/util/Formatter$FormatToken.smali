.class Ljava/util/Formatter$FormatToken;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatToken"
.end annotation


# static fields
.field static final DEFAULT_PRECISION:I = 0x6

.field static final FLAGS_UNSET:I = 0x0

.field private static final FLAGT_TYPE_COUNT:I = 0x6

.field static final FLAG_ADD:I = 0x4

.field static final FLAG_COMMA:I = 0x20

.field static final FLAG_MINUS:I = 0x1

.field static final FLAG_PARENTHESIS:I = 0x40

.field static final FLAG_SHARP:I = 0x2

.field static final FLAG_SPACE:I = 0x8

.field static final FLAG_ZERO:I = 0x10

.field static final LAST_ARGUMENT_INDEX:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field private argIndex:I

.field private conversionType:C

.field private dateSuffix:C

.field private flags:I

.field private formatStringStartIndex:I

.field private plainText:Ljava/lang/String;

.field private precision:I

.field private strFlags:Ljava/lang/StringBuilder;

.field private width:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iput v1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    .line 1035
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Formatter$FormatToken;->flags:I

    .line 1037
    iput v1, p0, Ljava/util/Formatter$FormatToken;->width:I

    .line 1039
    iput v1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    .line 1045
    const v0, 0xffff

    iput-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Formatter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/util/Formatter$FormatToken;-><init>()V

    return-void
.end method


# virtual methods
.method getArgIndex()I
    .registers 2

    .prologue
    .line 1060
    iget v0, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    return v0
.end method

.method getConversionType()C
    .registers 2

    .prologue
    .line 1159
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    return v0
.end method

.method getDateSuffix()C
    .registers 2

    .prologue
    .line 1167
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    return v0
.end method

.method getFlags()I
    .registers 2

    .prologue
    .line 1096
    iget v0, p0, Ljava/util/Formatter$FormatToken;->flags:I

    return v0
.end method

.method getFormatStringStartIndex()I
    .registers 2

    .prologue
    .line 1151
    iget v0, p0, Ljava/util/Formatter$FormatToken;->formatStringStartIndex:I

    return v0
.end method

.method getPlainText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->plainText:Ljava/lang/String;

    return-object v0
.end method

.method getPrecision()I
    .registers 2

    .prologue
    .line 1084
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    return v0
.end method

.method getStrFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1092
    iget-object v0, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 1076
    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    return v0
.end method

.method isFlagSet(I)Z
    .registers 3
    .parameter "flag"

    .prologue
    .line 1056
    iget v0, p0, Ljava/util/Formatter$FormatToken;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isPrecisionSet()Z
    .registers 3

    .prologue
    .line 1048
    iget v0, p0, Ljava/util/Formatter$FormatToken;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isWidthSet()Z
    .registers 3

    .prologue
    .line 1052
    iget v0, p0, Ljava/util/Formatter$FormatToken;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method requireArgument()Z
    .registers 3

    .prologue
    .line 1175
    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x25

    if-eq v0, v1, :cond_e

    iget-char v0, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setArgIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 1064
    iput p1, p0, Ljava/util/Formatter$FormatToken;->argIndex:I

    .line 1065
    return-void
.end method

.method setConversionType(C)V
    .registers 2
    .parameter "c"

    .prologue
    .line 1163
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->conversionType:C

    .line 1164
    return-void
.end method

.method setDateSuffix(C)V
    .registers 2
    .parameter "c"

    .prologue
    .line 1171
    iput-char p1, p0, Ljava/util/Formatter$FormatToken;->dateSuffix:C

    .line 1172
    return-void
.end method

.method setFlag(C)Z
    .registers 5
    .parameter "c"

    .prologue
    .line 1109
    sparse-switch p1, :sswitch_data_32

    .line 1139
    const/4 v1, 0x0

    .line 1146
    :goto_4
    return v1

    .line 1111
    :sswitch_5
    const/4 v0, 0x1

    .line 1141
    .local v0, newFlag:I
    :goto_6
    iget v1, p0, Ljava/util/Formatter$FormatToken;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_25

    .line 1142
    new-instance v1, Ljava/util/DuplicateFormatFlagsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1115
    .end local v0           #newFlag:I
    :sswitch_15
    const/4 v0, 0x2

    .line 1116
    .restart local v0       #newFlag:I
    goto :goto_6

    .line 1119
    .end local v0           #newFlag:I
    :sswitch_17
    const/4 v0, 0x4

    .line 1120
    .restart local v0       #newFlag:I
    goto :goto_6

    .line 1123
    .end local v0           #newFlag:I
    :sswitch_19
    const/16 v0, 0x8

    .line 1124
    .restart local v0       #newFlag:I
    goto :goto_6

    .line 1127
    .end local v0           #newFlag:I
    :sswitch_1c
    const/16 v0, 0x10

    .line 1128
    .restart local v0       #newFlag:I
    goto :goto_6

    .line 1131
    .end local v0           #newFlag:I
    :sswitch_1f
    const/16 v0, 0x20

    .line 1132
    .restart local v0       #newFlag:I
    goto :goto_6

    .line 1135
    .end local v0           #newFlag:I
    :sswitch_22
    const/16 v0, 0x40

    .line 1136
    .restart local v0       #newFlag:I
    goto :goto_6

    .line 1144
    :cond_25
    iget v1, p0, Ljava/util/Formatter$FormatToken;->flags:I

    or-int/2addr v1, v0

    iput v1, p0, Ljava/util/Formatter$FormatToken;->flags:I

    .line 1145
    iget-object v1, p0, Ljava/util/Formatter$FormatToken;->strFlags:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1146
    const/4 v1, 0x1

    goto :goto_4

    .line 1109
    nop

    :sswitch_data_32
    .sparse-switch
        0x20 -> :sswitch_19
        0x23 -> :sswitch_15
        0x28 -> :sswitch_22
        0x2b -> :sswitch_17
        0x2c -> :sswitch_1f
        0x2d -> :sswitch_5
        0x30 -> :sswitch_1c
    .end sparse-switch
.end method

.method setFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 1100
    iput p1, p0, Ljava/util/Formatter$FormatToken;->flags:I

    .line 1101
    return-void
.end method

.method setFormatStringStartIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 1155
    iput p1, p0, Ljava/util/Formatter$FormatToken;->formatStringStartIndex:I

    .line 1156
    return-void
.end method

.method setPlainText(Ljava/lang/String;)V
    .registers 2
    .parameter "plainText"

    .prologue
    .line 1072
    iput-object p1, p0, Ljava/util/Formatter$FormatToken;->plainText:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method setPrecision(I)V
    .registers 2
    .parameter "precise"

    .prologue
    .line 1088
    iput p1, p0, Ljava/util/Formatter$FormatToken;->precision:I

    .line 1089
    return-void
.end method

.method setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 1080
    iput p1, p0, Ljava/util/Formatter$FormatToken;->width:I

    .line 1081
    return-void
.end method
