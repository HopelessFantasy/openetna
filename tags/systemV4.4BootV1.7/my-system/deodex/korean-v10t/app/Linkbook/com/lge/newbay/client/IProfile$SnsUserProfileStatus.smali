.class public Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
.super Lcom/lge/newbay/client/SnsAuthorizedInfo;
.source "IProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsUserProfileStatus"
.end annotation


# instance fields
.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>()V

    .line 716
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;Ljava/lang/String;)V
    .registers 6
    .parameter "id"
    .parameter "snId"
    .parameter "author"
    .parameter "published"
    .parameter "status"

    .prologue
    .line 708
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/newbay/client/SnsAuthorizedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;)V

    .line 709
    iput-object p5, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->status:Ljava/lang/String;

    .line 710
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->status:Ljava/lang/String;

    .line 697
    return-void
.end method
