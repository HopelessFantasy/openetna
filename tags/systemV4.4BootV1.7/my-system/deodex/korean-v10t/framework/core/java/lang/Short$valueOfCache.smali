.class Ljava/lang/Short$valueOfCache;
.super Ljava/lang/Object;
.source "Short.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Short;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "valueOfCache"
.end annotation


# static fields
.field private static final CACHE:[Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 335
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Short;

    sput-object v1, Ljava/lang/Short$valueOfCache;->CACHE:[Ljava/lang/Short;

    .line 338
    const/16 v0, -0x80

    .local v0, i:I
    :goto_8
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1b

    .line 339
    sget-object v1, Ljava/lang/Short$valueOfCache;->CACHE:[Ljava/lang/Short;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Short;

    int-to-short v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v3, v1, v2

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 341
    :cond_1b
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Short;
    .registers 1

    .prologue
    .line 329
    sget-object v0, Ljava/lang/Short$valueOfCache;->CACHE:[Ljava/lang/Short;

    return-object v0
.end method
