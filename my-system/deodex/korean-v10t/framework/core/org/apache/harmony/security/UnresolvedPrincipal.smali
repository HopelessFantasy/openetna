.class public final Lorg/apache/harmony/security/UnresolvedPrincipal;
.super Ljava/lang/Object;
.source "UnresolvedPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private final klass:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "klass"
    .parameter "name"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 65
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.91"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_17
    iput-object p1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "that"

    .prologue
    const/4 v4, 0x0

    .line 94
    instance-of v2, p1, Lorg/apache/harmony/security/UnresolvedPrincipal;

    if-eqz v2, :cond_29

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/UnresolvedPrincipal;

    move-object v1, v0

    .line 96
    .local v1, up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, v1, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v2, :cond_27

    :cond_1b
    const/4 v2, 0x1

    .line 102
    .end local v1           #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    .end local p1
    :goto_1c
    return v2

    .line 96
    .restart local v1       #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    .restart local p1
    :cond_1d
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_27
    move v2, v4

    goto :goto_1c

    .line 99
    .end local v1           #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    :cond_29
    instance-of v2, p1, Ljava/security/Principal;

    if-eqz v2, :cond_34

    .line 100
    check-cast p1, Ljava/security/Principal;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/UnresolvedPrincipal;->implies(Ljava/security/Principal;)Z

    move-result v2

    goto :goto_1c

    .restart local p1
    :cond_34
    move v2, v4

    .line 102
    goto :goto_1c
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 129
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 131
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 132
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 134
    :cond_17
    return v0
.end method

.method public implies(Ljava/security/Principal;)Z
    .registers 5
    .parameter "another"

    .prologue
    const-string v2, "*"

    .line 115
    if-eqz p1, :cond_40

    const-string v0, "*"

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "*"

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v0, :cond_34

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    :cond_32
    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_40
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Principal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
