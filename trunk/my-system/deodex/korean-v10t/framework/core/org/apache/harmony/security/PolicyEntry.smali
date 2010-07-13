.class public Lorg/apache/harmony/security/PolicyEntry;
.super Ljava/lang/Object;
.source "PolicyEntry.java"


# instance fields
.field private final cs:Ljava/security/CodeSource;

.field private final permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private final principals:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .parameter "cs"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/CodeSource;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, prs:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/security/Principal;>;"
    .local p3, permissions:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/security/Permission;>;"
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    .line 59
    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->principals:[Ljava/security/Principal;

    .line 61
    if-eqz p3, :cond_19

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_19
    move-object v0, v1

    :goto_1a
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    .line 63
    return-void

    .line 59
    :cond_1d
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    check-cast v0, [Ljava/security/Principal;

    goto :goto_f

    .line 61
    :cond_2c
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_1a
.end method


# virtual methods
.method public getPermissions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    return-object v0
.end method

.method public impliesCodeSource(Ljava/security/CodeSource;)Z
    .registers 3
    .parameter "codeSource"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    invoke-virtual {v0, p1}, Ljava/security/CodeSource;->implies(Ljava/security/CodeSource;)Z

    move-result v0

    goto :goto_5
.end method

.method public impliesPrincipals([Ljava/security/Principal;)Z
    .registers 3
    .parameter "prs"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->principals:[Ljava/security/Principal;

    invoke-static {v0, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoid()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
