.class Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;
.super Landroid/app/Dialog;
.source "FavoriteContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FCProgress"
.end annotation


# instance fields
.field private mHori:Landroid/widget/ProgressBar;

.field private mIsShowing:Z

.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 1249
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mIsShowing:Z

    .line 1250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->requestWindowFeature(I)Z

    .line 1251
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->setContentView(I)V

    .line 1252
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mHori:Landroid/widget/ProgressBar;

    .line 1253
    return-void
.end method


# virtual methods
.method public FCisShowing()Z
    .registers 2

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mIsShowing:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->isShowing()Z

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
    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mIsShowing:Z

    .line 1286
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1287
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1265
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mIsShowing:Z

    .line 1267
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1268
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0, p1, p2}, Lcom/lge/favoritecontacts/FavoriteContacts;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1270
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public setHoriProgress(I)V
    .registers 3
    .parameter "curCount"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mHori:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1261
    return-void
.end method

.method public setMax(I)V
    .registers 3
    .parameter "allCount"

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mHori:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1257
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->mIsShowing:Z

    .line 1276
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1277
    return-void
.end method
