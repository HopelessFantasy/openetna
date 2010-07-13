.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field private certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .parameter "name"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 92
    if-eqz p2, :cond_a

    .line 93
    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    .line 94
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    .line 96
    :cond_a
    return-void
.end method

.method private static checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .registers 7
    .parameter "pk1"
    .parameter "pk2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, format1:Ljava/lang/String;
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .local v1, format2:Ljava/lang/String;
    if-eqz v1, :cond_1e

    move v2, v3

    :goto_f
    if-eqz v0, :cond_20

    :goto_11
    xor-int/2addr v2, v3

    if-nez v2, :cond_1c

    if-eqz v0, :cond_22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .end local v1           #format2:Ljava/lang/String;
    :cond_1c
    move v2, v4

    .line 153
    :goto_1d
    return v2

    .restart local v1       #format2:Ljava/lang/String;
    :cond_1e
    move v2, v4

    .line 147
    goto :goto_f

    :cond_20
    move v3, v4

    goto :goto_11

    .line 153
    :cond_22
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_1d
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .registers 6
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 118
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 119
    const-string v2, "addIdentityCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 121
    :cond_b
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 122
    .local v0, certPK:Ljava/security/PublicKey;
    iget-object v2, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_27

    .line 123
    iget-object v2, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v2, v0}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 124
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "security.13"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_27
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 129
    :cond_29
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v2, :cond_34

    .line 130
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 132
    :cond_34
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .registers 3

    .prologue
    .line 204
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_8

    .line 205
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/Certificate;

    .line 209
    :goto_7
    return-object v1

    .line 207
    :cond_8
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/Certificate;

    .line 208
    .local v0, ret:[Ljava/security/Certificate;
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v1, v0

    .line 209
    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 381
    if-ne p0, p1, :cond_5

    move v2, v4

    .line 392
    :goto_4
    return v2

    .line 384
    :cond_5
    instance-of v2, p1, Ljava/security/Identity;

    if-nez v2, :cond_b

    .line 385
    const/4 v2, 0x0

    goto :goto_4

    .line 387
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/Identity;

    move-object v1, v0

    .line 388
    .local v1, i:Ljava/security/Identity;
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_23

    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_23
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    iget-object v3, v1, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eq v2, v3, :cond_37

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v2, :cond_39

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    iget-object v3, v1, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2, v3}, Ljava/security/IdentityScope;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_37
    move v2, v4

    .line 390
    goto :goto_4

    .line 392
    :cond_39
    invoke-virtual {p0, v1}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v2

    goto :goto_4
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, hash:I
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 424
    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_c
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_17

    .line 427
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1}, Ljava/security/IdentityScope;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    :cond_17
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .registers 5
    .parameter "identity"

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v1, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 239
    :goto_c
    return v0

    .line 235
    :cond_d
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_19

    .line 236
    iget-object v0, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    move v0, v2

    goto :goto_c

    .line 239
    :cond_19
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    goto :goto_c
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .registers 5
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 179
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 180
    const-string v1, "removeIdentityCertificate"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 182
    :cond_b
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v1, :cond_24

    .line 184
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 185
    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "Certificate not found"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_1f
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 190
    :cond_24
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 345
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 346
    const-string v1, "setIdentityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 348
    :cond_b
    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 298
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 299
    const-string v2, "setIdentityPublicKey"

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 302
    :cond_b
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v2, :cond_27

    if-eqz p1, :cond_27

    .line 303
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2, p1}, Ljava/security/IdentityScope;->getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;

    move-result-object v0

    .line 305
    .local v0, i:Ljava/security/Identity;
    if-eqz v0, :cond_27

    if-eq v0, p0, :cond_27

    .line 306
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "security.14"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    .end local v0           #i:Ljava/security/Identity;
    :cond_27
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    .line 310
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 451
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 452
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 453
    const-string v2, "printIdentity"

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 455
    :cond_b
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-nez v2, :cond_3a

    const-string v2, ""

    move-object v0, v2

    .line 456
    .local v0, s:Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v2, :cond_39

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v3}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_39
    return-object v0

    .line 455
    .end local v0           #s:Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    move-object v0, v2

    goto :goto_12
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 5
    .parameter "detailed"

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, s:Ljava/lang/String;
    if-eqz p1, :cond_1f

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_1f
    return-object v0
.end method
