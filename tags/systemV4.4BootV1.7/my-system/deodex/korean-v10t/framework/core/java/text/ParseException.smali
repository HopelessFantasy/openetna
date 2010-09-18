.class public Ljava/text/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x2583c2da188a0732L


# instance fields
.field private errorOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "detailMessage"
    .parameter "location"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 43
    iput p2, p0, Ljava/text/ParseException;->errorOffset:I

    .line 44
    return-void
.end method


# virtual methods
.method public getErrorOffset()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Ljava/text/ParseException;->errorOffset:I

    return v0
.end method
