.class public Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
.super Ljava/lang/Object;
.source "IProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/IProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendEntryContainer"
.end annotation


# instance fields
.field final next:Z

.field final prev:Z

.field final profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/FriendEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZZ)V
    .registers 4
    .parameter
    .parameter "prev"
    .parameter "next"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/FriendEntry;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->profiles:Ljava/util/List;

    .line 388
    iput-boolean p2, p0, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->prev:Z

    .line 389
    iput-boolean p3, p0, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->next:Z

    .line 390
    return-void
.end method


# virtual methods
.method public getEntryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/FriendEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->profiles:Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->next:Z

    return v0
.end method

.method public hasPrev()Z
    .registers 2

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->prev:Z

    return v0
.end method
