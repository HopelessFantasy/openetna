.class public Lorg/apache/harmony/security/SystemScope;
.super Ljava/security/IdentityScope;
.source "SystemScope.java"


# static fields
.field private static final serialVersionUID:J = -0x42c1915b3568f46fL


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private names:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/IdentityScope;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 4
    .parameter "name"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized addIdentity(Ljava/security/Identity;)V
    .registers 6
    .parameter "identity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    if-nez p1, :cond_12

    .line 106
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.92"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 105
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 109
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 111
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "security.93"

    invoke-static {v3, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_2a
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 115
    .local v0, key:Ljava/security/PublicKey;
    if-eqz v0, :cond_44

    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 116
    new-instance v2, Ljava/security/KeyManagementException;

    const-string v3, "security.94"

    invoke-static {v3, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_44
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    if-eqz v0, :cond_50

    .line 121
    iget-object v2, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_f

    .line 123
    :cond_50
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getIdentity(Ljava/lang/String;)Ljava/security/Identity;
    .registers 3
    .parameter "name"

    .prologue
    .line 84
    monitor-enter p0

    if-nez p1, :cond_c

    .line 85
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 84
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_c
    :try_start_c
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Identity;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_9

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
    .registers 3
    .parameter "key"

    .prologue
    .line 94
    monitor-enter p0

    if-nez p1, :cond_6

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_4
    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Identity;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 94
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public identities()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeIdentity(Ljava/security/Identity;)V
    .registers 7
    .parameter "identity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    if-nez p1, :cond_12

    .line 133
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.92"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 132
    :catchall_f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 136
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_24

    .line 138
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.95"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_24
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, contains:Z
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 146
    .local v1, key:Ljava/security/PublicKey;
    if-eqz v1, :cond_46

    .line 147
    if-nez v0, :cond_3f

    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_3f
    const/4 v3, 0x1

    move v0, v3

    .line 148
    :goto_41
    iget-object v3, p0, Lorg/apache/harmony/security/SystemScope;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_46
    if-nez v0, :cond_57

    .line 152
    new-instance v3, Ljava/security/KeyManagementException;

    const-string v4, "security.96"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_f

    .line 147
    :cond_54
    const/4 v3, 0x0

    move v0, v3

    goto :goto_41

    .line 154
    :cond_57
    monitor-exit p0

    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/SystemScope;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
