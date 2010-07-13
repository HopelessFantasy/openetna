.class public Lcom/lge/newbay/client/ISetting$Resource;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ISetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field userFilter:Lcom/lge/newbay/client/ISetting$UserFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lge/newbay/client/ISetting$UserFilter;)V
    .registers 3
    .parameter "id"
    .parameter "userFilter"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Resource;->id:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/lge/newbay/client/ISetting$Resource;->userFilter:Lcom/lge/newbay/client/ISetting$UserFilter;

    .line 184
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Resource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFilter()Lcom/lge/newbay/client/ISetting$UserFilter;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Resource;->userFilter:Lcom/lge/newbay/client/ISetting$UserFilter;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Resource;->id:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setUserFilter(Lcom/lge/newbay/client/ISetting$UserFilter;)V
    .registers 2
    .parameter "userFilter"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Resource;->userFilter:Lcom/lge/newbay/client/ISetting$UserFilter;

    .line 179
    return-void
.end method
