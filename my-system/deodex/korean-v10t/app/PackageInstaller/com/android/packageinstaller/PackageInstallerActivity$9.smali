.class Lcom/android/packageinstaller/PackageInstallerActivity$9;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$9;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$9;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 237
    return-void
.end method
