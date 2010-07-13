.class public final Lcom/ibm/icu4jni/text/CollationAttribute;
.super Ljava/lang/Object;
.source "CollationAttribute.java"


# static fields
.field public static final ALTERNATE_HANDLING:I = 0x1

.field public static final ATTRIBUTE_COUNT:I = 0x6

.field public static final CASE_FIRST:I = 0x2

.field public static final CASE_LEVEL:I = 0x3

.field public static final FRENCH_COLLATION:I = 0x0

.field public static final NORMALIZATION_MODE:I = 0x4

.field public static final STRENGTH:I = 0x5

.field public static final VALUE_ATTRIBUTE_VALUE_COUNT:I = 0x1d

.field public static final VALUE_DEFAULT:I = -0x1

.field public static final VALUE_DEFAULT_STRENGTH:I = 0x2

.field public static final VALUE_IDENTICAL:I = 0xf

.field public static final VALUE_LOWER_FIRST:I = 0x18

.field public static final VALUE_NON_IGNORABLE:I = 0x15

.field public static final VALUE_OFF:I = 0x10

.field public static final VALUE_ON:I = 0x11

.field public static final VALUE_ON_WITHOUT_HANGUL:I = 0x1c

.field public static final VALUE_PRIMARY:I = 0x0

.field public static final VALUE_QUATERNARY:I = 0x3

.field public static final VALUE_SECONDARY:I = 0x1

.field public static final VALUE_SHIFTED:I = 0x14

.field public static final VALUE_TERTIARY:I = 0x2

.field public static final VALUE_UPPER_FIRST:I = 0x19


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAttribute(II)Z
    .registers 7
    .parameter "type"
    .parameter "value"

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    move v0, v1

    .line 212
    :goto_a
    return v0

    .line 187
    :cond_b
    packed-switch p0, :pswitch_data_42

    :cond_e
    :goto_e
    move v0, v2

    .line 212
    goto :goto_a

    .line 190
    :pswitch_10
    if-lt p1, v3, :cond_e

    if-gt p1, v4, :cond_e

    move v0, v1

    .line 191
    goto :goto_a

    .line 194
    :pswitch_16
    const/16 v0, 0x14

    if-lt p1, v0, :cond_e

    const/16 v0, 0x15

    if-gt p1, v0, :cond_e

    move v0, v1

    .line 196
    goto :goto_a

    .line 199
    :pswitch_20
    const/16 v0, 0x18

    if-lt p1, v0, :cond_e

    const/16 v0, 0x19

    if-gt p1, v0, :cond_e

    move v0, v1

    .line 201
    goto :goto_a

    .line 204
    :pswitch_2a
    if-eq p1, v4, :cond_2e

    if-gt p1, v3, :cond_30

    :cond_2e
    move v0, v1

    goto :goto_a

    :cond_30
    move v0, v2

    goto :goto_a

    .line 207
    :pswitch_32
    if-eq p1, v3, :cond_3a

    if-eq p1, v4, :cond_3a

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_3c

    :cond_3a
    move v0, v1

    goto :goto_a

    :cond_3c
    move v0, v2

    goto :goto_a

    .line 210
    :pswitch_3e
    invoke-static {p1}, Lcom/ibm/icu4jni/text/CollationAttribute;->checkStrength(I)Z

    goto :goto_e

    .line 187
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_10
        :pswitch_16
        :pswitch_20
        :pswitch_2a
        :pswitch_32
        :pswitch_3e
    .end packed-switch
.end method

.method static checkNormalization(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 168
    const/16 v0, 0x11

    if-eq p0, v0, :cond_e

    const/16 v0, 0x10

    if-eq p0, v0, :cond_e

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_e

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static checkStrength(I)Z
    .registers 2
    .parameter "strength"

    .prologue
    .line 143
    if-ltz p0, :cond_9

    const/4 v0, 0x3

    if-le p0, v0, :cond_b

    const/16 v0, 0xf

    if-eq p0, v0, :cond_b

    .line 145
    :cond_9
    const/4 v0, 0x0

    .line 146
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method static checkType(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 156
    if-ltz p0, :cond_5

    const/4 v0, 0x5

    if-le p0, v0, :cond_7

    .line 157
    :cond_5
    const/4 v0, 0x0

    .line 158
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method
