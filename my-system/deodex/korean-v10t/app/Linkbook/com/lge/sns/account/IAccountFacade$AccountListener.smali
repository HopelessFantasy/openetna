.class public interface abstract Lcom/lge/sns/account/IAccountFacade$AccountListener;
.super Ljava/lang/Object;
.source "IAccountFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/IAccountFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountListener"
.end annotation


# virtual methods
.method public abstract onAccountAdded(Lcom/lge/sns/account/Account;)V
.end method

.method public abstract onAccountRemoved(Lcom/lge/sns/account/Account;)V
.end method

.method public abstract onAccountUpdated(Lcom/lge/sns/account/Account;)V
.end method
