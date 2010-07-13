.class public Lcom/lge/sns/media/ui/MediaUploadActivity;
.super Landroid/app/Activity;
.source "MediaUploadActivity.java"

# interfaces
.implements Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;
.implements Lcom/lge/sns/account/AccountInitializer$InitializeListener;


# static fields
.field static final DIALOG_UPLOAD:I = 0x2

.field static IMAGE_PROJECTION:[Ljava/lang/String; = null

.field static final RC_FOLDER:I = 0x3e8

.field static final RC_UPLOAD:I = 0x3e9

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private SPACE_STRING:Ljava/lang/String;

.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private dataUri:Landroid/net/Uri;

.field private descEdit:Landroid/widget/EditText;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field private folderListSpinner:Landroid/widget/Spinner;

.field private mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field private progress:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private snsId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleEdit:Landroid/widget/EditText;

.field titleProgress:Z

.field private uploadButton:Landroid/widget/Button;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsManager:Lcom/lge/sns/SnsManager;

    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 67
    iput-boolean v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->titleProgress:Z

    .line 68
    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progress:Landroid/widget/ProgressBar;

    .line 70
    const-string v0, "\n"

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->SPACE_STRING:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->uploadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/media/ui/MediaUploadActivity;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->uploadImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/media/ui/MediaUploadActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/media/ui/MediaUploadActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->SPACE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/media/ui/MediaUploadActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private addSnsNameImage()V
    .registers 8

    .prologue
    .line 148
    sget-object v5, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 149
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v1, 0x0

    .line 150
    .local v1, profile:Lcom/lge/sns/profile/Profile;
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 151
    .local v3, sns_image:Landroid/widget/ImageView;
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 153
    .local v4, sns_name:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userName:Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 154
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_22
    :goto_22
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v6, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void

    .line 157
    :cond_32
    :try_start_32
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_39
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_32 .. :try_end_39} :catch_44
    .catch Lcom/lge/sns/SnsException; {:try_start_32 .. :try_end_39} :catch_4a

    move-result-object v1

    .line 166
    :goto_3a
    if-eqz v1, :cond_22

    .line 167
    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 158
    :catch_44
    move-exception v5

    move-object v0, v5

    .line 160
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_3a

    .line 161
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 163
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_3a
.end method

.method private folderSelectionView(Ljava/lang/String;)V
    .registers 10
    .parameter "folderId"

    .prologue
    .line 177
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderListSpinner:Landroid/widget/Spinner;

    const v6, 0x7f050090

    invoke-virtual {p0, v6}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, folderName:Ljava/lang/String;
    if-eqz p1, :cond_1d

    .line 181
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v6, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    invoke-interface {v5, v6, v7, p1}, Lcom/lge/sns/media/IMediaFacade;->getMediaFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v0

    .line 182
    .local v0, folder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 184
    .end local v0           #folder:Lcom/lge/sns/media/MediaFolder;
    :cond_1d
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    if-nez v5, :cond_2d

    .line 185
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v6, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/media/IMediaFacade;->getMediaFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    .line 188
    :cond_2d
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getFolderList()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 189
    .local v3, folderNames:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v1, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 190
    .local v1, folderListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v5, 0x1090009

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 191
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderListSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 192
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderListSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 193
    if-eqz v3, :cond_62

    .line 194
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4d
    array-length v5, v3

    if-ge v4, v5, :cond_62

    .line 195
    if-eqz v2, :cond_5f

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 196
    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderListSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 200
    .end local v4           #i:I
    :cond_62
    return-void
.end method

.method private getFolderList()[Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 203
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    if-nez v4, :cond_40

    const/4 v4, 0x0

    move v1, v4

    .line 204
    .local v1, l:I
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const v4, 0x7f050091

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    if-eqz v4, :cond_48

    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    if-ge v0, v1, :cond_48

    .line 208
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/media/MediaFolder;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, name:Ljava/lang/CharSequence;
    const-string v4, "FB"

    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "Profile Pictures"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 210
    :cond_3a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 203
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3           #name:Ljava/lang/CharSequence;
    :cond_40
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    goto :goto_6

    .line 214
    .restart local v1       #l:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private initData(Landroid/net/Uri;)Z
    .registers 11
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 222
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/media/ui/MediaUploadActivity;->IMAGE_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3c

    .line 225
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 226
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->title:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->contentLength:I

    .line 228
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->contentType:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_37

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 238
    :goto_31
    return v0

    .line 232
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_35
    move v0, v8

    .line 238
    goto :goto_31

    .line 232
    :catchall_37
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 235
    :cond_3c
    const v0, 0x7f050096

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    goto :goto_35
.end method

.method private uploadImage()V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->titleEdit:Landroid/widget/EditText;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->descEdit:Landroid/widget/EditText;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, desc:Ljava/lang/String;
    const/16 v21, 0x0

    .line 257
    .local v21, folder:Lcom/lge/sns/media/MediaFolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderListSpinner:Landroid/widget/Spinner;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v22

    .line 259
    .local v22, selectPosition:I
    if-eqz v22, :cond_35

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    move-object v1, v0

    const/4 v2, 0x1

    sub-int v2, v22, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #folder:Lcom/lge/sns/media/MediaFolder;
    check-cast v21, Lcom/lge/sns/media/MediaFolder;

    .line 262
    .restart local v21       #folder:Lcom/lge/sns/media/MediaFolder;
    :cond_35
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->dataUri:Landroid/net/Uri;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 264
    .local v4, mediaStream:Ljava/io/InputStream;
    if-nez v21, :cond_64

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->contentLength:I

    move v5, v0

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->contentType:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v10, p0

    invoke-interface/range {v1 .. v10}, Lcom/lge/sns/media/IMediaFacade;->uploadIntoDefaultFolder(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;

    .line 269
    :goto_63
    return-void

    .line 267
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->contentLength:I

    move v1, v0

    int-to-long v15, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/media/ui/MediaUploadActivity;->contentType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v14, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, p0

    invoke-interface/range {v10 .. v20}, Lcom/lge/sns/media/IMediaFacade;->uploadIntoNamedFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;)Ljava/lang/String;

    goto :goto_63
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 272
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 273
    packed-switch p1, :pswitch_data_3c

    .line 291
    :cond_7
    :goto_7
    return-void

    .line 275
    :pswitch_8
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/media/IMediaFacade;->getMediaFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderList:Ljava/util/List;

    .line 276
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderSelectionView(Ljava/lang/String;)V

    goto :goto_7

    .line 280
    :pswitch_19
    :try_start_19
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->uploadImage()V
    :try_end_1c
    .catch Lcom/lge/sns/SnsException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_2c

    goto :goto_7

    .line 281
    :catch_1d
    move-exception v0

    .line 282
    .local v0, e:Lcom/lge/sns/SnsException;
    const v1, 0x7f05000d

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 283
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    goto :goto_7

    .line 284
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_2c
    move-exception v0

    .line 285
    .local v0, e:Ljava/io/IOException;
    const v1, 0x7f050096

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 286
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    goto :goto_7

    .line 273
    nop

    :pswitch_data_3c
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_19
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f030028

    const/4 v4, 0x7

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_c0

    .line 76
    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/MediaUploadActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0, v3}, Lcom/lge/sns/media/ui/MediaUploadActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 79
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progress:Landroid/widget/ProgressBar;

    .line 84
    :goto_28
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    .line 86
    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userId:Ljava/lang/String;

    .line 87
    const-string v2, "user_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->userName:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 89
    const-string v2, "folder_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, folderId:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->dataUri:Landroid/net/Uri;

    .line 92
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_63

    .line 93
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->addSnsNameImage()V

    .line 95
    :cond_63
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->dataUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->initData(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 96
    const v2, 0x7f080071

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->titleEdit:Landroid/widget/EditText;

    .line 97
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->descEdit:Landroid/widget/EditText;

    .line 98
    const v2, 0x7f08006e

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->uploadButton:Landroid/widget/Button;

    .line 99
    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderListSpinner:Landroid/widget/Spinner;

    .line 101
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 103
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->titleEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/lge/sns/media/ui/MediaUploadActivity$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/MediaUploadActivity$1;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->titleEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->folderSelectionView(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->uploadButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/sns/media/ui/MediaUploadActivity$2;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/MediaUploadActivity$2;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_bf
    return-void

    .line 81
    .end local v0           #folderId:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c0
    invoke-virtual {p0, v3}, Lcom/lge/sns/media/ui/MediaUploadActivity;->setContentView(I)V

    goto/16 :goto_28
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_22

    .line 249
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 244
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 245
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 246
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050092

    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/MediaUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 242
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    invoke-static {}, Lcom/lge/sns/account/AccountInitializeManager;->getInstance()Lcom/lge/sns/account/AccountInitializeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaUploadActivity;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lge/sns/account/AccountInitializeManager;->removeListener(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 145
    return-void
.end method

.method public onFeedAdded(Ljava/lang/String;I)V
    .registers 3
    .parameter "snsId"
    .parameter "count"

    .prologue
    .line 366
    return-void
.end method

.method public onInitializeCompleted(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 372
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 295
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 296
    const v0, 0x7f050099

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->finish()V

    move v0, v2

    .line 301
    :goto_13
    return v0

    :cond_14
    move v0, v2

    goto :goto_13
.end method

.method public onMediaPartUploadFinished(Ljava/lang/String;)V
    .registers 3
    .parameter "fileId"

    .prologue
    .line 305
    new-instance v0, Lcom/lge/sns/media/ui/MediaUploadActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/media/ui/MediaUploadActivity$3;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public onMediaPartUploaded(Ljava/lang/String;I)V
    .registers 4
    .parameter "fileId"
    .parameter "partIndex"

    .prologue
    .line 317
    new-instance v0, Lcom/lge/sns/media/ui/MediaUploadActivity$4;

    invoke-direct {v0, p0}, Lcom/lge/sns/media/ui/MediaUploadActivity$4;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public onMediaUploadFail(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 327
    new-instance v0, Lcom/lge/sns/media/ui/MediaUploadActivity$5;

    invoke-direct {v0, p0}, Lcom/lge/sns/media/ui/MediaUploadActivity$5;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public onMediaUploadFinished(Ljava/lang/String;)V
    .registers 3
    .parameter "fileId"

    .prologue
    .line 338
    new-instance v0, Lcom/lge/sns/media/ui/MediaUploadActivity$6;

    invoke-direct {v0, p0}, Lcom/lge/sns/media/ui/MediaUploadActivity$6;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method public onMediaUploadStarted(Ljava/lang/String;I)V
    .registers 4
    .parameter "fileId"
    .parameter "numberOfpart"

    .prologue
    .line 349
    new-instance v0, Lcom/lge/sns/media/ui/MediaUploadActivity$7;

    invoke-direct {v0, p0, p2}, Lcom/lge/sns/media/ui/MediaUploadActivity$7;-><init>(Lcom/lge/sns/media/ui/MediaUploadActivity;I)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method
