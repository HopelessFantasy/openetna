.class Lcom/android/settings/SecuritySettings$CstorHelper$3;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$CstorHelper;->createResetPreference(I)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SecuritySettings$CstorHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings$CstorHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorHelper$3;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "pref"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper$3;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$2600(Lcom/android/settings/SecuritySettings$CstorHelper;I)V

    .line 1531
    const/4 v0, 0x1

    return v0
.end method
