.class Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;
.super Ljava/lang/Object;
.source "JSSEProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 7

    .prologue
    const-string v5, "SHA-256"

    const-string v4, "SHA-224"

    const-string v3, "SHA-1"

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "SSLContext.TLS"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLContextImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.SSLContext.TLSv1"

    const-string v2, "TLS"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "KeyManagerFactory.X509"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.KeyManagerFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "TrustManagerFactory.X509"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.TrustManagerFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "MessageDigest.SHA-1"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.SHA1"

    const-string v2, "SHA-1"

    invoke-virtual {v0, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.SHA"

    const-string v2, "SHA-1"

    invoke-virtual {v0, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string v2, "SHA-1"

    invoke-virtual {v0, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "MessageDigest.SHA-224"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA224"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.SHA224"

    const-string v2, "SHA-224"

    invoke-virtual {v0, v1, v4}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string v2, "SHA-224"

    invoke-virtual {v0, v1, v4}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "MessageDigest.SHA-256"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.SHA256"

    const-string v2, "SHA-256"

    invoke-virtual {v0, v1, v5}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string v2, "SHA-256"

    invoke-virtual {v0, v1, v5}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "MessageDigest.MD5"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;

    const-string v1, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
