.class public abstract Ljava/security/KeyStore$Builder;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$TmpLSParameter;,
        Ljava/security/KeyStore$Builder$BuilderImpl;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .registers 11
    .parameter "type"
    .parameter "provider"
    .parameter "file"
    .parameter "protectionParameter"

    .prologue
    .line 934
    if-nez p0, :cond_e

    .line 935
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.07"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_e
    if-nez p3, :cond_1c

    .line 938
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.42"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_1c
    if-nez p2, :cond_2a

    .line 941
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.43"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_2a
    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    if-nez v0, :cond_3e

    instance-of v0, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v0, :cond_3e

    .line 947
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.35"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_3e
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_54

    .line 951
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.44"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_54
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 954
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.45"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_6a
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    const/4 v1, 0x0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v6

    move-object v2, p3

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;Ljava/security/AccessControlContext;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .registers 10
    .parameter "type"
    .parameter "provider"
    .parameter "protectionParameter"

    .prologue
    const/4 v1, 0x0

    .line 992
    if-nez p0, :cond_f

    .line 993
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.07"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_f
    if-nez p2, :cond_1d

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.42"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_1d
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v6

    move-object v2, p2

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;Ljava/security/AccessControlContext;)V

    return-object v0
.end method

.method public static newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .registers 9
    .parameter "keyStore"
    .parameter "protectionParameter"

    .prologue
    const/4 v3, 0x0

    .line 885
    if-nez p0, :cond_f

    .line 886
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.41"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_f
    if-nez p1, :cond_1d

    .line 889
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.42"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_1d
    invoke-static {p0}, Ljava/security/KeyStore;->access$000(Ljava/security/KeyStore;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 893
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/security/KeyStore;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_2d
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;Ljava/security/AccessControlContext;)V

    return-object v0
.end method


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method
