.class Lcom/lge/homecube/Launcher$16;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/lge/homecube/Launcher$16;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/lge/homecube/Launcher$16;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/lge/homecube/Launcher$16;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/homecube/Launcher;->setRenameTitle(ILjava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/lge/homecube/Launcher$16;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->showRenameDeleteSelectorDialog()V

    .line 1490
    const/4 v0, 0x1

    return v0
.end method
