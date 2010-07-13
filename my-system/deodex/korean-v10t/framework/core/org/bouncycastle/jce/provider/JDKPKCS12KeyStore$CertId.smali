.class Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertId"
.end annotation


# instance fields
.field id:[B

.field final synthetic this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V
    .registers 4
    .parameter
    .parameter "key"

    .prologue
    .line 119
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$000(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    .line 121
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V
    .registers 3
    .parameter
    .parameter "id"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    .line 127
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 145
    instance-of v3, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    if-nez v3, :cond_7

    move v3, v5

    .line 165
    :goto_6
    return v3

    .line 150
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    move-object v1, v0

    .line 152
    .local v1, cId:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v4, v4

    if-eq v3, v4, :cond_15

    move v3, v5

    .line 154
    goto :goto_6

    .line 157
    :cond_15
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v3, v3

    if-eq v2, v3, :cond_2a

    .line 159
    iget-object v3, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_27

    move v3, v5

    .line 161
    goto :goto_6

    .line 157
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 165
    :cond_2a
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 131
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 133
    .local v0, hash:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    array-length v2, v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3a

    .line 135
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    add-int/lit8 v4, v1, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 139
    :cond_3a
    return v0
.end method
