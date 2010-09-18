.class Ljava/text/AttributedString$Range;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field end:I

.field start:I

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(IILjava/lang/Object;)V
    .registers 4
    .parameter "s"
    .parameter "e"
    .parameter "v"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Ljava/text/AttributedString$Range;->start:I

    .line 54
    iput p2, p0, Ljava/text/AttributedString$Range;->end:I

    .line 55
    iput-object p3, p0, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    .line 56
    return-void
.end method
