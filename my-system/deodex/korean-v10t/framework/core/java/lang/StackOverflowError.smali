.class public Ljava/lang/StackOverflowError;
.super Ljava/lang/VirtualMachineError;
.source "StackOverflowError.java"


# static fields
.field private static final serialVersionUID:J = 0x7779ef15877b2377L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/VirtualMachineError;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/VirtualMachineError;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
