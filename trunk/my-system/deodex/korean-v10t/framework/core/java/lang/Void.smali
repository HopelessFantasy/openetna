.class public final Ljava/lang/Void;
.super Ljava/lang/Object;
.source "Void.java"


# static fields
.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Void;->lookupType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static lookupType()Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, voidType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-class v3, Ljava/lang/Runnable;

    const-string v4, "run"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v2

    .line 48
    return-object v2

    .line 45
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_11
    move-exception v3

    move-object v0, v3

    .line 46
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
