.class Lcom/lge/favoritecontacts/FavoriteContacts$3;
.super Ljava/lang/Object;
.source "FavoriteContacts.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoriteContacts;->onCreate(Landroid/os/Bundle;)V
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
    .line 243
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$3;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$3;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$600(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 247
    .local v0, ret:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 248
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts$3;->this$0:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-static {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->access$700(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/EssentialRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/render/EssentialRenderer;->onUp()V

    .line 249
    :cond_1a
    return v0
.end method
