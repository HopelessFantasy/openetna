.class Lcom/lge/favoritecontacts/NoFavePopup$2;
.super Ljava/lang/Object;
.source "NoFavePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/NoFavePopup;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/NoFavePopup;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/NoFavePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lge/favoritecontacts/NoFavePopup$2;->this$0:Lcom/lge/favoritecontacts/NoFavePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/favoritecontacts/NoFavePopup$2;->this$0:Lcom/lge/favoritecontacts/NoFavePopup;

    const/16 v1, -0xc8

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 180
    iget-object v0, p0, Lcom/lge/favoritecontacts/NoFavePopup$2;->this$0:Lcom/lge/favoritecontacts/NoFavePopup;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/NoFavePopup;->finish()V

    .line 181
    return-void
.end method
