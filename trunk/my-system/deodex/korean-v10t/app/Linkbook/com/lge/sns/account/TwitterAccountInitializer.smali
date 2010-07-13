.class public Lcom/lge/sns/account/TwitterAccountInitializer;
.super Lcom/lge/sns/account/AccountInitializer;
.source "TwitterAccountInitializer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "ctx"
    .parameter "snsId"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/AccountInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getInitializeJob()Ljava/lang/Runnable;
    .registers 5

    .prologue
    .line 34
    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/TwitterAccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    .line 35
    .local v1, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    iget-object v2, p0, Lcom/lge/sns/account/TwitterAccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/TwitterAccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    .line 36
    .local v0, messageFacade:Lcom/lge/sns/message/IMessageFacade;
    new-instance v2, Lcom/lge/sns/account/TwitterAccountInitializer$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/lge/sns/account/TwitterAccountInitializer$1;-><init>(Lcom/lge/sns/account/TwitterAccountInitializer;Lcom/lge/sns/profile/IProfileFacade;Lcom/lge/sns/message/IMessageFacade;)V

    return-object v2
.end method
