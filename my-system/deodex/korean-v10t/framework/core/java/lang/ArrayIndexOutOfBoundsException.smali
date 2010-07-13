.class public Ljava/lang/ArrayIndexOutOfBoundsException;
.super Ljava/lang/IndexOutOfBoundsException;
.source "ArrayIndexOutOfBoundsException.java"


# static fields
.field private static final serialVersionUID:J = -0x47000adea8815bbcL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 52
    const-string v0, "K0052"

    invoke-static {v0, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
