.class Lcom/lge/homecube/Launcher$CharThemeSelector$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$CharThemeSelector;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$CharThemeSelector;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$CharThemeSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 4642
    iput-object p1, p0, Lcom/lge/homecube/Launcher$CharThemeSelector$1;->this$1:Lcom/lge/homecube/Launcher$CharThemeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 4643
    iget-object v0, p0, Lcom/lge/homecube/Launcher$CharThemeSelector$1;->this$1:Lcom/lge/homecube/Launcher$CharThemeSelector;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$CharThemeSelector;->access$5100(Lcom/lge/homecube/Launcher$CharThemeSelector;)V

    .line 4644
    return-void
.end method
