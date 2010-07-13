.class Ljava/util/logging/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 238
    const-string v3, "java.util.logging.manager"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 242
    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/logging/LogManager;

    sput-object p0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    .line 244
    :cond_11
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-nez v3, :cond_1c

    .line 245
    new-instance v3, Ljava/util/logging/LogManager;

    invoke-direct {v3}, Ljava/util/logging/LogManager;-><init>()V

    sput-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    .line 250
    :cond_1c
    :try_start_1c
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v3}, Ljava/util/logging/LogManager;->readConfiguration()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_3f

    .line 256
    :goto_21
    new-instance v2, Ljava/util/logging/Logger;

    const-string v3, ""

    invoke-direct {v2, v3, v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v2, root:Ljava/util/logging/Logger;
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 258
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 260
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v3, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 261
    sget-object v3, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    sget-object v4, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 262
    return-object v5

    .line 251
    .end local v2           #root:Ljava/util/logging/Logger;
    :catch_3f
    move-exception v3

    move-object v1, v3

    .line 252
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
