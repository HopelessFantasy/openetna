.class public Lcom/google/common/util/Primitives;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/Primitives$1;,
        Lcom/google/common/util/Primitives$J2meConverter;,
        Lcom/google/common/util/Primitives$PrimitiveConverter;
    }
.end annotation


# static fields
.field private static converter:Lcom/google/common/util/Primitives$PrimitiveConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/util/Primitives$J2meConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/Primitives$J2meConverter;-><init>(Lcom/google/common/util/Primitives$1;)V

    sput-object v0, Lcom/google/common/util/Primitives;->converter:Lcom/google/common/util/Primitives$PrimitiveConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectConverter(Lcom/google/common/util/Primitives$PrimitiveConverter;)V
    .registers 1

    sput-object p0, Lcom/google/common/util/Primitives;->converter:Lcom/google/common/util/Primitives$PrimitiveConverter;

    return-void
.end method

.method public static toInteger(I)Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/google/common/util/Primitives;->converter:Lcom/google/common/util/Primitives$PrimitiveConverter;

    invoke-virtual {v0, p0}, Lcom/google/common/util/Primitives$PrimitiveConverter;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(J)Ljava/lang/Long;
    .registers 3

    sget-object v0, Lcom/google/common/util/Primitives;->converter:Lcom/google/common/util/Primitives$PrimitiveConverter;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/Primitives$PrimitiveConverter;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
