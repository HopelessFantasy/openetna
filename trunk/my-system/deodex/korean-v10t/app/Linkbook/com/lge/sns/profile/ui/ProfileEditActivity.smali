.class public Lcom/lge/sns/profile/ui/ProfileEditActivity;
.super Landroid/app/Activity;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MENU_ITEM_DONT_SAVE:I = 0x2

.field public static final MENU_ITEM_SAVE:I = 0x1

.field private static final SNSID_BEBO:Ljava/lang/String; = "BB"

.field private static final SNSID_FACEBOOK:Ljava/lang/String; = "FB"

.field private static final SNSID_MYSPACE:Ljava/lang/String; = "MS"

.field private static final SUBACTIVITY_SIGN_IN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SNProfileEditActivity"


# instance fields
.field public mPhotoView:Landroid/widget/ImageView;

.field private mProfile:Lcom/lge/sns/profile/Profile;

.field private mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

.field public mRevertButton:Landroid/widget/Button;

.field public mSaveButton:Landroid/widget/Button;

.field public mStatusView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doRevertAction()V
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->setResult(I)V

    .line 259
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    .line 260
    return-void
.end method

.method private doSaveAction()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 264
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mStatusView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, status:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_13

    .line 283
    :goto_12
    return-void

    .line 270
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/sns/profile/IProfileFacade;->requestProfileStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->setResult(I)V

    .line 272
    const v3, 0x7f050081

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 273
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V
    :try_end_36
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_13 .. :try_end_36} :catch_37
    .catch Lcom/lge/sns/SnsException; {:try_start_13 .. :try_end_36} :catch_4f

    goto :goto_12

    .line 274
    :catch_37
    move-exception v3

    move-object v0, v3

    .line 275
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1, v7}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12

    .line 278
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_4f
    move-exception v3

    move-object v0, v3

    .line 279
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v3, "SNProfileEditActivity"

    const-string v4, "Fail to update profile status"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    const v3, 0x7f050082

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 281
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    goto :goto_12
.end method


# virtual methods
.method public buildEntries()V
    .registers 9

    .prologue
    .line 175
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(J)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    .line 176
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    if-nez v4, :cond_34

    .line 177
    const-string v4, "SNProfileEditActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid profile ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    .line 201
    :goto_33
    return-void

    .line 183
    :cond_34
    const v4, 0x7f080068

    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 184
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 186
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_4c
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 191
    .local v2, photoData:[B
    if-eqz v2, :cond_6c

    .line 192
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, photo:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_33

    .line 196
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :cond_6c
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mPhotoView:Landroid/widget/ImageView;

    const v5, 0x7f02005a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_33
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    const-string v6, "SNProfileEditActivity"

    .line 207
    if-ne p2, v1, :cond_58

    .line 208
    const/4 v1, 0x1

    if-ne p1, v1, :cond_58

    .line 210
    :try_start_9
    const-string v1, "SNProfileEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> request edit :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mStatusView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mStatusView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->requestProfileStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->setResult(I)V

    .line 213
    const v1, 0x7f050081

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_58} :catch_59

    .line 222
    :cond_58
    :goto_58
    return-void

    .line 215
    :catch_59
    move-exception v1

    move-object v0, v1

    .line 216
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SNProfileEditActivity"

    const-string v1, "Fail to update profile status"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const v1, 0x7f050082

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    goto :goto_58
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 77
    :goto_7
    :pswitch_7
    return-void

    .line 71
    :pswitch_8
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->doSaveAction()V

    goto :goto_7

    .line 74
    :pswitch_c
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->doRevertAction()V

    goto :goto_7

    .line 67
    :pswitch_data_10
    .packed-switch 0x7f0800b5
        :pswitch_7
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 89
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    if-nez v10, :cond_33

    .line 90
    const-string v10, "SNProfileEditActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid profile handle : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    .line 163
    .end local p1
    :goto_32
    return-void

    .line 97
    .restart local p1
    :cond_33
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 98
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 100
    .local v9, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v10, v9}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    .line 101
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    if-nez v10, :cond_52

    .line 102
    const-string v10, "SNProfileEditActivity"

    const-string v11, "invalid profile ID : "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    goto :goto_32

    .line 109
    :cond_52
    const v10, 0x7f03003b

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x7

    const v12, 0x7f030045

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFeatureInt(II)V

    .line 113
    const v10, 0x7f0800b4

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 114
    const v10, 0x7f0800b5

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mStatusView:Landroid/widget/EditText;

    .line 115
    const v10, 0x7f0800b6

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    .line 116
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v10, 0x7f0800b7

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mRevertButton:Landroid/widget/Button;

    .line 118
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mRevertButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v2

    .line 122
    .local v2, accountManager:Lcom/lge/sns/account/IAccountFacade;
    if-nez v2, :cond_c0

    .line 123
    const-string v10, "SNProfileEditActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid account manager handle : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    goto/16 :goto_32

    .line 128
    :cond_c0
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v10}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v1

    .line 129
    .local v1, account:Lcom/lge/sns/account/Account;
    if-nez v1, :cond_e9

    .line 130
    const-string v10, "SNProfileEditActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid account : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->finish()V

    goto/16 :goto_32

    .line 137
    :cond_e9
    const v10, 0x7f08002f

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 138
    .local v8, titleIcon:Landroid/widget/ImageView;
    if-eqz v8, :cond_103

    .line 139
    if-eqz v1, :cond_103

    .line 140
    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v6

    .line 141
    .local v6, photoData:[B
    const/4 v10, 0x0

    array-length v11, v6

    invoke-static {v6, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 142
    .local v5, photo:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    .end local v5           #photo:Landroid/graphics/Bitmap;
    .end local v6           #photoData:[B
    :cond_103
    const v10, 0x7f080068

    invoke-virtual {p0, v10}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 146
    .local v7, title:Landroid/widget/TextView;
    if-eqz v7, :cond_115

    .line 147
    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_115
    const/16 v4, 0x8c

    .line 153
    .local v4, maxLength:I
    const-string v10, "FB"

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_137

    .line 154
    const/16 v4, 0x9d

    .line 160
    :cond_125
    :goto_125
    const/4 v10, 0x1

    new-array v0, v10, [Landroid/text/InputFilter;

    .line 161
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v11, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v0, v10

    .line 162
    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileEditActivity;->mStatusView:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_32

    .line 155
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    :cond_137
    const-string v10, "BB"

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_146

    .line 156
    const/16 v4, 0x8c

    goto :goto_125

    .line 157
    :cond_146
    const-string v10, "MS"

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_125

    .line 158
    const/16 v4, 0xa0

    goto :goto_125
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 229
    const v0, 0x7f050086

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 233
    const/4 v0, 0x2

    const v1, 0x7f050087

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 237
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 253
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 245
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->doSaveAction()V

    move v0, v1

    .line 246
    goto :goto_9

    .line 249
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->doRevertAction()V

    move v0, v1

    .line 250
    goto :goto_9

    .line 243
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileEditActivity;->buildEntries()V

    .line 171
    return-void
.end method
