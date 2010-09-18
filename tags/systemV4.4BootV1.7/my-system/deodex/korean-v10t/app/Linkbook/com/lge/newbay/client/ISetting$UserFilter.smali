.class public Lcom/lge/newbay/client/ISetting$UserFilter;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ISetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserFilter"
.end annotation


# instance fields
.field exclude:Z

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->exclude:Z

    .line 161
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .registers 4
    .parameter "exclude"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->exclude:Z

    .line 156
    iput-boolean p1, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->exclude:Z

    .line 157
    iput-object p2, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->users:Ljava/util/List;

    .line 158
    return-void
.end method


# virtual methods
.method public getUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->users:Ljava/util/List;

    return-object v0
.end method

.method public isExclude()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->exclude:Z

    return v0
.end method

.method public setExclude(Z)V
    .registers 2
    .parameter "exclude"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->exclude:Z

    .line 147
    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, users:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$UserFilter;->users:Ljava/util/List;

    .line 153
    return-void
.end method
