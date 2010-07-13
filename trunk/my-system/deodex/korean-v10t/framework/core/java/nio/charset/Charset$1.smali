.class Ljava/nio/charset/Charset$1;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/Charset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lcom/ibm/icu4jni/charset/CharsetProviderICU;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/ibm/icu4jni/charset/CharsetProviderICU;
    .registers 2

    .prologue
    .line 150
    new-instance v0, Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    invoke-direct {v0}, Lcom/ibm/icu4jni/charset/CharsetProviderICU;-><init>()V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/charset/Charset$1;->run()Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    move-result-object v0

    return-object v0
.end method
