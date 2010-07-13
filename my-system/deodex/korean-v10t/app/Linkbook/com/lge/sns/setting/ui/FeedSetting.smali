.class public Lcom/lge/sns/setting/ui/FeedSetting;
.super Landroid/app/Activity;
.source "FeedSetting.java"


# static fields
.field public static final FEED:Ljava/lang/String; = "feed"

.field public static final MSG:Ljava/lang/String; = "message"


# instance fields
.field feedNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field msgNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field perList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field settingManager:Lcom/lge/sns/setting/ISettingFacade;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    return-void
.end method

.method private getNumIndex(ILjava/lang/String;)I
    .registers 9
    .parameter "num"
    .parameter "tag"

    .prologue
    .line 141
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 142
    .local v3, msgSize:I
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 143
    .local v0, feedSize:I
    const/4 v2, 0x0

    .line 145
    .local v2, index:I
    const-string v4, "feed"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v0, :cond_47

    .line 147
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 148
    move v2, v1

    .line 146
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 152
    .end local v1           #i:I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2f
    if-ge v1, v3, :cond_47

    .line 153
    iget-object v4, p0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 154
    move v2, v1

    .line 152
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 159
    :cond_47
    return v2
.end method

.method private getPerIndex(I)I
    .registers 5
    .parameter "per"

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 133
    iget-object v1, p0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v0

    .line 137
    :goto_1c
    return v1

    .line 132
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 21
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f030043

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x46

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->msgNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x46

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->feedNumList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    move-object v3, v0

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->perList:Ljava/util/List;

    move-object v3, v0

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const v3, 0x7f0800bf

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 66
    .local v5, feedNum:Landroid/widget/Spinner;
    const v3, 0x7f0800c1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 67
    .local v6, feedPer:Landroid/widget/Spinner;
    const v3, 0x7f0800c3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 68
    .local v7, msgNum:Landroid/widget/Spinner;
    const v3, 0x7f0800c5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 70
    .local v8, msgPer:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    move-object v3, v0

    invoke-interface {v3}, Lcom/lge/sns/setting/ISettingFacade;->getFeedNum()I

    move-result v12

    .line 71
    .local v12, feed_num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    move-object v3, v0

    invoke-interface {v3}, Lcom/lge/sns/setting/ISettingFacade;->getFeedPer()I

    move-result v13

    .line 72
    .local v13, feed_period:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    move-object v3, v0

    invoke-interface {v3}, Lcom/lge/sns/setting/ISettingFacade;->getMsgNum()I

    move-result v16

    .line 73
    .local v16, message_num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/FeedSetting;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    move-object v3, v0

    invoke-interface {v3}, Lcom/lge/sns/setting/ISettingFacade;->getMsgPer()I

    move-result v17

    .line 76
    .local v17, message_period:I
    const v3, 0x7f05005d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 77
    const v3, 0x7f05005d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 78
    const v3, 0x7f05005e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 79
    const v3, 0x7f05005e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 81
    const v3, 0x7f060008

    const v4, 0x1090008

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v10

    .line 83
    .local v10, feedNumAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 84
    invoke-virtual {v5, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    const v3, 0x7f06000a

    const v4, 0x1090008

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v11

    .line 88
    .local v11, feedPerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v11, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 89
    invoke-virtual {v6, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    const v3, 0x7f060009

    const v4, 0x1090008

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v14

    .line 93
    .local v14, messageNumAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v14, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 94
    invoke-virtual {v7, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    const v3, 0x7f06000a

    const v4, 0x1090008

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v15

    .line 98
    .local v15, messagePerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v15, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 99
    invoke-virtual {v8, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    const-string v3, "feed"

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/setting/ui/FeedSetting;->getNumIndex(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 102
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->getPerIndex(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 103
    const-string v3, "message"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/setting/ui/FeedSetting;->getNumIndex(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 104
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->getPerIndex(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 106
    const v3, 0x7f0800c6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 107
    .local v18, save:Landroid/widget/Button;
    new-instance v3, Lcom/lge/sns/setting/ui/FeedSetting$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/lge/sns/setting/ui/FeedSetting$1;-><init>(Lcom/lge/sns/setting/ui/FeedSetting;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f0800c7

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 125
    .local v9, discard:Landroid/widget/Button;
    new-instance v3, Lcom/lge/sns/setting/ui/FeedSetting$2;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/FeedSetting$2;-><init>(Lcom/lge/sns/setting/ui/FeedSetting;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method
