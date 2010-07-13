.class public final Ljava/security/AccessControlContext;
.super Ljava/lang/Object;
.source "AccessControlContext.java"


# instance fields
.field combiner:Ljava/security/DomainCombiner;

.field context:[Ljava/security/ProtectionDomain;

.field private inherited:Ljava/security/AccessControlContext;


# direct methods
.method public constructor <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V
    .registers 6
    .parameter "acc"
    .parameter "combiner"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 81
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 82
    new-instance v1, Ljava/security/SecurityPermission;

    const-string v2, "createAccessControlContext"

    invoke-direct {v1, v2}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 86
    :cond_13
    iget-object v1, p1, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    iput-object v1, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    .line 87
    iput-object p2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    .line 88
    return-void
.end method

.method public constructor <init>([Ljava/security/ProtectionDomain;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_d

    .line 103
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context can not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_d
    array-length v2, p1

    if-eqz v2, :cond_40

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/ProtectionDomain;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_2d

    .line 109
    aget-object v2, p1, v1

    if-eqz v2, :cond_2a

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 110
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 113
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_40

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/ProtectionDomain;

    iput-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    .line 115
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .end local v0           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/ProtectionDomain;>;"
    .end local v1           #i:I
    :cond_40
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    if-nez v2, :cond_49

    .line 120
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/ProtectionDomain;

    iput-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    .line 122
    :cond_49
    return-void
.end method

.method constructor <init>([Ljava/security/ProtectionDomain;Ljava/security/AccessControlContext;)V
    .registers 3
    .parameter "stack"
    .parameter "inherited"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 140
    iput-object p2, p0, Ljava/security/AccessControlContext;->inherited:Ljava/security/AccessControlContext;

    .line 141
    return-void
.end method

.method constructor <init>([Ljava/security/ProtectionDomain;Ljava/security/DomainCombiner;)V
    .registers 3
    .parameter "stack"
    .parameter "combiner"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 159
    iput-object p2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    .line 160
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/security/Permission;)V
    .registers 6
    .parameter "perm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .prologue
    .line 191
    if-nez p1, :cond_a

    .line 192
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Permission cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v1, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 195
    iget-object v1, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/security/ProtectionDomain;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 196
    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission check failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    .line 194
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 200
    :cond_36
    iget-object v1, p0, Ljava/security/AccessControlContext;->inherited:Ljava/security/AccessControlContext;

    if-eqz v1, :cond_3f

    .line 201
    iget-object v1, p0, Ljava/security/AccessControlContext;->inherited:Ljava/security/AccessControlContext;

    invoke-virtual {v1, p1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 203
    :cond_3f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 238
    :goto_5
    return v2

    .line 225
    :cond_6
    instance-of v2, p1, Ljava/security/AccessControlContext;

    if-eqz v2, :cond_39

    .line 226
    move-object v0, p1

    check-cast v0, Ljava/security/AccessControlContext;

    move-object v1, v0

    .line 227
    .local v1, that:Ljava/security/AccessControlContext;
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    iget-object v3, v1, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    iget-object v3, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v2, v4

    .line 229
    goto :goto_5

    .line 232
    :cond_24
    iget-object v2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    if-eqz v2, :cond_31

    .line 233
    iget-object v2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    iget-object v3, v1, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 235
    :cond_31
    iget-object v2, v1, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    if-nez v2, :cond_37

    move v2, v5

    goto :goto_5

    :cond_37
    move v2, v4

    goto :goto_5

    .end local v1           #that:Ljava/security/AccessControlContext;
    :cond_39
    move v2, v4

    .line 238
    goto :goto_5
.end method

.method public getDomainCombiner()Ljava/security/DomainCombiner;
    .registers 4

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 258
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 259
    new-instance v1, Ljava/security/SecurityPermission;

    const-string v2, "getDomainCombiner"

    invoke-direct {v1, v2}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 261
    :cond_10
    iget-object v1, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 279
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    :cond_13
    return v0
.end method
