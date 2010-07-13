.class final Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ShowOrCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 187
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 188
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 204
    iget-object v10, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 205
    .local v2, activity:Landroid/app/Activity;
    if-nez v2, :cond_b

    .line 271
    :goto_a
    return-void

    .line 210
    :cond_b
    const/4 v3, 0x0

    .line 211
    .local v3, count:I
    const-wide/16 v7, -0x1

    .line 212
    .local v7, personId:J
    if-eqz p3, :cond_28

    .line 214
    :try_start_10
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 215
    const/4 v10, 0x1

    if-ne v3, v10, :cond_25

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 217
    const/4 v10, 0x0

    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_3f

    move-result-wide v7

    .line 220
    :cond_25
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_28
    const/4 v10, 0x1

    if-ne v3, v10, :cond_44

    .line 228
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    sget-object v11, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v9, viewIntent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_a

    .line 220
    .end local v9           #viewIntent:Landroid/content/Intent;
    :catchall_3f
    move-exception v10

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v10

    .line 233
    :cond_44
    const/4 v10, 0x1

    if-le v3, v10, :cond_64

    .line 235
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v5, listIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-class v11, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v10, v2, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    iget-object v10, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v2, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 239
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_a

    .line 243
    .end local v5           #listIntent:Landroid/content/Intent;
    :cond_64
    iget-boolean v10, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateForce:Z

    if-eqz v10, :cond_82

    .line 245
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSERT"

    sget-object v11, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v4, createIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    const-string v10, "vnd.android.cursor.dir/person"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_a

    .line 254
    .end local v4           #createIntent:Landroid/content/Intent;
    :cond_82
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v4       #createIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    const-string v10, "vnd.android.cursor.item/person"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06009a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateDescrip:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, message:Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f060099

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;

    invoke-direct {v12, v2, v4}, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x104

    new-instance v12, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;

    const/4 v13, 0x0

    invoke-direct {v12, v2, v13}, Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_a
.end method

.method public setCreateDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "createDescrip"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateDescrip:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setCreateExtras(Landroid/os/Bundle;)V
    .registers 2
    .parameter "createExtras"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateExtras:Landroid/os/Bundle;

    .line 192
    return-void
.end method

.method public setCreateForce(Z)V
    .registers 2
    .parameter "createForce"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->mCreateForce:Z

    .line 200
    return-void
.end method
