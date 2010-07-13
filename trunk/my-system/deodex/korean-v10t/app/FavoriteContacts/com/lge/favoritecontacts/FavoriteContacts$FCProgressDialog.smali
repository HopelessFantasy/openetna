.class Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;
.super Landroid/app/ProgressDialog;
.source "FavoriteContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FCProgressDialog"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FCProgressDialog"


# instance fields
.field private mIsShowing:Z

.field private mLastExist:Z

.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1200
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 1201
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1192
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mLastExist:Z

    .line 1193
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mIsShowing:Z

    .line 1202
    const-string v0, "FCProgressDialog"

    const-string v1, "[Dialog] Constructor:  ===  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void
.end method

.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, 0x0

    .line 1195
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 1196
    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 1192
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mLastExist:Z

    .line 1193
    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mIsShowing:Z

    .line 1197
    const-string v0, "FCProgressDialog"

    const-string v1, "[Dialog] Constructor:  with Theme ===  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return-void
.end method


# virtual methods
.method public FCisShowing()Z
    .registers 2

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mIsShowing:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 1238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mIsShowing:Z

    .line 1239
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1240
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 1207
    if-eqz p1, :cond_5

    .line 1208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mLastExist:Z

    .line 1210
    :cond_5
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 1211
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1224
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mIsShowing:Z

    .line 1226
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1227
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0, p1, p2}, Lcom/lge/favoritecontacts/FavoriteContacts;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1229
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public show()V
    .registers 4

    .prologue
    .line 1215
    const-string v0, "FCProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Dialog] show:  === Last Exist is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mLastExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mLastExist:Z

    if-nez v0, :cond_24

    .line 1217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->mIsShowing:Z

    .line 1218
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    .line 1220
    :cond_24
    return-void
.end method
