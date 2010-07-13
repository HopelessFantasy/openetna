.class public abstract Lcom/lge/sns/account/ui/SnMenus;
.super Ljava/lang/Object;
.source "SnMenus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    }
.end annotation


# instance fields
.field final ctx:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenus;->ctx:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/sns/account/ui/SnMenus;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public getIcon(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItem(I)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v0

    .line 109
    .local v0, item:Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    iget v1, v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->icon:I

    return v1
.end method

.method public getIntent(I)Landroid/content/Intent;
    .registers 4
    .parameter "i"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItem(I)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v0

    .line 118
    .local v0, item:Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    iget-object v1, v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->intent:Landroid/content/Intent;

    return-object v1
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 4
    .parameter "i"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItem(I)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v0

    .line 90
    .local v0, item:Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    iget-object v1, v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->label:Ljava/lang/String;

    return-object v1
.end method

.method public getLabelIndex(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItem(I)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v0

    .line 100
    .local v0, item:Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    iget v1, v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->labelIndex:I

    return v1
.end method

.method public getSnMenuItem(I)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 3
    .parameter "i"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItems()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    return-object p0
.end method

.method public abstract getSnMenuItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public getTag(I)Ljava/lang/String;
    .registers 4
    .parameter "i"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;->getSnMenuItem(I)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v0

    .line 80
    .local v0, item:Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    iget-object v1, v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;->tag:Ljava/lang/String;

    return-object v1
.end method
