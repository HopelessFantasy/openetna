.class final Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;
.super Ljava/lang/Object;
.source "FloatingPointParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/FloatingPointParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringExponentPair"
.end annotation


# instance fields
.field e:I

.field negative:Z

.field s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter "s"
    .parameter "e"
    .parameter "negative"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->s:Ljava/lang/String;

    .line 38
    iput p2, p0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->e:I

    .line 39
    iput-boolean p3, p0, Lorg/apache/harmony/luni/util/FloatingPointParser$StringExponentPair;->negative:Z

    .line 40
    return-void
.end method
