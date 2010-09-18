.class Ljava/math/BigInt$Context;
.super Ljava/lang/Object;
.source "BigInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Context"
.end annotation


# instance fields
.field bnctx:I

.field final synthetic this$0:Ljava/math/BigInt;


# direct methods
.method constructor <init>(Ljava/math/BigInt;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Ljava/math/BigInt$Context;->this$0:Ljava/math/BigInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lorg/openssl/NativeBN;->BN_CTX_new()I

    move-result v0

    iput v0, p0, Ljava/math/BigInt$Context;->bnctx:I

    .line 40
    return-void
.end method
