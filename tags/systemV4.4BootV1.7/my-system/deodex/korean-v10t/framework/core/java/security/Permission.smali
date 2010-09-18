.class public abstract Ljava/security/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4e391ec0d7a8ae82L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Ljava/security/Permission;->name:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public checkGuard(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 141
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 144
    :cond_9
    return-void
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getActions()Ljava/lang/String;
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ljava/security/Permission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method public abstract implies(Ljava/security/Permission;)Z
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, " "

    .line 171
    invoke-virtual {p0}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, actions:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    :cond_e
    const-string v1, ""

    move-object v0, v1

    .line 174
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_11
.end method
