.class Ljava/lang/Long$valueOfCache;
.super Ljava/lang/Object;
.source "Long.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "valueOfCache"
.end annotation


# static fields
.field static final CACHE:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 809
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long$valueOfCache;->CACHE:[Ljava/lang/Long;

    .line 812
    const/16 v0, -0x80

    .local v0, i:I
    :goto_8
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1b

    .line 813
    sget-object v1, Ljava/lang/Long$valueOfCache;->CACHE:[Ljava/lang/Long;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 815
    :cond_1b
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
