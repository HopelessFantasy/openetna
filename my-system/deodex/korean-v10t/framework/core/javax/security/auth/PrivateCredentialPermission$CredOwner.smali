.class final Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
.super Ljava/lang/Object;
.source "PrivateCredentialPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/PrivateCredentialPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CredOwner"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4dd1a9e946fc8bcaL


# instance fields
.field private transient isClassWildcard:Z

.field private transient isPNameWildcard:Z

.field principalClass:Ljava/lang/String;

.field principalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "principalClass"
    .parameter "principalName"

    .prologue
    const/4 v1, 0x1

    const-string v2, "*"

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, "*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 345
    iput-boolean v1, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->isClassWildcard:Z

    .line 348
    :cond_10
    const-string v0, "*"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 349
    iput-boolean v1, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->isPNameWildcard:Z

    .line 352
    :cond_1a
    iget-boolean v0, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->isClassWildcard:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->isPNameWildcard:Z

    if-nez v0, :cond_2e

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.12"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_2e
    iput-object p1, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    .line 357
    iput-object p2, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    .line 379
    iget-object v2, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    move-object v1, v0

    iget-object v1, v1, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    check-cast p1, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    .end local p1
    iget-object v2, p1, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method implies(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 362
    if-ne p1, p0, :cond_5

    move v2, v4

    .line 373
    :goto_4
    return v2

    .line 366
    :cond_5
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;

    move-object v1, v0

    .line 368
    .local v1, co:Ljavax/security/auth/PrivateCredentialPermission$CredOwner;
    iget-boolean v2, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->isClassWildcard:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    iget-object v3, v1, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 369
    :cond_17
    iget-boolean v2, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->isPNameWildcard:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    iget-object v3, v1, Ljavax/security/auth/PrivateCredentialPermission$CredOwner;->principalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    move v2, v4

    .line 370
    goto :goto_4

    .line 373
    :cond_27
    const/4 v2, 0x0

    goto :goto_4
.end method
