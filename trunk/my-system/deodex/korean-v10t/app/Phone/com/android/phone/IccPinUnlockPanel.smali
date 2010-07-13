.class public Lcom/android/phone/IccPinUnlockPanel;
.super Lcom/android/phone/IccPanel;
.source "IccPinUnlockPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IccPinUnlockPanel$5;,
        Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;,
        Lcom/android/phone/IccPinUnlockPanel$IccLockState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_ICC_UNLOCKED_RESULT:I = 0x64


# instance fields
.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntry:Landroid/widget/EditText;

.field private mFailure:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Landroid/widget/TextView;

.field private mNewPinCode:Ljava/lang/String;

.field private mPUKCode:Ljava/lang/String;

.field private mState:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

.field private mStatus:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field private mUnlockInProgressPane:Landroid/widget/LinearLayout;

.field mUnlockListener:Landroid/view/View$OnClickListener;

.field private mUnlockPane:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Lcom/android/phone/IccPinUnlockPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccPinUnlockPanel$1;-><init>(Lcom/android/phone/IccPinUnlockPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mHandler:Landroid/os/Handler;

    .line 308
    new-instance v0, Lcom/android/phone/IccPinUnlockPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccPinUnlockPanel$3;-><init>(Lcom/android/phone/IccPinUnlockPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 363
    new-instance v0, Lcom/android/phone/IccPinUnlockPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccPinUnlockPanel$4;-><init>(Lcom/android/phone/IccPinUnlockPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccPinUnlockPanel;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccPinUnlockPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/IccPinUnlockPanel;)Lcom/android/phone/IccPinUnlockPanel$IccLockState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mState:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/IccPinUnlockPanel;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mPUKCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/IccPinUnlockPanel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel;->mPUKCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/IccPinUnlockPanel;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mNewPinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/IccPinUnlockPanel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel;->mNewPinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/IccPinUnlockPanel;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/IccPinUnlockPanel;->verifyNewPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 370
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPinUnlock] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin2"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 300
    const/4 v0, 0x1

    .line 303
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method getState()Lcom/android/phone/IccPinUnlockPanel$IccLockState;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mState:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    return-object v0
.end method

.method handleFailure()V
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->showIncorrectPinMessage()V

    .line 255
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->updateState()Z

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->updateView()V

    .line 258
    return-void
.end method

.method handleSuccess()V
    .registers 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->showUnlockSuccess()V

    .line 249
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setCachedSimPin(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method handleUnlockResult(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 227
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->handleSuccess()V

    .line 241
    :cond_7
    :goto_7
    return-void

    .line 233
    :cond_8
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->hidePinUnlockInProgress()V

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->handleFailure()V

    goto :goto_7
.end method

.method hideIncorrectPinMessage()V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mFailure:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    return-void
.end method

.method hidePinUnlockInProgress()V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockInProgressPane:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockPane:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    return-void
.end method

.method initView()V
    .registers 8

    .prologue
    .line 156
    const v3, 0x7f060091

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockPane:Landroid/widget/LinearLayout;

    .line 157
    const v3, 0x7f060096

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockInProgressPane:Landroid/widget/LinearLayout;

    .line 159
    const v3, 0x7f060093

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    .line 160
    iget-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 162
    iget-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 166
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 167
    .local v1, span:Landroid/text/Spannable;
    new-instance v3, Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;

    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;-><init>(Lcom/android/phone/IccPinUnlockPanel;Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 170
    const v3, 0x7f060092

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mFailure:Landroid/widget/TextView;

    .line 171
    const v3, 0x7f060028

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mLabel:Landroid/widget/TextView;

    .line 172
    const v3, 0x7f06005f

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mStatus:Landroid/widget/TextView;

    .line 174
    const v3, 0x7f060094

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockButton:Landroid/widget/Button;

    .line 175
    iget-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v3, 0x7f060095

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPinUnlockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mDismissButton:Landroid/widget/Button;

    .line 182
    iget-object v3, p0, Lcom/android/phone/IccPinUnlockPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/android/phone/IccPinUnlockPanel;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->updateState()Z

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->initView()V

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->updateView()V

    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 220
    const/4 v0, 0x1

    .line 223
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->updateState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->updateView()V

    .line 123
    :cond_c
    return-void
.end method

.method setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel;->mState:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    .line 149
    return-void
.end method

.method showIncorrectPinMessage()V
    .registers 5

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getState()Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_PIN:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    if-ne v2, v3, :cond_1f

    .line 265
    const v2, 0x7f090182

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 270
    .local v1, msg:Ljava/lang/CharSequence;
    :goto_13
    iget-object v2, p0, Lcom/android/phone/IccPinUnlockPanel;->mFailure:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcom/android/phone/IccPinUnlockPanel;->mFailure:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    return-void

    .line 267
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_1f
    const v2, 0x7f09004f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #msg:Ljava/lang/CharSequence;
    goto :goto_13
.end method

.method showUnlockInProgress()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockInProgressPane:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockPane:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    return-void
.end method

.method showUnlockSuccess()V
    .registers 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/IccPinUnlockPanel$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IccPinUnlockPanel$2;-><init>(Lcom/android/phone/IccPinUnlockPanel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    return-void
.end method

.method updateState()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 130
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 133
    .local v1, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    :try_start_b
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_22

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getState()Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_PUK:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    if-eq v2, v3, :cond_32

    .line 135
    sget-object v2, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_PUK:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IccPinUnlockPanel;->setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V

    move v2, v4

    .line 144
    :goto_21
    return v2

    .line 138
    :cond_22
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getState()Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_PIN:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    if-eq v2, v3, :cond_32

    .line 139
    sget-object v2, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_PIN:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {p0, v2}, Lcom/android/phone/IccPinUnlockPanel;->setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_31

    move v2, v4

    .line 140
    goto :goto_21

    .line 142
    :catch_31
    move-exception v2

    .line 144
    :cond_32
    const/4 v2, 0x0

    goto :goto_21
.end method

.method updateView()V
    .registers 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    .local v0, context:Landroid/content/Context;
    sget-object v1, Lcom/android/phone/IccPinUnlockPanel$5;->$SwitchMap$com$android$phone$IccPinUnlockPanel$IccLockState:[I

    iget-object v2, p0, Lcom/android/phone/IccPinUnlockPanel;->mState:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {v2}, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    .line 214
    :goto_11
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 215
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mEntry:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->requestFocus(I)Z

    .line 216
    return-void

    .line 190
    :pswitch_21
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f090049

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 194
    :pswitch_2e
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f09004e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mUnlockButton:Landroid/widget/Button;

    const v2, 0x7f090050

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 200
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/phone/IccPinUnlockPanel;->hideIncorrectPinMessage()V

    .line 201
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f09004b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 205
    :pswitch_57
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f09004c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 209
    :pswitch_64
    iget-object v1, p0, Lcom/android/phone/IccPinUnlockPanel;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f09004d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget-object v1, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_NEW_PIN:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {p0, v1}, Lcom/android/phone/IccPinUnlockPanel;->setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V

    goto :goto_11

    .line 188
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2e
        :pswitch_47
        :pswitch_57
        :pswitch_64
    .end packed-switch
.end method
