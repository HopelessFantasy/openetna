.class Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;


# instance fields
.field private loadOptionalIcon:Z

.field private mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .registers 5
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 39
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 70
    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    .line 71
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    .registers 4
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 59
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    if-eqz v1, :cond_b

    .line 60
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 65
    :goto_9
    monitor-exit v0

    return-object v1

    .line 62
    :cond_b
    if-eqz p1, :cond_16

    .line 63
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_9

    .line 59
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1

    .line 65
    :cond_16
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-eqz p1, :cond_f

    .line 78
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 80
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_f

    .line 82
    :try_start_b
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :try_end_e
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    .line 88
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_f
    :goto_f
    return-object v0

    .line 83
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :catch_10
    move-exception v2

    .line 84
    .local v2, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 275
    const-string v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 278
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 280
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 282
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1b

    .line 283
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 287
    :cond_1b
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 288
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 291
    :cond_27
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_31

    .line 293
    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 296
    :cond_31
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_41

    .line 298
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    .line 299
    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 302
    :cond_41
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_4f

    .line 304
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 308
    :cond_4f
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7b

    move v3, v6

    :goto_56
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 309
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7d

    move v3, v6

    :goto_5f
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 311
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 313
    if-eqz v1, :cond_7f

    .line 314
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 315
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 316
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    .line 320
    :goto_7a
    return v3

    :cond_7b
    move v3, v4

    .line 308
    goto :goto_56

    :cond_7d
    move v3, v4

    .line 309
    goto :goto_5f

    :cond_7f
    move v3, v4

    .line 320
    goto :goto_7a
.end method

.method private processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 629
    const-string v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 632
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 634
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 636
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_47

    .line 637
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 642
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_2b

    .line 644
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    .line 645
    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 648
    :cond_2b
    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 649
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 651
    if-eqz v1, :cond_4f

    .line 652
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 653
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 654
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    .line 658
    :goto_46
    return v3

    .line 639
    :cond_47
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_4f
    move v3, v4

    .line 658
    goto :goto_46
.end method

.method private processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 380
    const-string v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 383
    .local v2, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v1, 0x0

    .line 385
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 387
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_77

    .line 388
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 393
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_27

    .line 395
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    .line 399
    :cond_27
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_35

    .line 401
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 404
    :cond_35
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 405
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 407
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7f

    move v3, v6

    :goto_40
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 408
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_81

    move v3, v6

    :goto_49
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 409
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_83

    move v3, v6

    :goto_52
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    .line 410
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_85

    move v3, v6

    :goto_5b
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 412
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 414
    if-eqz v1, :cond_87

    .line 415
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 416
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    .line 421
    :goto_76
    return v3

    .line 390
    :cond_77
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_7f
    move v3, v4

    .line 407
    goto :goto_40

    :cond_81
    move v3, v4

    .line 408
    goto :goto_49

    :cond_83
    move v3, v4

    .line 409
    goto :goto_52

    :cond_85
    move v3, v4

    .line 410
    goto :goto_5b

    :cond_87
    move v3, v4

    .line 421
    goto :goto_76
.end method

.method private processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 437
    const-string v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 440
    .local v3, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v2, 0x0

    .line 442
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 444
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_9a

    .line 445
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 450
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_ac

    .line 453
    :try_start_23
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 454
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 455
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 456
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_39} :catch_a2

    .line 464
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_47

    .line 466
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    .line 469
    :cond_47
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_53

    .line 471
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v2

    .line 474
    :cond_53
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_b4

    move v6, v9

    :goto_5a
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 475
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_b6

    move v6, v9

    :goto_63
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 476
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_b8

    move v6, v9

    :goto_6c
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 477
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_ba

    move v6, v9

    :goto_75
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    .line 478
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_bc

    move v6, v9

    :goto_7e
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 480
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 482
    if-eqz v2, :cond_be

    .line 483
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 484
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 485
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v7, v2, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v6, v9

    .line 489
    :goto_99
    return v6

    .line 447
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :cond_9a
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 457
    :catch_a2
    move-exception v6

    move-object v1, v6

    .line 458
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 461
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_ac
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_b4
    move v6, v7

    .line 474
    goto :goto_5a

    :cond_b6
    move v6, v7

    .line 475
    goto :goto_63

    :cond_b8
    move v6, v7

    .line 476
    goto :goto_6c

    :cond_ba
    move v6, v7

    .line 477
    goto :goto_75

    :cond_bc
    move v6, v7

    .line 478
    goto :goto_7e

    :cond_be
    move v6, v7

    .line 489
    goto :goto_99
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 16
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v12, 0x1

    .line 709
    const-string v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 712
    .local v0, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 713
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v6, 0x0

    .line 715
    .local v6, url:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 716
    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_27

    .line 718
    :try_start_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 719
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 720
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 721
    .local v8, valueLen:I
    if-lez v8, :cond_64

    .line 722
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_26} :catch_66

    move-result-object v6

    .line 733
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_27
    :goto_27
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 734
    if-eqz v1, :cond_35

    .line 735
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 738
    :cond_35
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 739
    if-eqz v1, :cond_45

    .line 740
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v3

    .line 741
    iget-boolean v9, v3, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 746
    :cond_45
    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_78

    .line 749
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 759
    .local v4, mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :goto_4c
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 761
    if-eqz v3, :cond_76

    .line 762
    iput v12, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 763
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v10, v3, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v9, v12

    .line 767
    :goto_63
    return v9

    .line 725
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_64
    const/4 v6, 0x0

    goto :goto_27

    .line 727
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_66
    move-exception v9

    move-object v2, v9

    .line 728
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 752
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_70
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 753
    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_4c

    .line 755
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :pswitch_73
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_4c

    .line 767
    :cond_76
    const/4 v9, 0x0

    goto :goto_63

    .line 746
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_70
        :pswitch_73
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 15
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 783
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, tone:Lcom/android/internal/telephony/gsm/stk/Tone;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 787
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v4, 0x0

    .line 788
    .local v4, duration:Lcom/android/internal/telephony/gsm/stk/Duration;
    const/4 v8, 0x0

    .line 790
    .local v8, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 791
    .local v6, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v6, :cond_29

    .line 793
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_29

    .line 795
    :try_start_1b
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 796
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 797
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 798
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/stk/Tone;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/Tone;
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_28} :catch_79

    move-result-object v3

    .line 806
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_29
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 807
    if-eqz v6, :cond_37

    .line 808
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 811
    :cond_37
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 812
    if-eqz v6, :cond_43

    .line 813
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v4

    .line 816
    :cond_43
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 817
    if-eqz v6, :cond_53

    .line 818
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v8

    .line 819
    iget-boolean v0, v8, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 822
    :cond_53
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_83

    const/4 v0, 0x1

    move v5, v0

    .line 824
    .local v5, vibrate:Z
    :goto_5b
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 825
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/Tone;Lcom/android/internal/telephony/gsm/stk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 827
    if-eqz v8, :cond_86

    .line 828
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    .end local v2           #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 831
    const/4 v0, 0x1

    .line 833
    :goto_78
    return v0

    .line 799
    .end local v5           #vibrate:Z
    .restart local v2       #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :catch_79
    move-exception v0

    move-object v7, v0

    .line 800
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 822
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_83
    const/4 v0, 0x0

    move v5, v0

    goto :goto_5b

    .line 833
    .restart local v5       #vibrate:Z
    :cond_86
    const/4 v0, 0x0

    goto :goto_78
.end method

.method private processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 5
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v0, "process Refresh"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_16

    .line 515
    :goto_a
    :pswitch_a
    const/4 v0, 0x0

    return v0

    .line 512
    :pswitch_c
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_a

    .line 507
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 14
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 531
    const-string v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Menu;-><init>()V

    .line 534
    .local v3, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    const/4 v6, 0x0

    .line 535
    .local v6, titleIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .line 536
    .local v1, itemsIconId:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 538
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 540
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_20

    .line 541
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    .line 545
    :cond_20
    :goto_20
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_32

    .line 547
    iget-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 554
    :cond_32
    iget-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_42

    .line 555
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    .line 558
    :cond_42
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_51

    .line 562
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I

    move-result v7

    sub-int/2addr v7, v10

    iput v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    .line 565
    :cond_51
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_63

    .line 567
    iput v10, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 568
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v6

    .line 569
    iget-boolean v7, v6, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIconSelfExplanatory:Z

    .line 572
    :cond_63
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_76

    .line 574
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 575
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    move-result-object v1

    .line 576
    iget-boolean v7, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->itemsIconSelfExplanatory:Z

    .line 579
    :cond_76
    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_ac

    move v4, v10

    .line 580
    .local v4, presentTypeSpecified:Z
    :goto_7d
    if-eqz v4, :cond_89

    .line 581
    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_ae

    .line 582
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    .line 587
    :cond_89
    :goto_89
    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_b3

    move v7, v10

    :goto_90
    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    .line 588
    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_b5

    move v7, v10

    :goto_99
    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    .line 590
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    if-eqz v6, :cond_b7

    move v8, v10

    :goto_a0
    invoke-direct {v7, p1, v3, v8}, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 593
    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_ea

    :goto_aa
    move v7, v10

    .line 614
    :goto_ab
    return v7

    .end local v4           #presentTypeSpecified:Z
    :cond_ac
    move v4, v9

    .line 579
    goto :goto_7d

    .line 584
    .restart local v4       #presentTypeSpecified:Z
    :cond_ae
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    goto :goto_89

    :cond_b3
    move v7, v9

    .line 587
    goto :goto_90

    :cond_b5
    move v7, v9

    .line 588
    goto :goto_99

    :cond_b7
    move v8, v9

    .line 590
    goto :goto_a0

    :pswitch_b9
    move v7, v9

    .line 595
    goto :goto_ab

    .line 597
    :pswitch_bb
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v8, v6, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_aa

    .line 601
    :pswitch_c7
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    .line 602
    .local v5, recordNumbers:[I
    if-eqz v6, :cond_de

    .line 604
    iget-object v7, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 605
    iget v7, v6, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    aput v7, v5, v9

    .line 606
    iget-object v7, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    :cond_de
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 610
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_aa

    .line 593
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_bb
        :pswitch_c7
    .end packed-switch
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 673
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v6, "process SetUpEventList"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 677
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_26

    .line 679
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 680
    .local v3, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 681
    .local v4, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 682
    .local v5, valueLen:I
    aget-byte v6, v3, v4

    and-int/lit16 v2, v6, 0xff

    .line 687
    .local v2, eventValue:I
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    .line 690
    .local v1, event:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;

    invoke-direct {v6, p1, v1}, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/SetEventList;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_26} :catch_28

    .line 693
    .end local v1           #event:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    .end local v2           #eventValue:I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :cond_26
    :goto_26
    const/4 v6, 0x0

    return v6

    .line 691
    :catch_28
    move-exception v6

    goto :goto_26
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 336
    const-string v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 339
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 341
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 343
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1a

    .line 344
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 347
    :cond_1a
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 348
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_2e

    .line 350
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    .line 351
    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 355
    :cond_2e
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 357
    if-eqz v1, :cond_48

    .line 358
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 359
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 360
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    .line 364
    :goto_47
    return v3

    :cond_48
    const/4 v3, 0x0

    goto :goto_47
.end method

.method private processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .registers 15
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 848
    const-string v7, "process SetupCall"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 851
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .line 853
    .local v4, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 855
    .local v3, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 856
    .local v1, callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v2, 0x0

    .line 857
    .local v2, confirmIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v0, 0x0

    .line 860
    .local v0, callIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    .line 861
    if-eqz v4, :cond_28

    .line 862
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 865
    :cond_28
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    .line 866
    if-eqz v4, :cond_38

    .line 867
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v2

    .line 868
    iget-boolean v7, v2, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 872
    :cond_38
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    .line 873
    if-eqz v4, :cond_46

    .line 874
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 877
    :cond_46
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    .line 878
    if-eqz v4, :cond_56

    .line 879
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v0

    .line 880
    iget-boolean v7, v0, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v7, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 883
    :cond_56
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    invoke-direct {v7, p1, v3, v1}, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 885
    if-nez v2, :cond_61

    if-eqz v0, :cond_80

    .line 886
    :cond_61
    iput v11, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 887
    new-array v6, v11, [I

    .line 888
    .local v6, recordNumbers:[I
    if-eqz v2, :cond_7c

    iget v7, v2, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    :goto_69
    aput v7, v6, v10

    .line 890
    if-eqz v0, :cond_7e

    iget v7, v0, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    :goto_6f
    aput v7, v6, v9

    .line 893
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    move v7, v9

    .line 897
    .end local v6           #recordNumbers:[I
    :goto_7b
    return v7

    .restart local v6       #recordNumbers:[I
    :cond_7c
    move v7, v8

    .line 888
    goto :goto_69

    :cond_7e
    move v7, v8

    .line 890
    goto :goto_6f

    .end local v6           #recordNumbers:[I
    :cond_80
    move v7, v10

    .line 897
    goto :goto_7b
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .registers 6
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 252
    .local v1, tagValue:I
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    .line 254
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_4

    move-object v2, v0

    .line 258
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :goto_17
    return-object v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .registers 5
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 234
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .registers 4
    .parameter "resCode"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessageParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 220
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;
    .registers 11
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    .line 189
    const/4 v5, 0x0

    .line 190
    .local v5, icons:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 192
    .local v4, iconIndex:I
    if-nez p1, :cond_16

    .line 193
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    if-eqz v7, :cond_13

    .line 194
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    iput-boolean v8, v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    .line 195
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    .line 196
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 215
    .end local p1
    :goto_12
    return-object v7

    .line 198
    .restart local p1
    :cond_13
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_12

    .line 200
    :cond_16
    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_46

    .line 215
    .end local p1
    :cond_1b
    :goto_1b
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_12

    .line 202
    .restart local p1
    :pswitch_1e
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1b

    .line 205
    .restart local p1
    :pswitch_26
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 207
    move-object v1, v5

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2f
    if-ge v2, v6, :cond_1b

    aget-object v3, v1, v2

    .line 208
    .local v3, icon:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 209
    if-nez v3, :cond_42

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->loadOptionalIcon:Z

    if-eqz v7, :cond_42

    .line 210
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    iput-boolean v8, v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    .line 207
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 200
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 186
    :goto_5
    return-void

    .line 183
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_5

    .line 181
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    .registers 9
    .parameter "berTlv"

    .prologue
    .line 92
    if-nez p1, :cond_3

    .line 177
    :cond_2
    :goto_2
    return-void

    .line 96
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 97
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_17

    .line 100
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 103
    :cond_17
    const/4 v1, 0x0

    .line 104
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 106
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v0

    .line 107
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-nez v0, :cond_28

    .line 108
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 114
    :cond_28
    iget v5, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    .line 116
    .local v2, cmdType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-nez v2, :cond_36

    .line 117
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 122
    :cond_36
    :try_start_36
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a2

    .line 165
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 166
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    :try_end_4d
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_36 .. :try_end_4d} :catch_4e

    goto :goto_2

    .line 169
    :catch_4e
    move-exception v5

    move-object v4, v5

    .line 170
    .local v4, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 171
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 124
    .end local v4           #e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    :pswitch_5f
    :try_start_5f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_62
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_5f .. :try_end_62} :catch_4e

    move-result v1

    .line 174
    :goto_63
    if-nez v1, :cond_2

    .line 175
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 127
    :pswitch_6b
    :try_start_6b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 128
    goto :goto_63

    .line 130
    :pswitch_70
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 131
    goto :goto_63

    .line 133
    :pswitch_75
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 134
    goto :goto_63

    .line 136
    :pswitch_7a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 137
    goto :goto_63

    .line 139
    :pswitch_7f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 140
    goto :goto_63

    .line 145
    :pswitch_84
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 146
    goto :goto_63

    .line 148
    :pswitch_89
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 149
    goto :goto_63

    .line 151
    :pswitch_8e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    .line 152
    const/4 v1, 0x0

    .line 153
    goto :goto_63

    .line 155
    :pswitch_93
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 156
    goto :goto_63

    .line 158
    :pswitch_98
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 159
    goto :goto_63

    .line 161
    :pswitch_9d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_a0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_6b .. :try_end_a0} :catch_4e

    move-result v1

    .line 162
    goto :goto_63

    .line 122
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_6b
        :pswitch_70
        :pswitch_75
        :pswitch_7a
        :pswitch_7f
        :pswitch_84
        :pswitch_84
        :pswitch_84
        :pswitch_84
        :pswitch_89
        :pswitch_8e
        :pswitch_93
        :pswitch_98
        :pswitch_9d
    .end packed-switch
.end method
