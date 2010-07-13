.class Ljava/security/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Security;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/security/Security$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 68
    const/4 v3, 0x0

    .line 76
    .local v3, loaded:Z
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "security.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 78
    .local v0, configStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 80
    .local v2, input:Ljava/io/InputStream;
    invoke-static {}, Ljava/security/Security;->access$000()Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 81
    const/4 v3, 0x1

    .line 82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_2b

    .line 141
    .end local v0           #configStream:Ljava/io/InputStream;
    .end local v2           #input:Ljava/io/InputStream;
    :goto_1e
    if-nez v3, :cond_23

    .line 142
    invoke-static {}, Ljava/security/Security;->access$100()V

    .line 144
    :cond_23
    new-instance v4, Ljava/security/Security$SecurityDoor;

    invoke-direct {v4, v7}, Ljava/security/Security$SecurityDoor;-><init>(Ljava/security/Security$1;)V

    sput-object v4, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    .line 145
    return-object v7

    .line 83
    :catch_2b
    move-exception v4

    move-object v1, v4

    .line 84
    .local v1, ex:Ljava/lang/Exception;
    sget-object v4, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "Could not load Security properties."

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method
