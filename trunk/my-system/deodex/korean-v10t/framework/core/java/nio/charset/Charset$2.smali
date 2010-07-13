.class Ljava/nio/charset/Charset$2;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->getContextClassLoader()Ljava/lang/ClassLoader;
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
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Ljava/nio/charset/Charset$2;->val$t:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Ljava/nio/charset/Charset$2;->val$t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/nio/charset/Charset$2;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
