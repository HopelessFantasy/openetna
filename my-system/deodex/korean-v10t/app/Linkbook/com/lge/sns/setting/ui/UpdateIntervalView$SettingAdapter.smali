.class public Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UpdateIntervalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/setting/ui/UpdateIntervalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/account/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;


# direct methods
.method public constructor <init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    .line 58
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 59
    iput-object p4, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->items:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->items:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 64
    .local v0, account:Lcom/lge/sns/account/Account;
    move-object v4, p2

    .line 65
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_20

    .line 66
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 67
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030005

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_20
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;->items:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/account/Account;

    .line 73
    .local v2, item:Lcom/lge/sns/account/Account;
    if-eqz v2, :cond_55

    .line 74
    const v6, 0x7f080011

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, title:Landroid/widget/TextView;
    const v6, 0x7f080012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 77
    .local v1, chk:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->isNotify()Z

    move-result v6

    if-eqz v6, :cond_56

    const/4 v6, 0x1

    :goto_4a
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    new-instance v6, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter$1;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;Lcom/lge/sns/account/Account;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .end local v1           #chk:Landroid/widget/CheckBox;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_55
    return-object v4

    .line 78
    .restart local v1       #chk:Landroid/widget/CheckBox;
    .restart local v3       #title:Landroid/widget/TextView;
    :cond_56
    const/4 v6, 0x0

    goto :goto_4a
.end method
