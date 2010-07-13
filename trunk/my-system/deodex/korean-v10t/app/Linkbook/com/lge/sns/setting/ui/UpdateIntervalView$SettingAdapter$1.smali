.class Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;
.super Ljava/lang/Object;
.source "UpdateIntervalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

.field final synthetic val$account:Lcom/lge/sns/account/Account;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->this$1:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

    iput-object p2, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->this$1:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/sns/account/IAccountFacade;->isNotify(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 82
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->this$1:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_22
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->this$1:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    return-void

    .line 84
    :cond_2e
    iget-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->this$1:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;->val$account:Lcom/lge/sns/account/Account;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method
