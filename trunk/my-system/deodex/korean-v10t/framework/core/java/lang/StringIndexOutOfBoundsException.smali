.class public Ljava/lang/StringIndexOutOfBoundsException;
.super Ljava/lang/IndexOutOfBoundsException;
.source "StringIndexOutOfBoundsException.java"


# static fields
.field private static final serialVersionUID:J = -0x5ddaaf32909cbb0aL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 53
    const-string v0, "K0055"

    invoke-static {v0, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method
