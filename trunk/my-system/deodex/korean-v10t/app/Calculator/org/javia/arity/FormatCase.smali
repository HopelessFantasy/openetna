.class Lorg/javia/arity/FormatCase;
.super Ljava/lang/Object;
.source "UnitTest.java"


# instance fields
.field public res:Ljava/lang/String;

.field public rounding:I

.field public val:D


# direct methods
.method public constructor <init>(IDLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lorg/javia/arity/FormatCase;->rounding:I

    .line 180
    iput-wide p2, p0, Lorg/javia/arity/FormatCase;->val:D

    .line 181
    iput-object p4, p0, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    .line 182
    return-void
.end method
