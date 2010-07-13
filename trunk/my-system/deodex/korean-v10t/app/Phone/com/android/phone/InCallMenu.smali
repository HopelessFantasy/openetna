.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/InCallMenu"


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

.field mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mManageConference:Lcom/android/phone/InCallMenuItemView;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mShowDialpad:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;

.field mTransferCall:Lcom/android/phone/InCallMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 82
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 570
    const-string v0, "PHONE/InCallMenu"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method private updateBluetoothButton()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 558
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 559
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 560
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 561
    .local v0, audioConnectedOrPending:Z
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 566
    .end local v0           #audioConnectedOrPending:Z
    :goto_1f
    return-void

    .line 563
    :cond_20
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    goto :goto_1f
.end method


# virtual methods
.method clearInCallScreenReference()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 90
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    .line 91
    :cond_c
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method initMenu()V
    .registers 8

    .prologue
    const v6, 0x7f09003c

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 113
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x1030088

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 117
    .local v0, wrappedContext:Landroid/content/Context;
    new-instance v1, Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v1, v0, v2}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    .line 123
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    .line 124
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x108017e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 129
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    .line 130
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 133
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 144
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    .line 145
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 146
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 148
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x1080033

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 150
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    .line 151
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 152
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 154
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 156
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    .line 157
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 158
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 162
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    .line 163
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 173
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 177
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 179
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    .line 180
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 183
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 185
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    .line 186
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 191
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    .line 192
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 193
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 197
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    .line 198
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 199
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 202
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    .line 203
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v6}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 208
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    .line 209
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 210
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v6}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 213
    new-instance v1, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    .line 214
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 268
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 271
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 272
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 273
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 276
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 282
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 283
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 284
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 285
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 286
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 287
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 289
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 290
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 294
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenuView;->dumpState()V

    .line 295
    return-void
.end method

.method updateItems(Lcom/android/internal/telephony/Phone;)Z
    .registers 22
    .parameter "phone"

    .prologue
    .line 314
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 316
    const/16 v18, 0x0

    .line 553
    :goto_e
    return v18

    .line 319
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v18

    if-nez v18, :cond_104

    const/16 v18, 0x1

    move/from16 v13, v18

    .line 320
    .local v13, hasRingingCall:Z
    :goto_1d
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v18

    if-nez v18, :cond_10a

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 321
    .local v11, hasActiveCall:Z
    :goto_2b
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    .line 322
    .local v10, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v18

    if-nez v18, :cond_110

    const/16 v18, 0x1

    move/from16 v12, v18

    .line 325
    .local v12, hasHoldingCall:Z
    :goto_41
    if-eqz v13, :cond_1db

    .line 330
    if-eqz v11, :cond_116

    if-nez v12, :cond_116

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 395
    const/16 v18, 0x1

    goto/16 :goto_e

    .line 319
    .end local v10           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v11           #hasActiveCall:Z
    .end local v12           #hasHoldingCall:Z
    .end local v13           #hasRingingCall:Z
    :cond_104
    const/16 v18, 0x0

    move/from16 v13, v18

    goto/16 :goto_1d

    .line 320
    .restart local v13       #hasRingingCall:Z
    :cond_10a
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_2b

    .line 322
    .restart local v10       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v11       #hasActiveCall:Z
    :cond_110
    const/16 v18, 0x0

    move/from16 v12, v18

    goto/16 :goto_41

    .line 397
    .restart local v12       #hasHoldingCall:Z
    :cond_116
    if-eqz v11, :cond_1d7

    if-eqz v12, :cond_1d7

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 423
    const/16 v18, 0x1

    goto/16 :goto_e

    .line 427
    :cond_1d7
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 437
    :cond_1db
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 440
    .local v3, canManageConference:Z
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 442
    .local v4, canManageConferenceBack:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v19

    if-nez v19, :cond_3c0

    const/16 v19, 0x1

    :goto_20b
    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 453
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v18

    if-nez v18, :cond_3c4

    if-nez v3, :cond_3c4

    const/16 v18, 0x1

    move/from16 v16, v18

    .line 455
    .local v16, showShowDialpad:Z
    :goto_21a
    if-eqz v16, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v18

    if-eqz v18, :cond_3ca

    const/16 v18, 0x1

    move/from16 v9, v18

    .line 456
    .local v9, enableShowDialpad:Z
    :goto_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v19

    if-eqz v19, :cond_3d0

    const v19, 0x7f09003a

    :goto_25a
    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 476
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    .line 477
    .local v7, canSwap:Z
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    .line 478
    .local v5, canMerge:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 483
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->okToTransferCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    .line 484
    .local v8, canTransfer:Z
    const/16 v18, 0x1

    move v0, v3

    move/from16 v1, v18

    if-eq v0, v1, :cond_2bd

    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_2be

    .line 485
    :cond_2bd
    const/4 v8, 0x0

    .line 486
    :cond_2be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mTransferCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->updateBluetoothButton()V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 497
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v18

    if-eqz v18, :cond_3d5

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 510
    :goto_303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 511
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    .line 512
    .local v14, muteOn:Z
    sget-object v18, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object v0, v10

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3fd

    const/16 v18, 0x1

    move/from16 v6, v18

    .line 513
    .local v6, canMute:Z
    :goto_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 522
    if-eqz v12, :cond_403

    if-nez v11, :cond_403

    const/16 v18, 0x1

    move/from16 v15, v18

    .line 523
    .local v15, onHold:Z
    :goto_348
    if-eqz v11, :cond_34c

    if-nez v12, :cond_409

    :cond_34c
    if-eqz v11, :cond_355

    sget-object v18, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object v0, v10

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_409

    :cond_355
    const/16 v18, 0x1

    move/from16 v2, v18

    .line 525
    .local v2, canHold:Z
    :goto_359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndActiveCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndHoldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 553
    const/16 v18, 0x1

    goto/16 :goto_e

    .line 443
    .end local v2           #canHold:Z
    .end local v5           #canMerge:Z
    .end local v6           #canMute:Z
    .end local v7           #canSwap:Z
    .end local v8           #canTransfer:Z
    .end local v9           #enableShowDialpad:Z
    .end local v14           #muteOn:Z
    .end local v15           #onHold:Z
    .end local v16           #showShowDialpad:Z
    :cond_3c0
    const/16 v19, 0x0

    goto/16 :goto_20b

    .line 453
    :cond_3c4
    const/16 v18, 0x0

    move/from16 v16, v18

    goto/16 :goto_21a

    .line 455
    .restart local v16       #showShowDialpad:Z
    :cond_3ca
    const/16 v18, 0x0

    move/from16 v9, v18

    goto/16 :goto_22c

    .line 458
    .restart local v9       #enableShowDialpad:Z
    :cond_3d0
    const v19, 0x7f090039

    goto/16 :goto_25a

    .line 503
    .restart local v5       #canMerge:Z
    .restart local v7       #canSwap:Z
    .restart local v8       #canTransfer:Z
    :cond_3d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v17

    .line 505
    .local v17, speakerOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    goto/16 :goto_303

    .line 512
    .end local v17           #speakerOn:Z
    .restart local v14       #muteOn:Z
    :cond_3fd
    const/16 v18, 0x0

    move/from16 v6, v18

    goto/16 :goto_31d

    .line 522
    .restart local v6       #canMute:Z
    :cond_403
    const/16 v18, 0x0

    move/from16 v15, v18

    goto/16 :goto_348

    .line 523
    .restart local v15       #onHold:Z
    :cond_409
    const/16 v18, 0x0

    move/from16 v2, v18

    goto/16 :goto_359
.end method
