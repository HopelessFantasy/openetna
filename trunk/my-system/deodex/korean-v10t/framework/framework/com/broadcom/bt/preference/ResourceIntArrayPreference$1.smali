.class Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;
.super Ljava/lang/Object;
.source "ResourceIntArrayPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/preference/ResourceIntArrayPreference;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/preference/ResourceIntArrayPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;->this$0:Lcom/broadcom/bt/preference/ResourceIntArrayPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;->this$0:Lcom/broadcom/bt/preference/ResourceIntArrayPreference;

    iput p2, v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;->this$0:Lcom/broadcom/bt/preference/ResourceIntArrayPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 181
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 182
    return-void
.end method
