.class public Lcom/lge/newbay/client/IInvitation$SnsInvitation;
.super Lcom/lge/newbay/client/SnInfo;
.source "IInvitation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsInvitation"
.end annotation


# instance fields
.field album:Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;

.field message:Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;

.field recipient:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;",
            ">;"
        }
    .end annotation
.end field

.field thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/lge/newbay/client/SnInfo;-><init>()V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter "id"
    .parameter "snId"
    .parameter "message"
    .parameter "album"
    .parameter "thumbnailUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;",
            "Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p6, recipient:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/SnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object p3, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->message:Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;

    .line 133
    iput-object p4, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->album:Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;

    .line 134
    iput-object p5, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->thumbnailUrl:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->recipient:Ljava/util/List;

    .line 136
    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->album:Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;

    return-object v0
.end method

.method public getMessage()Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->message:Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;

    return-object v0
.end method

.method public getRecipient()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->recipient:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;)V
    .registers 2
    .parameter "album"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->album:Lcom/lge/newbay/client/IInvitation$SnsInvitationAlbum;

    .line 115
    return-void
.end method

.method public setMessage(Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->message:Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;

    .line 109
    return-void
.end method

.method public setRecipient(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, recipient:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->recipient:Ljava/util/List;

    .line 127
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "thumbnailUrl"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitation;->thumbnailUrl:Ljava/lang/String;

    .line 121
    return-void
.end method
