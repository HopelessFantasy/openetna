.class Lorg/apache/harmony/nio/internal/MappedByteBufferFactory;
.super Ljava/lang/Object;
.source "MappedByteBufferFactory.java"


# static fields
.field static final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/harmony/nio/internal/MappedByteBufferFactory$1;

    invoke-direct {v0}, Lorg/apache/harmony/nio/internal/MappedByteBufferFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    sput-object v0, Lorg/apache/harmony/nio/internal/MappedByteBufferFactory;->constructor:Ljava/lang/reflect/Constructor;

    .line 50
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBuffer(Lorg/apache/harmony/luni/platform/PlatformAddress;IJI)Ljava/nio/MappedByteBuffer;
    .registers 10
    .parameter "addr"
    .parameter "mapmode"
    .parameter "size"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lorg/apache/harmony/nio/internal/MappedByteBufferFactory;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/nio/MappedByteBuffer;

    return-object p0
.end method
