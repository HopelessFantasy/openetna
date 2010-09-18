.class public Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;
.super Ljava/lang/Object;
.source "PolicyUtils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/fortress/PolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPropertyAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;->key:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public key(Ljava/lang/String;)Ljava/security/PrivilegedAction;
    .registers 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/PrivilegedAction",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;->key:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
