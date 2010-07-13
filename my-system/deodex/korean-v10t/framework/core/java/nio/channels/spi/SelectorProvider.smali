.class public abstract Ljava/nio/channels/spi/SelectorProvider;
.super Ljava/lang/Object;
.source "SelectorProvider.java"


# static fields
.field private static final PROVIDER_IN_JAR_RESOURCE:Ljava/lang/String; = "META-INF/services/java.nio.channels.spi.SelectorProvider"

.field private static final PROVIDER_IN_SYSTEM_PROPERTY:Ljava/lang/String; = "java.nio.channels.spi.SelectorProvider"

.field private static final SYMBOL_COMMENT:Ljava/lang/String; = "#"

.field private static inheritedChannel:Ljava/nio/channels/Channel;

.field private static provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 72
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "selectorProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 75
    :cond_17
    return-void
.end method

.method static loadProviderByJar()Ljava/nio/channels/spi/SelectorProvider;
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 116
    const/4 v4, 0x0

    .line 118
    .local v4, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    new-instance v6, Ljava/nio/channels/spi/SelectorProvider$2;

    invoke-direct {v6}, Ljava/nio/channels/spi/SelectorProvider$2;-><init>()V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 125
    .local v1, classLoader:Ljava/lang/ClassLoader;
    :try_start_d
    const-string v6, "META-INF/services/java.nio.channels.spi.SelectorProvider"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_17

    move-result-object v4

    .line 129
    if-nez v4, :cond_21

    move-object v6, v8

    .line 172
    :goto_16
    return-object v6

    .line 126
    :catch_17
    move-exception v6

    move-object v3, v6

    .line 127
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 143
    .end local v3           #e:Ljava/io/IOException;
    .local v2, className:Ljava/lang/String;
    :catch_1f
    move-exception v6

    move-object v3, v6

    .line 133
    .end local v2           #className:Ljava/lang/String;
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 138
    .restart local v2       #className:Ljava/lang/String;
    :try_start_29
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #br:Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v0, v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3f} :catch_1f

    .line 149
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 152
    .local v5, siteComment:I
    const/4 v6, -0x1

    if-ne v6, v5, :cond_68

    .line 154
    :goto_52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3f

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/spi/SelectorProvider;
    :try_end_62
    .catchall {:try_start_3f .. :try_end_62} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_62} :catch_75

    .line 165
    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_16

    .line 166
    :catch_66
    move-exception v7

    goto :goto_16

    .line 152
    :cond_68
    const/4 v6, 0x0

    :try_start_69
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_75

    move-result-object v6

    move-object v2, v6

    goto :goto_52

    .line 165
    .end local v5           #siteComment:I
    :cond_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_21

    .line 166
    :catch_73
    move-exception v6

    goto :goto_21

    .line 159
    :catch_75
    move-exception v6

    move-object v3, v6

    .line 160
    .local v3, e:Ljava/lang/Exception;
    :try_start_77
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7d

    .line 164
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_7d
    move-exception v6

    .line 165
    :try_start_7e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_84

    .line 168
    :goto_81
    throw v6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #className:Ljava/lang/String;
    :cond_82
    move-object v6, v8

    .line 172
    goto :goto_16

    .line 166
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #className:Ljava/lang/String;
    :catch_84
    move-exception v7

    goto :goto_81
.end method

.method static loadProviderByProperty()Ljava/nio/channels/spi/SelectorProvider;
    .registers 1

    .prologue
    .line 179
    new-instance v0, Ljava/nio/channels/spi/SelectorProvider$3;

    invoke-direct {v0}, Ljava/nio/channels/spi/SelectorProvider$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public static declared-synchronized provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 95
    const-class v1, Ljava/nio/channels/spi/SelectorProvider;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v0, :cond_28

    .line 96
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderByProperty()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 97
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v0, :cond_17

    .line 98
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderByJar()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 100
    :cond_17
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v0, :cond_28

    .line 101
    new-instance v0, Ljava/nio/channels/spi/SelectorProvider$1;

    invoke-direct {v0}, Ljava/nio/channels/spi/SelectorProvider$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 109
    :cond_28
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public inheritedChannel()Ljava/nio/channels/Channel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 265
    .local v0, smngr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 266
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "inheritedChannel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 270
    :cond_10
    sget-object v1, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel:Ljava/nio/channels/Channel;

    if-nez v1, :cond_1e

    .line 271
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v1

    sput-object v1, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel:Ljava/nio/channels/Channel;

    .line 273
    :cond_1e
    sget-object v1, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel:Ljava/nio/channels/Channel;

    return-object v1
.end method

.method public abstract openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openPipe()Ljava/nio/channels/Pipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openSocketChannel()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
