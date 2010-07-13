.class public Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
.super Lcom/lge/newbay/client/SnsAuthorizedInfo;
.source "IProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsUserProfileComment"
.end annotation


# instance fields
.field comment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>()V

    .line 671
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;Ljava/lang/String;)V
    .registers 6
    .parameter "id"
    .parameter "snId"
    .parameter "author"
    .parameter "published"
    .parameter "comment"

    .prologue
    .line 663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;)V

    .line 664
    iput-object p5, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->comment:Ljava/lang/String;

    .line 665
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->comment:Ljava/lang/String;

    .line 652
    return-void
.end method
