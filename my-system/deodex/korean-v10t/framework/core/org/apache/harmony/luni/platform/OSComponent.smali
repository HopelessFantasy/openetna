.class Lorg/apache/harmony/luni/platform/OSComponent;
.super Ljava/lang/Object;
.source "OSComponent.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IAdaptable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 37
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 40
    :cond_f
    return-void
.end method


# virtual methods
.method public getAdapter(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "adapter"

    .prologue
    .line 48
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getAdapterManager()Lorg/apache/harmony/luni/platform/IAdapterManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/harmony/luni/platform/IAdapterManager;->getAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
