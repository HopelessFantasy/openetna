.class public final Lcom/android/contacts/EditGroupActivity;
.super Landroid/app/Activity;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final CAPTURE_MENU_ITEM_CAMERA:I = 0x2

.field public static final CAPTURE_MENU_ITEM_GALLERY:I = 0x1

.field static final DIALOG_ASSIGN_MEMBER_CONFIRMATION:I = 0x2

.field static final DIALOG_DELETE_CONFIRMATION:I = 0x1

.field public static final GROUP_CUSTOM_RINGTONE_COLUMN:I = 0x5

.field public static final GROUP_ID_COLUMN:I = 0x0

.field public static final GROUP_NAME_COLUMN:I = 0x1

.field public static final GROUP_NOTES_COLUMN:I = 0x2

.field public static final GROUP_PROJECTION:[Ljava/lang/String; = null

.field public static final GROUP_SHOULD_SYNC_COLUMN:I = 0x3

.field public static final GROUP_SYSTEM_ID_COLUMN:I = 0x4

.field public static final LOCAL_INSERT_AND_ASSIGN_ACTION:Ljava/lang/String; = "com.android.contacts.action.LOCAL_INSERT_AND_ASSIGN"

.field public static final MENU_ITEM_DELETE:I = 0x3

.field public static final MENU_ITEM_DONT_SAVE:I = 0x2

.field public static final MENU_ITEM_PHOTO:I = 0x4

.field public static final MENU_ITEM_SAVE:I = 0x1

.field private static final MODE_EDIT:I = 0x1

.field private static final MODE_INSERT:I = 0x2

.field private static final MODE_INSERT_AND_ASSIGN:I = 0x3

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final SUBACTIVITY_PHOTO_PICKED_WITH_DATA:I = 0x1

.field private static final SUBACTIVITY_RINGTONE_PICKED:I = 0x3

.field private static final SUBACTIVITY_TAKE_PICTURE_WITH_DATA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EditGroupActivity"


# instance fields
.field private MANAGE_DRM_PHOTO:Z

.field private mCaptureMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureMenuItem:Landroid/view/MenuItem;

.field private mDoneButton:Landroid/widget/Button;

.field private mDrmFilename:Ljava/lang/String;

.field private mDrmPhoto:Landroid/graphics/Bitmap;

.field private mGroupChanged:Z

.field private mGroupName:Ljava/lang/String;

.field private mGroupUri:Landroid/net/Uri;

.field private mGroupsView:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActivatedAssignDlg:Z

.field private mIsSaved:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMode:I

.field private mNameEditView:Landroid/widget/EditText;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoChanged:Z

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mPhotoPresent:Z

.field mResolver:Landroid/content/ContentResolver;

.field private mRevertButton:Landroid/widget/Button;

.field private mRingtoneTitle:Ljava/lang/String;

.field private mRingtoneUri:Ljava/lang/String;

.field private mUneditableGroup:Z

.field private final mediaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/EditGroupActivity;->GROUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenu:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mIsSaved:Z

    .line 158
    new-instance v0, Lcom/android/contacts/EditGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditGroupActivity$1;-><init>(Lcom/android/contacts/EditGroupActivity;)V

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/EditGroupActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->buildRingtone()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/EditGroupActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/EditGroupActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/EditGroupActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/EditGroupActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->doPickPhotoAction()V

    return-void
.end method

.method private addFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6
    .parameter "extras"
    .parameter "phonesUri"
    .parameter "methodsUri"

    .prologue
    .line 1034
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1035
    .local v0, name:Ljava/lang/CharSequence;
    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1036
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_13
    return-void
.end method

.method private buildEntriesForEdit(Landroid/os/Bundle;)V
    .registers 15
    .parameter "extras"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/EditGroupActivity;->GROUP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 908
    .local v10, groupCursor:Landroid/database/Cursor;
    if-nez v10, :cond_2d

    .line 909
    const-string v0, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 1002
    :goto_2c
    return-void

    .line 912
    :cond_2d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_54

    .line 913
    const-string v0, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 915
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .line 920
    :cond_54
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    .line 921
    const-string v0, "Starred in Android"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 922
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 933
    :goto_71
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    if-nez v0, :cond_155

    .line 934
    const/4 v11, 0x0

    .line 935
    .local v11, photo:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "groupphotos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 936
    .local v1, photoUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 938
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_8f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 939
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 940
    .local v9, data:[B
    if-eqz v9, :cond_a4

    .line 941
    const/4 v0, 0x0

    array-length v1, v9

    .end local v1           #photoUri:Landroid/net/Uri;
    invoke-static {v9, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 942
    iput-object v11, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;
    :try_end_a4
    .catchall {:try_start_8f .. :try_end_a4} :catchall_13f

    .line 946
    .end local v9           #data:[B
    :cond_a4
    if-eqz v8, :cond_a9

    .line 947
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 951
    :cond_a9
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v0, :cond_f2

    if-nez v11, :cond_f2

    .line 952
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "drmphotos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 953
    .local v3, drmphotoUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "filename"

    aput-object v1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 955
    :try_start_c8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 956
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 957
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 959
    .local v12, stream:Ljava/io/InputStream;
    if-eqz v12, :cond_146

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v11, v0

    .line 960
    :goto_eb
    iput-object v11, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;
    :try_end_ed
    .catchall {:try_start_c8 .. :try_end_ed} :catchall_149

    .line 964
    .end local v12           #stream:Ljava/io/InputStream;
    :cond_ed
    if-eqz v8, :cond_f2

    .line 965
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 970
    .end local v3           #drmphotoUri:Landroid/net/Uri;
    :cond_f2
    if-eqz v11, :cond_150

    .line 971
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 989
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #photo:Landroid/graphics/Bitmap;
    :goto_fd
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16a

    .line 990
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->updateRingtoneView(Ljava/lang/String;)V

    .line 998
    :goto_110
    if-eqz p1, :cond_117

    .line 999
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/EditGroupActivity;->addFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 1001
    :cond_117
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->buildRingtone()V

    goto/16 :goto_2c

    .line 925
    :cond_11c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    .line 926
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 928
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 929
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_71

    .line 946
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #photo:Landroid/graphics/Bitmap;
    :catchall_13f
    move-exception v0

    if-eqz v8, :cond_145

    .line 947
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_145
    throw v0

    .line 959
    .restart local v3       #drmphotoUri:Landroid/net/Uri;
    .restart local v12       #stream:Ljava/io/InputStream;
    :cond_146
    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_eb

    .line 964
    .end local v12           #stream:Ljava/io/InputStream;
    :catchall_149
    move-exception v0

    if-eqz v8, :cond_14f

    .line 965
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_14f
    throw v0

    .line 974
    .end local v3           #drmphotoUri:Landroid/net/Uri;
    :cond_150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    goto :goto_fd

    .line 977
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #photo:Landroid/graphics/Bitmap;
    :cond_155
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 978
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_fd

    .line 993
    :cond_16a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->updateRingtoneView(Ljava/lang/String;)V

    goto :goto_110
.end method

.method private buildEntriesForInsert(Landroid/os/Bundle;)V
    .registers 4
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 1009
    if-eqz p1, :cond_6

    .line 1010
    invoke-direct {p0, p1, v1, v1}, Lcom/android/contacts/EditGroupActivity;->addFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 1014
    :cond_6
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    .line 1017
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1018
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 1019
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 1020
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    .line 1023
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->updateRingtoneView(Ljava/lang/String;)V

    .line 1026
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->buildRingtone()V

    .line 1027
    return-void
.end method

.method private buildRingtone()V
    .registers 11

    .prologue
    const v9, 0x7f030018

    const/4 v8, 0x0

    .line 282
    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 283
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 285
    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v9, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, dividerStart:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 291
    .local v4, parent:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001a

    invoke-virtual {v6, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 292
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 293
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    .local v0, data:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneTitle:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v9, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, dividerEnd:Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    return-void
.end method

.method private create()V
    .registers 10

    .prologue
    const/16 v7, 0x4b

    const-string v8, "EditGroupActivity"

    .line 834
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 837
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_1b

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 841
    :cond_1b
    const-string v5, "EditGroupActivity"

    const-string v5, "number cannot be Null"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/EditGroupActivity;->setResult(I)V

    .line 876
    :goto_26
    return-void

    .line 846
    :cond_27
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v5, "custom_ringtone"

    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 852
    .local v0, groupUri:Landroid/net/Uri;
    if-nez v0, :cond_45

    .line 853
    const-string v5, "EditGroupActivity"

    const-string v5, "Failed to create the group"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 858
    :cond_45
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_72

    .line 859
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 860
    .local v3, stream:Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 861
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v5, v0, v6}, Landroid/provider/Contacts$Groups;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 871
    .end local v3           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_5e
    :goto_5e
    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    .line 872
    new-instance v2, Landroid/content/Intent;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 873
    .local v2, result:Landroid/content/Intent;
    const-string v5, "com.android.contacts.extra.GROUP"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/android/contacts/EditGroupActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_26

    .line 864
    .end local v2           #result:Landroid/content/Intent;
    :cond_72
    iget-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    if-eqz v5, :cond_5e

    .line 865
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 866
    .restart local v3       #stream:Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 867
    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Landroid/provider/Contacts$Groups;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_5e
.end method

.method private doPickPhotoAction()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x60

    const/4 v4, 0x1

    .line 554
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    const-string v2, "outputX"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string v2, "outputY"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    :try_start_2b
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/EditGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_35} :catch_36

    .line 572
    :goto_35
    return-void

    .line 565
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 566
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_35
.end method

.method private doPickRingtoneAction(I)V
    .registers 7
    .parameter "requestCode"

    .prologue
    const/4 v4, 0x1

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 600
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 601
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 608
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_22
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/EditGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    return-void

    .line 604
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_2b
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_22
.end method

.method private doRemovePhotoAction()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 578
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 580
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v0, :cond_9

    .line 581
    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 584
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    .line 586
    return-void
.end method

.method private doRevertAction()V
    .registers 2

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditGroupActivity;->setResult(I)V

    .line 690
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 691
    return-void
.end method

.method private doSaveAction(Z)V
    .registers 8
    .parameter "isSelectedSave"

    .prologue
    const/4 v5, 0x1

    const-string v4, ":"

    const-string v3, "EditGroupActivity"

    .line 699
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, groupName:Ljava/lang/String;
    const-string v1, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSaveAction groupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_47

    .line 703
    :cond_35
    if-eqz p1, :cond_43

    .line 704
    const v1, 0x7f0600b3

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 766
    :goto_42
    return-void

    .line 706
    :cond_43
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    goto :goto_42

    .line 712
    :cond_47
    if-eqz v0, :cond_4f

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 714
    :cond_4f
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    goto :goto_42

    .line 732
    :cond_53
    iget v1, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    packed-switch v1, :pswitch_data_f6

    .line 762
    const-string v1, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state in doSaveOrCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    goto :goto_42

    .line 734
    :pswitch_76
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->save()V

    goto :goto_72

    .line 738
    :pswitch_7a
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->create()V

    goto :goto_72

    .line 742
    :pswitch_7e
    const-string v1, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE_INSERT_AND_ASSIGN mGroupUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v1, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE_INSERT_AND_ASSIGN mIsSaved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/EditGroupActivity;->mIsSaved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v1, "EditGroupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE_INSERT_AND_ASSIGN isSelectedSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mIsSaved:Z

    if-nez v1, :cond_e5

    .line 748
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->create()V

    .line 749
    iput-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->mIsSaved:Z

    .line 753
    :cond_e5
    if-eqz p1, :cond_72

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    if-eqz v1, :cond_72

    .line 754
    iput-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->mIsActivatedAssignDlg:Z

    .line 755
    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    .line 756
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditGroupActivity;->showDialog(I)V

    goto/16 :goto_42

    .line 732
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
    .end packed-switch
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .registers 3
    .parameter "pickedUri"

    .prologue
    .line 615
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 616
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    .line 620
    :goto_b
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->updateRingtoneView(Ljava/lang/String;)V

    .line 621
    return-void

    .line 618
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    goto :goto_b
.end method

.method private save()V
    .registers 11

    .prologue
    const/16 v7, 0x4b

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v9, "EditGroupActivity"

    .line 773
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 776
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1d

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 780
    :cond_1d
    const-string v4, "EditGroupActivity"

    const-string v4, "Failed to create the group"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0, v8}, Lcom/android/contacts/EditGroupActivity;->setResult(I)V

    .line 827
    :cond_27
    :goto_27
    return-void

    .line 785
    :cond_28
    iget-boolean v4, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    if-nez v4, :cond_31

    .line 786
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_31
    const-string v4, "custom_ringtone"

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 792
    .local v1, result:I
    if-nez v1, :cond_6f

    .line 793
    const v4, 0x7f060032

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 794
    const-string v4, "EditGroupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid contact uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    .line 796
    invoke-virtual {p0, v8}, Lcom/android/contacts/EditGroupActivity;->setResult(I)V

    .line 797
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    goto :goto_27

    .line 803
    :cond_6f
    iget-boolean v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    if-eqz v4, :cond_8e

    .line 805
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b1

    .line 806
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 807
    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v5, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 808
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Contacts$Groups;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 823
    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_8e
    :goto_8e
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/EditGroupActivity;->setResult(ILandroid/content/Intent;)V

    .line 824
    iget-boolean v4, p0, Lcom/android/contacts/EditGroupActivity;->mGroupChanged:Z

    if-nez v4, :cond_a5

    iget-boolean v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    if-eqz v4, :cond_27

    .line 825
    :cond_a5
    const v4, 0x7f0600e9

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 811
    :cond_b1
    iget-boolean v4, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v4, :cond_d3

    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    if-eqz v4, :cond_d3

    .line 812
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 813
    .restart local v2       #stream:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v5, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 814
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Contacts$Groups;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_8e

    .line 818
    .end local v2           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_d3
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/provider/Contacts$Groups;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 819
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {v4, v5, v6, v6}, Landroid/provider/Contacts$Groups;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_8e
.end method

.method private setPhotoPresent(Z)V
    .registers 5
    .parameter "present"

    .prologue
    const v2, 0x7f0200c6

    .line 306
    iput-boolean p1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoPresent:Z

    .line 310
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoPresent:Z

    if-eqz v0, :cond_27

    .line 311
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 317
    :goto_10
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_26

    .line 318
    if-eqz p1, :cond_34

    .line 319
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f060045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 320
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 326
    :cond_26
    :goto_26
    return-void

    .line 313
    :cond_27
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_10

    .line 322
    :cond_34
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f060044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 323
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_26
.end method

.method private showAddAttachmentDialog()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1048
    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1051
    new-instance v2, Lcom/android/contacts/IconListAdapter$IconListItem;

    const/4 v3, 0x1

    const v4, 0x7f0600ed

    invoke-virtual {p0, v4}, Lcom/android/contacts/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c2

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/android/contacts/IconListAdapter$IconListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1055
    .local v2, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    new-instance v2, Lcom/android/contacts/IconListAdapter$IconListItem;

    .end local v2           #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    const/4 v3, 0x2

    const v4, 0x7f0600ee

    invoke-virtual {p0, v4}, Lcom/android/contacts/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bb

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/android/contacts/IconListAdapter$IconListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1060
    .restart local v2       #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1063
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1064
    const v3, 0x7f060044

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1066
    new-instance v0, Lcom/android/contacts/IconListAdapter;

    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1068
    .local v0, adapter:Lcom/android/contacts/IconListAdapter;
    new-instance v3, Lcom/android/contacts/EditGroupActivity$5;

    invoke-direct {v3, p0}, Lcom/android/contacts/EditGroupActivity$5;-><init>(Lcom/android/contacts/EditGroupActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1085
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1086
    return-void
.end method

.method private updateRingtoneView(Ljava/lang/String;)V
    .registers 6
    .parameter "ringtoneData"

    .prologue
    .line 625
    if-nez p1, :cond_f

    .line 626
    const v2, 0x7f060043

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneTitle:Ljava/lang/String;

    .line 638
    :goto_b
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->buildRingtone()V

    .line 639
    :goto_e
    return-void

    .line 628
    :cond_f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 629
    .local v1, ringtoneUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 630
    .local v0, ringtone:Landroid/media/Ringtone;
    if-nez v0, :cond_21

    .line 631
    const-string v2, "EditGroupActivity"

    const-string v3, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 634
    :cond_21
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneTitle:Ljava/lang/String;

    .line 636
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_b
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mGroupChanged:Z

    .line 882
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 887
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "data"

    .line 406
    const/4 v4, -0x1

    if-eq p2, v4, :cond_8

    .line 466
    :cond_7
    :goto_7
    return-void

    .line 410
    :cond_8
    packed-switch p1, :pswitch_data_8e

    goto :goto_7

    .line 412
    :pswitch_c
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 413
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 415
    const-string v4, "drm_file"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, drmFilename:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v4, :cond_45

    if-eqz v0, :cond_45

    .line 417
    const-string v4, "drm_data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 418
    .local v2, photo:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_39

    .line 419
    iput-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 420
    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 421
    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 422
    iput-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    .line 423
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    invoke-direct {p0, v5}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    goto :goto_7

    .line 426
    :cond_39
    const v4, 0x7f0600ef

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 431
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :cond_45
    const-string v4, "data"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 432
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    .line 433
    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 434
    iput-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 435
    iput-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 436
    iput-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    .line 437
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 438
    invoke-direct {p0, v5}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    goto :goto_7

    .line 446
    .end local v0           #drmFilename:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :pswitch_60
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 447
    .restart local v1       #extras:Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 448
    const-string v4, "data"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 449
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 450
    iput-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 451
    iput-object v6, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 452
    iput-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    .line 453
    iget-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    invoke-direct {p0, v5}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    goto :goto_7

    .line 460
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :pswitch_7f
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 461
    .local v3, pickedUri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/EditGroupActivity;->handleRingtonePicked(Landroid/net/Uri;)V

    .line 462
    iput-boolean v5, p0, Lcom/android/contacts/EditGroupActivity;->mGroupChanged:Z

    goto/16 :goto_7

    .line 410
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_60
        :pswitch_7f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 184
    :goto_7
    :pswitch_7
    return-void

    .line 172
    :pswitch_8
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->showAddAttachmentDialog()V

    goto :goto_7

    .line 175
    :pswitch_c
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->doPickRingtoneAction(I)V

    goto :goto_7

    .line 178
    :pswitch_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->doSaveAction(Z)V

    goto :goto_7

    .line 181
    :pswitch_16
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->doRevertAction()V

    goto :goto_7

    .line 170
    :pswitch_data_1a
    .packed-switch 0x7f050032
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mResolver:Landroid/content/ContentResolver;

    .line 194
    iput v3, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    .line 195
    iput-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    .line 196
    iput-boolean v3, p0, Lcom/android/contacts/EditGroupActivity;->mGroupChanged:Z

    .line 197
    iput-boolean v3, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoPresent:Z

    .line 199
    iput-object v4, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    .line 200
    iput-boolean v3, p0, Lcom/android/contacts/EditGroupActivity;->mIsActivatedAssignDlg:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 205
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030019

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupsView:Landroid/view/ViewGroup;

    .line 214
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupsView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->setContentView(Landroid/view/View;)V

    .line 216
    const v2, 0x7f05002d

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 217
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    .line 218
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v2, 0x7f050036

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    .line 224
    const v2, 0x7f050038

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mRevertButton:Landroid/widget/Button;

    .line 225
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mRevertButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v2, 0x7f050039

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mDoneButton:Landroid/widget/Button;

    .line 228
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    if-eqz v2, :cond_96

    .line 233
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 234
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    .line 242
    :cond_96
    :goto_96
    iget v2, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    if-nez v2, :cond_cc

    .line 243
    const-string v2, "EditGroupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot resolve intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 259
    :cond_b5
    :goto_b5
    return-void

    .line 235
    :cond_b6
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 236
    iput v5, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    goto :goto_96

    .line 237
    :cond_c1
    const-string v2, "com.android.contacts.action.LOCAL_INSERT_AND_ASSIGN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 238
    iput v6, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    goto :goto_96

    .line 248
    :cond_cc
    iget v2, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    if-eq v2, v5, :cond_d4

    iget v2, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    if-ne v2, v6, :cond_e4

    .line 249
    :cond_d4
    const v2, 0x7f0600c9

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->setTitle(I)V

    .line 250
    if-nez p1, :cond_b5

    .line 251
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/EditGroupActivity;->buildEntriesForInsert(Landroid/os/Bundle;)V

    goto :goto_b5

    .line 254
    :cond_e4
    const v2, 0x7f0600c8

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->setTitle(I)V

    .line 255
    if-nez p1, :cond_b5

    .line 256
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/EditGroupActivity;->buildEntriesForEdit(Landroid/os/Bundle;)V

    goto :goto_b5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_68

    .line 684
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 648
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/EditGroupActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/EditGroupActivity$2;-><init>(Lcom/android/contacts/EditGroupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 662
    :pswitch_3f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/contacts/EditGroupActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/EditGroupActivity$4;-><init>(Lcom/android/contacts/EditGroupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/contacts/EditGroupActivity$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/EditGroupActivity$3;-><init>(Lcom/android/contacts/EditGroupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 646
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3f
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 503
    const v0, 0x7f06001d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 507
    iget v0, p0, Lcom/android/contacts/EditGroupActivity;->mMode:I

    if-ne v0, v3, :cond_2e

    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    if-nez v0, :cond_2e

    .line 508
    const/4 v0, 0x3

    const v1, 0x7f0600bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 512
    :cond_2e
    const/4 v0, 0x2

    const v1, 0x7f060022

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 516
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    if-nez v0, :cond_53

    .line 518
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    .line 519
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoPresent:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    .line 522
    :cond_53
    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 898
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 899
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 471
    packed-switch p1, :pswitch_data_12

    .line 480
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 473
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mIsActivatedAssignDlg:Z

    if-nez v0, :cond_3

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/EditGroupActivity;->doSaveAction(Z)V

    .line 475
    const/4 v0, 0x1

    goto :goto_7

    .line 471
    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_12

    .line 495
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 488
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mIsActivatedAssignDlg:Z

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 490
    const/4 v0, 0x1

    goto :goto_7

    .line 486
    nop

    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 547
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 530
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/android/contacts/EditGroupActivity;->doSaveAction(Z)V

    move v0, v1

    .line 531
    goto :goto_9

    .line 533
    :pswitch_f
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->doRevertAction()V

    move v0, v1

    .line 534
    goto :goto_9

    .line 536
    :pswitch_14
    invoke-virtual {p0, v1}, Lcom/android/contacts/EditGroupActivity;->showDialog(I)V

    move v0, v1

    .line 537
    goto :goto_9

    .line 539
    :pswitch_19
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoPresent:Z

    if-nez v0, :cond_22

    .line 540
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->showAddAttachmentDialog()V

    :goto_20
    move v0, v1

    .line 544
    goto :goto_9

    .line 542
    :cond_22
    invoke-direct {p0}, Lcom/android/contacts/EditGroupActivity;->doRemovePhotoAction()V

    goto :goto_20

    .line 528
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditGroupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "inState"

    .prologue
    const/4 v3, 0x0

    const-string v4, "photo"

    .line 356
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const-string v1, "photo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 358
    const-string v1, "ringtonUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    .line 359
    const-string v1, "groupName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    .line 361
    const-string v1, "UneditableGroup"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, photo:Landroid/graphics/Bitmap;
    const-string v1, "photo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 365
    const-string v1, "drmfilename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a7

    .line 367
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 375
    :cond_49
    :goto_49
    if-eqz v0, :cond_bc

    .line 376
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    .line 382
    :goto_54
    iget-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    if-eqz v1, :cond_85

    .line 383
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 387
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    const v2, 0x7f06004f

    invoke-virtual {p0, v2}, Lcom/android/contacts/EditGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 389
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 390
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 393
    :cond_85
    const-string v1, "photoChanged"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    .line 394
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/contacts/EditGroupActivity;->updateRingtoneView(Ljava/lang/String;)V

    .line 396
    const-string v1, "groupUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    .line 399
    const-string v1, "isSaved"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mIsSaved:Z

    .line 401
    return-void

    .line 370
    :cond_a7
    iget-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 371
    const-string v1, "drmphoto"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 372
    iget-object v0, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    goto :goto_49

    .line 379
    :cond_bc
    invoke-direct {p0, v3}, Lcom/android/contacts/EditGroupActivity;->setPhotoPresent(Z)V

    goto :goto_54
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/EditGroupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 331
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mNameEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "groupName"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "ringtonUri"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "photo"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 336
    const-string v0, "UneditableGroup"

    iget-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mUneditableGroup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    iget-boolean v0, p0, Lcom/android/contacts/EditGroupActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v0, :cond_3d

    .line 340
    const-string v0, "drmfilename"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmFilename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "drmphoto"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    :cond_3d
    const-string v0, "photoChanged"

    iget-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mPhotoChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    const-string v0, "groupUri"

    iget-object v1, p0, Lcom/android/contacts/EditGroupActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "isSaved"

    iget-boolean v1, p0, Lcom/android/contacts/EditGroupActivity;->mIsSaved:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 892
    return-void
.end method
