.class public final Ljava/lang/Short;
.super Ljava/lang/Number;
.source "Short.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Short$valueOfCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:S = 0x7fffs

.field public static final MIN_VALUE:S = -0x8000s

.field public static final SIZE:I = 0x10

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x684d37133460da52L


# instance fields
.field private final value:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [S

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Short;-><init>(S)V

    .line 83
    return-void
.end method

.method public constructor <init>(S)V
    .registers 2
    .parameter "value"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 93
    iput-short p1, p0, Ljava/lang/Short;->value:S

    .line 94
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Short;
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    .local v0, intValue:I
    int-to-short v1, v0

    .line 135
    .local v1, result:S
    if-ne v1, v0, :cond_10

    .line 136
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    return-object v2

    .line 138
    :cond_10
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2
.end method

.method public static parseShort(Ljava/lang/String;)S
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method public static parseShort(Ljava/lang/String;I)S
    .registers 5
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 219
    .local v0, intValue:I
    int-to-short v1, v0

    .line 220
    .local v1, result:S
    if-ne v1, v0, :cond_8

    .line 221
    return v1

    .line 223
    :cond_8
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2
.end method

.method public static reverseBytes(S)S
    .registers 4
    .parameter "s"

    .prologue
    .line 304
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v0, v2, 0xff

    .line 305
    .local v0, high:I
    and-int/lit16 v2, p0, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 306
    .local v1, low:I
    or-int v2, v1, v0

    int-to-short v2, v2

    return v2
.end method

.method public static toString(S)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 252
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Short;
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Short;
    .registers 3
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(S)Ljava/lang/Short;
    .registers 3
    .parameter "s"

    .prologue
    .line 323
    const/16 v0, -0x80

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7f

    if-le p0, v0, :cond_e

    .line 324
    :cond_8
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    .line 326
    :goto_d
    return-object v0

    :cond_e
    invoke-static {}, Ljava/lang/Short$valueOfCache;->access$000()[Ljava/lang/Short;

    move-result-object v0

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    goto :goto_d
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 98
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Short;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Short;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 115
    iget-short v0, p0, Ljava/lang/Short;->value:S

    iget-short v1, p1, Ljava/lang/Short;->value:S

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-short v0, p0, Ljava/lang/Short;->value:S

    iget-short v1, p1, Ljava/lang/Short;->value:S

    if-ge v0, v1, :cond_10

    const/4 v0, -0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 143
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 159
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_e

    iget-short v0, p0, Ljava/lang/Short;->value:S

    check-cast p1, Ljava/lang/Short;

    .end local p1
    iget-short v1, p1, Ljava/lang/Short;->value:S

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 165
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 170
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 175
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 180
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 234
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-short v0, p0, Ljava/lang/Short;->value:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
