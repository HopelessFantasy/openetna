.class public Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;
.super Ljava/lang/Object;
.source "IInvitation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsInvitationAlbum"
.end annotation


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;->id:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;->id:Ljava/lang/String;

    .line 61
    return-void
.end method
