.class Lcom/lge/favoritecontacts/FavoriteContacts$4;
.super Ljava/lang/Object;
.source "FavoriteContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;->endGSynchronizing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$900(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 378
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$900(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->dismiss()V

    .line 382
    :cond_16
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1000(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 383
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1000(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->stopScheduleTask()V

    .line 385
    :cond_27
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1100(Lcom/lge/favoritecontacts/FavoriteContacts;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->checkFavoriteContactsState()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 387
    if-eqz v0, :cond_3a

    .line 388
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_3a
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->popupNoFaveContactState()V

    .line 394
    :goto_3f
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1002(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;)Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    .line 395
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1, v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$002(Lcom/lge/favoritecontacts/FavoriteContacts;Z)Z

    .line 396
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1, v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$202(Lcom/lge/favoritecontacts/FavoriteContacts;Z)Z

    .line 397
    return-void

    .line 392
    :cond_50
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$4;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$1200(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/database/Cursor;)V

    goto :goto_3f
.end method
