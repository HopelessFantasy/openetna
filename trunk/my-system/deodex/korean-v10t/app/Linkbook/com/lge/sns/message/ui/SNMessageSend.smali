.class public Lcom/lge/sns/message/ui/SNMessageSend;
.super Landroid/app/Activity;
.source "SNMessageSend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_PROGRESS_SEND:I = 0x0

.field private static final KEY_FRIENDID:Ljava/lang/String; = "friend_userid"

.field public static final KEY_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"

.field public static final KEY_SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final RESULT_FRIENDLIST_PICK:I = 0x0

.field private static final RESULT_SIGN_IN_GET_PROFILE:I = 0x1

.field private static final RESULT_SIGN_IN_SEND_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SNMessageSendView"


# instance fields
.field private final AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field private final MessageManager:Lcom/lge/sns/message/IMessageFacade;

.field private final ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

.field private currentAccount:Lcom/lge/sns/account/Account;

.field private currentCredential:Lcom/lge/sns/account/Credential;

.field private doSendFinish:Ljava/lang/Runnable;

.field private doSendMessages:Ljava/lang/Runnable;

.field private doSendStop:Ljava/lang/Runnable;

.field private doShowNotConnectToast:Ljava/lang/Runnable;

.field private mContentView:Landroid/view/ViewGroup;

.field private mEdit:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecipientId:Ljava/lang/String;

.field private mSend:Landroid/widget/Button;

.field private mSnsId:Ljava/lang/String;

.field private mThreadSend:Ljava/lang/Thread;

.field private mTitle:Landroid/widget/Button;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 57
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    .line 58
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    .line 265
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageSend$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageSend$1;-><init>(Lcom/lge/sns/message/ui/SNMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doSendMessages:Ljava/lang/Runnable;

    .line 312
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageSend$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageSend$2;-><init>(Lcom/lge/sns/message/ui/SNMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doSendFinish:Ljava/lang/Runnable;

    .line 338
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageSend$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageSend$3;-><init>(Lcom/lge/sns/message/ui/SNMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doSendStop:Ljava/lang/Runnable;

    .line 358
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageSend$4;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/SNMessageSend$4;-><init>(Lcom/lge/sns/message/ui/SNMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/message/ui/SNMessageSend;)Lcom/lge/sns/account/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/message/ui/SNMessageSend;)Lcom/lge/sns/account/Credential;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentCredential:Lcom/lge/sns/account/Credential;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doSendFinish:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mThreadSend:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/sns/message/ui/SNMessageSend;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mThreadSend:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/message/ui/SNMessageSend;)Lcom/lge/sns/message/IMessageFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doSendStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createCustomTitle()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    .line 244
    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/SNMessageSend;->requestWindowFeature(I)Z

    .line 245
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageSend;->setContentView(Landroid/view/View;)V

    .line 246
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 249
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 250
    .local v0, titleImage:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 252
    .local v1, titleText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-direct {p0, v2}, Lcom/lge/sns/message/ui/SNMessageSend;->getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method private getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "account"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v0

    .line 258
    .local v0, icon:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 259
    .local v1, photo:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getProfile()V
    .registers 8

    .prologue
    const-string v6, "SNMessageSendView"

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, recipientProfile:Lcom/lge/sns/profile/Profile;
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_c
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_3 .. :try_end_c} :catch_19
    .catch Lcom/lge/sns/SnsException; {:try_start_3 .. :try_end_c} :catch_35

    move-result-object v2

    .line 196
    :goto_d
    if-eqz v2, :cond_18

    .line 197
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mTitle:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_18
    :goto_18
    return-void

    .line 185
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v3, "SNMessageSendView"

    const-string v3, "getProfile() - UnauthorizatedException"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, intentSign:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/message/ui/SNMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_18

    .line 192
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intentSign:Landroid/content/Intent;
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 193
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v3, "SNMessageSendView"

    const-string v3, "getProfile() - SnsException"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private sendMessage()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 205
    const v0, 0x7f050071

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    :cond_13
    :goto_13
    return-void

    .line 209
    :cond_14
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/SNMessageSend;->showDialog(I)V

    .line 215
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->doSendMessages:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mThreadSend:Ljava/lang/Thread;

    .line 216
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mThreadSend:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method private setCustomTitle()V
    .registers 5

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityGroup;

    .line 226
    .local v0, acti:Landroid/app/ActivityGroup;
    if-nez v0, :cond_c

    .line 228
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->createCustomTitle()V

    .line 240
    .end local v0           #acti:Landroid/app/ActivityGroup;
    :goto_b
    return-void

    .line 232
    .restart local v0       #acti:Landroid/app/ActivityGroup;
    :cond_c
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageSend;->setContentView(Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_b

    .line 235
    .end local v0           #acti:Landroid/app/ActivityGroup;
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 236
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v2, "SNMessageSendView"

    const-string v3, "ClassCastException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->createCustomTitle()V

    goto :goto_b
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v6, "SNMessageSendView"

    .line 131
    const/4 v3, -0x1

    if-ne p2, v3, :cond_8

    .line 132
    packed-switch p1, :pswitch_data_56

    .line 162
    :cond_8
    :goto_8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    :goto_b
    return-void

    .line 135
    :pswitch_c
    const-string v3, "friend_userid"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    .line 138
    const/4 v2, 0x0

    .line 140
    .local v2, recipientProfile:Lcom/lge/sns/profile/Profile;
    :try_start_15
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_1e
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_15 .. :try_end_1e} :catch_2b
    .catch Lcom/lge/sns/SnsException; {:try_start_15 .. :try_end_1e} :catch_47

    move-result-object v2

    .line 152
    :goto_1f
    if-eqz v2, :cond_8

    .line 153
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mTitle:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 141
    :catch_2b
    move-exception v3

    move-object v0, v3

    .line 142
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v3, "SNMessageSendView"

    const-string v3, "getProfile() - UnauthorizatedException"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, intentSign:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/lge/sns/message/ui/SNMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b

    .line 148
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intentSign:Landroid/content/Intent;
    :catch_47
    move-exception v3

    move-object v0, v3

    .line 149
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v3, "SNMessageSendView"

    const-string v3, "getProfile() - SnsException"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 157
    .end local v0           #e:Lcom/lge/sns/SnsException;
    .end local v2           #recipientProfile:Lcom/lge/sns/profile/Profile;
    :pswitch_51
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->getProfile()V

    goto :goto_8

    .line 132
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_c
        :pswitch_51
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 179
    :goto_7
    :pswitch_7
    return-void

    .line 168
    :pswitch_8
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->sendMessage()V

    goto :goto_7

    .line 172
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 166
    nop

    :pswitch_data_2a
    .packed-switch 0x7f080085
        :pswitch_8
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "recipient_id"

    const-string v4, ""

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSnsId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    .line 82
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->currentCredential:Lcom/lge/sns/account/Credential;

    .line 85
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mContentView:Landroid/view/ViewGroup;

    .line 89
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->setCustomTitle()V

    .line 91
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mTitle:Landroid/widget/Button;

    .line 92
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mTitle:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSend:Landroid/widget/Button;

    .line 95
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSend:Landroid/widget/Button;

    const v2, 0x7f050067

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/SNMessageSend;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mSend:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f080084

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mEdit:Landroid/widget/EditText;

    .line 99
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const-string v1, ""

    iput-object v4, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    .line 102
    const-string v1, "recipient_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9a

    .line 103
    const-string v1, "recipient_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9a

    .line 105
    invoke-direct {p0}, Lcom/lge/sns/message/ui/SNMessageSend;->getProfile()V

    .line 109
    :cond_9a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend;->mHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_24

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 120
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f05006c

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 124
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 118
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    return-void
.end method
