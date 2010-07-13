.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$2;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static final CMD_MSG:Ljava/lang/String; = "cmd message"

.field static final CONFIRMATION:Ljava/lang/String; = "confirm"

.field static final EVENT:Ljava/lang/String; = "event"

.field static final EVENT_CAUSE:Ljava/lang/String; = "cause"

.field static final HELP:Ljava/lang/String; = "help"

.field static final INPUT:Ljava/lang/String; = "input"

.field private static final INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivity"

.field private static final MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkMenuActivity"

.field static final MENU_SELECTION:Ljava/lang/String; = "menu selection"

.field static final OPCODE:Ljava/lang/String; = "op"

.field static final OP_BOOT_COMPLETED:I = 0x5

.field static final OP_BROWSER_TERMINATION:I = 0x7

.field static final OP_CMD:I = 0x1

.field private static final OP_DELAYED_MSG:I = 0x6

.field static final OP_END_SESSION:I = 0x4

.field static final OP_IDLE_SCREEN:I = 0x8

.field static final OP_LAUNCH_APP:I = 0x3

.field static final OP_RESPONSE:I = 0x2

.field static final OP_STOP_TONE:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field static final RES_ID:Ljava/lang/String; = "response id"

.field static final RES_ID_BACKWARD:I = 0x15

.field static final RES_ID_CONFIRM:I = 0xd

.field static final RES_ID_DONE:I = 0xe

.field static final RES_ID_END_SESSION:I = 0x16

.field static final RES_ID_EVENT_LIST:I = 0xf

.field static final RES_ID_EXIT:I = 0x17

.field static final RES_ID_INPUT:I = 0xc

.field static final RES_ID_MENU_SELECTION:I = 0xb

.field static final RES_ID_TIMEOUT:I = 0x14

.field static final SCREEN_STATUS:Ljava/lang/String; = "screen status"

.field private static final STK_NOTIFICATION_ID:I = 0x14d

.field private static countrycode:Ljava/lang/String;

.field private static operator:Ljava/lang/String;

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private idleModeText:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field private idleModeValid:Z

.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field private mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

.field private mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMenuIsVisibile:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

.field mToneStopper:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field player:Lcom/android/stk/TonePlayer;

.field private responseNeeded:Z

.field private screenIdle:Z

.field private terminateBrowser:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 148
    sput-object v0, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    .line 149
    sput-object v0, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 73
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 74
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 75
    iput-object v0, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 79
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 80
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 81
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->terminateBrowser:Z

    .line 83
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 85
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 140
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->idleModeValid:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->screenIdle:Z

    .line 144
    iput-object v0, p0, Lcom/android/stk/StkAppService;->player:Lcom/android/stk/TonePlayer;

    .line 145
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    .line 916
    new-instance v0, Lcom/android/stk/StkAppService$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$1;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mToneStopper:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/stk/StkAppService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stk/StkAppService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/stk/StkAppService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stk/StkAppService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->terminateBrowser:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/stk/StkAppService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->terminateBrowser:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/stk/StkAppService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/stk/StkAppService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->screenIdle:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/stk/StkAppService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->screenIdle:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/stk/StkAppService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->idleModeValid:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/stk/StkAppService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchIdleModeText(Z)V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/Menu;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/stk/StkAppService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method private callDelayedMsg()V
    .registers 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 421
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 422
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .registers 5
    .parameter "userAction"

    .prologue
    const/4 v2, 0x0

    .line 711
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_f

    move v0, v2

    :goto_c
    return v0

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_f
    const/high16 v0, 0x4

    goto :goto_c
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .registers 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(I)Ljava/lang/String;
    .registers 7
    .parameter "itemId"

    .prologue
    const/4 v4, 0x0

    .line 971
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    .line 972
    .local v2, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    if-nez v2, :cond_b

    move-object v3, v4

    .line 980
    :goto_a
    return-object v3

    .line 975
    :cond_b
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Item;

    .line 976
    .local v1, item:Lcom/android/internal/telephony/gsm/stk/Item;
    iget v3, v1, Lcom/android/internal/telephony/gsm/stk/Item;->id:I

    if-ne v3, p1, :cond_11

    .line 977
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/stk/Item;->text:Ljava/lang/String;

    goto :goto_a

    .end local v1           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_24
    move-object v3, v4

    .line 980
    goto :goto_a
.end method

.method private handleCmd(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .registers 11
    .parameter "cmdMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v8, "TIM"

    const-string v7, "CLARO"

    const-string v5, "BR"

    .line 466
    if-nez p1, :cond_b

    .line 584
    :cond_a
    :goto_a
    return-void

    .line 470
    :cond_b
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 471
    const/4 v1, 0x1

    .line 473
    .local v1, waitForUsersResponse:Z
    iput-boolean v4, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 476
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    sget-object v2, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_19a

    .line 577
    :cond_2a
    :goto_2a
    if-nez v1, :cond_a

    .line 578
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_194

    .line 579
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_a

    .line 479
    :pswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v0

    .line 480
    .local v0, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 481
    iget-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    if-eqz v2, :cond_54

    .line 482
    iget-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 493
    :goto_48
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->screenIdle:Z

    if-nez v2, :cond_68

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    if-nez v2, :cond_68

    .line 494
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->sendScreenBusyResponse()V

    goto :goto_2a

    .line 483
    :cond_54
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v2, :cond_63

    .line 484
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    goto :goto_48

    .line 487
    :cond_63
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    goto :goto_48

    .line 497
    :cond_68
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchTextDialog()V

    goto :goto_2a

    .line 501
    .end local v0           #msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :pswitch_6c
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    goto :goto_2a

    .line 505
    :pswitch_7a
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 508
    sget-object v2, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    if-eqz v2, :cond_8c

    sget-object v2, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    if-nez v2, :cond_c8

    .line 510
    :cond_8c
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    .line 511
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BR VIVO&TIM] countrycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BR VIVO&TIM] operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    :cond_c8
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->removeMenu()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 517
    const-string v2, "Uninstall App"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iput-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 520
    sget-object v2, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    const-string v3, "BR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    const-string v4, "VIVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    const-string v5, "TIM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    sget-object v4, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    const-string v5, "CLARO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_108

    .line 521
    const-string v2, "[BR VIVO&TIM] Do not uninstall!!! Always install STK!!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    :goto_ff
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v2, :cond_2a

    .line 536
    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    goto/16 :goto_2a

    .line 524
    :cond_108
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto :goto_ff

    .line 526
    :cond_10e
    const-string v2, "Install App"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    sget-object v2, Lcom/android/stk/StkAppService;->countrycode:Ljava/lang/String;

    const-string v3, "BR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    const-string v4, "VIVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    const-string v5, "TIM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    sget-object v4, Lcom/android/stk/StkAppService;->operator:Ljava/lang/String;

    const-string v5, "CLARO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_13e

    .line 530
    const-string v2, "[BR VIVO&TIM] Do not install!!! Already STK is installed!!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_ff

    .line 533
    :cond_13e
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_ff

    .line 541
    :pswitch_144
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchInputActivity()V

    goto/16 :goto_2a

    .line 544
    :pswitch_149
    const/4 v1, 0x0

    .line 545
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->idleModeText:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 546
    iput-boolean v4, p0, Lcom/android/stk/StkAppService;->idleModeValid:Z

    .line 547
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->screenIdle:Z

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchIdleModeText(Z)V

    goto/16 :goto_2a

    .line 553
    :pswitch_15b
    const/4 v1, 0x0

    .line 554
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto/16 :goto_2a

    .line 557
    :pswitch_161
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    goto/16 :goto_2a

    .line 560
    :pswitch_16c
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    goto/16 :goto_2a

    .line 564
    :pswitch_179
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_184

    .line 566
    const/4 v1, 0x0

    .line 569
    :cond_184
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchToneDialog()V

    goto/16 :goto_2a

    .line 572
    :pswitch_189
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getSetEventList()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->handleEventList(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;)V

    goto/16 :goto_2a

    .line 581
    :cond_194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto/16 :goto_a

    .line 477
    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_15b
        :pswitch_15b
        :pswitch_15b
        :pswitch_15b
        :pswitch_149
        :pswitch_7a
        :pswitch_38
        :pswitch_6c
        :pswitch_144
        :pswitch_144
        :pswitch_161
        :pswitch_16c
        :pswitch_179
        :pswitch_189
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .registers 12
    .parameter "args"

    .prologue
    .line 587
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-nez v8, :cond_5

    .line 697
    :goto_4
    return-void

    .line 590
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    .line 593
    .local v6, resMsg:Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
    const-string v8, "help"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 595
    .local v3, helpRequired:Z
    const-string v8, "response id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_166

    .line 693
    :pswitch_1c
    const-string v8, "Unknown result id"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 597
    :pswitch_22
    const-string v8, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    const-string v8, "menu selection"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 599
    .local v5, menuSelection:I
    sget-object v8, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_182

    .line 696
    .end local v5           #menuSelection:I
    :cond_3e
    :goto_3e
    :pswitch_3e
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto :goto_4

    .line 602
    .restart local v5       #menuSelection:I
    :pswitch_44
    invoke-direct {p0, v5}, Lcom/android/stk/StkAppService;->getItemName(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 603
    if-eqz v3, :cond_55

    .line 604
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 609
    :goto_51
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setMenuSelection(I)V

    goto :goto_3e

    .line 606
    :cond_55
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getLoadOptionalIconFailed()Z

    move-result v8

    if-eqz v8, :cond_63

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_5f
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_51

    :cond_63
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_5f

    .line 614
    .end local v5           #menuSelection:I
    :pswitch_66
    const-string v8, "event"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 615
    .local v2, eventValue:I
    const-string v8, "cause"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 616
    .local v0, addedInfo:I
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 617
    invoke-virtual {v6, v2, v0}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setEvent(II)V

    goto :goto_3e

    .line 620
    .end local v0           #addedInfo:I
    .end local v2           #eventValue:I
    :pswitch_7b
    const-string v8, "RES_ID_INPUT"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    const-string v8, "input"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, input:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    if-eqz v8, :cond_9a

    .line 623
    const-string v8, "YES"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 625
    .local v7, yesNoSelection:Z
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setYesNo(Z)V

    goto :goto_3e

    .line 627
    .end local v7           #yesNoSelection:Z
    :cond_9a
    if-eqz v3, :cond_a2

    .line 628
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_3e

    .line 630
    :cond_a2
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getLoadOptionalIconFailed()Z

    move-result v8

    if-eqz v8, :cond_b3

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_ac
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 632
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_3e

    .line 630
    :cond_b3
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_ac

    .line 637
    .end local v4           #input:Ljava/lang/String;
    :pswitch_b6
    const-string v8, "RES_ID_CONFIRM"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    const-string v8, "confirm"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 639
    .local v1, confirmed:Z
    sget-object v8, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_18c

    :pswitch_d2
    goto/16 :goto_3e

    .line 641
    :pswitch_d4
    if-eqz v1, :cond_e8

    .line 642
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getLoadOptionalIconFailed()Z

    move-result v8

    if-eqz v8, :cond_e5

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_e0
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    :cond_e5
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_e0

    .line 646
    :cond_e8
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    .line 650
    :pswitch_ef
    if-eqz v1, :cond_105

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_f3
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 652
    if-eqz v1, :cond_3e

    .line 653
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 654
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    goto/16 :goto_3e

    .line 650
    :cond_105
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_f3

    .line 658
    :pswitch_108
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 659
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setConfirmation(Z)V

    .line 660
    if-eqz v1, :cond_3e

    .line 661
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchCallMsg()V

    goto/16 :goto_3e

    .line 667
    .end local v1           #confirmed:Z
    :pswitch_117
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    .line 670
    :pswitch_11e
    const-string v8, "RES_ID_BACKWARD"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    .line 674
    :pswitch_12a
    const-string v8, "RES_ID_END_SESSION"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    .line 678
    :pswitch_136
    const-string v8, "RES_ID_TIMEOUT"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v8

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v9

    if-ne v8, v9, :cond_15e

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    if-nez v8, :cond_15e

    .line 686
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    .line 689
    :cond_15e
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_3e

    .line 595
    nop

    :pswitch_data_166
    .packed-switch 0xb
        :pswitch_22
        :pswitch_7b
        :pswitch_b6
        :pswitch_117
        :pswitch_66
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_136
        :pswitch_11e
        :pswitch_12a
    .end packed-switch

    .line 599
    :pswitch_data_182
    .packed-switch 0x6
        :pswitch_44
        :pswitch_3e
        :pswitch_44
    .end packed-switch

    .line 639
    :pswitch_data_18c
    .packed-switch 0x7
        :pswitch_d4
        :pswitch_d2
        :pswitch_d2
        :pswitch_d2
        :pswitch_ef
        :pswitch_108
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .registers 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_15

    .line 401
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 402
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_20

    .line 411
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 404
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_16
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    goto :goto_15

    .line 407
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    goto :goto_15

    .line 402
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method

.method private handleEventList(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;)V
    .registers 4
    .parameter "settings"

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 962
    sget-object v0, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$SetEventList:[I

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 968
    :goto_f
    return-void

    .line 965
    :pswitch_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->terminateBrowser:Z

    goto :goto_f

    .line 962
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 427
    iput-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_18

    .line 431
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 433
    :cond_18
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1f

    .line 434
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    .line 436
    :cond_1f
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_36

    .line 437
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    .line 442
    :goto_2a
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    if-eqz v0, :cond_35

    .line 443
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 444
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;)V

    .line 446
    :cond_35
    return-void

    .line 439
    :cond_36
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_2a
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z
    .registers 4
    .parameter "cmd"

    .prologue
    .line 386
    sget-object v0, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 396
    const/4 v0, 0x1

    :goto_10
    return v0

    .line 393
    :pswitch_11
    const/4 v0, 0x0

    goto :goto_10

    .line 386
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private launchBrowser(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;)V
    .registers 8
    .parameter "settings"

    .prologue
    const/high16 v5, 0x400

    const-string v4, "android.intent.action.VIEW"

    .line 812
    if-nez p1, :cond_7

    .line 851
    :goto_6
    return-void

    .line 816
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, data:Landroid/net/Uri;
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 823
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 825
    :cond_1e
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 826
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 827
    sget-object v2, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$LaunchBrowserMode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5c

    .line 844
    :goto_33
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 849
    const-wide/16 v2, 0x2710

    :try_start_38
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_6

    .line 850
    :catch_3c
    move-exception v2

    goto :goto_6

    .line 829
    :pswitch_3e
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 833
    :pswitch_47
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 838
    :pswitch_52
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 827
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_47
        :pswitch_52
    .end packed-switch
.end method

.method private launchCallMsg()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 854
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 859
    .local v0, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 872
    :cond_d
    :goto_d
    return-void

    .line 862
    :cond_e
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 866
    iget-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 868
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 870
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 871
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 801
    iget-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 802
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 803
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 807
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 809
    return-void
.end method

.method private launchEventList()V
    .registers 4

    .prologue
    .line 756
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkEventListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 759
    const-string v1, "EVENT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 761
    return-void
.end method

.method private launchEventMessage()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 764
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    .line 765
    .local v2, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    if-nez v2, :cond_a

    .line 798
    :cond_9
    :goto_9
    return-void

    .line 769
    :cond_a
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 772
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 777
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 778
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 780
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 781
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 783
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 785
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6e

    .line 786
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 790
    :goto_4d
    iget-boolean v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    if-eqz v6, :cond_59

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getLoadOptionalIconFailed()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 791
    :cond_59
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :cond_5e
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 795
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 796
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 797
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 788
    :cond_6e
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4d
.end method

.method private launchIdleModeText(Z)V
    .registers 11
    .parameter "screenIdle"

    .prologue
    const v6, 0x1080222

    const v5, 0x1020006

    const/16 v8, 0x14d

    const/4 v7, 0x0

    .line 875
    iget-object v1, p0, Lcom/android/stk/StkAppService;->idleModeText:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 876
    .local v1, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 877
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 878
    iput-boolean v7, p0, Lcom/android/stk/StkAppService;->idleModeValid:Z

    .line 913
    :goto_16
    return-void

    .line 880
    :cond_17
    if-nez p1, :cond_1f

    .line 881
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_16

    .line 885
    :cond_1f
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 886
    .local v2, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v3, "com.android.stk"

    const v4, 0x109005e

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 890
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 891
    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 893
    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getLoadOptionalIconFailed()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 894
    :cond_42
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 895
    const v3, 0x102003f

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 898
    :cond_4e
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_70

    .line 899
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 907
    :goto_57
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 908
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/stk/StkAppService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 911
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_16

    .line 902
    :cond_70
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_57
.end method

.method private launchInputActivity()V
    .registers 4

    .prologue
    .line 736
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 739
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 741
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 742
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const-string v4, "STATE"

    .line 716
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const/high16 v0, 0x1400

    .line 720
    .local v0, intentFlags:I
    if-nez p1, :cond_2a

    .line 722
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 724
    const-string v2, "STATE"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    :goto_21
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 732
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 733
    return-void

    .line 727
    :cond_2a
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 729
    const-string v2, "STATE"

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_21
.end method

.method private launchTextDialog()V
    .registers 4

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5880

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 751
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 753
    return-void
.end method

.method private launchToneDialog()V
    .registers 7

    .prologue
    .line 935
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 937
    new-instance v2, Lcom/android/stk/TonePlayer;

    invoke-direct {v2}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v2, p0, Lcom/android/stk/StkAppService;->player:Lcom/android/stk/TonePlayer;

    .line 938
    iget-object v2, p0, Lcom/android/stk/StkAppService;->player:Lcom/android/stk/TonePlayer;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->tone:Lcom/android/internal/telephony/gsm/stk/Tone;

    invoke-virtual {v2, v3}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/gsm/stk/Tone;)V

    .line 939
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-static {v2}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/gsm/stk/Duration;)I

    move-result v1

    .line 940
    .local v1, timeout:I
    if-nez v1, :cond_2e

    .line 941
    const/16 v1, 0x7d0

    .line 943
    :cond_2e
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mToneStopper:Landroid/os/Handler;

    const/16 v3, 0x9

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 944
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->vibrate:Z

    if-eqz v2, :cond_46

    .line 945
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 958
    .end local v1           #timeout:I
    :cond_46
    :goto_46
    return-void

    .line 950
    :cond_47
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 951
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v2, 0x5080

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 955
    const-string v2, "TEXT"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 956
    const-string v2, "TONE"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 957
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    goto :goto_46
.end method

.method private removeMenu()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 985
    :try_start_2
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_22

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_14} :catch_19

    move-result-object v1

    if-nez v1, :cond_22

    move v1, v3

    .line 993
    :goto_18
    return v1

    .line 989
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 990
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 991
    goto :goto_18

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_22
    move v1, v4

    .line 993
    goto :goto_18
.end method

.method private sendScreenBusyResponse()V
    .registers 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-nez v1, :cond_5

    .line 463
    :goto_4
    return-void

    .line 452
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    .line 453
    .local v0, resMsg:Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
    const-string v1, "SCREEN_BUSY"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 455
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 458
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 459
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_4

    .line 461
    :cond_2a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_4
.end method

.method private sendterminationResponse()V
    .registers 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 416
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    return-void
.end method

.method private waitForLooper()V
    .registers 3

    .prologue
    .line 258
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_11

    .line 259
    monitor-enter p0

    .line 261
    const-wide/16 v0, 0x64

    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_f

    .line 264
    :goto_a
    :try_start_a
    monitor-exit p0

    goto :goto_0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw v0

    .line 262
    :catch_f
    move-exception v0

    goto :goto_a

    .line 266
    :cond_11
    return-void
.end method


# virtual methods
.method getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    return-object v0
.end method

.method indicateMenuVisibility(Z)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 240
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 168
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    .line 170
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    if-nez v1, :cond_10

    .line 171
    const-string v1, " Unable to get Service handle"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :goto_f
    return-void

    .line 175
    :cond_10
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 176
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "Stk App Service"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 177
    .local v0, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 179
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 181
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    goto :goto_f
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 218
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 219
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_a

    .line 213
    :goto_9
    return-void

    .line 193
    :cond_a
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, msg:Landroid/os/Message;
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 195
    iget v2, v1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_30

    :pswitch_1d
    goto :goto_9

    .line 197
    :pswitch_1e
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    :goto_26
    :pswitch_26
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 201
    :pswitch_2c
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_26

    .line 195
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2c
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method

.method public run()V
    .registers 3

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 229
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 230
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 232
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 233
    return-void
.end method
