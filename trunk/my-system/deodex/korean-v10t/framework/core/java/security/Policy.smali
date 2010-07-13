.class public abstract Ljava/security/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field private static final GET_POLICY:Ljava/security/SecurityPermission; = null

.field private static final POLICY_PROVIDER:Ljava/lang/String; = "policy.provider"

.field private static final SET_POLICY:Ljava/security/SecurityPermission;

.field private static activePolicy:Ljava/security/Policy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "setPolicy"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Policy;->SET_POLICY:Ljava/security/SecurityPermission;

    .line 56
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getPolicy"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Policy;->GET_POLICY:Ljava/security/SecurityPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccessiblePolicy()Ljava/security/Policy;
    .registers 3

    .prologue
    .line 218
    sget-object v0, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    .line 219
    .local v0, current:Ljava/security/Policy;
    if-nez v0, :cond_19

    .line 220
    const-class v1, Ljava/security/Policy;

    monitor-enter v1

    .line 223
    :try_start_7
    sget-object v2, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    if-nez v2, :cond_11

    .line 224
    invoke-static {}, Ljava/security/Policy;->getDefaultProvider()Ljava/security/Policy;

    move-result-object v2

    sput-object v2, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    .line 226
    :cond_11
    sget-object v2, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    monitor-exit v1

    move-object v1, v2

    .line 229
    :goto_15
    return-object v1

    .line 227
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    :cond_19
    move-object v1, v0

    .line 229
    goto :goto_15
.end method

.method private static getDefaultProvider()Ljava/security/Policy;
    .registers 3

    .prologue
    .line 173
    new-instance v1, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const-string v2, "policy.provider"

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    .local v0, defaultClass:Ljava/lang/String;
    if-nez v0, :cond_15

    .line 180
    new-instance v1, Lorg/apache/harmony/security/fortress/DefaultPolicy;

    invoke-direct {v1}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>()V

    .line 184
    .end local v0           #defaultClass:Ljava/lang/String;
    :goto_14
    return-object v1

    .restart local v0       #defaultClass:Ljava/lang/String;
    :cond_15
    new-instance v1, Ljava/security/Policy$1;

    invoke-direct {v1, v0}, Ljava/security/Policy$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #defaultClass:Ljava/lang/String;
    check-cast v0, Ljava/security/Policy;

    move-object v1, v0

    goto :goto_14
.end method

.method public static getPolicy()Ljava/security/Policy;
    .registers 2

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 162
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 163
    sget-object v1, Ljava/security/Policy;->GET_POLICY:Ljava/security/SecurityPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 165
    :cond_b
    invoke-static {}, Ljava/security/Policy;->getAccessiblePolicy()Ljava/security/Policy;

    move-result-object v1

    return-object v1
.end method

.method static isSet()Z
    .registers 1

    .prologue
    .line 208
    sget-object v0, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setPolicy(Ljava/security/Policy;)V
    .registers 4
    .parameter "policy"

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 249
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 250
    sget-object v1, Ljava/security/Policy;->SET_POLICY:Ljava/security/SecurityPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 252
    :cond_b
    const-class v1, Ljava/security/Policy;

    monitor-enter v1

    .line 253
    :try_start_e
    sput-object p0, Ljava/security/Policy;->activePolicy:Ljava/security/Policy;

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v2
.end method


# virtual methods
.method public abstract getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
.end method

.method public getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .registers 3
    .parameter "domain"

    .prologue
    .line 106
    if-eqz p1, :cond_b

    .line 107
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/Policy;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 109
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    goto :goto_a
.end method

.method public implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z
    .registers 7
    .parameter "domain"
    .parameter "permission"

    .prologue
    .line 127
    if-eqz p1, :cond_2d

    .line 128
    invoke-virtual {p0, p1}, Ljava/security/Policy;->getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;

    move-result-object v2

    .line 129
    .local v2, total:Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v1

    .line 130
    .local v1, inherent:Ljava/security/PermissionCollection;
    if-nez v2, :cond_17

    .line 131
    move-object v2, v1

    .line 137
    .end local p0
    :cond_d
    if-eqz v2, :cond_2d

    invoke-virtual {v2, p2}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 138
    const/4 v3, 0x1

    .line 141
    .end local v1           #inherent:Ljava/security/PermissionCollection;
    .end local v2           #total:Ljava/security/PermissionCollection;
    :goto_16
    return v3

    .line 132
    .restart local v1       #inherent:Ljava/security/PermissionCollection;
    .restart local v2       #total:Ljava/security/PermissionCollection;
    .restart local p0
    :cond_17
    if-eqz v1, :cond_d

    .line 133
    invoke-virtual {v1}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .end local p0
    .local v0, en:Ljava/util/Enumeration;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 134
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Permission;

    invoke-virtual {v2, p0}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_1d

    .line 141
    .end local v0           #en:Ljava/util/Enumeration;
    .end local v1           #inherent:Ljava/security/PermissionCollection;
    .end local v2           #total:Ljava/security/PermissionCollection;
    :cond_2d
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public abstract refresh()V
.end method
