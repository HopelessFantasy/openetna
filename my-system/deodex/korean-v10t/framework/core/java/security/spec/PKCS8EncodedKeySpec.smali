.class public Ljava/security/spec/PKCS8EncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "PKCS8EncodedKeySpec.java"


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .parameter "encodedKey"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 39
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "PKCS#8"

    return-object v0
.end method