.class public Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;
.super Ljava/lang/Object;
.source "IInvitation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsInvitationRecipient"
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;->type:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;->value:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;->type:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/newbay/client/IInvitation$SnsInvitationRecipient;->value:Ljava/lang/String;

    .line 87
    return-void
.end method
