.class public Lcom/lge/newbay/client/IFriend$FriendRequest;
.super Lcom/lge/newbay/client/SnsAuthorizedInfo;
.source "IFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IFriend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendRequest"
.end annotation


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;Ljava/lang/String;)V
    .registers 6
    .parameter "id"
    .parameter "snId"
    .parameter "author"
    .parameter "published"
    .parameter "message"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;)V

    .line 64
    iput-object p5, p0, Lcom/lge/newbay/client/IFriend$FriendRequest;->message:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/newbay/client/IFriend$FriendRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/newbay/client/IFriend$FriendRequest;->message:Ljava/lang/String;

    .line 51
    return-void
.end method
