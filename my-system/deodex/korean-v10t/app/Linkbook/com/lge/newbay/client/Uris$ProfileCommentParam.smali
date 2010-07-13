.class public Lcom/lge/newbay/client/Uris$ProfileCommentParam;
.super Lcom/lge/newbay/client/Uris$SnsBasicParam;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/Uris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileCommentParam"
.end annotation


# instance fields
.field commentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .registers 2
    .parameter "commentId"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->commentId:Ljava/lang/String;

    .line 86
    return-void
.end method
