.class public Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;
.super Ljava/lang/Object;
.source "IInvitation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsInvitationMessage"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;->subject:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;->body:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2
    .parameter "body"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;->body:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationMessage;->subject:Ljava/lang/String;

    .line 35
    return-void
.end method
