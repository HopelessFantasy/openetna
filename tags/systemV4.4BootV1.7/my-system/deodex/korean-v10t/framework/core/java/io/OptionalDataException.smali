.class public Ljava/io/OptionalDataException;
.super Ljava/io/ObjectStreamException;
.source "OptionalDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x6f2d38e4604bc55cL


# instance fields
.field public eof:Z

.field public length:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method
