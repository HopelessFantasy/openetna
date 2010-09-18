.class public Lcom/android/internal/policy/impl/AccountUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "AccountUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/ServiceConnection;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final EMERGENCY_DIALER_WAKE_MILLIS:I = 0x3a98

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mAccountsService:Landroid/accounts/IAccountsService;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mInstructions:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mTopHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 11
    .parameter "context"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v5, 0x1

    const-string v6, "AccountUnlockScreen"

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object p2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 89
    iput-object p3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090030

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    const v1, 0x102017f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    .line 96
    const v1, 0x1020181

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 98
    const v1, 0x1020182

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    .line 99
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v4}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 100
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    const v1, 0x1020183

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    const v1, 0x1020184

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mOk:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x102017e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const-string v1, "AccountUnlockScreen"

    const-string v1, "debug: Connecting to accounts service"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/accounts/AccountsServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 114
    .local v0, connected:Z
    if-nez v0, :cond_99

    .line 115
    const-string v1, "AccountUnlockScreen"

    const-string v1, "debug: Couldn\'t connect to accounts service"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "couldn\'t bind to accounts service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_99
    return-void
.end method

.method private checkPassword()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, login:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, password:Ljava/lang/String;
    :try_start_15
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findIntendedAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_1d

    move v4, v5

    .line 283
    .end local v0           #account:Ljava/lang/String;
    :goto_1c
    return v4

    .line 281
    .restart local v0       #account:Ljava/lang/String;
    :cond_1d
    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountsService:Landroid/accounts/IAccountsService;

    invoke-interface {v4, v0, v3}, Landroid/accounts/IAccountsService;->shouldUnlock(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_22} :catch_24

    move-result v4

    goto :goto_1c

    .line 282
    .end local v0           #account:Ljava/lang/String;
    :catch_24
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/os/RemoteException;
    move v4, v5

    .line 283
    goto :goto_1c
.end method

.method private findIntendedAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "username"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x40

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, accounts:[Ljava/lang/String;
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountsService:Landroid/accounts/IAccountsService;

    invoke-interface {v11}, Landroid/accounts/IAccountsService;->getAccounts()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_e

    move-result-object v2

    .line 236
    if-nez v2, :cond_12

    move-object v11, v13

    .line 270
    :goto_d
    return-object v11

    .line 233
    :catch_e
    move-exception v11

    move-object v6, v11

    .local v6, e:Landroid/os/RemoteException;
    move-object v11, v13

    .line 234
    goto :goto_d

    .line 244
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_12
    const/4 v4, 0x0

    .line 245
    .local v4, bestAccount:Ljava/lang/String;
    const/4 v5, 0x0

    .line 246
    .local v5, bestScore:I
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_17
    if-ge v8, v9, :cond_57

    aget-object v0, v3, v8

    .line 247
    .local v0, a:Ljava/lang/String;
    const/4 v10, 0x0

    .line 248
    .local v10, score:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 249
    const/4 v10, 0x4

    .line 263
    :cond_23
    :goto_23
    if-le v10, v5, :cond_53

    .line 264
    move-object v4, v0

    .line 265
    move v5, v10

    .line 246
    :cond_27
    :goto_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 250
    :cond_2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_32

    .line 251
    const/4 v10, 0x3

    goto :goto_23

    .line 252
    :cond_32
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_23

    .line 253
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 254
    .local v7, i:I
    if-ltz v7, :cond_23

    .line 255
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, aUsername:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 257
    const/4 v10, 0x2

    goto :goto_23

    .line 258
    :cond_4b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 259
    const/4 v10, 0x1

    goto :goto_23

    .line 266
    .end local v1           #aUsername:Ljava/lang/String;
    .end local v7           #i:I
    :cond_53
    if-ne v10, v5, :cond_27

    .line 267
    const/4 v4, 0x0

    goto :goto_27

    .end local v0           #a:Ljava/lang/String;
    .end local v10           #score:I
    :cond_57
    move-object v11, v4

    .line 270
    goto :goto_d
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 121
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 124
    return-void
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x7530

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v1, :cond_33

    .line 174
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->checkPassword()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v1, :cond_43

    .line 196
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x3a98

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 201
    :cond_43
    return-void

    .line 188
    :cond_44
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v2, 0x10401a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 145
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    const-string v2, ""

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 289
    const-string v0, "AccountUnlockScreen"

    const-string v1, "debug: About to grab as interface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p2}, Landroid/accounts/IAccountsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountsService:Landroid/accounts/IAccountsService;

    .line 291
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountsService:Landroid/accounts/IAccountsService;

    .line 296
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 128
    return-void
.end method
