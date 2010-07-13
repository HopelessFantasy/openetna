.class public Lorg/apache/harmony/luni/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static final ADAPTER_MANAGER:Lorg/apache/harmony/luni/platform/IAdapterManager;

.field static final FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

.field static final MEMORY_SYSTEM:Lorg/apache/harmony/luni/platform/IMemorySystem;

.field static final NETWORK_SYSTEM:Lorg/apache/harmony/luni/platform/INetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lorg/apache/harmony/luni/platform/AdapterManager;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/AdapterManager;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->ADAPTER_MANAGER:Lorg/apache/harmony/luni/platform/IAdapterManager;

    .line 31
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSComponentFactory;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 33
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSComponentFactory;->getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->MEMORY_SYSTEM:Lorg/apache/harmony/luni/platform/IMemorySystem;

    .line 36
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSComponentFactory;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK_SYSTEM:Lorg/apache/harmony/luni/platform/INetworkSystem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final accessCheck()V
    .registers 1

    .prologue
    .line 45
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 46
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 49
    :cond_c
    return-void
.end method

.method public static getAdapterManager()Lorg/apache/harmony/luni/platform/IAdapterManager;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->ADAPTER_MANAGER:Lorg/apache/harmony/luni/platform/IAdapterManager;

    return-object v0
.end method

.method public static getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->accessCheck()V

    .line 53
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    return-object v0
.end method

.method public static getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;
    .registers 1

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->accessCheck()V

    .line 58
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->MEMORY_SYSTEM:Lorg/apache/harmony/luni/platform/IMemorySystem;

    return-object v0
.end method

.method public static getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->accessCheck()V

    .line 63
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK_SYSTEM:Lorg/apache/harmony/luni/platform/INetworkSystem;

    return-object v0
.end method
