.class public Ljava/security/spec/ECGenParameterSpec;
.super Ljava/lang/Object;
.source "ECGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v2, "name"

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_17
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
