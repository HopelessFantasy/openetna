.class Lcom/lge/sns/profile/linkbook/ProfileFacade$8;
.super Ljava/lang/Object;
.source "ProfileFacade.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/linkbook/ProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/sns/profile/ProfileStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/sns/profile/ProfileStatus;Lcom/lge/sns/profile/ProfileStatus;)I
    .registers 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 2806
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileStatus;->getPublished()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lge/sns/profile/ProfileStatus;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2805
    check-cast p1, Lcom/lge/sns/profile/ProfileStatus;

    .end local p1
    check-cast p2, Lcom/lge/sns/profile/ProfileStatus;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade$8;->compare(Lcom/lge/sns/profile/ProfileStatus;Lcom/lge/sns/profile/ProfileStatus;)I

    move-result v0

    return v0
.end method
