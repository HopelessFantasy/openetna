.class final Ljava/security/PermissionsHash;
.super Ljava/security/PermissionCollection;
.source "PermissionsHash.java"


# static fields
.field private static final serialVersionUID:J = -0x75d99a4b59c2a2c0L


# instance fields
.field private final perms:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 3
    .parameter "permission"

    .prologue
    .line 59
    iget-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 4
    .parameter "permission"

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/security/PermissionsHash;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .end local p0
    .local v0, elements:Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Permission;

    invoke-virtual {p0, p1}, Ljava/security/Permission;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const/4 v1, 0x1

    .line 89
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method
