.class public Lcom/lge/newbay/client/SnsAuthorizedInfo;
.super Lcom/lge/newbay/client/SnInfo;
.source "SnsAuthorizedInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;
    }
.end annotation


# instance fields
.field private author:Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

.field private published:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/lge/newbay/client/SnInfo;-><init>()V

    .line 153
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;Ljava/util/Date;)V
    .registers 5
    .parameter "id"
    .parameter "snId"
    .parameter "author"
    .parameter "published"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/SnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p3, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo;->author:Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    .line 146
    iput-object p4, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo;->published:Ljava/util/Date;

    .line 147
    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo;->author:Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo;->published:Ljava/util/Date;

    return-object v0
.end method

.method public setAuthor(Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;)V
    .registers 2
    .parameter "author"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo;->author:Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    .line 120
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo;->published:Ljava/util/Date;

    .line 134
    return-void
.end method
