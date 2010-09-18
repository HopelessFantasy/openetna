.class public final Ljava/util/logging/LoggingPermission;
.super Ljava/security/BasicPermission;
.source "LoggingPermission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe1d36e9045739eL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "control"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.6"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_17
    if-eqz p2, :cond_2d

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.7"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2d
    return-void
.end method
