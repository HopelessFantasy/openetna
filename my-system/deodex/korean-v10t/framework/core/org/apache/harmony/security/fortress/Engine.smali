.class public Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private lastAlgorithm:Ljava/lang/String;

.field public provider:Ljava/security/Provider;

.field private refreshNumber:I

.field private returnedService:Ljava/security/Provider$Service;

.field private serviceName:Ljava/lang/String;

.field public spi:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "algorithm"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-string v1, "security.14A"

    .line 87
    monitor-enter p0

    if-nez p1, :cond_14

    .line 88
    :try_start_5
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "security.149"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    .line 87
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    :cond_14
    :try_start_14
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->refresh()V

    .line 91
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->returnedService:Ljava/security/Provider$Service;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->lastAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget v1, p0, Lorg/apache/harmony/security/fortress/Engine;->refreshNumber:I

    sget v2, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    if-ne v1, v2, :cond_39

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->returnedService:Ljava/security/Provider$Service;

    .line 111
    .local v0, serv:Ljava/security/Provider$Service;
    :goto_2b
    invoke-virtual {v0, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_11

    .line 113
    monitor-exit p0

    return-void

    .line 96
    .end local v0           #serv:Ljava/security/Provider$Service;
    :cond_39
    :try_start_39
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 97
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "security.14A"

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_4d
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 103
    .restart local v0       #serv:Ljava/security/Provider$Service;
    if-nez v0, :cond_80

    .line 104
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "security.14A"

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_80
    iput-object v0, p0, Lorg/apache/harmony/security/fortress/Engine;->returnedService:Ljava/security/Provider$Service;

    .line 108
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->lastAlgorithm:Ljava/lang/String;

    .line 109
    sget v1, Lorg/apache/harmony/security/fortress/Services;->refreshNumber:I

    iput v1, p0, Lorg/apache/harmony/security/fortress/Engine;->refreshNumber:I
    :try_end_88
    .catchall {:try_start_39 .. :try_end_88} :catchall_11

    goto :goto_2b
.end method

.method public declared-synchronized getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V
    .registers 8
    .parameter "algorithm"
    .parameter "provider"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x0

    .line 129
    .local v0, serv:Ljava/security/Provider$Service;
    if-nez p1, :cond_15

    .line 130
    :try_start_4
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "security.14B"

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_12

    .line 128
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 133
    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 134
    if-nez v0, :cond_2b

    .line 135
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "security.14A"

    iget-object v3, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_2b
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    .line 139
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_12

    .line 140
    monitor-exit p0

    return-void
.end method
