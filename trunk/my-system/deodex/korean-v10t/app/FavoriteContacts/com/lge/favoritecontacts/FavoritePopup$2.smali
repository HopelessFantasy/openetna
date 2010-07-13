.class Lcom/lge/favoritecontacts/FavoritePopup$2;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoritePopup;

.field final synthetic val$nowOrientation:I


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoritePopup;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$2;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    iput p2, p0, Lcom/lge/favoritecontacts/FavoritePopup$2;->val$nowOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 161
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$2;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 163
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 166
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 168
    iget v1, p0, Lcom/lge/favoritecontacts/FavoritePopup$2;->val$nowOrientation:I

    if-nez v1, :cond_2e

    .line 169
    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 173
    :goto_27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 176
    return-object v0

    .line 171
    :cond_2e
    const/high16 v1, 0x41a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_27
.end method
