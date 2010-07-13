.class public Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native EVP_DigestBlockSize(I)I
.end method

.method public static native EVP_DigestFinal(I[BI)I
.end method

.method public static native EVP_DigestInit(ILjava/lang/String;)V
.end method

.method public static native EVP_DigestSize(I)I
.end method

.method public static native EVP_DigestUpdate(I[BII)V
.end method

.method public static native EVP_PKEY_free(I)V
.end method

.method public static native EVP_PKEY_new_DSA([B[B[B[B[B)I
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B)I
.end method

.method public static native EVP_VerifyFinal(I[BIII)I
.end method

.method public static native EVP_VerifyInit(ILjava/lang/String;)V
.end method

.method public static native EVP_VerifyUpdate(I[BII)V
.end method

.method public static native EVP_free(I)V
.end method

.method public static native EVP_new()I
.end method
