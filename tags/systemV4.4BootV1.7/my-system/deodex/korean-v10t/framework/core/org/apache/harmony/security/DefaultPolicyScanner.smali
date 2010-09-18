.class public Lorg/apache/harmony/security/DefaultPolicyScanner;
.super Ljava/lang/Object;
.source "DefaultPolicyScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;,
        Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    return-void
.end method


# virtual methods
.method protected composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;
    .registers 3
    .parameter "st"

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected configure(Ljava/io/StreamTokenizer;)Ljava/io/StreamTokenizer;
    .registers 5
    .parameter "st"

    .prologue
    const/16 v2, 0x5f

    const/16 v1, 0x24

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 97
    invoke-virtual {p1, v2, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 98
    invoke-virtual {p1, v1, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 99
    return-object p1
.end method

.method protected final handleUnexpectedToken(Ljava/io/StreamTokenizer;)V
    .registers 5
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;

    const-string v1, "security.90"

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V
    .registers 6
    .parameter "st"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;

    const-string v1, "security.8F"

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->composeStatus(Ljava/io/StreamTokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readGrantEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    .registers 6
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 206
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;-><init>()V

    .line 208
    .local v0, ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    :goto_7
    :sswitch_7
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    .line 238
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    .line 243
    :goto_11
    return-object v0

    .line 211
    :sswitch_12
    const-string v1, "signedby"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 212
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 213
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    goto :goto_7

    .line 215
    :cond_27
    const-string v1, "security.8B"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_7

    .line 217
    :cond_31
    const-string v1, "codebase"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 218
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_46

    .line 219
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    goto :goto_7

    .line 221
    :cond_46
    const-string v1, "security.8C"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_7

    .line 223
    :cond_50
    const-string v1, "principal"

    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readPrincipalEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->addPrincipal(Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;)V

    goto :goto_7

    .line 226
    :cond_62
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_7

    .line 234
    :sswitch_66
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readPermissionEntries(Ljava/io/StreamTokenizer;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    goto :goto_11

    .line 208
    nop

    :sswitch_data_6e
    .sparse-switch
        -0x3 -> :sswitch_12
        0x2c -> :sswitch_7
        0x7b -> :sswitch_66
    .end sparse-switch
.end method

.method protected readKeystoreEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .registers 6
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 166
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;-><init>()V

    .line 167
    .local v0, ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_2c

    .line 168
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-eq v1, v3, :cond_23

    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    if-ne v1, v3, :cond_28

    .line 171
    :cond_23
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 178
    :goto_27
    return-object v0

    .line 173
    :cond_28
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_27

    .line 176
    :cond_2c
    const-string v1, "security.8A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected readPermissionEntries(Ljava/io/StreamTokenizer;)Ljava/util/Collection;
    .registers 9
    .parameter "st"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StreamTokenizer;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    const/4 v5, -0x3

    const/16 v4, 0x22

    .line 306
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :goto_a
    :sswitch_a
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    sparse-switch v2, :sswitch_data_82

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_a

    .line 311
    :sswitch_15
    const-string v2, "permission"

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 312
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;-><init>()V

    .line 313
    .local v0, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v5, :cond_77

    .line 314
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v4, :cond_3b

    .line 316
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 319
    :cond_3b
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v2, v6, :cond_42

    .line 320
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 322
    :cond_42
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v2, v4, :cond_53

    .line 323
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v6, :cond_53

    .line 325
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 328
    :cond_53
    iget v2, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v2, v5, :cond_73

    const-string v2, "signedby"

    iget-object v3, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 330
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    if-ne v2, v4, :cond_6f

    .line 331
    iget-object v2, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v2, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    .line 338
    :goto_6b
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 333
    :cond_6f
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_6b

    .line 336
    :cond_73
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->pushBack()V

    goto :goto_6b

    .line 342
    .end local v0           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    :cond_77
    const-string v2, "security.8E"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_a

    .line 357
    :sswitch_81
    return-object v1

    .line 308
    :sswitch_data_82
    .sparse-switch
        -0x3 -> :sswitch_15
        0x3b -> :sswitch_a
        0x7d -> :sswitch_81
    .end sparse-switch
.end method

.method protected readPrincipalEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .registers 7
    .parameter "st"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2a

    const-string v4, "*"

    .line 266
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;-><init>()V

    .line 267
    .local v0, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_22

    .line 268
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    .line 274
    :cond_17
    :goto_17
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2e

    .line 275
    iget-object v1, p1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 281
    :goto_21
    return-object v0

    .line 270
    :cond_22
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v1, v3, :cond_17

    .line 271
    const-string v1, "*"

    iput-object v4, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Ljava/io/StreamTokenizer;->nextToken()I

    goto :goto_17

    .line 276
    :cond_2e
    iget v1, p1, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v1, v3, :cond_37

    .line 277
    const-string v1, "*"

    iput-object v4, v0, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    goto :goto_21

    .line 279
    :cond_37
    const-string v1, "security.8D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public scanStream(Ljava/io/Reader;Ljava/util/Collection;Ljava/util/List;)V
    .registers 7
    .parameter "r"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/security/DefaultPolicyScanner$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 122
    .local p2, grantEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .local p3, keystoreEntries:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->configure(Ljava/io/StreamTokenizer;)Ljava/io/StreamTokenizer;

    move-result-object v0

    .line 125
    .local v0, st:Ljava/io/StreamTokenizer;
    :goto_9
    :sswitch_9
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    .line 143
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;)V

    goto :goto_9

    .line 130
    :sswitch_14
    const-string v1, "keystore"

    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 131
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readKeystoreEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 132
    :cond_26
    const-string v1, "grant"

    iget-object v2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 133
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;->readGrantEntry(Ljava/io/StreamTokenizer;)Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 135
    :cond_38
    const-string v1, "security.89"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/DefaultPolicyScanner;->handleUnexpectedToken(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    goto :goto_9

    .line 147
    :sswitch_42
    return-void

    .line 125
    nop

    :sswitch_data_44
    .sparse-switch
        -0x3 -> :sswitch_14
        -0x1 -> :sswitch_42
        0x3b -> :sswitch_9
    .end sparse-switch
.end method
