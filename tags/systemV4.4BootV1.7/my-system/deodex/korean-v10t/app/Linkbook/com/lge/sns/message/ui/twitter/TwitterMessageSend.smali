.class public Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;
.super Landroid/app/Activity;
.source "TwitterMessageSend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DIALOG_PROGRESS_SEND:I = 0x0

.field private static final KEY_FRIEND_NAME:Ljava/lang/String; = "display_name"

.field public static final KEY_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"

.field public static final KEY_SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final MAX_LENGTH_SEND_DATA:I = 0x8c

.field private static final RESULT_FRIENDLIST_PICK:I = 0x0

.field private static final RESULT_SIGN_IN_SEND_MESSAGE:I = 0x1

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

.field private mText:Landroid/widget/TextView;

.field private mThreadSend:Ljava/lang/Thread;

.field private mTitle:Landroid/widget/Button;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 62
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    .line 63
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    .line 283
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doSendMessages:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$2;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doSendFinish:Ljava/lang/Runnable;

    .line 355
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$3;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doSendStop:Ljava/lang/Runnable;

    .line 375
    new-instance v0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$4;

    invoke-direct {v0, p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$4;-><init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Lcom/lge/sns/account/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Lcom/lge/sns/account/Credential;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentCredential:Lcom/lge/sns/account/Credential;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doSendFinish:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mThreadSend:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mThreadSend:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Lcom/lge/sns/message/IMessageFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->MessageManager:Lcom/lge/sns/message/IMessageFacade;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doSendStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doShowNotConnectToast:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createCustomTitle()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    .line 262
    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->requestWindowFeature(I)Z

    .line 263
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->setContentView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 267
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 268
    .local v0, titleImage:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, titleText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-direct {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method private getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "account"

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v0

    .line 276
    .local v0, icon:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    .local v1, photo:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private pickFollower()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.PICK_TWITTER_FOLLOWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intentPick:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "allow_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const-string v1, "at_user_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void
.end method

.method private sendMessage()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 223
    const v0, 0x7f050071

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_13
    :goto_13
    return-void

    .line 227
    :cond_14
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_13

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->showDialog(I)V

    .line 233
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->doSendMessages:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mThreadSend:Ljava/lang/Thread;

    .line 234
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mThreadSend:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method private setCustomTitle()V
    .registers 5

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityGroup;

    .line 244
    .local v0, acti:Landroid/app/ActivityGroup;
    if-nez v0, :cond_c

    .line 246
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->createCustomTitle()V

    .line 258
    .end local v0           #acti:Landroid/app/ActivityGroup;
    :goto_b
    return-void

    .line 250
    .restart local v0       #acti:Landroid/app/ActivityGroup;
    :cond_c
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->setContentView(Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_b

    .line 253
    .end local v0           #acti:Landroid/app/ActivityGroup;
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 254
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v2, "SNMessageSendView"

    const-string v3, "ClassCastException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->createCustomTitle()V

    goto :goto_b
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "able"

    .prologue
    .line 385
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "data"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 390
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v6, "SNMessageSendView"

    .line 153
    packed-switch p1, :pswitch_data_66

    .line 191
    :goto_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    :goto_8
    return-void

    .line 155
    :pswitch_9
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5e

    .line 157
    const-string v3, "friend_userid"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    .line 159
    :cond_20
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->finish()V

    goto :goto_8

    .line 163
    :cond_24
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, recipientProfile:Lcom/lge/sns/profile/Profile;
    :try_start_29
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_32
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_29 .. :try_end_32} :catch_4a
    .catch Lcom/lge/sns/SnsException; {:try_start_29 .. :try_end_32} :catch_54

    move-result-object v2

    .line 173
    :goto_33
    if-eqz v2, :cond_3e

    .line 174
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mTitle:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v2           #recipientProfile:Lcom/lge/sns/profile/Profile;
    :cond_3e
    const-string v3, "display_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, displayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mTitle:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 167
    .end local v0           #displayName:Ljava/lang/String;
    .restart local v2       #recipientProfile:Lcom/lge/sns/profile/Profile;
    :catch_4a
    move-exception v3

    move-object v1, v3

    .line 168
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v3, "SNMessageSendView"

    const-string v3, "getProfile() - UnauthorizatedException"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 169
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_54
    move-exception v3

    move-object v1, v3

    .line 170
    .local v1, e:Lcom/lge/sns/SnsException;
    const-string v3, "SNMessageSendView"

    const-string v3, "getProfile() - SnsException"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 183
    .end local v1           #e:Lcom/lge/sns/SnsException;
    .end local v2           #recipientProfile:Lcom/lge/sns/profile/Profile;
    :cond_5e
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->finish()V

    goto :goto_5

    .line 187
    :pswitch_62
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->sendMessage()V

    goto :goto_5

    .line 153
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_9
        :pswitch_62
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 208
    :goto_7
    :pswitch_7
    return-void

    .line 197
    :pswitch_8
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->sendMessage()V

    goto :goto_7

    .line 201
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 195
    nop

    :pswitch_data_2a
    .packed-switch 0x7f080085
        :pswitch_8
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-string v9, "recipient_id"

    const-string v8, "SNMessageSendView"

    const-string v7, ""

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    .line 86
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    .line 87
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v4}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->currentCredential:Lcom/lge/sns/account/Credential;

    .line 90
    invoke-virtual {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030031

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mContentView:Landroid/view/ViewGroup;

    .line 94
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->setCustomTitle()V

    .line 96
    const v4, 0x7f080087

    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mTitle:Landroid/widget/Button;

    .line 98
    const v4, 0x7f080085

    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSend:Landroid/widget/Button;

    .line 99
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSend:Landroid/widget/Button;

    const v5, 0x7f050067

    invoke-virtual {p0, v5}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSend:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v4, 0x7f080084

    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mEdit:Landroid/widget/EditText;

    .line 103
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mEdit:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    const v4, 0x7f080089

    invoke-virtual {p0, v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mText:Landroid/widget/TextView;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x8c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    .local v2, legnth_srt:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mHandler:Landroid/os/Handler;

    .line 112
    const-string v4, ""

    iput-object v7, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    .line 113
    const-string v4, "recipient_id"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e6

    .line 114
    const-string v4, "recipient_id"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    if-eqz v4, :cond_d1

    .line 116
    const/4 v3, 0x0

    .line 118
    .local v3, recipientProfile:Lcom/lge/sns/profile/Profile;
    :try_start_bc
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->ProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mSnsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mRecipientId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_c5
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_bc .. :try_end_c5} :catch_d2
    .catch Lcom/lge/sns/SnsException; {:try_start_bc .. :try_end_c5} :catch_dc

    move-result-object v3

    .line 125
    :goto_c6
    if-eqz v3, :cond_d1

    .line 126
    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mTitle:Landroid/widget/Button;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v3           #recipientProfile:Lcom/lge/sns/profile/Profile;
    :cond_d1
    :goto_d1
    return-void

    .line 119
    .restart local v3       #recipientProfile:Lcom/lge/sns/profile/Profile;
    :catch_d2
    move-exception v4

    move-object v0, v4

    .line 120
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v4, "SNMessageSendView"

    const-string v4, "getProfile() - UnauthorizatedException"

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c6

    .line 121
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_dc
    move-exception v4

    move-object v0, v4

    .line 122
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v4, "SNMessageSendView"

    const-string v4, "getProfile() - SnsException"

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c6

    .line 131
    .end local v0           #e:Lcom/lge/sns/SnsException;
    .end local v3           #recipientProfile:Lcom/lge/sns/profile/Profile;
    :cond_e6
    invoke-direct {p0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->pickFollower()V

    goto :goto_d1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_24

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 143
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    .line 144
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f05006c

    invoke-virtual {p0, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 146
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 141
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "data"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 394
    const/16 v2, 0x8c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v1, v2, v3

    .line 395
    .local v1, length:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    .local v0, legnth_srt:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method
