.class Lorg/apache/harmony/luni/platform/OSComponentFactory;
.super Ljava/lang/Object;
.source "OSComponentFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lorg/apache/harmony/luni/platform/OSFileSystem;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSFileSystem;-><init>()V

    return-object v0
.end method

.method public static getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/luni/platform/OSMemory;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSMemory;-><init>()V

    return-object v0
.end method

.method public static getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getOSNetworkSystem()Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    move-result-object v0

    return-object v0
.end method
