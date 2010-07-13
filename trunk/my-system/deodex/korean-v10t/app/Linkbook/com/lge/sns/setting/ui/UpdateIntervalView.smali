.class public Lcom/lge/sns/setting/ui/UpdateIntervalView;
.super Landroid/app/Activity;
.source "UpdateIntervalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;
    }
.end annotation


# static fields
.field static fromHour:I

.field static fromMinute:I

.field static toHour:I

.field static toMinute:I


# instance fields
.field accountManager:Lcom/lge/sns/account/IAccountFacade;

.field chk_auto:Landroid/widget/CheckBox;

.field discard:Landroid/widget/Button;

.field fromFlag:Z

.field fromListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field fromMeridian:Ljava/lang/String;

.field from_time:Landroid/widget/Button;

.field indexSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field intervalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field interval_text:Ljava/lang/String;

.field noti:Landroid/widget/ListView;

.field notiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/sns/account/Account;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field notiSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field save:Landroid/widget/Button;

.field settingManager:Lcom/lge/sns/setting/ISettingFacade;

.field timeInterval:Landroid/widget/Spinner;

.field toFlag:Z

.field toListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field toMeridian:Ljava/lang/String;

.field to_time:Landroid/widget/Button;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 93
    sput v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    .line 94
    sput v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMinute:I

    .line 95
    const/16 v0, 0xc

    sput v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    .line 96
    sput v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMinute:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromFlag:Z

    .line 99
    iput-boolean v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toFlag:Z

    .line 101
    iput-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->interval_text:Ljava/lang/String;

    .line 102
    iput v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->value:I

    .line 103
    iput-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMeridian:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMeridian:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiSet:Ljava/util/HashSet;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->indexSet:Ljava/util/HashSet;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->notiMap:Ljava/util/Map;

    .line 289
    new-instance v0, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;

    invoke-direct {v0, p0}, Lcom/lge/sns/setting/ui/UpdateIntervalView$6;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 316
    new-instance v0, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/setting/ui/UpdateIntervalView$7;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    iput-object v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method private getFromMeridian()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromFlag:Z

    if-eqz v0, :cond_c

    const v0, 0x7f050063

    invoke-virtual {p0, v0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getToMeridian()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toFlag:Z

    if-eqz v0, :cond_c

    const v0, 0x7f050063

    invoke-virtual {p0, v0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getValueIndex(I)I
    .registers 5
    .parameter "interval"

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 252
    iget-object v1, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v0

    .line 256
    :goto_1c
    return v1

    .line 251
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private gethour(I)I
    .registers 3
    .parameter "fromTime"

    .prologue
    .line 275
    div-int/lit8 v0, p1, 0x3c

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private pad(I)Ljava/lang/Object;
    .registers 4
    .parameter "hour"

    .prologue
    .line 268
    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    .line 269
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 23
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v18, 0x7f030020

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->setContentView(I)V

    .line 125
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 126
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v18, 0x7f030051

    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 127
    .local v17, timeLabel:Landroid/view/View;
    const v18, 0x7f03004f

    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 128
    .local v12, notiLabel:Landroid/view/View;
    const v18, 0x7f03004d

    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 129
    .local v6, auto:Landroid/view/View;
    const v18, 0x7f030050

    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 130
    .local v16, time:Landroid/view/View;
    const v18, 0x7f03004e

    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 131
    .local v10, interval:Landroid/view/View;
    const v18, 0x7f080058

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 138
    const v18, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->chk_auto:Landroid/widget/CheckBox;

    .line 139
    const v18, 0x7f08005f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->from_time:Landroid/widget/Button;

    .line 140
    const v18, 0x7f080061

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->to_time:Landroid/widget/Button;

    .line 141
    const v18, 0x7f080063

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    .line 142
    const v18, 0x7f080059

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->save:Landroid/widget/Button;

    .line 143
    const v18, 0x7f08005a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->discard:Landroid/widget/Button;

    .line 145
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    .line 146
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x1e

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x3c

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x78

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->intervalList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0xf0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->settingManager:Lcom/lge/sns/setting/ISettingFacade;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/sns/setting/ISettingFacade;->getUpdateTime()Lcom/lge/sns/setting/UpdateTime;

    move-result-object v13

    .line 154
    .local v13, setting:Lcom/lge/sns/setting/UpdateTime;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->chk_auto:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->isAutoUpdate()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->isAutoUpdate()Z

    move-result v18

    if-eqz v18, :cond_1b8

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->from_time:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->to_time:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 160
    :cond_1b8
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getFromTime()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->gethour(I)I

    move-result v7

    .line 161
    .local v7, f_h:I
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getFromTime()I

    move-result v18

    mul-int/lit8 v19, v7, 0x3c

    sub-int v8, v18, v19

    .line 162
    .local v8, f_m:I
    const/16 v18, 0xc

    move v0, v7

    move/from16 v1, v18

    if-le v0, v1, :cond_1e9

    .line 163
    const/16 v18, 0xc

    sub-int v7, v7, v18

    .line 164
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromFlag:Z

    .line 165
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getFromTime()I

    move-result v18

    add-int/lit8 v19, v7, 0xc

    mul-int/lit8 v19, v19, 0x3c

    sub-int v8, v18, v19

    .line 168
    :cond_1e9
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getToTime()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->gethour(I)I

    move-result v14

    .line 169
    .local v14, t_h:I
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getToTime()I

    move-result v18

    mul-int/lit8 v19, v14, 0x3c

    sub-int v15, v18, v19

    .line 170
    .local v15, t_m:I
    const/16 v18, 0xc

    move v0, v14

    move/from16 v1, v18

    if-le v0, v1, :cond_21a

    .line 171
    const/16 v18, 0xc

    sub-int v14, v14, v18

    .line 172
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toFlag:Z

    .line 173
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getToTime()I

    move-result v18

    add-int/lit8 v19, v14, 0xc

    mul-int/lit8 v19, v19, 0x3c

    sub-int v15, v18, v19

    .line 176
    :cond_21a
    invoke-direct/range {p0 .. p0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getFromMeridian()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMeridian:Ljava/lang/String;

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getToMeridian()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMeridian:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->from_time:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->pad(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->pad(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMeridian:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->to_time:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->pad(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->pad(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMeridian:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->chk_auto:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView$1;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->from_time:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/setting/ui/UpdateIntervalView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView$2;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->to_time:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/setting/ui/UpdateIntervalView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView$3;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v13}, Lcom/lge/sns/setting/UpdateTime;->getIntervalValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sns/setting/ui/UpdateIntervalView;->value:I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const v19, 0x7f050056

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 213
    const/high16 v18, 0x7f06

    const v19, 0x1090008

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v11

    .line 215
    .local v11, intervalAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v18, 0x1090009

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->timeInterval:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->value:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView;->getValueIndex(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 219
    new-instance v5, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;

    const v18, 0x7f030005

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lge/sns/account/IAccountFacade;->getAccountList()Ljava/util/List;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;Landroid/content/Context;ILjava/util/List;)V

    .line 220
    .local v5, adapter:Lcom/lge/sns/setting/ui/UpdateIntervalView$SettingAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->noti:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->save:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView$4;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->discard:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/sns/setting/ui/UpdateIntervalView$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/setting/ui/UpdateIntervalView$5;-><init>(Lcom/lge/sns/setting/ui/UpdateIntervalView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 279
    packed-switch p1, :pswitch_data_20

    .line 286
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 281
    :pswitch_6
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    sget v3, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromHour:I

    sget v4, Lcom/lge/sns/setting/ui/UpdateIntervalView;->fromMinute:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_5

    .line 284
    :pswitch_13
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    sget v3, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toHour:I

    sget v4, Lcom/lge/sns/setting/ui/UpdateIntervalView;->toMinute:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_5

    .line 279
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method
