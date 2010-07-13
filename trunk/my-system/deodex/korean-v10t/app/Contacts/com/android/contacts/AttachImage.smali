.class public Lcom/android/contacts/AttachImage;
.super Landroid/app/Activity;
.source "AttachImage.java"


# static fields
.field private static final CONTACT_URI_KEY:Ljava/lang/String; = "contact_uri"

.field private static final REQUEST_CROP_PHOTO:I = 0x2

.field private static final REQUEST_PICK_CONTACT:I = 0x1


# instance fields
.field mContactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "result"

    .prologue
    const/16 v9, 0x60

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v10, "mimeType"

    .line 71
    const/4 v5, -0x1

    if-eq p2, v5, :cond_d

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/AttachImage;->finish()V

    .line 105
    :cond_c
    :goto_c
    return-void

    .line 76
    :cond_d
    if-ne p1, v7, :cond_5d

    .line 77
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/AttachImage;->mContactUri:Landroid/net/Uri;

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/AttachImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 81
    .local v2, myIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "mimeType"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 83
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "mimeType"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_39
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v5, "aspectX"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v5, "aspectY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v5, "outputX"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v5, "outputY"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v5, "return-data"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1, v8}, Lcom/android/contacts/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 92
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_5d
    if-ne p1, v8, :cond_c

    .line 93
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_88

    .line 95
    const-string v5, "data"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 96
    .local v3, photo:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_88

    .line 97
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v4, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/AttachImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/AttachImage;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 103
    .end local v3           #photo:Landroid/graphics/Bitmap;
    .end local v4           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_88
    invoke-virtual {p0}, Lcom/android/contacts/AttachImage;->finish()V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    if-eqz p1, :cond_10

    .line 52
    const-string v1, "contact_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/AttachImage;->mContactUri:Landroid/net/Uri;

    .line 58
    :goto_f
    return-void

    .line 54
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/android/contacts/AttachImage;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 65
    const-string v0, "contact_uri"

    iget-object v1, p0, Lcom/android/contacts/AttachImage;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    :cond_e
    return-void
.end method
