.class public Ljavax/security/auth/DestroyFailedException;
.super Ljava/lang/Exception;
.source "DestroyFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c1c2ebfec5522eaL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
