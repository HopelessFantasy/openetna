.class public Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
.super Ljava/lang/Object;
.source "StkCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private loadOptionalIconFailed:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field private mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

.field private mInput:Lcom/android/internal/telephony/gsm/stk/Input;

.field private mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field private mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 36
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 38
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 104
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 105
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 106
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    .line 108
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 109
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a4

    .line 128
    .end local p0
    :goto_4a
    return-void

    .line 111
    .restart local p0
    :pswitch_4b
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_4a

    .line 116
    :pswitch_69
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    goto :goto_4a

    .line 119
    :pswitch_72
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_4a

    .line 124
    .restart local p0
    :pswitch_8e
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->values()[Lcom/android/internal/telephony/gsm/stk/SetEventList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    goto :goto_4a

    .line 109
    :pswitch_data_a4
    .packed-switch 0xb
        :pswitch_4b
        :pswitch_69
        :pswitch_72
        :pswitch_8e
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 6
    .parameter "cmdParams"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 35
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 36
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 37
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 38
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 61
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 62
    iget-boolean v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 63
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_96

    .line 101
    .end local p1
    :goto_26
    return-void

    .line 66
    .restart local p1
    :pswitch_27
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    goto :goto_26

    .line 74
    .restart local p1
    :pswitch_2e
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_26

    .line 78
    .restart local p1
    :pswitch_35
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    goto :goto_26

    .line 81
    .restart local p1
    :pswitch_3c
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 82
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_26

    .line 87
    .restart local p1
    :pswitch_5e
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, v0

    .line 88
    .local v1, params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 89
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_26

    .line 92
    .end local v1           #params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    :pswitch_6b
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 93
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 94
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_26

    .line 97
    .restart local p1
    :pswitch_85
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    goto :goto_26

    .line 63
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_35
        :pswitch_35
        :pswitch_3c
        :pswitch_5e
        :pswitch_6b
        :pswitch_85
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/gsm/stk/Input;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getLoadOptionalIconFailed()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    return v0
.end method

.method public getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    return-object v0
.end method

.method public getSetEventList()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 152
    :goto_2d
    return-void

    .line 138
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 142
    :pswitch_41
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2d

    .line 145
    :pswitch_47
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2d

    .line 149
    :pswitch_56
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 136
    :pswitch_data_62
    .packed-switch 0xb
        :pswitch_2e
        :pswitch_41
        :pswitch_47
        :pswitch_56
    .end packed-switch
.end method
