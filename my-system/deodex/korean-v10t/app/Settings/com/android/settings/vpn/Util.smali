.class Lcom/android/settings/vpn/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method static copyFiles(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .parameter "sourceLocation"
    .parameter "targetLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    .line 119
    :goto_8
    return v6

    .line 97
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_18

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, children:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    array-length v6, v1

    if-ge v2, v6, :cond_58

    .line 103
    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v2

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    aget-object v8, v1, v2

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/io/File;Ljava/io/File;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 106
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_34
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 107
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v3, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    .local v5, out:Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 113
    .local v0, buf:[B
    :goto_48
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-lez v4, :cond_52

    .line 114
    invoke-virtual {v5, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_48

    .line 116
    :cond_52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 117
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 119
    .end local v0           #buf:[B
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v5           #out:Ljava/io/OutputStream;
    :cond_58
    const/4 v6, 0x1

    goto :goto_8
.end method

.method static copyFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "sourcePath"
    .parameter "targetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static createErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 6
    .parameter "c"
    .parameter "message"
    .parameter "okListener"

    .prologue
    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    .local v0, b:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_24

    .line 129
    const v1, 0x7f0803d8

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    :goto_1f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 131
    :cond_24
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1f
.end method

.method static deleteFile(Ljava/io/File;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;Z)V

    .line 70
    return-void
.end method

.method static deleteFile(Ljava/io/File;Z)V
    .registers 7
    .parameter "f"
    .parameter "toDeleteSelf"

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    .local v1, child:Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 76
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_17
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 77
    :cond_1c
    return-void
.end method

.method static deleteFile(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;)V

    .line 62
    return-void
.end method

.method static deleteFile(Ljava/lang/String;Z)V
    .registers 3
    .parameter "path"
    .parameter "toDeleteSelf"

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;Z)V

    .line 66
    return-void
.end method

.method static isFileOrEmptyDirectory(Ljava/lang/String;)Z
    .registers 5
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v3

    .line 84
    :goto_d
    return v2

    .line 83
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, list:[Ljava/lang/String;
    if-eqz v1, :cond_17

    array-length v2, v1

    if-nez v2, :cond_19

    :cond_17
    move v2, v3

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    goto :goto_d
.end method

.method static showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "message"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/vpn/Util;->createErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    return-void
.end method

.method static showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "c"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/settings/vpn/Util;->createErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    return-void
.end method

.method static showLongToastMessage(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method

.method static showLongToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "message"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method

.method static showShortToastMessage(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    return-void
.end method

.method static showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "message"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    return-void
.end method
