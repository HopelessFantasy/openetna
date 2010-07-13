.class public Lcom/android/stk/StkMenuActivity;
.super Landroid/app/ListActivity;
.source "StkMenuActivity.java"


# static fields
.field private static final MSG_ID_TIMEOUT:I = 0x1

.field static final STATE_MAIN:I = 0x1

.field static final STATE_SECONDARY:I = 0x2

.field private static countrycode:Ljava/lang/String;

.field private static operator:Ljava/lang/String;


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private mAcceptUsersInput:Z

.field private mContext:Landroid/content/Context;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mState:I

.field private mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/android/stk/StkMenuActivity;->countrycode:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/android/stk/StkMenuActivity;->operator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 50
    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 51
    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 53
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 57
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    .line 71
    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$1;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/stk/StkMenuActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/stk/StkMenuActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    return-void
.end method

.method private displayMenu()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "BR"

    .line 278
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-eqz v1, :cond_72

    .line 280
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_73

    .line 281
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    :goto_1b
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIconSelfExplanatory:Z

    if-nez v1, :cond_a9

    .line 287
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-nez v1, :cond_9f

    .line 290
    sget-object v1, Lcom/android/stk/StkMenuActivity;->countrycode:Ljava/lang/String;

    if-eqz v1, :cond_34

    sget-object v1, Lcom/android/stk/StkMenuActivity;->operator:Ljava/lang/String;

    if-nez v1, :cond_40

    .line 292
    :cond_34
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/stk/StkMenuActivity;->countrycode:Ljava/lang/String;

    .line 293
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/stk/StkMenuActivity;->operator:Ljava/lang/String;

    .line 295
    :cond_40
    sget-object v1, Lcom/android/stk/StkMenuActivity;->countrycode:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/android/stk/StkMenuActivity;->operator:Ljava/lang/String;

    const-string v3, "TIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_7b

    .line 297
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :goto_5b
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 316
    .local v0, adapter:Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setSelection(I)V

    .line 320
    .end local v0           #adapter:Lcom/android/stk/StkMenuAdapter;
    :cond_72
    return-void

    .line 284
    :cond_73
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    .line 299
    :cond_7b
    sget-object v1, Lcom/android/stk/StkMenuActivity;->countrycode:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/android/stk/StkMenuActivity;->operator:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_97

    .line 301
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b

    .line 305
    :cond_97
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b

    .line 307
    :cond_9f
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 310
    :cond_a9
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5b
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/gsm/stk/Item;
    .registers 7
    .parameter "position"

    .prologue
    const-string v4, "Invalid menu"

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, item:Lcom/android/internal/telephony/gsm/stk/Item;
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-eqz v3, :cond_13

    .line 335
    :try_start_7
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Item;

    move-object v2, v0
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_13} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_13} :catch_1c

    .line 346
    :cond_13
    :goto_13
    return-object v2

    .line 336
    :catch_14
    move-exception v3

    move-object v1, v3

    .line 338
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    .line 340
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1c
    move-exception v3

    move-object v1, v3

    .line 342
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 324
    if-eqz p1, :cond_c

    .line 325
    const-string v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 329
    :goto_b
    return-void

    .line 327
    :cond_c
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_b
.end method

.method private sendResponse(I)V
    .registers 3
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 351
    return-void
.end method

.method private sendResponse(IIZ)V
    .registers 9
    .parameter "resId"
    .parameter "itemId"
    .parameter "help"

    .prologue
    .line 354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    return-void
.end method

.method private startTimeOut()V
    .registers 5

    .prologue
    .line 267
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 269
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 270
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    :cond_17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->requestWindowFeature(I)Z

    .line 91
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->setContentView(I)V

    .line 93
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 96
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 99
    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 193
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 194
    const v0, 0x7f060001

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 195
    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f060002

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 196
    return v3
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 188
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 149
    :goto_6
    return v0

    .line 136
    :cond_7
    packed-switch p1, :pswitch_data_22

    .line 149
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_6

    .line 138
    :pswitch_f
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    packed-switch v0, :pswitch_data_28

    goto :goto_a

    .line 140
    :pswitch_15
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 142
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    move v0, v1

    .line 143
    goto :goto_6

    .line 136
    :pswitch_data_22
    .packed-switch 0x4
        :pswitch_f
    .end packed-switch

    .line 138
    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_15
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 115
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_9

    .line 127
    :cond_8
    :goto_8
    return-void

    .line 119
    :cond_9
    invoke-direct {p0, p3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v0

    .line 120
    .local v0, item:Lcom/android/internal/telephony/gsm/stk/Item;
    if-eqz v0, :cond_8

    .line 123
    const/16 v1, 0xb

    iget v2, v0, Lcom/android/internal/telephony/gsm/stk/Item;->id:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 124
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 125
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_8
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 106
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 220
    iget-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v2, :cond_8

    move v2, v4

    .line 247
    :goto_7
    return v2

    .line 223
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    .line 247
    :cond_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_7

    .line 225
    :pswitch_14
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 226
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 228
    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    move v2, v4

    .line 229
    goto :goto_7

    .line 231
    :pswitch_20
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 232
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getSelectedItemPosition()I

    move-result v0

    .line 235
    .local v0, position:I
    const/4 v2, -0x1

    if-gt v0, v2, :cond_2d

    .line 236
    const/4 v0, 0x0

    .line 239
    :cond_2d
    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v1

    .line 240
    .local v1, stkItem:Lcom/android/internal/telephony/gsm/stk/Item;
    if-eqz v1, :cond_f

    .line 244
    const/16 v2, 0xb

    iget v3, v1, Lcom/android/internal/telephony/gsm/stk/Item;->id:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    move v2, v4

    .line 245
    goto :goto_7

    .line 223
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_f
        :pswitch_20
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 181
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 182
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 201
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, helpVisible:Z
    const/4 v1, 0x0

    .line 205
    .local v1, mainVisible:Z
    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 206
    const/4 v1, 0x1

    .line 208
    :cond_c
    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-eqz v2, :cond_14

    .line 209
    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    .line 212
    :cond_14
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 215
    return v4
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 258
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 259
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 260
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 158
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-nez v0, :cond_19

    .line 159
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 174
    :goto_18
    return-void

    .line 162
    :cond_19
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->displayMenu()V

    .line 163
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    .line 167
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_27

    .line 168
    iput v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 169
    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 172
    :cond_27
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_18
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 252
    const-string v0, "STATE"

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    return-void
.end method
