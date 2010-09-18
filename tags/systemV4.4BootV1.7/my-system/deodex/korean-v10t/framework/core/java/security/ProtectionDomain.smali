.class public Ljava/security/ProtectionDomain;
.super Ljava/lang/Object;
.source "ProtectionDomain.java"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private codeSource:Ljava/security/CodeSource;

.field private dynamicPerms:Z

.field private permissions:Ljava/security/PermissionCollection;

.field private principals:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V
    .registers 3
    .parameter "cs"
    .parameter "permissions"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    .line 85
    if-eqz p2, :cond_a

    .line 86
    invoke-virtual {p2}, Ljava/security/PermissionCollection;->setReadOnly()V

    .line 88
    :cond_a
    iput-object p2, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    .registers 8
    .parameter "cs"
    .parameter "permissions"
    .parameter "cl"
    .parameter "principals"

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    .line 128
    if-eqz p2, :cond_b

    .line 129
    invoke-virtual {p2}, Ljava/security/PermissionCollection;->setReadOnly()V

    .line 131
    :cond_b
    iput-object p2, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    .line 132
    iput-object p3, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    .line 133
    if-eqz p4, :cond_1e

    .line 134
    array-length v0, p4

    new-array v0, v0, [Ljava/security/Principal;

    iput-object v0, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    .line 135
    iget-object v0, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v1, v1

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/ProtectionDomain;->dynamicPerms:Z

    .line 139
    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public final getCodeSource()Ljava/security/CodeSource;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    return-object v0
.end method

.method public final getPermissions()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method public final getPrincipals()[Ljava/security/Principal;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    if-nez v1, :cond_8

    .line 186
    new-array v1, v3, [Ljava/security/Principal;

    .line 190
    :goto_7
    return-object v1

    .line 188
    :cond_8
    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/Principal;

    .line 189
    .local v0, tmp:[Ljava/security/Principal;
    iget-object v1, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 190
    goto :goto_7
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 220
    iget-boolean v0, p0, Ljava/security/ProtectionDomain;->dynamicPerms:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/security/Policy;->getAccessiblePolicy()Ljava/security/Policy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/security/Policy;->implies(Ljava/security/ProtectionDomain;Ljava/security/Permission;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 222
    const/4 v0, 0x1

    .line 229
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_f

    :cond_16
    iget-object v0, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    invoke-virtual {v0, p1}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const-string v7, "\t\t<no dynamic permissions>\n"

    const-string v6, "<null>"

    const-string v5, "\n"

    .line 241
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 242
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "ProtectionDomain\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const-string v3, "CodeSource="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    if-nez v4, :cond_78

    const-string v4, "<null>"

    move-object v4, v6

    :goto_1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v3, "ClassLoader="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_7f

    const-string v4, "<null>"

    move-object v4, v6

    :goto_35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    iget-object v3, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    if-eqz v3, :cond_47

    iget-object v3, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v3, v3

    if-nez v3, :cond_86

    .line 250
    :cond_47
    const-string v3, "<no principals>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :goto_4c
    const-string v3, "Permissions:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    iget-object v3, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    if-nez v3, :cond_bb

    .line 264
    const-string v3, "\t\t<no static permissions>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :goto_5a
    iget-boolean v3, p0, Ljava/security/ProtectionDomain;->dynamicPerms:Z

    if-eqz v3, :cond_73

    .line 271
    invoke-static {}, Ljava/security/Policy;->isSet()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 273
    invoke-static {}, Ljava/security/Policy;->getAccessiblePolicy()Ljava/security/Policy;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/security/Policy;->getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;

    move-result-object v2

    .line 274
    .local v2, perms:Ljava/security/PermissionCollection;
    if-nez v2, :cond_d1

    .line 275
    const-string v3, "\t\t<no dynamic permissions>\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    .end local v2           #perms:Ljava/security/PermissionCollection;
    :cond_73
    :goto_73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 243
    :cond_78
    iget-object v4, p0, Ljava/security/ProtectionDomain;->codeSource:Ljava/security/CodeSource;

    invoke-virtual {v4}, Ljava/security/CodeSource;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    .line 246
    :cond_7f
    iget-object v4, p0, Ljava/security/ProtectionDomain;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 252
    :cond_86
    const-string v3, "Principals: <\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8c
    iget-object v3, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    array-length v3, v3

    if-ge v1, v3, :cond_b5

    .line 254
    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    aget-object v4, v4, v1

    if-nez v4, :cond_ac

    const-string v4, "<null>"

    move-object v4, v6

    :goto_a0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 254
    :cond_ac
    iget-object v4, p0, Ljava/security/ProtectionDomain;->principals:[Ljava/security/Principal;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a0

    .line 258
    :cond_b5
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4c

    .line 266
    .end local v1           #i:I
    :cond_bb
    const-string v3, "\t\tstatic: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljava/security/ProtectionDomain;->permissions:Ljava/security/PermissionCollection;

    invoke-virtual {v4}, Ljava/security/PermissionCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 277
    .restart local v2       #perms:Ljava/security/PermissionCollection;
    :cond_d1
    const-string v3, "\t\tdynamic: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/PermissionCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_73

    .line 281
    .end local v2           #perms:Ljava/security/PermissionCollection;
    :cond_e5
    const-string v3, "\t\t<no dynamic permissions>\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_73
.end method
