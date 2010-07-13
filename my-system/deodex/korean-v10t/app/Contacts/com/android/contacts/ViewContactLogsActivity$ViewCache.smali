.class public Lcom/android/contacts/ViewContactLogsActivity$ViewCache;
.super Ljava/lang/Object;
.source "ViewContactLogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactLogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCache"
.end annotation


# instance fields
.field public attachIconView:Landroid/widget/ImageView;

.field public callIconView:Landroid/widget/ImageView;

.field public dateView:Landroid/widget/TextView;

.field public durationView:Landroid/widget/TextView;

.field public labelView:Landroid/widget/TextView;

.field public lineView:Landroid/widget/TextView;

.field public numberView:Landroid/widget/TextView;

.field public typeIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
