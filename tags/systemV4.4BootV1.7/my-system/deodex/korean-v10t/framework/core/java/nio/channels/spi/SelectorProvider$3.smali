.class Ljava/nio/channels/spi/SelectorProvider$3;
.super Ljava/lang/Object;
.source "SelectorProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/SelectorProvider;->loadProviderByProperty()Ljava/nio/channels/spi/SelectorProvider;
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
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider$3;->run()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/nio/channels/spi/SelectorProvider;
    .registers 5

    .prologue
    .line 183
    :try_start_0
    const-string v3, "java.nio.channels.spi.SelectorProvider"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 186
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 189
    .local v2, spClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/nio/channels/spi/SelectorProvider;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_1a

    move-object v3, p0

    .line 191
    .end local v2           #spClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_17
    return-object v3

    .restart local p0
    :cond_18
    const/4 v3, 0x0

    goto :goto_17

    .line 192
    .end local v0           #className:Ljava/lang/String;
    .end local p0
    :catch_1a
    move-exception v3

    move-object v1, v3

    .line 193
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
