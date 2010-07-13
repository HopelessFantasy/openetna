.class Lcom/android/settings/SyncSettings$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SyncSettings;

.field final synthetic val$pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SyncSettings;Landroid/preference/CheckBoxPreference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings/SyncSettings$1;->this$0:Lcom/android/settings/SyncSettings;

    iput-object p2, p0, Lcom/android/settings/SyncSettings$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/settings/SyncSettings$1;->this$0:Lcom/android/settings/SyncSettings;

    invoke-static {v0, v1}, Lcom/android/settings/SyncSettings;->access$000(Lcom/android/settings/SyncSettings;Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/SyncSettings$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 363
    return-void
.end method
