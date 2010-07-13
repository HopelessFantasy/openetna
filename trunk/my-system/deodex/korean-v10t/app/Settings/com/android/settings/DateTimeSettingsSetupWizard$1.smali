.class Lcom/android/settings/DateTimeSettingsSetupWizard$1;
.super Ljava/lang/Object;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettingsSetupWizard;->emailSetupDialogforWizard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    const v2, 0x7f0803b3

    invoke-virtual {v1, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    const v2, 0x7f0803b1

    invoke-virtual {v1, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DateTimeSettingsSetupWizard$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$1$2;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    const v2, 0x7f0803b2

    invoke-virtual {v1, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DateTimeSettingsSetupWizard$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$1$1;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    return-void
.end method
