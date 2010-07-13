.class Lcom/lge/sns/setting/ui/FeedSetting$1;
.super Ljava/lang/Object;
.source "FeedSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/setting/ui/FeedSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/setting/ui/FeedSetting;

.field final synthetic val$feedNum:Landroid/widget/Spinner;

.field final synthetic val$feedPer:Landroid/widget/Spinner;

.field final synthetic val$msgNum:Landroid/widget/Spinner;

.field final synthetic val$msgPer:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/lge/sns/setting/ui/FeedSetting;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iput-object p2, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$feedNum:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$feedPer:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$msgNum:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$msgPer:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$feedNum:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 111
    .local v0, feedNumIndex:I
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$feedPer:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 112
    .local v1, feedPerIndex:I
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$msgNum:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 113
    .local v2, msgNumIndex:I
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->val$msgPer:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 115
    .local v3, msgPerIndex:I
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v5, v4, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v4, v4, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/lge/sns/setting/ISettingFacade;->setFeedNum(I)V

    .line 116
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v5, v4, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v4, v4, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/lge/sns/setting/ISettingFacade;->setFeedPer(I)V

    .line 117
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v5, v4, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v4, v4, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/lge/sns/setting/ISettingFacade;->setMsgNum(I)V

    .line 118
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v5, v4, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    iget-object v4, v4, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/lge/sns/setting/ISettingFacade;->setMsgPer(I)V

    .line 120
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    invoke-virtual {v4}, Lcom/lge/sns/setting/ui/FeedSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f05005a

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 121
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting$1;->this$0:Lcom/lge/sns/setting/ui/FeedSetting;

    invoke-virtual {v4}, Lcom/lge/sns/setting/ui/FeedSetting;->finish()V

    .line 122
    return-void
.end method
