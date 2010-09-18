.class Ljava/nio/channels/spi/SelectorProvider$1;
.super Ljava/lang/Object;
.source "SelectorProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/nio/channels/spi/SelectorProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider$1;->run()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 104
    new-instance v0, Lorg/apache/harmony/nio/internal/SelectorProviderImpl;

    invoke-direct {v0}, Lorg/apache/harmony/nio/internal/SelectorProviderImpl;-><init>()V

    return-object v0
.end method
