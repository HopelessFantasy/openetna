.class public Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;
.super Ljava/lang/Object;
.source "SnsAuthorizedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/SnsAuthorizedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Author"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field id:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "userName"
    .parameter "displayName"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->id:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->userName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->displayName:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter "displayName"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->displayName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->id:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->userName:Ljava/lang/String;

    .line 65
    return-void
.end method
