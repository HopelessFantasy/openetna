.class public final Ljava/nio/ByteOrder;
.super Ljava/lang/Object;
.source "ByteOrder.java"


# static fields
.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;

.field private static final NATIVE_ORDER:Ljava/nio/ByteOrder;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/nio/ByteOrder;

    const-string v1, "BIG_ENDIAN"

    invoke-direct {v0, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 41
    new-instance v0, Ljava/nio/ByteOrder;

    const-string v1, "LITTLE_ENDIAN"

    invoke-direct {v0, v1}, Ljava/nio/ByteOrder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/IMemorySystem;->isLittleEndian()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 47
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    .line 51
    :goto_20
    return-void

    .line 49
    :cond_21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    goto :goto_20
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static nativeOrder()Ljava/nio/ByteOrder;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Ljava/nio/ByteOrder;->NATIVE_ORDER:Ljava/nio/ByteOrder;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/ByteOrder;->name:Ljava/lang/String;

    return-object v0
.end method
