.class public Ljava/security/cert/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private final encoded:[B

.field private final policyQualifier:[B

.field private final policyQualifierId:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 7
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_12

    .line 55
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.0A"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_12
    array-length v2, p1

    if-nez v2, :cond_21

    .line 58
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.69"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_21
    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    .line 61
    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    iget-object v3, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    array-length v3, v3

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    sget-object v2, Lorg/apache/harmony/security/x509/PolicyQualifierInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    iget-object v3, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 66
    .local v1, decoded:[Ljava/lang/Object;
    aget-object v2, v1, v4

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    .line 67
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, [B

    check-cast v2, [B

    iput-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    .line 68
    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 78
    .local v0, ret:[B
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v0
.end method

.method public final getPolicyQualifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    if-nez v1, :cond_7

    .line 102
    const/4 v1, 0x0

    .line 106
    :goto_6
    return-object v1

    .line 104
    :cond_7
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 105
    .local v0, ret:[B
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 106
    goto :goto_6
.end method

.method public final getPolicyQualifierId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PolicyQualifierInfo: [\npolicyQualifierId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, "\npolicyQualifier: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
