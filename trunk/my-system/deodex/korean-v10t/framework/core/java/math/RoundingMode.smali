.class public final enum Ljava/math/RoundingMode;
.super Ljava/lang/Enum;
.source "RoundingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/math/RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/math/RoundingMode;

.field public static final enum CEILING:Ljava/math/RoundingMode;

.field public static final enum DOWN:Ljava/math/RoundingMode;

.field public static final enum FLOOR:Ljava/math/RoundingMode;

.field public static final enum HALF_DOWN:Ljava/math/RoundingMode;

.field public static final enum HALF_EVEN:Ljava/math/RoundingMode;

.field public static final enum HALF_UP:Ljava/math/RoundingMode;

.field public static final enum UNNECESSARY:Ljava/math/RoundingMode;

.field public static final enum UP:Ljava/math/RoundingMode;


# instance fields
.field private final bigDecimalRM:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4, v4}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 47
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5, v5}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 58
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "CEILING"

    invoke-direct {v0, v1, v6, v6}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 69
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "FLOOR"

    invoke-direct {v0, v1, v7, v7}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 77
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_UP"

    invoke-direct {v0, v1, v8, v8}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 85
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_DOWN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 93
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "HALF_EVEN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 102
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UNNECESSARY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/math/RoundingMode;

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    aput-object v1, v0, v4

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    aput-object v1, v0, v5

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    aput-object v1, v0, v6

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    aput-object v1, v0, v7

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    aput-object v2, v0, v1

    sput-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "rm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Ljava/math/RoundingMode;->bigDecimalRM:I

    .line 110
    return-void
.end method

.method public static valueOf(I)Ljava/math/RoundingMode;
    .registers 3
    .parameter "mode"

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_28

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "math.00"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_f
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 142
    :goto_11
    return-object v0

    .line 130
    :pswitch_12
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_11

    .line 132
    :pswitch_15
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_11

    .line 134
    :pswitch_18
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    goto :goto_11

    .line 136
    :pswitch_1b
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_11

    .line 138
    :pswitch_1e
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    goto :goto_11

    .line 140
    :pswitch_21
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    goto :goto_11

    .line 142
    :pswitch_24
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    goto :goto_11

    .line 126
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_12
        :pswitch_f
        :pswitch_15
        :pswitch_1e
        :pswitch_18
        :pswitch_1b
        :pswitch_21
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Ljava/math/RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/math/RoundingMode;

    return-object p0
.end method

.method public static final values()[Ljava/math/RoundingMode;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    invoke-virtual {v0}, [Ljava/math/RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/RoundingMode;

    return-object v0
.end method
