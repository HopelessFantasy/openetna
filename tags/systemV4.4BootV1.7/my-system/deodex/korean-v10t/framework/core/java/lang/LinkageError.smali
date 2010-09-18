.class public Ljava/lang/LinkageError;
.super Ljava/lang/Error;
.source "LinkageError.java"


# static fields
.field private static final serialVersionUID:J = 0x31ad4b5534a84abaL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
