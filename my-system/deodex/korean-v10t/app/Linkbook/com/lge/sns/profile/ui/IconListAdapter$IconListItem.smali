.class public Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mAccount:Lcom/lge/sns/account/Account;


# direct methods
.method public constructor <init>(Lcom/lge/sns/account/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;->mAccount:Lcom/lge/sns/account/Account;

    .line 91
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/lge/sns/account/Account;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;->mAccount:Lcom/lge/sns/account/Account;

    return-object v0
.end method
