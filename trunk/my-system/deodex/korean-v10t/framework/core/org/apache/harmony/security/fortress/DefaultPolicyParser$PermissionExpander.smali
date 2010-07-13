.class Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
.super Ljava/lang/Object;
.source "DefaultPolicyParser.java"

# interfaces
.implements Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/DefaultPolicyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionExpander"
.end annotation


# instance fields
.field private ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

.field private ks:Ljava/security/KeyStore;

.field final synthetic this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pc2str(Ljava/security/Principal;)Ljava/lang/String;
    .registers 7
    .parameter "pc"

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, klass:Ljava/lang/String;
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 390
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public configure(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;)Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
    .registers 3
    .parameter "ge"
    .parameter "ks"

    .prologue
    .line 317
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    .line 318
    iput-object p2, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ks:Ljava/security/KeyStore;

    .line 319
    return-object p0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "protocol"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    const-string v7, "security.143"

    .line 342
    const-string v4, "self"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 344
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    iget-object v4, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    if-eqz v4, :cond_76

    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    iget-object v4, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_76

    .line 345
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    .local v3, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    iget-object v4, v4, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 347
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 348
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    .line 350
    .local v2, pr:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    iget-object v4, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    if-nez v4, :cond_59

    .line 353
    :try_start_37
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ks:Ljava/security/KeyStore;

    iget-object v6, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->pc2str(Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_49

    goto :goto_27

    .line 356
    :catch_49
    move-exception v4

    move-object v0, v4

    .line 357
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    const-string v5, "security.143"

    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-static {v7, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 361
    .end local v0           #e:Ljava/lang/Exception;
    :cond_59
    iget-object v4, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27

    .line 365
    .end local v2           #pr:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    :cond_71
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :goto_75
    return-object v4

    .line 367
    :cond_76
    new-instance v4, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    const-string v5, "security.144"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    :cond_82
    const-string v4, "alias"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 373
    :try_start_8a
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->this$0:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->ks:Ljava/security/KeyStore;

    invoke-virtual {v4, v5, p2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->pc2str(Ljava/security/Principal;)Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_95} :catch_97

    move-result-object v4

    goto :goto_75

    .line 375
    :catch_97
    move-exception v4

    move-object v0, v4

    .line 376
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    const-string v5, "security.143"

    invoke-static {v7, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 380
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a5
    new-instance v4, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    const-string v5, "security.145"

    invoke-static {v5, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
