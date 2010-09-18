.class Lcom/lge/sns/setting/ui/UpdateIntervalView$4;
.super Ljava/lang/Object;
.source "UpdateIntervalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/setting/ui/UpdateIntervalView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "arg0"

    .prologue
    .line 223
    new-instance v4, Lcom/lge/sns/setting/UpdateTime;

    invoke-direct {v4}, Lcom/lge/sns/setting/UpdateTime;-><init>()V

    .line 224
    .local v4, setting:Lcom/lge/sns/setting/UpdateTime;
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->chk_auto:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/sns/setting/UpdateTime;->setAutoUpdate(Z)V

    .line 226
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-boolean v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromFlag:Z

    if-eqz v6, :cond_84

    sget v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    add-int/lit8 v6, v6, 0xc

    mul-int/lit8 v6, v6, 0x3c

    sget v7, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMinute:I

    add-int/2addr v6, v7

    move v1, v6

    .line 227
    .local v1, from:I
    :goto_20
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-boolean v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toFlag:Z

    if-eqz v6, :cond_8d

    sget v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    add-int/lit8 v6, v6, 0xc

    mul-int/lit8 v6, v6, 0x3c

    sget v7, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMinute:I

    add-int/2addr v6, v7

    move v5, v6

    .line 228
    .local v5, to:I
    :goto_30
    invoke-virtual {v4, v1}, Lcom/lge/sns/setting/UpdateTime;->setFromTime(I)V

    .line 229
    invoke-virtual {v4, v5}, Lcom/lge/sns/setting/UpdateTime;->setToTime(I)V

    .line 231
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 232
    .local v3, intervalIndex:I
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/sns/setting/UpdateTime;->setIntervalValue(I)V

    .line 233
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    invoke-interface {v6, v4}, Lcom/lge/sns/setting/ISettingFacade;->setUpdateTime(Lcom/lge/sns/setting/UpdateTime;)V

    .line 235
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 236
    .local v0, account:Lcom/lge/sns/account/Account;
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v7, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    iget-object v6, v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v7, v8, v6}, Lcom/lge/sns/account/IAccountFacade;->saveNotify(Ljava/lang/String;Z)I

    goto :goto_5e

    .line 226
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v1           #from:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intervalIndex:I
    .end local v5           #to:I
    :cond_84
    sget v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    mul-int/lit8 v6, v6, 0x3c

    sget v7, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMinute:I

    add-int/2addr v6, v7

    move v1, v6

    goto :goto_20

    .line 227
    .restart local v1       #from:I
    :cond_8d
    sget v6, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    mul-int/lit8 v6, v6, 0x3c

    sget v7, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMinute:I

    add-int/2addr v6, v7

    move v5, v6

    goto :goto_30

    .line 239
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intervalIndex:I
    .restart local v5       #to:I
    :cond_96
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-virtual {v6}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050059

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 241
    iget-object v6, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;->this$0:Lcom/lge/sns/setting/ui/UpdateIntervalView;

    invoke-virtual {v6}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->finish()V

    .line 242
    return-void
.end method
