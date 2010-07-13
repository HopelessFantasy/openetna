.class public Ljava/lang/NoSuchFieldError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "NoSuchFieldError.java"


# static fields
.field private static final serialVersionUID:J = -0x2ff7b4f340b9ff8bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
