.class public final Ljavax/security/auth/AuthPermission;
.super Ljava/security/BasicPermission;
.source "AuthPermission.java"


# static fields
.field private static final CREATE_LOGIN_CONTEXT:Ljava/lang/String; = "createLoginContext"

.field private static final CREATE_LOGIN_CONTEXT_ANY:Ljava/lang/String; = "createLoginContext.*"

.field private static final serialVersionUID:J = 0x50932ad66da4d0e6L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 85
    invoke-static {p1}, Ljavax/security/auth/AuthPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 97
    invoke-static {p1}, Ljavax/security/auth/AuthPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private static init(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 68
    if-nez p0, :cond_e

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.13"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_e
    const-string v0, "createLoginContext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    const-string v0, "createLoginContext.*"

    .line 75
    :goto_18
    return-object v0

    :cond_19
    move-object v0, p0

    goto :goto_18
.end method
