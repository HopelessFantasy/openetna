.class public Ljava/security/cert/LDAPCertStoreParameters;
.super Ljava/lang/Object;
.source "LDAPCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final DEFAULT_LDAP_PORT:I = 0x185

.field private static final DEFAULT_LDAP_SERVER_NAME:Ljava/lang/String; = "localhost"


# instance fields
.field private final port:I

.field private final serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "localhost"

    iput-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    .line 67
    const/16 v0, 0x185

    iput v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "serverName"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x185

    iput v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    .line 82
    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "serverName"
    .parameter "port"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    .line 50
    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_11
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 95
    new-instance v0, Ljava/security/cert/LDAPCertStoreParameters;

    iget-object v1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    iget v2, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    invoke-direct {v0, v1, v2}, Ljava/security/cert/LDAPCertStoreParameters;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LDAPCertStoreParameters: [\n serverName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "\n port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
