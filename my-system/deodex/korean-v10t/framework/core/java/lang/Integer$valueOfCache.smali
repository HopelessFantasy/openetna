.class Ljava/lang/Integer$valueOfCache;
.super Ljava/lang/Object;
.source "Integer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "valueOfCache"
.end annotation


# static fields
.field static final CACHE:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 819
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Ljava/lang/Integer$valueOfCache;->CACHE:[Ljava/lang/Integer;

    .line 822
    const/16 v0, -0x80

    .local v0, i:I
    :goto_8
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1a

    .line 823
    sget-object v1, Ljava/lang/Integer$valueOfCache;->CACHE:[Ljava/lang/Integer;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 825
    :cond_1a
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
