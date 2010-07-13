.class Lcom/android/browser/GearsSettingsDialog$1;
.super Ljava/lang/Object;
.source "GearsSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GearsSettingsDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GearsSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/GearsSettingsDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/browser/GearsSettingsDialog$1;->this$0:Lcom/android/browser/GearsSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dlg"
    .parameter "which"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/browser/GearsSettingsDialog$1;->this$0:Lcom/android/browser/GearsSettingsDialog;

    iget-object v0, v0, Lcom/android/browser/GearsSettingsDialog;->mListAdapter:Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/GearsSettingsDialog$SettingsAdapter;->removeCurrentSite()V

    .line 204
    return-void
.end method
