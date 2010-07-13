.class public Lcom/android/camera/GallerySettings;
.super Landroid/preference/PreferenceActivity;
.source "GallerySettings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/camera/GallerySettings;->addPreferencesFromResource(I)V

    .line 37
    return-void
.end method
