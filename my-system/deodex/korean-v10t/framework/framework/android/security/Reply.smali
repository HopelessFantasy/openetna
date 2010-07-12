.class public Landroid/security/Reply;
.super Ljava/lang/Object;
.source "Reply.java"


# instance fields
.field public data:[B

.field public len:I

.field public returnCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/security/Reply;->data:[B

    return-void
.end method
