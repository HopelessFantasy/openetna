.class Ljava/util/jar/JarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierEntry"
.end annotation


# instance fields
.field certificates:[Ljava/security/cert/Certificate;

.field digest:Ljava/security/MessageDigest;

.field hash:[B


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    .registers 4
    .parameter "digest"
    .parameter "hash"
    .parameter "certificates"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 98
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 99
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->hash:[B

    .line 100
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->certificates:[Ljava/security/cert/Certificate;

    .line 101
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 110
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 111
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 120
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 121
    return-void
.end method
