.class Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;
.super Landroid/view/GestureDetector;
.source "FavoriteContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FCTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoriteContacts;


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .parameter
    .parameter "listener"

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 1297
    invoke-direct {p0, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1298
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/high16 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1302
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$700(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/EssentialRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/render/EssentialRenderer;->getRenderMode()I

    move-result v1

    and-int v0, v1, v2

    .line 1305
    .local v0, rendermode:I
    if-ne v0, v2, :cond_34

    .line 1306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 1307
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$700(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/EssentialRenderer;

    move-result-object v1

    invoke-virtual {v1, p1, p1, v3, v3}, Lcom/lge/render/EssentialRenderer;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :cond_22
    :goto_22
    move v1, v4

    .line 1313
    :goto_23
    return v1

    .line 1308
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_22

    .line 1309
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$700(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/EssentialRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/render/EssentialRenderer;->onUp()V

    goto :goto_22

    .line 1313
    :cond_34
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_23
.end method
